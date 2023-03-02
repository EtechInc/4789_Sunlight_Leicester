(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Program: ic
 * File: ic.st
 * Author: treamsbottom
 * Created: July 17, 2015
 ********************************************************************
 * Implementation of program Incline conveyor.
 ********************************************************************)
//V1.00.1 First Release
PROGRAM _INIT
//Configuration
mySeq					:= 35;		//Sequence number	
myIO					:= 10; 	//Incline Conveyor IO module number
myIC					:= 5;		//Incline Conveyor Number
useRequest				:= FALSE; 	//Use the Request bit. Only use when working with x_1_point. otherwise use RequestRelease as the i_bagAtBuffer.	
myBuffBag				:= 153;		//Ingoing Buffer bag number 
myBag					:= 152;		//Incline bag number
myRelLine				:= 0;
myOutBag				:= Line[myRelLine].LastBag;	//Outgoing buffer bag number

myZone 					:= 0;	
//Timer Values
bufferSettleTime		:= 300;  	// Time for bag to settle at buffer in.	
moveUpInclineTime		:= 5;//>>IN SECONDS<< // Time to move bag up incline after closing stop.//Min of 4 to shut buffer stop.... 

alarm						ACCESS ADR(Alarm[mySeq]);
bag							ACCESS ADR(Bag[myBag]);
bag_buff					ACCESS ADR(Bag[myBuffBag]);	
bag_out						ACCESS ADR(Bag[myOutBag]);
line_release				ACCESS ADR(Line[myRelLine]);
END_PROGRAM


PROGRAM _CYCLIC
//Inputs
i_paddleInPosition		:= X[myIO].X08;
i_bagAtBuffer			:= X[myIO].X09;
i_bagInIncline			:= X[myIO].X07;
i_BagReleased			:= FALSE;//X[myIO].X05;  //<--- Bag release trip- only to be used in special cases. Take when using tracked bags, as the next sequence will need to copy data into a transit position
	
i_bagAtBufferOut 		:= FALSE; // Any Single bag buffer out IO.
i_bufferOutOpen			:= FALSE;

//End of inputs.	
	
o_openBuffer			:= FALSE;
o_runMotor				:= FALSE;
	
Request.IC[myIC] 		:= FALSE;	
RequestRel.IC[myIC] 	:= FALSE;
	
IF (myBag = 0) THEN	
	alarm.Bag	:= 152;			
ELSE		
	alarm.Bag	:= 152;	
END_IF;

alarm.Name 		:= 0;
alarm.Beacon		:= TRUE;
alarm.Extra		:= 0;
alarm.Time		:= 3000;

//Setup Sequence
step := D[900 + mySeq];
//Setup Pulse contact
pls := (step <> laststep);
laststep := step;

//Sequence
IF (step = 0) THEN
	//Disabled
END_IF;

//Run Incline until paddle in position
IF (step = 1) THEN
	o_runMotor := NOT i_paddleInPosition;
	IF i_paddleInPosition THEN
		D[900 + mySeq] := 2;
		Count[mySeq] := Count[mySeq] + 1; 
	END_IF;
	IF NOT Std.HaltSysZone[myZone] THEN
		alarm.Name := ALM_SWITCH_FAULT;
	END_IF;
END_IF;

//Wait for at buffer
ton_10ms_SettledBuffer(IN:= i_bagAtBuffer, PT:= bufferSettleTime);
IF (step = 2) THEN
	IF NOT i_bagInIncline THEN 	
		IF useRequest THEN 
			D[900 + mySeq] := 3;			
		ELSE		
			IF ton_10ms_SettledBuffer.Q THEN
				IF (myBuffBag > 0) THEN	
					IF (bag_buff.Cat > 0) AND (bag.Cat = 0) THEN
						D[900 + mySeq] := 3;
					ELSIF (bag_buff.Cat = 0) THEN
						alarm.Name := ALM_BAG_DATA_ERROR;
						alarm.Bag := myBuffBag;
					ELSE		
						alarm.Name := ALM_BAG_DATA_ERROR;	
					END_IF;		
				ELSE	
					D[900 + mySeq] := 3;
				END_IF;	
			ELSIF (myBuffBag > 0) AND (bag_buff.Cat > 0) THEN
				alarm.Name := ALM_BAG_NOT_SETTLED;
			END_IF;
		END_IF;
	ELSE
		alarm.Name := ALM_SWITCH_FAULT;
	END_IF;		
END_IF;

//Open Buffer stop
IF (step = 3) THEN
	releaseValid := ((myBag = 0) OR ((bag.Cat = 0) AND (bag_buff.Cat > 0)));
	o_openBuffer	   := releaseValid AND NOT useRequest;
	Request.IC[myIC]  := releaseValid AND useRequest;
	IF i_bagInIncline AND releaseValid THEN
		IF (myBag > 0) THEN
			bag := bag_buff; //Clear empty buffer bag data if used
			bag_buff := Bag[0];		
		END_IF;
		D[900 + mySeq] := 4;
	ELSIF (myBag > 0) THEN
		IF (bag.Cat > 0) THEN
			alarm.Name := ALM_BAG_DATA_ERROR;		
			alarm.Time := 0;
		ELSIF (bag_buff.Cat = 0) THEN
			alarm.Name := ALM_BAG_DATA_ERROR;		
			alarm.Bag := myBuffBag;
			alarm.Time := 0;
		ELSE		
			alarm.Name  := ALM_BAG_NOT_ARRIVED;	
		END_IF;		
	ELSE		
		alarm.Name  := ALM_BAG_NOT_ARRIVED;		
	END_IF;
END_IF;
	
ton_10ms_SettledIncline(IN:= (step = 4), PT:= 300);
IF (step = 4) THEN
	o_openBuffer := NOT useRequest;
	IF ton_10ms_SettledIncline.Q THEN
		D[900 + mySeq] := 5;
	END_IF;
END_IF;

//Move Bag up incline
ctu_moveUpIncline(CU:=(step = 5) AND NOT Std.HaltSysZone[myZone] AND Std.Clock1s, RESET := (step <> 5), PV := moveUpInclineTime);	
IF (step = 5) THEN
	o_openBuffer 	:= (ctu_moveUpIncline.CV <= 4) AND NOT useRequest;//Close buffer stop after 3 seconds running..
	o_runMotor 		:= TRUE;
	IF ctu_moveUpIncline.Q THEN
		D[900 + mySeq] := 6;
	ELSIF NOT Std.HaltSysZone[myZone] THEN		
		alarm.Name := ALM_SWITCH_FAULT;
	END_IF;
	
END_IF;


//Check for line space.
IF (step = 6) THEN
	releaseValid := (NOT i_bagAtBufferOut AND NOT i_bufferOutOpen AND NOT i_BagReleased AND ((myBag = 0) OR ((bag.Cat > 0) AND (bag_out.Cat = 0))));		
	IF (myRelLine > 0) THEN
		IF (line_release.Clear AND releaseValid) THEN
			C[myRelLine] := 0;
			D[900 + mySeq] := 7;
		END_IF;
		IF (line_release.Clear AND i_bagAtBufferOut) THEN
			alarm.Name := ALM_SWITCH_FAULT;
		ELSIF (myBag > 0) AND (bag.Cat = 0) THEN
			alarm.Name := ALM_BAG_DATA_ERROR;
			alarm.Time := 0;	
		ELSIF line_release.Clear AND (myOutBag > 0) AND (bag_out.Cat > 0) THEN
			alarm.Name := ALM_BAG_DATA_ERROR;
			alarm.Bag := myOutBag;
			alarm.Time := 0;
		END_IF;	
	ELSE
		RequestRel.IC[myIC] := releaseValid;
		IF EnableRel.IC[myIC] AND releaseValid THEN
			
			D[900 + mySeq] := 7;
		ELSIF (myBag > 0) AND (bag.Cat = 0) THEN
			alarm.Name := ALM_BAG_DATA_ERROR;
			alarm.Time := 0;	
		ELSIF (myOutBag > 0) AND (bag_out.Cat > 0) THEN
			alarm.Name := ALM_BAG_DATA_ERROR;
			alarm.Bag := myOutBag;
			alarm.Time := 0;
		END_IF;	
	END_IF;		
	IF i_BagReleased THEN
		alarm.Name := ALM_SWITCH_FAULT;
		alarm.Time := 0;
	END_IF;		
	releaseValid := 0; //Clear this as we are using it as a latch in line 7	
END_IF;

//Run motor to release bag.
IF (step = 7) THEN
	IF (NOT i_bagAtBufferOut AND NOT i_bufferOutOpen AND ((myBag = 0) OR ((bag.Cat > 0) AND (bag_out.Cat = 0)))) THEN
		releaseValid := 1;	
	END_IF;
	o_runMotor := releaseValid AND NOT Std.HaltSysZone[myZone];
		IF (Bag[152].Cat>0) AND (Bag[166].Cat = 0) THEN
		Bag[166] := Bag[152];
		Bag[152] := Bag[0];
	END_IF
	IF releaseValid THEN
		IF (myBag = 0) THEN
			IF (myRelLine > 0) THEN
				IF line_release.Trip THEN
					D[900 + mySeq] := 1;	
				END_IF;
			ELSE
				IF NOT EnableRel.IC[myIC] OR i_BagReleased THEN 
					D[900 + mySeq] := 1;
				END_IF;	
			END_IF;	
			IF NOT Std.HaltSysZone[myZone] THEN
				alarm.Name := ALM_BAG_NOT_RELEASED;	
			END_IF;		
		ELSE//Use tracking		
			IF (myRelLine > 0) THEN
				IF line_release.Trip THEN
					bag_out := bag;
					bag := Bag[0];		
					D[900 + mySeq] := 1;	
				END_IF;
			ELSE
				IF (i_BagReleased OR NOT EnableRel.IC[myIC]) AND (bag.Cat = 0)  THEN // Make sure data is copied out by enabling sequence.
					D[900 + mySeq] := 1;
				ELSIF NOT EnableRel.IC[myIC] AND (bag.Cat > 0) THEN
					alarm.Name := ALM_BAG_DATA_ERROR;		
				END_IF;	
			END_IF;			
		END_IF;	
	ELSIF i_bagAtBufferOut OR i_bufferOutOpen THEN		
			alarm.Name := ALM_SWITCH_FAULT;
			alarm.Time := 0;		
	ELSIF (myBag > 0) THEN
		IF (bag.Cat = 0) THEN
			alarm.Name := ALM_BAG_DATA_ERROR;
			alarm.Time := 0;	
		ELSIF (bag_out.Cat > 0) THEN		
			alarm.Name := ALM_BAG_DATA_ERROR;
			alarm.Bag := myOutBag;
			alarm.Time := 0;	
		END_IF;		
	END_IF;		
END_IF;


//-----------------------------------
//PLC Outputs - adjust TO suit system
//-----------------------------------
	
Y[8].Y13	:= o_runMotor;
Y[2].Y15 := o_openBuffer;	

//Alarms
timerAlarm(IN := NOT pls AND (alarm.Name > 0),PT:= alarm.Time);

alarm.On 	:= timerAlarm.Q;
alarm.ET 	:= timerAlarm.ET;;

END_PROGRAM

