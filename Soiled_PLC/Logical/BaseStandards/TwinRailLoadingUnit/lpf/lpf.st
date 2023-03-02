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
mySeq						:= 32;	//Sequence number
myIO						:= 115;	// IO for switches	
myZone						:= 1;
myPF						:= 1;
	
myBag						:= 207; //transit Bag
myRelLine					:= 0; // Release Line - Set to 0 to Request Release
	
myLuBag[1]					:= 203;
myLuBag[2]					:= 201;

mySelectedLU_reg			:= mySeq; // D register to store selected loaded unit
bufferSettleTime			:= 300; 		
	
myOutBag					:= Line[myRelLine].LastBag;		
	
alarm						ACCESS ADR(Alarm[mySeq]);
bag							ACCESS ADR(Bag[myBag]);
bag_out						ACCESS ADR(Bag[myOutBag]);	
line_release				ACCESS ADR(Line[myRelLine]);

END_PROGRAM


PROGRAM _CYCLIC
//Inputs
	
	
i_bagInRotaryPoint_front[1]	:= X[myIO].X03;
i_bagInRotaryPoint_rear[1]	:= X[myIO].X04;

i_bagInRotaryPoint_front[2]	:= X[myIO].X05;
i_bagInRotaryPoint_rear[2]	:= X[myIO].X06;	
	
	
i_bagAtBufferOut 		:= FALSE; // Any Single bag buffer out IO.
i_bufferOutOpen			:= FALSE;	
	
//Create the q for which loading unit to send to.
// N.B These input conditions are used to arrive the bag.
luWaitingLongest.input[1] := X[21].X03 AND X[21].X04 AND (Bag[myLuBag[1]].Cat > 0); //Loading unit does not have an full bag space
luWaitingLongest.input[2] := RequestRel.LU[2];
luWaitingLongest.settleTime := bufferSettleTime;
luWaitingLongest();	
	

o_straight				:= FALSE; // select all straight rails
Request.PF[myPF]		:= FALSE;
RequestRel.PF[myPF]		:= FALSE;	
	
FOR n := 0 TO MAX_LOADING_UNITS DO 
	o_openStops[n]		:= FALSE;	// Stop on rotary points.
	o_rotate[n] 		:= FALSE;
	o_release[n]		:= FALSE;	// Release from loading unit or buffer.
END_FOR;		
	
IF (myBag = 0) THEN	
	alarm.Bag	:= mySeq + 10000;			
ELSE		
	alarm.Bag	:= myBag;	
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


//Step 1 reset points & switch check
ton_10ms_reset(IN:=((step = 1) AND NOT Std.HaltSysZone[myZone]), PT:= 400);	
IF (step = 1) THEN
	switchCheck := TRUE;	
	FOR n := 1 TO MAX_LOADING_UNITS DO
		IF (i_bagInRotaryPoint_front[n] OR i_bagInRotaryPoint_rear[n]) THEN		
			switchCheck := FALSE;
			EXIT;
		END_IF;
	END_FOR;	
	o_straight := NOT Std.HaltSysZone[myZone];	
	IF ton_10ms_reset.Q AND switchCheck AND (bag.Cat = 0) THEN
		D[900 + mySeq] := 2;
		Count[mySeq] := Count[mySeq] + 1;	
	ELSIF NOT switchCheck THEN
		alarm.Name := ALM_SWITCH_FAULT;
		alarm.Time := 0;	
	ELSIF (bag.Cat > 0) THEN
		alarm.Name := ALM_BAG_DATA_ERROR;
		alarm.Time := 0;	
	END_IF;		
END_IF;		
	

//Wait for at bag buffer and  decide where to send bag	
IF (step = 2) THEN	
	releaseOk := (bag.Cat = 0);// We don;t have to check the loading unit bag data.. the queue is already checking it,
	IF releaseOk AND (luWaitingLongest.waitingLongest > 0)  AND NOT Std.HaltSysZone[myZone] THEN		
		D[mySelectedLU_reg] := luWaitingLongest.waitingLongest; // Store the selected loaded unit to a D register so we won;t lose it
		D[900 + mySeq] := 3;	
	ELSIF NOT releaseOk  AND NOT Std.HaltSysZone[myZone] THEN
		alarm.Name := ALM_BAG_DATA_ERROR;
		alarm.Time := 0;	
	END_IF;		
END_IF;		

loadingUnit := D[mySelectedLU_reg];	


//rotate points	
ton_rotatePoints(IN:= ((step = 3) OR (step = 5)) ,PT:= 400);	
IF (step = 3) THEN	
	o_rotate[loadingUnit] := 1;
	IF ton_rotatePoints.Q  AND NOT Std.HaltSysZone[myZone] THEN
		D[900 + mySeq] := 4;
	END_IF;		
END_IF;	
	
releaseOk := (bag.Cat = 0) AND (Bag[myLuBag[loadingUnit]].Cat > 0) AND NOT Std.HaltSysZone[myZone];		
//bag settles in point	
ton_SettledInPoint(IN:= (i_bagInRotaryPoint_front[loadingUnit] AND i_bagInRotaryPoint_rear[loadingUnit]), PT := 300);
IF (step = 4) THEN	
	o_rotate[loadingUnit] := 1;
	o_release[loadingUnit] := releaseOk;	
	IF ton_SettledInPoint.Q AND releaseOk  THEN
		bag := Bag[myLuBag[loadingUnit]];
		Bag[myLuBag[loadingUnit]] := Bag[0];	
		D[900 + mySeq] := 5;
	ELSIF NOT releaseOk AND NOT Std.HaltSysZone[myZone] THEN
		IF (bag.Cat > 0) THEN		
			alarm.Name := ALM_BAG_DATA_ERROR;
			alarm.Time := 0;			
		ELSE
			alarm.Name 	:= ALM_BAG_DATA_ERROR;
			alarm.Time 	:= 0;	
			alarm.Bag 	:= myLuBag[loadingUnit];
		END_IF;		
	ELSE
		alarm.Name := ALM_BAG_NOT_SETTLED;
	END_IF;		
END_IF;	
	
//rotate points back to straight	
IF (step = 5) THEN	
	o_straight	:= 1;
	IF ton_rotatePoints.Q AND NOT EnableRel.PF[myPF] THEN
		D[900 + mySeq] := 6;
	ELSIF EnableRel.PF[myPF] THEN
		alarm.Name := ALM_BAG_DATA_ERROR;		
	END_IF;		
END_IF;	


//Check for line space.
IF (step = 6) THEN
	releaseValid := (NOT i_bagAtBufferOut AND NOT i_bufferOutOpen AND (bag.Cat > 0) AND (bag_out.Cat = 0));		
	o_straight	:= 1;
	IF NOT Std.HaltSysZone[myZone] THEN
		IF (myRelLine > 0) THEN
			IF (line_release.Clear AND releaseValid) THEN
				C[myRelLine] := 0;
				D[900 + mySeq] := 7;
			END_IF;
			IF (line_release.Clear AND i_bagAtBufferOut) THEN
				alarm.Name := ALM_SWITCH_FAULT;
			ELSIF (bag.Cat = 0) THEN
				alarm.Name := ALM_BAG_DATA_ERROR;
				alarm.Time := 0;	
			ELSIF line_release.Clear AND (bag_out.Cat > 0) THEN
				alarm.Name := ALM_BAG_DATA_ERROR;
				alarm.Bag := myOutBag;
				alarm.Time := 0;
			END_IF;	
		ELSE
			RequestRel.PF[myPF] := releaseValid;
			IF EnableRel.PF[myPF] AND releaseValid THEN
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
	END_IF;
END_IF;

//Release bag.
IF (step = 7) THEN
	IF (NOT i_bagAtBufferOut AND NOT i_bufferOutOpen AND (bag.Cat > 0) AND (bag_out.Cat = 0) AND NOT Std.HaltSysZone[myZone]) THEN	
		releaseValid := 1;
	END_IF;
	FOR n := loadingUnit TO 1 BY - 1 DO 		
		o_openStops[n] := releaseValid;
	END_FOR;
	o_straight := 1;
	IF releaseValid THEN
		IF (myRelLine > 0) THEN
			IF line_release.Trip THEN
				bag_out := bag;
				bag := Bag[0];		
				D[900 + mySeq] := 1;	
			END_IF;
		ELSE
			IF NOT EnableRel.PF[myPF] AND (bag.Cat = 0) THEN // Make sure data is copied out by enabling sequence.
				D[900 + mySeq] := 1;
			ELSIF NOT EnableRel.PF[myPF] AND (bag.Cat > 0) THEN
				alarm.Name := ALM_BAG_DATA_ERROR;		
			END_IF;	
		END_IF;			
	ELSIF i_bagAtBufferOut OR i_bufferOutOpen THEN		
		alarm.Name := ALM_SWITCH_FAULT;
		alarm.Time := 0;		
	ELSIF (bag.Cat = 0) THEN
		alarm.Name := ALM_BAG_DATA_ERROR;
		alarm.Time := 0;	
	ELSIF (bag_out.Cat > 0) THEN		
		alarm.Name := ALM_BAG_DATA_ERROR;
		alarm.Bag := myOutBag;
		alarm.Time := 0;	
	END_IF;		
ELSE
	releaseValid := 0;		
END_IF;	
	
	

		
//-----------------------------------
//PLC Outputs - adjust TO suit system
//-----------------------------------

Y[21].Y07 := o_release[1];	
Y[21].Y08 := o_release[1];
	
EnableRel.LU[2] := o_release[2];	
	
Y[381].Y01	:= o_straight;	
Y[381].Y02  := o_rotate[1];
Y[381].Y03	:= o_straight;	
Y[381].Y04  := o_rotate[1];
Y[381].Y05  := o_openStops[1]; 
Y[381].Y06  := o_openStops[1];
	
Y[383].Y01	:= o_straight;	
Y[383].Y02  := o_rotate[2];
Y[383].Y03	:= o_straight;	
Y[383].Y04  := o_rotate[2];	
Y[383].Y05  := o_openStops[2]; 
Y[383].Y06  := o_openStops[2];
	
	
//Alarms
timerAlarm(IN := NOT pls AND (alarm.Name > 0),PT:= alarm.Time);

alarm.On 	:= timerAlarm.Q;
alarm.ET 	:= timerAlarm.ET;

END_PROGRAM

