(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Program: pic
 * File: pic.st
 * Author: treamsbottom
 * Created: July 16, 2015
 ********************************************************************
 * Implementation of program pic - Pneumatic Incline
 ********************************************************************)
//V1.00.1 First Release
PROGRAM _INIT
//Configuration
mySeq						:= 23;	//Sequence number
myIO						:= 8;	
myZone						:= 0;
myRelLine					:= 44; 
myBuffBag					:= 0;	
myBag						:= 0;
bufferSettleTime			:= 300; 	
myPI						:= 3;
	
myOutBag 					:= Line[myRelLine].LastBag;	
END_PROGRAM


PROGRAM _CYCLIC
//Inputs
	
i_bagInIncline			:= X[myIO].X04;
i_cylinderAtBottom		:= X[myIO].X06;
i_cylinderAtTop			:= X[myIO].X05;
i_bagAtBuffer			:= X[myIO].X03;

	
i_bagAtBufferOut 		:= FALSE; // Any Single bag buffer out IO.
i_bufferOutOpen			:= FALSE;

o_openBuffer			:= FALSE;
o_cylinderDown			:= FALSE;
	
Request.PI[myPI]		:= FALSE;	
RequestRel.PI[myPI]		:= FALSE;
	
IF (myBag = 0) THEN	
//	Alarm[mySeq].Bag	:= mySeq + 10000;			
ELSE		
//	Alarm[mySeq].Bag	:= myBag;	
END_IF;
	
Alarm[mySeq].Name 		:= 0;
Alarm[mySeq].Bag	:= 10017;
Alarm[mySeq].Beacon	:= TRUE;
Alarm[mySeq].Extra		:= 0;
Alarm[mySeq].Time		:= 3000;

//Setup Sequence
step := D[900 + mySeq];
//Setup Pulse contact
pls := (step <> lastStep);
lastStep := step;

//Sequence
IF (step = 0) THEN
	//Disabled
END_IF;


//Wait for at buffer
ton_10ms_SettledBuffer(IN:= i_bagAtBuffer, PT:= bufferSettleTime);
IF (step = 1) THEN
	IF NOT Std.HaltSysZone[myZone] AND i_cylinderAtTop AND NOT i_bagInIncline THEN 	
		IF useRequest THEN 
			D[900 + mySeq] := 2;			
		ELSE		
			IF ton_10ms_SettledBuffer.Q THEN
				IF (myBuffBag > 0) THEN	
					IF (Bag[myBuffBag].Cat > 0) AND (Bag[myBag].Cat = 0) THEN
						D[900 + mySeq] := 2;
					ELSIF (Bag[myBuffBag].Cat = 0) THEN
						Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
						Alarm[mySeq].Bag := myBuffBag;
					ELSE		
						Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;	
					END_IF;		
				ELSE	
					D[900 + mySeq] := 2;
				END_IF;	
			ELSIF (myBuffBag > 0) AND (Bag[myBuffBag].Cat > 0) THEN
				Alarm[mySeq].Name := ALM_BAG_NOT_SETTLED;
			END_IF;
		END_IF;
	ELSIF NOT Std.HaltSysZone[myZone] THEN
		Alarm[mySeq].Name := ALM_SWITCH_FAULT;
	END_IF;		
END_IF;

//Open Buffer stop
IF (step = 2) THEN	
	releaseValid := ((myBag = 0) OR ((Bag[myBag].Cat = 0) AND (Bag[myBuffBag].Cat > 0)));
	o_openBuffer	   := releaseValid AND NOT useRequest;
	Request.PI[myPI]  := releaseValid AND useRequest;
	IF (i_bagInIncline AND releaseValid) THEN
		IF (myBag > 0) THEN
			Bag[myBag] := Bag[myBuffBag]; //Clear empty buffer bag data if used
			Bag[myBuffBag] := Bag[0];		
		END_IF;
		D[900 + mySeq] := 3;
	ELSIF (myBag > 0) THEN
		IF (Bag[myBag].Cat > 0) THEN
			Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;		
			Alarm[mySeq].Time := 0;
		ELSIF (Bag[myBuffBag].Cat = 0) THEN
			Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;		
			Alarm[mySeq].Bag := myBuffBag;
			Alarm[mySeq].Time := 0;
		ELSE		
			Alarm[mySeq].Name  := ALM_BAG_NOT_ARRIVED;	
		END_IF;		
		Alarm[mySeq].Name  := ALM_BAG_NOT_ARRIVED;		
	END_IF;
END_IF;							
	

//Let bag settle at base OF incline
ton_10ms_SettledInIncline(IN:= i_bagInIncline, PT:= 300);	
IF (step = 3) THEN	
	o_openBuffer := NOT useRequest;
	IF  ton_10ms_SettledInIncline.Q AND NOT Std.HaltSysZone[myZone] THEN
		D[900 + mySeq] := 4;	
	ELSIF NOT Std.HaltSysZone[myZone] THEN 	
		Alarm[mySeq].Name := ALM_BAG_NOT_SETTLED;
	END_IF;		
END_IF	

//Move incline down to collect first trolley
ton_10ms_CylinderDown(IN := i_cylinderAtBottom, PT:=300);	
IF (step = 4) THEN
	o_openBuffer := NOT useRequest;
	o_cylinderDown := TRUE;
	IF ton_10ms_CylinderDown.Q THEN
		D[900 + mySeq] := 5;
	END_IF;
	Alarm[mySeq].Name := ALM_SWITCH_FAULT;
END_IF;

//Let cylinder move back to the top.	
IF (step = 5) THEN
	o_openBuffer := NOT useRequest;
	IF i_cylinderAtTop THEN
		D[900 + mySeq] := 6;
	END_IF; 
	Alarm[mySeq].Name := ALM_SWITCH_FAULT;
END_IF;

//Check for valid release..	
//Check for line space.
IF (step = 6) THEN
	releaseValid := (ton_10ms_SettledInIncline.Q AND NOT i_cylinderAtBottom AND NOT i_bagAtBufferOut AND NOT i_bufferOutOpen AND ((myBag = 0) OR ((Bag[myBag].Cat > 0) AND (Bag[myOutBag].Cat = 0))));		
	IF (myRelLine > 0) THEN
		IF (Line[myRelLine].Clear AND releaseValid) THEN
			C[myRelLine] := 0;
			D[900 + mySeq] := 7;
		END_IF;
		IF i_cylinderAtBottom OR NOT i_bagInIncline THEN
			Alarm[mySeq].Name := ALM_SWITCH_FAULT;
			Alarm[mySeq].Time := 0;	
		ELSIF (Line[myRelLine].Clear AND i_bagAtBufferOut) THEN
			Alarm[mySeq].Name := ALM_SWITCH_FAULT;
		ELSIF (myBag > 0) AND (Bag[myBag].Cat = 0) THEN
			Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
			Alarm[mySeq].Time := 0;	
		ELSIF Line[myRelLine].Clear AND (myOutBag > 0) AND (Bag[myOutBag].Cat > 0) THEN
			Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
			Alarm[mySeq].Bag := myOutBag;
			Alarm[mySeq].Time := 0;
		END_IF;	
	ELSE
		RequestRel.PI[myPI] := releaseValid;
		IF EnableRel.PI[myPI] AND releaseValid THEN
			D[900 + mySeq] := 7;
		ELSIF NOT i_cylinderAtBottom OR NOT i_bagInIncline THEN
			Alarm[mySeq].Name := ALM_SWITCH_FAULT;
			Alarm[mySeq].Time := 0;	
		ELSIF (myBag > 0) AND (Bag[myBag].Cat = 0) THEN
			Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
			Alarm[mySeq].Time := 0;	
		ELSIF (myOutBag > 0) AND (Bag[myOutBag].Cat > 0) THEN
			Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
			Alarm[mySeq].Bag := myOutBag;
			Alarm[mySeq].Time := 0;
		END_IF;	
	END_IF;		
END_IF;

//Move cylinder down to get 2nd trolley.
IF (step = 7) THEN
	o_cylinderDown := TRUE;
	IF  ton_10ms_CylinderDown.Q THEN
		D[900 + mySeq] := 8;
	END_IF; 
	Alarm[mySeq].Name := ALM_SWITCH_FAULT;
END_IF;

//Release bag
IF (step = 8) THEN
	releaseValid := (NOT i_bagAtBufferOut AND NOT i_bufferOutOpen AND ((myBag = 0) OR ((Bag[myBag].Cat > 0) AND (Bag[myOutBag].Cat = 0))));	
	o_cylinderDown := NOT releaseValid; // Hold cylinder down if release is not valid.
	IF releaseValid THEN
		IF (myBag = 0) THEN// Not tracking.
			IF (myRelLine > 0) THEN
				IF Line[myRelLine].Trip THEN
					D[900 + mySeq] := 1;	
				END_IF;
			ELSE
				IF NOT EnableRel.PI[myPI] THEN 
					D[900 + mySeq] := 1;
				END_IF;	
			END_IF;	
			IF NOT Std.HaltSysZone[myZone] THEN
				Alarm[mySeq].Name := ALM_BAG_NOT_RELEASED;	
			END_IF;		
		ELSE//Use tracking		
			IF (myRelLine > 0) THEN
				IF Line[myRelLine].Trip THEN
					Bag[myOutBag] := Bag[myBag];
					Bag[myBag] := Bag[0];		
					D[900 + mySeq] := 1;	
				END_IF;
			ELSE
				IF NOT EnableRel.PI[myPI] AND (Bag[myBag].Cat = 0) THEN // Make sure data is copied out by enabling sequence.
					D[900 + mySeq] := 1;
				ELSIF NOT EnableRel.PI[myPI] AND (Bag[myBag].Cat > 0) THEN
					Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;		
				END_IF;	
			END_IF;			
		END_IF;	
	ELSIF i_bagAtBufferOut AND NOT i_bufferOutOpen THEN		
		Alarm[mySeq].Name := ALM_SWITCH_FAULT;
		Alarm[mySeq].Time := 0;		
	ELSIF (myBag > 0) THEN
		IF (Bag[myBag].Cat = 0) THEN
			Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
			Alarm[mySeq].Time := 0;	
		ELSIF (Bag[myOutBag].Cat > 0) THEN		
			Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
			Alarm[mySeq].Bag := myOutBag;
			Alarm[mySeq].Time := 0;	
		END_IF;		
	END_IF;		
END_IF


	
	
//-----------------------------------
//PLC Outputs - adjust TO suit system
//-----------------------------------

Y[11].Y09 := o_cylinderDown;	
Y[3].Y15 := o_openBuffer;
	
	
//Alarms
timerAlarm(IN := NOT pls AND (Alarm[mySeq].Name > 0),PT:= Alarm[mySeq].Time);

Alarm[mySeq].On 	:= timerAlarm.Q;
Alarm[mySeq].ET 	:= timerAlarm.ET;

END_PROGRAM

