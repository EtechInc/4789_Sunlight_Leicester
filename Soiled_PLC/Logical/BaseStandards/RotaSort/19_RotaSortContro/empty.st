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
mySeq						:= 19;	//Sequence number
myIO						:= 300; // Start of IO block for sorting stations - 1..	
myZone						:= 1;
myBank						:= 1;
myBag						:= 219; //transit Bag
myBuffBag					:= 253;//Track empty bag in	
myInTransitBag				:= 249;//Transit position for empty in ( Do not use if not tracking empty)	
bufferSettleTime			:= 300; 	
myStnBag					:= 210; //Start or station bags (- 1) - The bags used when full, not the loading program)
	
myRelLine					:= 0;	
myOutBag 					:= 221; //Line[myRelLine].LastBag;//Line[myRelLine].LastBag;	
END_PROGRAM
		

PROGRAM _CYCLIC
//Inputs
i_bagAtBuffer				:= X[212].X03;   

// Any Single bag buffer out IO.	
bagAtBufferOut				:= X[32].X06;	
bufferOutOpen				:= Y[32].Y08; 

RequestRel.VC[1] := FALSE;
	
FOR n := 1 TO MAX_ROTASTATIONS  DO	
	i_bagOnStnA[n]				:= X[myIO + n].X01;
	i_bagOnStnB[n]				:= X[myIO + n].X02;
	i_pastStop[n]				:= X[myIO + n].X04;
	o_openStops[n]				:= FALSE;
	o_openStopsRelease[n]		:= FALSE;
	o_Rotate[n]					:= FALSE;
	closeStop[n]				:= FALSE;	
END_FOR;	

o_openBuffer			:= FALSE;
o_reset					:= FALSE;	

Ldg[myBank].EnableStnRelease := FALSE;	
	
IF (myBag = 0) THEN	
	Alarm[mySeq].Bag	:= mySeq + 10000;			
ELSE		
	Alarm[mySeq].Bag	:= myBag;	
END_IF;
	
Alarm[mySeq].Name 		:= 0;
Alarm[mySeq].Beacon	:= TRUE;
Alarm[mySeq].Extra		:= 0;
Alarm[mySeq].Time		:= 3000;

//Global timers. Used in station for pusher type,
FOR n := 0 TO MAX_ROTASTATIONS DO
	TON_SettledInStation[n].IN := i_bagOnStnA[n] AND i_bagOnStnB[n]; 				
	TON_SettledInStation[n].PT := 50;			
	TON_SettledInStation[n]();			
END_FOR;		
	
//Setup Sequence
step := D[900 + mySeq];
//Setup Pulse contact
pls := (step <> lastStep);
lastStep := step;

//Sequence
IF (step = 0) THEN
	//Disabled
END_IF;

	
//Reset Points
ton_Reset.IN := (step = 1);
ton_Reset.PT := 150;
ton_Reset();	
IF (step = 1) THEN
	D[950 + myBank]:= 0;		
	o_reset := 1;
	switchCheck := 1;		
	IF ton_Reset.Q THEN
		FOR n:= 1 TO MAX_ROTASTATIONS DO
			IF i_bagOnStnA[n] OR i_bagOnStnB[n] OR i_pastStop[n] THEN
				switchCheck := 0;
				EXIT;	
			END_IF;		
		END_FOR;
		IF switchCheck THEN
			Count[mySeq] := Count[mySeq] + 1;
			D[900 + mySeq] := 2;
		ELSE
			Alarm[mySeq].Name := ALM_SWITCH_FAULT;
		END_IF;		
	END_IF;		
END_IF;

			
//Waiting longest loop for sending empty into station			
ton_SettledBuffer.IN := i_bagAtBuffer;
ton_SettledBuffer.PT := bufferSettleTime;
ton_SettledBuffer();			
FOR n := Ldg[myBank].StartStn TO Ldg[myBank].EndStn DO			
	lineValid[n] := Stn[n].requestBag;		
	IF lineValid[n] THEN
		IF (waitTime[n] < 16#FFFFFFFF) THEN
			waitTime[n]:= waitTime[n] + 1;
		END_IF;		
	ELSE		
		waitTime[n] := 0;
	END_IF;		
END_FOR;		

waitingLongest[0] := 0;
waitTime[0] := 0;	
FOR n := Ldg[myBank].StartStn TO Ldg[myBank].EndStn DO
	IF waitTime[n] > waitTime[0] THEN
		waitTime[0] := waitTime[n];	
		waitingLongest[0] := n;
	END_IF;		
END_FOR;		
				
waitingLongest[1] := 0;
Stn[0].QTime := 0;	
FOR n := Ldg[myBank].StartStn TO Ldg[myBank].EndStn DO
	IF Stn[n].QTime > Stn[0].QTime AND (Stn[n].QTime > 5) THEN // Settle 1 secs before releasing
		Stn[0].QTime := Stn[n].QTime;	
		waitingLongest[1] := n;
	END_IF;		
END_FOR;				
		
//add next loop to decide which is waiting longest... Release bag or send bag.		
FOR n:= 0 TO 1 DO	
	IF waitingLongest[n] > 0 THEN	
		IF (queueTime[n + 1] < 16#FFFFFFFF) THEN
			queueTime[n + 1]:= queueTime[n + 1] + 1;
		END_IF;		
	ELSE		
		queueTime[n + 1] := 0;
	END_IF;				
END_FOR;			
//..					
bufferClear := Request.VC[1]; // Line[myRelLine].Clear AND (Bag[myOutBag].Cat = 0) AND NOT bufferOutOpen AND NOT bagAtBufferOut;	
//step 2 = Decide what to do...	
IF (step = 2) THEN
	IF (myBuffBag > 0) THEN 
		recieveValid := ton_SettledBuffer.Q AND (Bag[myBuffBag].Cat > 0) AND (Bag[myInTransitBag].Cat = 0);	
		IF (Bag[myInTransitBag].Cat > 0) THEN
			Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
			Alarm[mySeq].Bag := myInTransitBag;
			Alarm[mySeq].Time := 0;
		ELSIF ton_SettledBuffer.Q AND (Bag[myBuffBag].Cat = 0) THEN		
			Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
			Alarm[mySeq].Bag := myBuffBag;
			Alarm[mySeq].Time := 500;
		END_IF;		
	ELSE	
		recieveValid := ton_SettledBuffer.Q;	
	END_IF		
	IF NOT Std.HaltSysZone[myZone] THEN
		//Decide if the Send or take bag based on wait time..		
		queueValid[1] := recieveValid;
		queueValid[2] := bufferClear;
		waitingLongest[2] := 0;	
		queueTime[0] := 0;
		FOR n := 1 TO 2 DO
			IF (queueTime[n] > queueTime[0]) AND queueValid[n] THEN
				queueTime[0] := queueTime[n];	
				waitingLongest[2] := n;
			END_IF;		
		END_FOR;
		//	
		IF (waitingLongest[2] = 1) THEN//AND recieveValid THEN //Send empty bag
			D[950 + myBank] := UDINT_TO_UINT(waitingLongest[0]);
			IF (Bag[myBuffBag].Cat > 0) THEN	
				Bag[myInTransitBag] := Bag[myBuffBag];
				Bag[myBuffBag] := Bag[0];	
			END_IF;		
			D[900 + mySeq] := 3;		
		ELSIF (waitingLongest[2] = 2) THEN//AND bufferClear THEN	// Send Bag to Station		
			D[950 + myBank] := UDINT_TO_UINT(waitingLongest[1]);
			D[900 + mySeq] := 7;					
		END_IF;
	END_IF;		
END_IF;		

myStn := D[950 + myBank];
StnBag := myStnBag + myStn;		
//step 3 select point to send	
IF (step = 3) THEN	
	o_openBuffer := TRUE;
	FOR n := 1 TO myStn DO // Open all stops down stream of stn.
		o_openStops[n] := TRUE;			
	END_FOR;	
	IF i_pastStop[myStn] THEN
		D[900 + mySeq] := 4;	
	END_IF;
	Alarm[mySeq].Bag := myInTransitBag;	
	Alarm[mySeq].Name := ALM_BAG_NOT_RELEASED;
    Alarm[mySeq].Time := 6000;
END_IF;	
					
IF (step = 4) THEN
	closeStop[myStn] := 1;
	FOR n := 1 TO myStn DO // Open all stops down stream of stn.
		o_openStops[n] := TRUE;			
	END_FOR;	
	IF TON_SettledInStation[myStn].Q THEN					
		D[900 + mySeq] := 5;		
	END_IF;	
	Alarm[mySeq].Bag := StnBag;
	Alarm[mySeq].Name := ALM_BAG_NOT_SETTLED;	
    Alarm[mySeq].Time := 6000;
END_IF;						

		
ton_Rotate.IN := (step = 5) OR (step = 7) OR (step = 9);
ton_Rotate.PT := 450; 
ton_Rotate();			
IF (step = 5) THEN				
	o_Rotate[myStn] := TRUE;
	IF ton_Rotate.Q THEN							
		D[900 + mySeq] := 6;
	END_IF;					
END_IF;				
				
IF (step = 6) THEN
	o_Rotate[myStn] := TRUE;
	o_openStops[myStn] := TRUE;
	IF NOT Stn[myStn].requestBag THEN			
		IF (myBuffBag > 0) THEN
			Bag[StnBag] := Bag[myInTransitBag];
			Bag[myInTransitBag] := Bag[0];	
		END_IF;		
		D[900 + mySeq] := 1;				
	END_IF;	
	Alarm[mySeq].Name := ALM_BAG_NOT_RELEASED;
	Alarm[mySeq].Bag := StnBag;	
    Alarm[mySeq].Time := 6000;
END_IF;				
				
//Release Bag /Rotate Points..
IF (step = 7) THEN					
	o_Rotate[myStn] := TRUE;		
	IF ton_Rotate.Q THEN			
		D[900 + mySeq] := 8;				
	END_IF;			
			
END_IF;					

		
IF (step = 8) THEN				
	Ldg[myBank].EnableStnRelease := TRUE;				
	o_Rotate[myStn] := TRUE;
	IF 	(TON_SettledInStation[myStn].Q AND (Bag[myBag].Cat = 0) AND Stn[myStn].Unlock) AND Request.VC[1] THEN // Remove unlock if not using pusher type.			
		IF (ReportLoading[myStn].Cat = 0) THEN
			Bag[myBag] := Bag[StnBag];
			Bag[StnBag] := Bag[0];
			ReportLoading[myStn].Prg := Bag[myBag].Prg;
			ReportLoading[myStn].Cat := Bag[myBag].Cat;
			ReportLoading[myStn].Cus := Bag[myBag].Cus;
			ReportLoading[myStn].Wgt := Bag[myBag].Wgt;
			ReportLoading[myStn].Cnt := 0;			
			ReportLoading[myStn].Stn := myStn;     				
			ReportLoading[myStn].Mcn := 0;					
			ReportLoading[myStn].Bid := Bag[myBag].Mis;			
			D[900 + mySeq] := 9;
		END_IF;
		//C[myRelLine] := 0;				
		//D[900 + mySeq] := 9;
	END_IF;	
	Alarm[mySeq].Bag := StnBag;
	IF Bag[myBag].Cat > 0 THEN
		Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
	ELSIF NOT TON_SettledInStation[myStn].Q THEN
		Alarm[mySeq].Name := ALM_BAG_NOT_SETTLED;	
        Alarm[mySeq].Time := 6000;	
	END_IF;						
END_IF;
		

//Release Bag /Rotate Points..
IF (step = 9) THEN		
	IF ton_Rotate.Q THEN			
		D[900 + mySeq] := 10;				
	END_IF;							
END_IF;
	
//Open Stations	bag arrives.		
IF (step = 10) THEN
	FOR n := myStn TO MAX_ROTASTATIONS DO //Open all stop ahead of releasing station
		o_openStopsRelease[n] := TRUE;						
	END_FOR;
	IF NOT Request.VC[1] AND (Bag[myBag].Cat = 0) THEN				
		D[900 + mySeq] := 1;
	END_IF;	
	Alarm[mySeq].Bag := myBag;
	Alarm[mySeq].Name := ALM_BAG_NOT_RELEASED;	
    Alarm[mySeq].Time := 6000;	
END_IF;						
		
	
//-----------------------------------
//PLC Outputs - adjust TO suit system
//-----------------------------------

Y[212].Y06 := o_openBuffer;	
FOR n := 1 TO MAX_ROTASTATIONS DO	
	Y[myIO + n].Y07	:= o_Rotate[n];				
	Y[myIO + n].Y08	:= ((o_openStops[n] OR o_openStopsRelease[n]) AND NOT closeStop[n]);				
END_FOR;				
				

	
//Alarms
timerAlarm(IN := NOT pls AND (Alarm[mySeq].Name > 0),PT:= Alarm[mySeq].Time);

Alarm[mySeq].On 	:= timerAlarm.Q;
Alarm[mySeq].ET 	:= timerAlarm.ET;

END_PROGRAM

