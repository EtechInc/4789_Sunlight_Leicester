(********************************************************************
 * COPYRIGHT -- HP
 ********************************************************************
 * Program: 12_x_Bsof
 * File: 12_x_Bsof.st
 * Author: zmclaren
 * Created: June 24, 2015
 ********************************************************************
 * Implementation of program 12_x_Bsof
 ********************************************************************)
//V1.00.1 First Release
PROGRAM _INIT
//Configuration
myIO				:= 233;   	//IO module number (will use 3 modules)
mySeq				:= 12;	  	//Sequence number
myBS				:= 1;	  	//Bag Stacker number
myBag				:= 0;		// Create bag data in stacker if tracking
myBuffIO			:= 0;     	//Empty bag buffer IO
myRelLine			:= 0;	   	//;Bag released counter number - set TO 0 TO use RequestRel / EnableRel
myOutBag			:= Line[myRelLine].LastBag;	//Empty bag buffer bag number - used when tracking empty bags

useRotary			:= FALSE;	// Use Rotary Point		
myZone 				:= 0;

alarm						ACCESS ADR(Alarm[mySeq]);
bag							ACCESS ADR(Bag[myBag]);
bag_out						ACCESS ADR(Bag[myOutBag]);
line_release				ACCESS ADR(Line[myRelLine]);	
END_PROGRAM
PROGRAM _CYCLIC

//Single bag buffer after Bag Stacker - enter input and output for the proximity switch and buffer stop.
i_bagAtEmptyBuffer		:= FALSE; //X[myBuffIO].X06;
i_emptyBagBufferOpen	:= FALSE; //Y[myBuffIO].Y08;

//IO Configuration
bsf_Enable			    := (D[mySeq] > 0) AND NOT Std.HaltSysZone[myZone];

i_rockSepA				:= X[myIO + 0].X01;
i_rockSepB				:= X[myIO + 0].X02;
i_tiltA					:= X[myIO + 1].X01;
i_tiltB				    := X[myIO + 1].X02;
i_outLineA				:= X[myIO + 1].X03;
i_outLineB				:= X[myIO + 2].X01;
i_bagAtRotary	  		:= X[myIO + 2].X04;	
	
o_openRockSep			:= FALSE;
o_levelCylinder			:= FALSE;
o_openLineAStop			:= FALSE;
o_openLineBStop			:= FALSE;
o_selectLineA			:= FALSE;
o_selectLineB			:= FALSE;
o_openRotaryStop		:= FALSE;
	
RequestRel.BSF[myBS]	:= FALSE;


//Alarm
IF (myBag = 0) THEN	
	alarm.Bag	:= mySeq + 10000;			
ELSE		
	alarm.Bag	:= myBag;	
END_IF;
	
alarm.Name 		:= 0;
alarm.Beacon	    := TRUE;
alarm.Extra		:= 0;
alarm.Time		:= 3000;

//Get bag id if  creating bag data
IF (myBag > 0) AND (bag.Cat > 0) AND (bag.Bid = 0) AND (BidStn > 0) THEN	 
	bag.Bid := BidStn;
	BidStn := 0;	
END_IF;	
	
//Setup Sequence
step := D[900 + mySeq];
//Setup Pulse contact
pls := (step <> lastStep);
lastStep := step;

//Set Sequence
IF (step = 0) THEN
	//Disabled
END_IF;

//Check level bag clear
ton_10ms_LevelClear(IN:= NOT i_tiltA AND NOT i_tiltB,PT:= 300);
IF (step = 1) THEN
	IF (ton_10ms_LevelClear.Q AND bsf_Enable) THEN
		D[900 + mySeq] := 2;
		Count[mySeq] := Count[mySeq] + 1;	
	END_IF;
	IF bsf_Enable THEN	
		alarm.Name := ALM_SWITCH_FAULT;
	END_IF;
END_IF;

//Open seperators wait for bag in sep
ton_10ms_SettledInSeps(IN:= i_rockSepA AND i_rockSepB,PT:= 200);
IF (step = 2) THEN
	o_openRockSep := TRUE;
	IF ton_10ms_SettledInSeps.Q THEN
		D[900 + mySeq] := 3;
	END_IF;
	IF i_rockSepA OR i_rockSepB THEN
		alarm.Name := ALM_BAG_NOT_SETTLED;
	END_IF;		
END_IF;

//Wait for bag to settle in leveller position
ton_10ms_SettledLevel(IN:= i_tiltA AND i_tiltB,PT:= 200);
IF (step = 3) THEN
	IF ton_10ms_SettledLevel.Q THEN
		IF (myBag > 0) THEN
			bag.Cat := Std.MaxCats; 
			bag.Prg := Std.MaxProg;
			bag.Cus := Std.MaxCust;		
		END_IF;		
		D[900 + mySeq] := 4;
	END_IF;
	alarm.Name := ALM_BAG_NOT_SETTLED;
END_IF;

//Move bag leveller down
ton_10ms_LevellerDown(IN:= (step = 4),PT:= 300);
IF (step = 4) THEN
	o_levelCylinder := TRUE;
	IF ton_10ms_LevellerDown.Q THEN
		D[900 + mySeq] := 5;
	END_IF;
END_IF;

//Allow bag leveller to retract
ton_10ms_LevellerUp(IN:= (step = 5),PT:= 300);
IF (step = 5) THEN
	IF (ton_10ms_LevellerUp.Q AND NOT EnableRel.BSF[myBS]) THEN
		D[900 + mySeq] := 6;
	END_IF;
END_IF;

//Check for space on empty bag buffer / Request release
IF (step = 6) THEN
	releaseValid := (NOT i_bagAtEmptyBuffer AND NOT i_emptyBagBufferOpen AND ((myBag = 0) OR ((bag.Cat > 0) AND (bag_out.Cat = 0))));			
	IF (myRelLine > 0) THEN
		IF (line_release.Clear AND releaseValid) THEN
			C[myRelLine] := 0;
			D[900 + mySeq] := 7;
		END_IF;
		IF (line_release.Clear AND i_bagAtEmptyBuffer AND NOT i_emptyBagBufferOpen) THEN
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
		RequestRel.BSF[myBS] := releaseValid;
		IF EnableRel.BSF[myBS] AND releaseValid THEN
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

//Open stop on line 'A' 
IF (step = 7) THEN
	o_openLineAStop := TRUE;
	o_selectLineA	:= TRUE;
	IF i_outLineA THEN
		D[900 + mySeq] := 8;
	END_IF;
	alarm.Name := ALM_BAG_NOT_RELEASED;
END_IF;

//Open stop on line 'B'
IF (step = 8) THEN
	o_openLineBStop := TRUE;
	o_selectLineA	:= TRUE;
	IF i_outLineB THEN
		D[900 + mySeq] := 9;
	END_IF;
	alarm.Name := ALM_BAG_NOT_RELEASED;	
END_IF;

//Select bag stop and wait for bag out of leveller
ton_10ms_SettledAtRotary(IN:= i_bagAtRotary, PT:= 300);
ton_10ms_RotaryInPosition(IN:= settledOnRotary, PT:= 200);	
IF (step = 9) THEN
	IF useRotary THEN
		IF ton_10ms_SettledAtRotary.Q THEN
			settledOnRotary := TRUE;	
		END_IF;
		o_selectLineA := NOT settledOnRotary;
		o_openRotaryStop := ton_10ms_RotaryInPosition.Q;	
		IF NOT settledOnRotary THEN
			alarm.Name  := ALM_SWITCH_FAULT;
		END_IF		
	ELSE		
		o_selectLineB := TRUE;
	END_IF;
	IF (myBag = 0) THEN
		IF (myRelLine > 0) THEN
			IF line_release.Trip THEN
				D[900 + mySeq] := 1;	
			END_IF;
		ELSE
			IF NOT EnableRel.BSF[myBS] THEN 
				D[900 + mySeq] := 1;
			END_IF;	
		END_IF;	
		alarm.Name := ALM_BAG_NOT_RELEASED;	
	ELSE//Use tracking		
		IF (myRelLine > 0) THEN
			IF line_release.Trip AND (bag.Cat > 0) AND (bag_out.Cat = 0) THEN
				bag_out := bag;
				bag := Bag[0];		
				D[900 + mySeq] := 1;	
			END_IF;
		ELSE
			IF NOT EnableRel.BSF[myBS] AND (bag.Cat = 0) THEN // Make sure data is copied out by enabling sequence.
				D[900 + mySeq] := 1;
			ELSIF NOT EnableRel.BSF[myBS] AND (bag.Cat > 0) THEN
				alarm.Name := ALM_BAG_DATA_ERROR;		
			END_IF;	
		END_IF;			
	END_IF;	
ELSE
	settledOnRotary := FALSE;		
END_IF;

//Alarms
timerAlarm(IN := NOT pls AND (alarm.Name > 0),PT:= alarm.Time);
alarm.On := timerAlarm.Q;
alarm.ET := timerAlarm.ET;

//SBS Offgoing Bagstacker Pressure relief
ton_10ms_PRLineClear[0](IN:= (NOT X[myIO + 0].X03 AND NOT X[myIO + 0].X04),PT:= 500);
Y[myIO + 0].Y07 := ton_10ms_PRLineClear[0].Q;
	

//Outputs
Y[myIO + 0].Y05 := o_openRockSep;
Y[myIO + 0].Y06 := o_openRockSep;
Y[myIO + 1].Y05 := o_openLineAStop;
Y[myIO + 1].Y06 := o_openLineBStop;
Y[myIO + 1].Y07 := o_levelCylinder;
Y[myIO + 2].Y05 := o_selectLineA;
Y[myIO + 2].Y06 := o_selectLineB OR o_openRotaryStop;
END_PROGRAM









