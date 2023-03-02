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
mySeq						:= 31;	//Sequence number
myIO						:= 114;	
myZone						:= 1;

myBag						:= 0; //Buffer Bag
myBuffBag					:= 0;

mySelectedLU_reg			:= mySeq; // D register to store selected loaded unit
	
bufferSettleTime			:= 300; 	
	


alarm						ACCESS ADR(Alarm[mySeq]);
bag							ACCESS ADR(Bag[myBag]);
//bag_buff					ACCESS ADR(Bag[myBuffBag]);	


	
END_PROGRAM


PROGRAM _CYCLIC
//Inputs
i_bagAtBuffer				:= RequestRel.PN[1];//X[myIO].X01;			

i_bagArriveLu[1]			:= X[myIO].X01;
i_bagArriveLu[2]			:= X[myIO].X02;	
	
i_bagInRotaryPoint_front[1]	:= X[myIO].X03;
i_bagInRotaryPoint_rear[1]	:= X[myIO].X04;

i_bagInRotaryPoint_front[2]	:= X[myIO].X05;
i_bagInRotaryPoint_rear[2]	:= X[myIO].X06;	
	
	
//Create the q for which loading unit to send to.
// N.B These input conditions are used to arrive the bag.
luWaitingLongest.input[1] := Request.LU[1]; //Loading unit does not have an empty bag space
luWaitingLongest.input[2] := NOT X[23].X01 AND NOT X[23].X02 AND NOT Y[23].Y05 AND NOT Y[23].Y06; //Loading unit 2 buffer.
luWaitingLongest.settleTime := 10;
luWaitingLongest();	
	
o_openBuffer			:= FALSE;
o_straight				:= FALSE; // select all straight rails
	
FOR n := 0 TO MAX_LOADING_UNITS DO 
	o_openFrontStop[n] 	:= FALSE;
	o_openRearStop[n] 	:= FALSE;	
	o_rotate[n] 		:= FALSE;
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
		IF (i_bagArriveLu[n] OR i_bagInRotaryPoint_front[n] OR i_bagInRotaryPoint_rear[n]) THEN		
			switchCheck := FALSE;
			EXIT;
		END_IF;
	END_FOR;
			
	o_straight := NOT Std.HaltSysZone[myZone];	
	IF ton_10ms_reset.Q AND switchCheck THEN
		D[900 + mySeq] := 2;
		Count[mySeq] := Count[mySeq] + 1;	
	ELSIF NOT switchCheck THEN
		alarm.Name := ALM_SWITCH_FAULT;
		alarm.Time := 0;	
	END_IF;		
END_IF;		
	
ton_10ms_SettledBuffer(IN:= i_bagAtBuffer,PT:= bufferSettleTime);	
//Wait for at bag buffer and  decide where to send bag	
IF (step = 2) THEN	
	 bagWaiting := (ton_10ms_SettledBuffer.Q AND ((bag.Cat > 0) OR(myBag = 0)));
	IF bagWaiting AND (luWaitingLongest.waitingLongest > 0)  AND NOT Std.HaltSysZone[myZone] THEN		
		D[mySelectedLU_reg] := luWaitingLongest.waitingLongest; // Store the selected loaded unit to a D register so we won;t lose it
		D[900 + mySeq] := 3;	
	END_IF;
	IF (myBag > 0) AND ton_10ms_SettledBuffer.Q  AND (bag.Cat = 0) THEN
		alarm.Name := ALM_BAG_DATA_ERROR;	
	END_IF;			
END_IF;		

loadingUnit := D[mySelectedLU_reg];	
//open buffer and wait for trolley past stop	
releaseValid := (loadingUnit > 0);
IF (step = 3) THEN
	//o_straight := 1;		
	o_openBuffer := releaseValid;		
	FOR n := loadingUnit TO 1 BY -1 DO; 
		o_openFrontStop[n] := 1;	// Open all front stops up to and including the selected unit;	
		o_openRearStop[n-1] := 1;	// Open all rear stops up to the selected unitl	
	END_FOR;	
	IF i_bagInRotaryPoint_rear[loadingUnit] OR i_bagArriveLu[loadingUnit] THEN //i_bagArriveLu[loadingUnit]	
		D[900 + mySeq] := 4;	
	END_IF;	
	IF releaseValid  AND NOT Std.HaltSysZone[myZone] THEN
		alarm.Name := ALM_BAG_NOT_ARRIVED;	
	END_IF;
END_IF;
		
//bag settles in rotary points.	
ton_SettledInPoint(IN:= (i_bagInRotaryPoint_front[loadingUnit] AND i_bagInRotaryPoint_rear[loadingUnit]), PT := 300);
IF (step = 4) THEN	
	//o_straight := 1;		
	FOR n := loadingUnit TO 1 BY -1 DO; 
		o_openFrontStop[n-1] := 1;	// Open all rear stops up to the selected unitl		
		o_openRearStop[n-1] := 1;	// Open all rear stops up to the selected unitl	
	END_FOR;
	IF ton_SettledInPoint.Q   AND NOT Std.HaltSysZone[myZone] THEN
		D[900 + mySeq] := 5;
	ELSIF NOT Std.HaltSysZone[myZone] THEN
		alarm.Name := ALM_BAG_NOT_SETTLED;
	END_IF;		
END_IF;	
	
//rotate points	
ton_rotatePoints(IN:= (step = 5),PT:= 400);	
IF (step = 5) THEN	
	o_rotate[loadingUnit] := 1;
	IF ton_rotatePoints.Q AND NOT Std.HaltSysZone[myZone] THEN
		D[900 + mySeq] := 6;
	END_IF;		
END_IF;
	
//release bag
IF (step = 6) THEN					
	o_rotate[loadingUnit] := 1;	
	o_openFrontStop[loadingUnit] := luWaitingLongest.input[loadingUnit];		
	o_openRearStop[loadingUnit] := luWaitingLongest.input[loadingUnit];
	IF NOT luWaitingLongest.input[loadingUnit] THEN
		D[900 + mySeq] := 1;		
	END_IF;	
	alarm.Name := ALM_BAG_NOT_RELEASED;	
END_IF;		
		
		
//-----------------------------------
//PLC Outputs - adjust TO suit system
//-----------------------------------

//Y[myIO].Y05 := o_openBuffer;	
EnableRel.PN[1]		:= o_openBuffer; 

Y[380].Y01	:= o_straight;	
Y[380].Y02  := o_rotate[1];
Y[380].Y03	:= o_straight;	
Y[380].Y04  := o_rotate[1];
Y[380].Y05  := o_openFrontStop[1]; 
Y[380].Y06  := o_openRearStop[1];
	
Y[382].Y01	:= o_straight;	
Y[382].Y02  := o_rotate[2];
Y[382].Y03	:= o_straight;	
Y[382].Y04  := o_rotate[2];	
Y[382].Y05  := o_openFrontStop[2]; 
Y[382].Y06  := o_openRearStop[2];
	
	
//Alarms
timerAlarm(IN := NOT pls AND (alarm.Name > 0),PT:= alarm.Time);

alarm.On 	:= timerAlarm.Q;
alarm.ET 	:= timerAlarm.ET;

END_PROGRAM

