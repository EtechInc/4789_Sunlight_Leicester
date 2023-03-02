(********************************************************************
 * COPYRIGHT -- HP
 ********************************************************************
 * Program: 11_x_Bson
 * File: 11_x_Bson.st
 * Author: zmclaren
 * Created: May 15, 2015
 ********************************************************************
 * Implementation of program 11_x_Bson
 ********************************************************************)
//V1.00.1 First Release.  

PROGRAM _INIT
//Configuration
myIO				:= 231;   	//IO module number (will use 2 modules)
mySeq				:= 11;	   	//Sequence number
myBS				:= 1;	   	//Bag Stacker number
myBag				:= 0;		//	
myBuffBag			:= 0;	   	//Empty bag buffer bag number - used when tracking empty bags
useRequest			:= FALSE; 	//Use the Request bit. Only use when working with x_1_point. otherwise use RequestRelease as the i_bagAtBuffer.	
bufferSettleTime	:= 300;  	// Time for bag to settle at buffer in.

useRotary			:= FALSE;	// Use Rotary Point	
myZone 				:= 0;
	
alarm						ACCESS ADR(Alarm[mySeq]);
bag							ACCESS ADR(Bag[myBag]);
bag_buff					ACCESS ADR(Bag[myBuffBag]);	
	
END_PROGRAM

PROGRAM _CYCLIC

//IO Configuration
bsn_Enable 			:= (D[mySeq] > 0) AND NOT Std.HaltSysZone[myZone];

i_bagAtBuffer		:= X[myIO + 0].X01;
i_onLineA		  	:= X[myIO + 0].X02;
i_bagAtRotary	  	:= X[myIO + 0].X03;	
i_tiltA				:= X[myIO + 1].X01;
i_tiltB				:= X[myIO + 1].X02;
i_bagout			:= X[myIO + 1].X03;

	
o_openBufferStop    := FALSE;
o_selectLineA		:= FALSE;
o_selectLineB		:= FALSE;
o_openStops			:= FALSE;
o_tiltCylinder		:= FALSE;
o_operatePusher		:= FALSE;
o_openRotaryStop	:= FALSE;
	
Request.BSN[myBS]    := FALSE;
RequestRel.BSN[myBS] := FALSE;


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

//Setup Sequence
step := D[900 + mySeq];
//Setup Pulse contact
pls := (step <> lastStep);
lastStep := step;

//Set Sequence
IF (step = 0) THEN
	//Disabled
END_IF;

//Select Line 'A'
ton_10ms_PointReset(IN:= (step = 1), PT:= 100);
IF (step = 1) THEN
	o_selectLineA := NOT useRotary;
	IF (ton_10ms_PointReset.Q AND bsn_Enable AND NOT i_tiltA AND NOT i_tiltB AND NOT i_bagAtRotary)  THEN	
		D[900 + mySeq] := 2;
		Count[mySeq] := Count[mySeq] + 1;
	END_IF;
	IF i_tiltA OR i_tiltB OR i_bagAtRotary THEN
		alarm.Name := ALM_SWITCH_FAULT;	
	END_IF;
END_IF;

//Wait for bag at buffer if used
ton_10ms_SettledBuffer(IN:= i_bagAtBuffer, PT:= bufferSettleTime);
IF (step = 2) THEN	
	o_selectLineA := NOT useRotary;
	IF NOT i_onLineA THEN	
		IF useRequest THEN 
			D[900 + mySeq] := 3;			
		ELSE		
			IF ton_10ms_SettledBuffer.Q THEN
				IF (myBag > 0) THEN	
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
		alarm.Time := 0;	
	END_IF;		
END_IF;

//Open buffer stop / Request bag
IF (step = 3) THEN
	releaseValid := ((myBag = 0) OR ((bag.Cat = 0) AND (bag_buff.Cat > 0)));
	o_selectLineA 	  := NOT useRotary;
	o_openRotaryStop :=	useRotary;
	o_openBufferStop   := releaseValid AND NOT useRequest;
	Request.BSN[myBS]  := releaseValid AND useRequest;
	IF i_onLineA AND releaseValid THEN
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
	ELSIF NOT useRequest THEN		
		alarm.Name  := ALM_BAG_NOT_ARRIVED;		
	END_IF;
END_IF;

//Select Line 'B' and Wait for bag in Tilt position
ton_10ms_BagAtTilt(IN:= i_tiltA AND i_tiltB, PT:= 300);
ton_10ms_SettledAtRotary(IN:= i_bagAtRotary, PT:= 300);
IF (step = 4) THEN
	IF useRotary THEN
		IF ton_10ms_SettledAtRotary.Q THEN
			settledOnRotary := TRUE;	
		END_IF;
		o_openRotaryStop := NOT settledOnRotary;
		o_selectLineA := settledOnRotary;
		IF NOT settledOnRotary THEN
			alarm.Name  := ALM_SWITCH_FAULT;
		ELSE	
			alarm.Name  := ALM_BAG_NOT_SETTLED;
		END_IF	
	ELSE		
		o_selectLineB 	   := TRUE;
		alarm.Name  := ALM_BAG_NOT_SETTLED;
	END_IF;
	o_openBufferStop   := NOT useRequest;
	IF ton_10ms_BagAtTilt.Q THEN
		D[900 + mySeq] := 5;
	END_IF;
ELSE
	settledOnRotary := FALSE;	
END_IF;

//Tilt down
ton_10ms_TiltDown(IN:= (step = 5), PT:= 300);
IF (step = 5) THEN
	o_tiltCylinder := TRUE;
	IF ton_10ms_TiltDown.Q THEN
		D[900 + mySeq] := 6;
	END_IF;
END_IF;

//Tilt UP
ton_10ms_TiltUp(IN:= (step = 6), PT:= 300);
IF (step = 6) THEN
	IF ton_10ms_TiltUp.Q THEN
		D[900 + mySeq] := 7;
	END_IF;
END_IF;

//Check not full
ton_10ms_NotFull(IN:= NOT i_bagout, PT:= 300);
IF (step = 7) THEN
	IF ton_10ms_NotFull.Q THEN
		D[900 + mySeq] := 8;
	END_IF;
END_IF;

//Open stops to release bag
IF (step = 8) THEN
	o_openStops := TRUE;
	o_operatePusher := ton_10ms_o_operatePusher.Q;	
	IF i_bagout THEN
		IF (myBag > 0) THEN
			bag := Bag[0];
		END_IF;		
		D[900 + mySeq] := 1;
	END_IF;
	alarm.Name := ALM_BAG_NOT_RELEASED;
END_IF;


//Pusher Cylinder
ton_10ms_o_operatePusher(IN:= (step = 8) AND NOT ton_10ms_Pushed.Q, PT:= 500);
ton_10ms_Pushed(IN:= o_operatePusher, PT:= 500);


//Alarms
timerAlarm(IN := NOT pls AND (alarm.Name > 0),PT:= alarm.Time);
alarm.On := timerAlarm.Q;
alarm.ET := timerAlarm.ET;

//Outputs
Y[myIO + 0].Y05 := o_openBufferStop;
Y[myIO + 0].Y06 := o_selectLineA;
Y[myIO + 0].Y07 := o_selectLineB OR o_openRotaryStop;	
Y[myIO + 0].Y08 := o_tiltCylinder;
Y[myIO + 1].Y05 := o_openStops;
Y[myIO + 1].Y06 := o_openStops;
Y[myIO + 1].Y07 := o_operatePusher;
END_PROGRAM
