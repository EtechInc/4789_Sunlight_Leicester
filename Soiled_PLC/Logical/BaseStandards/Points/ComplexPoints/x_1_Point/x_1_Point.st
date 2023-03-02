(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * PROGRAM: x_1_Point
 * File: x_1_Point.st
 * Author: treamsbottom
 * Created: July 9, 2015
 ********************************************************************
 * Implementation OF PROGRAM x_1_Point
 ********************************************************************)
// V1 - 09 July 2015 T.R First Release
//V2.00.1 First release compliant with new standards.
//V2.00.2 Add Destination Valid check, Only release a bag when it has a valid destination.
//V2.00.3 Add Buffer out position.. A fake bag register for outgoing sequences to check for data valid before enabling..
//V2.00.4 Make Transit bag optional

PROGRAM _INIT
// Configuration
	
//SET LOCAL_MAX_BUFFERS to set number of buffers..	
	mySeq				:= 14;	//Sequence number

	myRelLine			:= 45; 	// Set TO 0 TO use request....
	myPoint				:= 7;

	myZone				:= 1;
	myIO				:= 107;

	useDestinations		:= 0; // Set to true to wait for a destination to be valid before going into the buffer queue. NB> This does not alarm as it only expected to work with a search function.		
	
	myBag[1]			:= 305; // Buffer Bags
	myBag[2]			:= 301;	

	myTransitBag		:= 0; // Set to use transit bag before out bag..	
	mySelectedBag		:= 0; // A bag to show to the next sequence which bag has been selected. USE INSTEAD OF myTransitBag 
	
	FOR n := 1 TO LOCAL_MAX_BUFFERS DO
		bufferSettleTime[n] := 300; 		
	END_FOR;
	
	
	IF (myRelLine > 0) THEN	
		myOutBag		:= Line[myRelLine].LastBag;	
	ELSE 
		myOutBag 		:= 0; //Set bag number here if using request/enable AND tracking....		
	END_IF;		
	
END_PROGRAM


PROGRAM _CYCLIC

	i_bagAtBuffer[1]	:= X[myIO].X01;	//Set request release here if required 
	i_bagAtBuffer[2]	:= X[myIO].X02;

	i_bagAtBufferOut 	:= FALSE;
	i_bufferOutOpen		:= FALSE;
	
	o_reset				:= FALSE;
	
	FOR n := 0 TO LOCAL_MAX_BUFFERS DO
		o_openBuffer[n]	:= FALSE;
		o_select[n]		:= FALSE;		
	END_FOR;

	Request.PN[myPoint] := FALSE;	
	RequestRel.PN[myPoint] := FALSE;		

	
	Bag[mySelectedBag] := Bag[0];	
	
	IF myOutBag = 0 THEN	
		Alarm[mySeq].Bag	:= mySeq + 10000;			
		myTransitBag := 0; // If out bag is not defined we cannot track bags do delete mapping of transit bag.
	ELSE		
		Alarm[mySeq].Bag	:= myOutBag;	
	END_IF;

	Alarm[mySeq].Name 	:= 0;
	Alarm[mySeq].Beacon	:= TRUE;
	Alarm[mySeq].Extra	:= 0;
	Alarm[mySeq].Time	:= 3000;

	//Setup Sequence
	step := D[900 + mySeq];
	//Setup Pulse contact
	pls := (step <> laststep);
	laststep := step;

	//Sequence
	IF (step = 0) THEN
		//Disabled
	END_IF;

	//Reset Points 

	ton_10ms_reset(IN:=((step = 1) AND NOT Std.HaltSysZone[myZone]), PT:= 200);	
	IF (step = 1) THEN	
		o_reset := NOT Std.HaltSysZone[myZone];	
		IF ton_10ms_reset.Q THEN
			D[900 + mySeq] := 2;
			Count[mySeq] := Count[mySeq] + 1;	
		END_IF;		
	END_IF;	

	FOR n := 1 TO LOCAL_MAX_BUFFERS DO	
		ton_10ms_settledbuffer[n](IN := i_bagAtBuffer[n],PT := bufferSettleTime[n]);
		IF (myBag[n] > 0) THEN // Bag tracking
			IF useDestinations THEN
				myDest := Bag[myBag[n]].Dst;
				IF (myDest > 0) AND (myDest <= MAX_DESTINATIONS) THEN  
					destValid :=  (Line[myDest].Space > 0) AND Line[myDest].Clear;
				ELSE	
					destValid := FALSE;
				END_IF;		
			ELSE		
				destValid := TRUE;
			END_IF;
	
			lineValid[n] := ton_10ms_settledbuffer[n].Q AND (Bag[myBag[n]].Cat > 0);	
	
			IF ton_10ms_settledbuffer[n].Q AND (Bag[myBag[n]].Cat = 0) THEN
				Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
				Alarm[mySeq].Bag := myBag[n];	
			END_IF;		
		ELSE
			destValid := 1;
			lineValid[n] := ton_10ms_settledbuffer[n].Q;
		END_IF;		
		IF lineValid[n] AND destValid THEN
			IF (waitTime[n] < 16#FFFFFFFF) THEN
				waitTime[n]:= waitTime[n] + 1;
			END_IF;		
		ELSE		
			waitTime[n] := 0;
		END_IF;		
	END_FOR;		

	waitingLongest := 0;
	waitTime[0] := 0;		
	FOR n := 1 TO LOCAL_MAX_BUFFERS DO
		IF waitTime[n] > waitTime[0] THEN
			waitTime[0] := waitTime[n];	
			waitingLongest := n;
		END_IF;		
	END_FOR;		

	IF (myRelLine > 0) THEN	
		IF (myTransitBag > 0) THEN
			bufferClear := Line[myRelLine].Clear AND (Bag[myOutBag].Cat = 0) AND (Bag[myTransitBag].Cat = 0) AND NOT i_bagAtBufferOut AND NOT i_bufferOutOpen;	
		ELSIF (myOutBag > 0) THEN
			bufferClear := Line[myRelLine].Clear AND (Bag[myOutBag].Cat = 0) AND NOT i_bagAtBufferOut AND NOT i_bufferOutOpen;	
		ELSE	
			bufferClear := Line[myRelLine].Clear AND NOT i_bagAtBufferOut AND NOT i_bufferOutOpen;	
		END_IF;		
	ELSE // Wait FOR enable Release
		IF (mySelectedBag > 0) THEN // Check data has been copied out by enabling sequence.
			bufferClear := EnableRel.PN[myPoint] AND (Bag[myOutBag].Cat > 0) AND NOT i_bagAtBufferOut AND NOT i_bufferOutOpen;	
		ELSIF (myTransitBag > 0) THEN
			bufferClear := EnableRel.PN[myPoint] AND (Bag[myOutBag].Cat = 0) AND (Bag[myTransitBag].Cat = 0) AND NOT i_bagAtBufferOut AND NOT i_bufferOutOpen;		
		ELSIF (myOutBag > 0) THEN
			bufferClear := EnableRel.PN[myPoint] AND (Bag[myOutBag].Cat = 0) AND NOT i_bagAtBufferOut AND NOT i_bufferOutOpen;		
		ELSE	
			bufferClear := EnableRel.PN[myPoint] AND NOT i_bagAtBufferOut AND NOT i_bufferOutOpen;	
		END_IF;		
	END_IF;		
	
	IF (step = 2) THEN	
		IF (waitingLongest <= LOCAL_MAX_BUFFERS) THEN // Keep arrays in range
			RequestRel.PN[myPoint] := (waitingLongest > 0) AND (myRelLine = 0); // Request release if a buffer is waiting to release.
			IF (mySelectedBag > 0) AND (waitingLongest > 0) THEN
				Bag[mySelectedBag] := Bag[myBag[waitingLongest]];
			END_IF;		
			IF bufferClear AND lineValid[waitingLongest] AND NOT Std.HaltSysZone[myZone] THEN
				IF (myBag[waitingLongest] > 0) THEN
					IF (myTransitBag > 0) THEN// Copy data to transit position
						Bag[myTransitBag] := Bag[myBag[waitingLongest]];	
						Bag[myBag[waitingLongest]] := Bag[0];	
					ELSIF (mySelectedBag > 0) THEN
						Bag[myBag[waitingLongest]] := Bag[0];	
					END_IF;
				END_IF;		
				IF (myRelLine > 0) THEN
					C[myRelLine] := 0;
				END_IF;
				D[900 + mySeq] := step + waitingLongest;				
			ELSIF (myTransitBag > 0) AND (Bag[myTransitBag].Cat > 0) THEN
				Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
				Alarm[mySeq].Bag := myTransitBag;			
			ELSIF (myOutBag > 0) AND Line[myRelLine].Clear AND (Bag[myOutBag].Cat > 0) THEN	
				Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;	
			END_IF;	
		ELSE
			Alarm[mySeq].Name := ALM_GENERAL_SEQUENCE;
		END_IF;		
	END_IF;

	//Select Points AND release bag,NOTE step is greater than OR equal TO 3 so it will be a different step number FOR each destination.
	IF (step >= 3) THEN
		myLine := step - 2;
		releaseValid := ((mySelectedBag > 0) OR (myOutBag = 0) OR ((myTransitBag > 0) AND (Bag[myOutBag].Cat = 0) AND (Bag[myTransitBag].Cat > 0)) 
		OR ((myOutBag > 0) AND  (myTransitBag = 0)  AND (Bag[myOutBag].Cat = 0) AND (Bag[myBag[myLine]].Cat > 0)));
		o_select[myLine] :=	TRUE;	
		o_openBuffer[myLine] := releaseValid;
		bagArrived := (((myRelLine > 0) AND Line[myRelLine].Trip) OR ((myRelLine = 0) AND NOT EnableRel.PN[myPoint]));	
		IF bagArrived AND releaseValid THEN	
			IF (myTransitBag > 0) AND (myRelLine > 0) THEN//Only copy data out if not using RequestRel
				Bag[myOutBag] := Bag[myTransitBag];	
				Bag[myTransitBag] := Bag[0];	
			ELSIF (myOutBag > 0 AND myRelLine > 0) THEN
				Bag[myOutBag] := Bag[myBag[myLine]];	
				Bag[myBag[myLine]] := Bag[0];
			END_IF;		
			IF (myRelLine = 0) AND (myOutBag > 0) THEN // If using request and tracking make sure data has been deleted from transit bag or outgoing bag. by the enabling sequence
				IF (mySelectedBag > 0) THEN
					IF (Bag[myOutBag].Cat = 0) THEN	
						D[900 + mySeq]  := 1;
					END_IF;		
				ELSIF (myTransitBag > 0) THEN
					IF (Bag[myTransitBag].Cat = 0) THEN	// Transit bag should
						D[900 + mySeq]  := 1;	
					ELSE
						Alarm[mySeq].Time := 0;
						Alarm[mySeq].Bag := myTransitBag;
						Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;	
					END_IF;			
				ELSE
					IF ((Bag[myOutBag].Cat = 0) AND (Bag[myBag[myLine]].Cat > 0)) THEN
						Bag[myOutBag] := Bag[myBag[myLine]];
						Bag[myBag[myLine]] := Bag[0];
						D[900 + mySeq]  := 1;
					END_IF;	
				END_IF;		
			ELSE
				D[900 + mySeq] := 1;
			END_IF;			
		ELSIF NOT releaseValid THEN		
			IF Bag[myOutBag].Cat = 0 THEN
				Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;	
			ELSIF Line[myRelLine].Clear AND (Bag[myOutBag].Cat > 0) THEN 
				Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
				Alarm[mySeq].Bag := myOutBag;
			END_IF;		
		END_IF;	
	END_IF;	

	//-----------------------------------
	//PLC Outputs - adjust TO suit system
	//-----------------------------------

	Y[myIO].Y05 := o_openBuffer[1];
	Y[myIO].Y06 := o_openBuffer[2];		
	//EnableRel.VC_HighLevel[2] := o_openBuffer[1];// Example of using RequestRel interface.
	//EnableRel.VC_HighLevel[1] := o_openBuffer[2];// Example of using RequestRel interface.
	
	Y[myIO].Y07 := o_select[1];
	Y[myIO].Y08 := o_reset OR o_select[2];

	//Alarms
	timerAlarm(IN := NOT pls AND (Alarm[mySeq].Name > 0),PT:= Alarm[mySeq].Time);

	Alarm[mySeq].On 	:= timerAlarm.Q;
	Alarm[mySeq].ET 	:= timerAlarm.ET;

END_PROGRAM
