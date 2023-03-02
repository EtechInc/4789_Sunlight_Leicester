(********************************************************************
* COPYRIGHT --  
********************************************************************
* Program: pr
* File: pr.st
* Author: treamsbottom
* Created: July 16, 2015
********************************************************************
* Implementation of program Point x_x
********************************************************************)
// LIMITS CAN ONLY 9 BUFFERS AND 9 RELEASE LINES!!//
//V1.00.1 First Release

PROGRAM _INIT
//Configuration
mySeq						:= 24;	//Sequence number
myIO						:= 103;	
myZone						:= 0;
myRelLine[1]				:= 25; 
myRelLine[2]				:= 12;

myBuffBag[1]				:= 326;
myBuffBag[2]				:= 125;


//Configure the destination Maps for each release line	
destCheck[1].Dests[1] := 25;// Line 1 can only recieve bags with of 25 	

destCheck[2].Dests[1] := EMPTY_BAG;// relLine 2 can recieve bags empty bags or bags for dischager 6. // Destination of 0 is valid.	
destCheck[2].Dests[2] := 26;//	

FOR line := 1 TO MAX_LINES_OUT DO	
	myOutBag[line] 			:= Line[myRelLine[line]].LastBag;
END_FOR;	

bufferSettleTime			:= 300; 	

alarm						ACCESS ADR(Alarm[mySeq]);

END_PROGRAM


PROGRAM _CYCLIC
//Inputs
i_bagAtBuffer[1]			:= X[myIO].X01;		
i_bagAtBuffer[2]			:= X[myIO].X02;

i_bagAtBufferOut[1] 	:= FALSE; // Any Single bag buffer out IO.
i_bufferOutOpen[1]		:= FALSE;
i_bagAtBufferOut[2] 	:= X[105].X01; 
i_bufferOutOpen[2]		:= Y[105].Y05;

o_reset					:= FALSE;
FOR buffer := 1 TO MAX_LINES_IN DO	
	o_openBuffer[buffer]			:= FALSE;
	queue.input[buffer] 			:= i_bagAtBuffer[buffer]; //Input for buffer queues..	
END_FOR;
	
FOR line := 1 TO MAX_LINES_OUT DO	
	o_select[line]			:= FALSE;
	IF (myRelLine[line] > 0) THEN 
		lineReadyToRecieve[line] := (Line[myRelLine[line]].Clear AND ((Bag[myOutBag[line]].Cat = 0) OR (myOutBag[line] = 0)) AND NOT i_bagAtBufferOut[line] AND NOT i_bufferOutOpen[line]);
		lineBagRecieved[line] := Line[myRelLine[line]].Trip;	
	END_IF;		
END_FOR;
// Set your own conditions here if not using lines 	
//myOutBag[1] := 0;//		
//lineReadyToRecieve[1] := ;//This is used to check if we can release to the line, so we can check things like rail align sensors..	
//lineBagRecieved[line] := ;//This is condition for when the bag has arrived..

IF (myBuffBag[1] = 0) THEN	
	alarm.Bag	:= mySeq + 10000;			
ELSE		
	alarm.Bag	:= myBuffBag[1];	
END_IF;

alarm.Name 		:= 0;
alarm.Beacon	:= TRUE;
alarm.Extra		:= 0;
alarm.Time		:= 3000;

//Setup Sequence
step := D[900 + mySeq];
//Setup Pulse contact
pls := (step <> lastStep);
lastStep := step;

//Sequence
IF (step = 0) THEN
	//Disabled
END_IF;

IF (step > 0) THEN	
	_alarms;	
END_IF;		
//step 1 reset points
ton_reset(IN:= (step = 1),PT:= 300);	
IF (step = 1) THEN
	o_reset := 1;
	IF ton_reset.Q AND NOT Std.HaltSysZone[myZone] THEN
		D[900 + mySeq] := 2;	
	END_IF;	
END_IF;	


//Step 2 choose which bag has been waiting longest and decide where to send it.	
//Inputs in loop above //
queue.settleTime 	:= bufferSettleTime;	
FOR line := 1 TO MAX_LINES_OUT DO	
	destQueue.input[line] := lineReadyToRecieve[line]; 	
END_FOR;	
destQueue.settleTime := 10;

IF (step = 2) THEN
	IF NOT Std.HaltSysZone[myZone] THEN
		IF (queue.waitingLongest > 0) THEN
			buffer := queue.waitingLongest;
			line := destQueue.waitingLongest;
			bag_buff		ACCESS ADR(Bag[myBuffBag[buffer]]);	 // Always set the references.. Even if the ref is to 0. Will cause PLC to fail if pointer is not valid.		
			//Tracking bags.
			IF (myBuffBag[buffer] > 0) THEN
				//First check if we have Valid data.. If not reset the queue time.		
				IF (bag_buff.Cat > 0) THEN	
					// We need to check if a destination has to be set and is vaild.
					IF lineReadyToRecieve[line] THEN // First check the buffer that has been waiting longest.
						FOR d := 1 TO MAX_LINES_OUT DO 
							IF ((bag_buff.Dst = destCheck[line].Dests[d]) AND  (destCheck[line].Dests[d] > 0)) OR ((bag_buff.Cat = Std.MaxCats) AND (destCheck[line].Dests[d] = EMPTY_BAG)) THEN
								selectedLine := line;	
								EXIT;
							END_IF;	
						END_FOR;
					END_IF;	//IF no bag found try all the other outgoing buffers
					IF (selectedLine = 0) THEN	
						FOR line := 1 TO MAX_LINES_OUT DO 	
							FOR d := 1 TO MAX_LINES_OUT DO 
								IF (lineReadyToRecieve[line] AND (((bag_buff.Dst = destCheck[line].Dests[d]) AND  (destCheck[line].Dests[d] > 0)) OR ((bag_buff.Cat = Std.MaxCats) AND (destCheck[line].Dests[d] = EMPTY_BAG))))  THEN
									selectedLine := line;	
									EXIT;
								END_IF;	
							END_FOR;
							IF (selectedLine > 0) THEN EXIT; END_IF;
						END_FOR;		
					END_IF;		
				END_IF;
				IF (selectedLine = 0) THEN // No line has been found so remove it from the queue to search the other lines.
					queue.input[buffer] := FALSE;//<-- Problem here is that we reset the settle time!!!			
				END_IF;	
			ELSE // No tracking.
			//	selectedLine := destQueue.waitingLongest;			
			END_IF;	
			IF (selectedLine > 0) THEN // Go to next step.
				D[900 + mySeq] :=  (buffer * 10) + selectedLine ; 
			END_IF;
		END_IF;	
		_alarms;	
	END_IF;		
ELSE
	selectedLine := 0;								
END_IF;	

						
					
//Step (Increments of 10 is the buffer, remain is line to send to)	
IF (step >= 11) THEN	
	buffer :=  (step / 10);	
	line := step MOD 10;
	//Check ranges	
	IF (buffer > 0) AND (line > 0) AND (buffer <= MAX_LINES_IN) AND (line <= MAX_LINES_OUT) THEN	
		bag_buff		ACCESS ADR(Bag[myBuffBag[buffer]]);
		bag_out		 	ACCESS ADR(Bag[myOutBag[line]]);										
		IF lineReadyToRecieve[line] THEN
			IF (myRelLine[line] > 0) THEN
				C[myRelLine[line]] := 0;
			END_IF;		
			releaseValid := 1;	
		END_IF;	
		IF releaseValid THEN	
			o_select[line] := 1;
			o_openBuffer[buffer] := 1; 	
			IF lineBagRecieved[line] THEN
				IF (myOutBag[line] > 0) AND (myBuffBag[buffer] > 0) THEN // Move bag data if required.
					bag_out := bag_buff;
					bag_buff := Bag[0];	
				END_IF;	
				D[900 + mySeq] := 1;	
			ELSE	
				alarm.Name := ALM_BAG_NOT_RELEASED;
			END_IF;			
		END_IF;			
	ELSE
		alarm.Name := ALM_GENERAL_SEQUENCE;
		alarm.Time := 0;	
	END_IF;		
ELSE
	releaseValid := 0;		
END_IF;		


queue(); // Function for incoming buffer queue
destQueue(); // Outgoing buffer queue.

//-----------------------------------
//PLC Outputs - adjust TO suit system
//-----------------------------------

Y[myIO].Y05 := o_openBuffer[1];	
Y[myIO].Y06 := o_openBuffer[2];

Y[myIO].Y07 := o_openBuffer[1];	
Y[myIO].Y08 := o_openBuffer[2] OR o_reset;	

Y[myIO + 1].Y07 	:= o_select[1];	
Y[myIO + 1].Y08 	:= o_select[2] OR o_reset;	

//Alarms
timerAlarm(IN := NOT pls AND (alarm.Name > 0),PT:= alarm.Time);

alarm.On 	:= timerAlarm.Q;
alarm.ET 	:= timerAlarm.ET;

END_PROGRAM

