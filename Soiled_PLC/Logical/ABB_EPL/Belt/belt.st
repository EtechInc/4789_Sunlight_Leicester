(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Author: Stephen Healey
 * Created: July 02, 2018
 ********************************************************************)
//V1.00.1 First Release
PROGRAM _INIT
//Configuration
	mySeq							:= 0;	//Sequence number
	myIO							:= 0;	
	myZone						:= 0; 
	myBag							:= 0; //Buffer Bag	
	myOutBag 					:= 0;
	myBelt						:= 1;
	drive							ACCESS ADR(ABB_EPL[myBelt].Cmd);
	status						ACCESS ADR(ABB_EPL[myBelt].Status);
	speedSlow					:= 30;
	speedFast					:= 60;
	drive.Acc_seconds := 0; //0 will default to 3 seconds
	drive.Dec_seconds := 0; //0 will default to 3 seconds
	drive.Direction		:= ABB_DIRECTION_FWD;
END_PROGRAM


PROGRAM _CYCLIC
//Inputs
I_BeltPhotocell := X[myIO].X01;
	
//Reset vars
O_RunBelt := FALSE;
O_RunSlow := FALSE;

//Alarm config
IF (myBag = 0) THEN	
	Alarm[mySeq].Bag	:= mySeq + 10000;			
ELSE		
	Alarm[mySeq].Bag	:= myBag;	
END_IF;
	
Alarm[mySeq].Name 		:= 0;
Alarm[mySeq].Beacon	:= TRUE;
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

IF (step = 1) THEN
	//Run belt fast
	O_RunBelt := TRUE;
END_IF;


//Select target velocity
IF O_RunSlow THEN
	drive.TargetVelocity := speedSlow;
ELSE
	drive.TargetVelocity := speedFast;
END_IF;

//Belt Alarms
IF status.Tripped OR status.Warning OR NOT status.OnRemote THEN
	Alarm[mySeq].Name := ALM_INVERTOR_FAULT;
	Alarm[mySeq].Time		:= 5000;
END_IF;	
	
//-----------------------------------
//PLC Outputs - adjust TO suit system
//-----------------------------------

drive.Run := O_RunBelt AND NOT Std.HaltSysZone[myZone];
drive.QuickStop := NOT Std.HaltSysZone[myZone];

//Alarms
timerAlarm(IN := NOT pls AND (Alarm[mySeq].Name > 0),PT:= Alarm[mySeq].Time);

Alarm[mySeq].On 	:= timerAlarm.Q;
Alarm[mySeq].ET 	:= timerAlarm.ET;

END_PROGRAM

