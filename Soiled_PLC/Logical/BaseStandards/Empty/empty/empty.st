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
mySeq						:= 22;	//Sequence number
myIO						:= 220;	
myZone						:= 0;
myRelLine					:= 22; 
myBag						:= 255; //Buffer Bag
//myBuffBag					:= 0;
//myOutBag 					:= Line[myRelLine].LastBag;	
//myCan						:= 0;	
bufferSettleTime			:= 300; 	
	


alarm						ACCESS ADR(Alarm[mySeq]);
bag							ACCESS ADR(Bag[myBag]);
//bag_buff					ACCESS ADR(Bag[myBuffBag]);	
//bag_out						ACCESS ADR(Bag[myOutBag]);
//can							ACCESS ADR(CAN[myCan]);
line_release				ACCESS ADR(Line[myRelLine]);
	
END_PROGRAM


PROGRAM _CYCLIC
//Inputs
i_bagAtBuffer				:= X[myIO].X01;		


i_bagAtBufferOut 		:= FALSE; // Any Single bag buffer out IO.
i_bufferOutOpen			:= FALSE;

o_openBuffer			:= FALSE;

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


	
	
//-----------------------------------
//PLC Outputs - adjust TO suit system
//-----------------------------------

Y[myIO].Y05 := o_openBuffer;	

//Alarms
timerAlarm(IN := NOT pls AND (alarm.Name > 0),PT:= alarm.Time);

alarm.On 	:= timerAlarm.Q;
alarm.ET 	:= timerAlarm.ET;

END_PROGRAM

