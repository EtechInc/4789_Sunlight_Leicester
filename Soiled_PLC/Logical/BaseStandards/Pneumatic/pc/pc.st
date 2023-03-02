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
//V1.00.1 First Release
PROGRAM _INIT
//Configuration
mySeq						:= 10;		//Sequence number
myIO						:= 191;
myX20IO						:= 6;		// IO for hardwired stops	
myPC						:= 1;	
myZone						:= 0;
myRelLine					:= 22;
useRequest					:= FALSE; 	//Use the Request bit. Only use when working with x_1_point. otherwise use RequestRelease as the i_bagAtBuffer.		
myBuffBag					:= 0; 		//Buffer bag	
myBag						:= 255; 	//Buffer Bag
bufferSettleTime			:= 300; 	

isDecline					:= FALSE; // VC is moving bags down	
myOutBag 					:= Line[myRelLine].LastBag;	
END_PROGRAM


PROGRAM _CYCLIC
//Inputs
i_carrAtTop					:= X[myIO].X01;
i_carrAtBottom				:= X[myIO].X02;
i_bagArrive					:= X[myIO].X03;
i_bagOnCarriage				:= X[myIO].X04;	
i_bagAtBuffer				:= X[myIO].X05;		


i_bagAtBufferOut 		:= FALSE; // Any Single bag buffer out IO.
i_bufferOutOpen			:= FALSE;

o_openBuffer			:= FALSE;
o_openCarriageStop		:= FALSE;	
moveToIncomingPosition	:= FALSE;
moveToOutgoingPosition	:= FALSE;	

Request.PC[myPC]		:= FALSE;
RequestRel.PC[myPC]		:= FALSE;	
	
	
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

//Step 1 move to bag in position	
IF (step = 1) THEN	
	moveToIncomingPosition := TRUE;	
	IF carrInIncomingPos THEN	
		D[900 + mySeq] := 2;
	END_IF		
	IF NOT Std.HaltSysZone[myZone] THEN
		Alarm[mySeq].Name := ALM_CARRIAGE_MOVE_FAULT;	
	END_IF;	
END_IF;		

//Wait for at buffer
ton_10ms_SettledBuffer(IN:= i_bagAtBuffer, PT:= bufferSettleTime);
IF (step = 2) THEN
	moveToIncomingPosition := TRUE;
	IF carrInIncomingPos AND NOT Std.HaltSysZone[myZone] AND NOT i_bagOnCarriage AND NOT i_bagArrive THEN 	
		IF useRequest THEN 
			D[900 + mySeq] := 3;			
		ELSE		
			IF ton_10ms_SettledBuffer.Q THEN
				IF (myBuffBag > 0) THEN	
					IF (Bag[myBuffBag].Cat > 0) AND (Bag[myBag].Cat = 0) THEN
						D[900 + mySeq] := 3;
					ELSIF (Bag[myBuffBag].Cat = 0) THEN
						Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
						Alarm[mySeq].Bag := myBuffBag;
					ELSE		
						Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;	
					END_IF;		
				ELSE	
					D[900 + mySeq] := 3;
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
IF (step = 3) THEN
	moveToIncomingPosition := TRUE;
	IF carrInIncomingPos THEN
		carrInPosLatch := TRUE;
	END_IF;		
	releaseValid := (carrInPosLatch AND ((myBag = 0) OR ((Bag[myBag].Cat = 0) AND (Bag[myBuffBag].Cat > 0))));
	o_openBuffer	   := releaseValid AND NOT useRequest;
	Request.PC[myPC]  := releaseValid AND useRequest;
	IF ((i_bagArrive OR i_bagOnCarriage) AND releaseValid) THEN
		IF (myBag > 0) THEN
			Bag[myBag] := Bag[myBuffBag]; //Clear empty buffer bag data if used
			Bag[myBuffBag] := Bag[0];		
		END_IF;
		D[900 + mySeq] := 4;
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
	ELSIF NOT carrInPosLatch THEN
		Alarm[mySeq].Name  := ALM_SWITCH_FAULT;		
	ELSE		
		Alarm[mySeq].Name  := ALM_BAG_NOT_ARRIVED;		
	END_IF;
END_IF;	

// Step 4 Bag settles on carriage..
ton_10ms_SettledCarriage(IN:= i_bagOnCarriage, PT:= 300);	
IF (step = 4) THEN	
	moveToIncomingPosition := TRUE;	
	IF  ton_10ms_SettledCarriage.Q AND NOT Std.HaltSysZone[myZone] AND NOT i_bagArrive THEN
		D[900 + mySeq] := 5;	
	ELSIF NOT Std.HaltSysZone[myZone] THEN 	
		Alarm[mySeq].Name := ALM_BAG_NOT_SETTLED;
	END_IF;		
END_IF		
	
// Step 5 move to outgoing position
IF (step = 5) THEN	
	moveToOutgoingPosition := TRUE;
	IF carrAtOutgoingPos THEN	
		D[900 + mySeq] := 6;		
	ELSIF NOT Std.HaltSysZone[myZone] THEN	
		Alarm[mySeq].Name := ALM_CARRIAGE_MOVE_FAULT;	
	END_IF;	
END_IF;

	
//Step 6 check release condtion.	
//Check for line space.
IF (step = 6) THEN
	moveToOutgoingPosition := TRUE;	
	releaseValid := (carrAtOutgoingPos AND NOT i_bagAtBufferOut AND NOT i_bufferOutOpen AND ((myBag = 0) OR ((Bag[myBag].Cat > 0) AND (Bag[myOutBag].Cat = 0))));		
	IF (myRelLine > 0) THEN
		IF (Line[myRelLine].Clear AND releaseValid) THEN
			C[myRelLine] := 0;
			D[900 + mySeq] := 7;
		END_IF;
		IF NOT carrAtOutgoingPos THEN
			Alarm[mySeq].Name := ALM_CARRIAGE_MOVE_FAULT;
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
		RequestRel.PC[myPC] := releaseValid;
		IF EnableRel.PC[myPC] AND releaseValid THEN
			D[900 + mySeq] := 7;
		ELSIF NOT carrAtOutgoingPos THEN
			Alarm[mySeq].Name := ALM_CARRIAGE_MOVE_FAULT;
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

//Step 7 Release bag.
IF (step = 7) THEN
	releaseValid := (NOT i_bagAtBufferOut AND NOT i_bufferOutOpen AND ((myBag = 0) OR ((Bag[myBag].Cat > 0) AND (Bag[myOutBag].Cat = 0))));	
	o_openCarriageStop := releaseValid AND NOT Std.HaltSysZone[myZone];
	IF releaseValid THEN
		IF (myBag = 0) THEN
			IF (myRelLine > 0) THEN
				IF Line[myRelLine].Trip THEN
					D[900 + mySeq] := 1;	
				END_IF;
			ELSE
				IF NOT EnableRel.PC[myPC] THEN 
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
				IF NOT EnableRel.PC[myPC] AND (Bag[myBag].Cat = 0) THEN // Make sure data is copied out by enabling sequence.
					D[900 + mySeq] := 1;
				ELSIF NOT EnableRel.PC[myPC] AND (Bag[myBag].Cat > 0) THEN
					Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;		
				END_IF;	
			END_IF;			
		END_IF;	
	ELSIF NOT carrAtOutgoingPos THEN
		Alarm[mySeq].Name := ALM_CARRIAGE_MOVE_FAULT;
		Alarm[mySeq].Time := 0;	
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
END_IF;

//Control Position	
IF isDecline THEN	
	o_moveUp := moveToIncomingPosition;
	o_moveDown := moveToOutgoingPosition;
	carrInIncomingPos := i_carrAtTop;
	carrAtOutgoingPos := i_carrAtBottom;			
ELSE		
	o_moveDown := moveToIncomingPosition;
	o_moveUp := moveToOutgoingPosition;	
	carrInIncomingPos := i_carrAtBottom;
	carrAtOutgoingPos := i_carrAtTop;	
END_IF;		

	
//-----------------------------------
//PLC Outputs - adjust TO suit system
//-----------------------------------

Y[myIO].Y06			:= o_openBuffer;	
Y[myIO].Y07			:= ((step >= 3) AND (step <= 4) AND carrInIncomingPos); //Safe stop
	
Y[myX20IO].Y01 		:= (o_moveUp AND NOT i_carrAtTop); //Move carriage up	
Y[myX20IO].Y02 		:= (o_moveDown  AND NOT i_carrAtBottom);//Move carriage down
Y[myX20IO].Y03 		:= (o_openCarriageStop AND carrAtOutgoingPos);// Carriage Stop



//Don't allow forcing of carriage movement and carriage stop
YForceDisable[myX20IO].Y01 	:= TRUE;
YForceDisable[myX20IO].Y02 	:= TRUE;
YForceDisable[myX20IO].Y03 	:= TRUE;
	
//Alarms
timerAlarm(IN := NOT pls AND (Alarm[mySeq].Name > 0),PT:= Alarm[mySeq].Time);

Alarm[mySeq].On 	:= timerAlarm.Q;
Alarm[mySeq].ET 	:= timerAlarm.ET;

END_PROGRAM

