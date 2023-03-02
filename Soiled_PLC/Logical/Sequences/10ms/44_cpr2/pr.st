(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Program: pr
 * File: pr.st
 * Author: treamsbottom
 * Created: July 16, 2015
 ********************************************************************
 * Implementation of program pr
 ********************************************************************)

PROGRAM _INIT
//Configuration
mySeq						:= 44;	//Sequence number
myIO						:= 9;	
myZone						:= 0;
myRelLine					:= 28; 
myBag						:= 0; //Buffer Bag
bufferSettleTime			:= 300; 	
	
myOutBag 					:= Line[myRelLine].LastBag;	
END_PROGRAM


PROGRAM _CYCLIC
//Inputs
i_bagAtBuffer				:= X[myIO].X08;		


i_bagAtBufferOut 		:= FALSE; // Any Single bag buffer out IO.
i_bufferOutOpen			:= FALSE;

o_openBuffer	:= FALSE;

IF (myBag = 0) THEN	
	Alarm[mySeq].Bag	:= mySeq + 10000;			
ELSE		
	Alarm[mySeq].Bag	:= myBag;	
END_IF;
	
Alarm[mySeq].Name 		:= 0;
Alarm[mySeq].Beacon		:= TRUE;
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

//Bag Settled at buffer	
ton_10ms_SettledBuffer(IN:= i_bagAtBuffer, PT:= bufferSettleTime);	
IF (step = 1) THEN
	IF ton_10ms_SettledBuffer.Q AND NOT Std.HaltSysZone[myZone]THEN
		IF Line[myRelLine].Clear AND NOT i_bagAtBufferOut AND NOT i_bufferOutOpen AND NOT Line[myRelLine].Trip THEN
			IF (myBag = 0) THEN
				C[myRelLine] := 0;
				D[900 + mySeq] := 2;
			ELSIF (Bag[myBag].Cat > 0) AND (Bag[myOutBag].Cat = 0) THEN
				C[myRelLine] := 0;
				D[900 + mySeq] := 2;	
			ELSIF (Bag[myBag].Cat = 0) THEN
				Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
				Alarm[mySeq].Time := 0;	
			ELSIF (Bag[myOutBag].Cat > 0) THEN
				Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;			
				Alarm[mySeq].Bag := myOutBag;
				Alarm[mySeq].Time := 0;	
			END_IF;		
		ELSIF Line[myRelLine].Trip THEN
			Alarm[mySeq].Name := ALM_SWITCH_FAULT; //Trip is stuck on 			
			Alarm[mySeq].Time := 500;
		END_IF;
	ELSIF (myBag > 0) AND (Bag[myBag].Cat > 0) THEN
		Alarm[mySeq].Name := ALM_BAG_NOT_SETTLED;
	END_IF;
END_IF;		
	
	
IF (step = 2) THEN	
	dataValid := ((myBag = 0) OR ((Bag[myBag].Cat > 0) AND (Bag[myOutBag].Cat = 0)));	
	o_openBuffer :=  dataValid;	
	IF dataValid THEN
		IF Line[myRelLine].Trip THEN 
			IF (myBag > 0) THEN
				Bag[myOutBag] := Bag[myBag];
				Bag[myBag]  := Bag[0];
			END_IF;		
			D[900 + mySeq] := 1;		
		END_IF;
		Alarm[mySeq].Name := ALM_BAG_NOT_RELEASED;	
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
END_IF;		
	
	
//-----------------------------------
//PLC Outputs - adjust TO suit system
//-----------------------------------

Y[myIO].Y08 := o_openBuffer;	

//Alarms
timerAlarm(IN := NOT pls AND (Alarm[mySeq].Name > 0),PT:= Alarm[mySeq].Time);

Alarm[mySeq].On 	:= timerAlarm.Q;
Alarm[mySeq].ET 	:= timerAlarm.ET;

END_PROGRAM

