(********************************************************************
* COPYRIGHT --  
********************************************************************
* PROGRAM: sl4.st
* File: sl4.st
* Author: treamsbottom
* Created: March 6 2019
********************************************************************
* Implementation OF PROGRAM Servo Hoist 4 Postion
********************************************************************)
//V2.00.1 First Release 
//V2.00.2 FIX - LoadBag wasn;t being set on belt loaded type
//V2.00.3 FIX - 11/08/2019 - Carriage Move alarms were active when the safety zone was off.
//V2.00.4 CHANGE - 11/08/2019 - If the hoist is out of position on loading step- then move to position 
//V2.00.5 ADD 12/08/2019 - Add option to stop full bags being bought into service position
//V3.00.1 CHANGE:TR  22/08/2019 - Load Alarms and timer values from config
//V3.00.2 TR 15/09/2019 - Remove EDGEPOS on deviceOut.Bag reference as this doesn;t work with 1_x points as the bag number can change dynamically
//V3.00.3 TR 18/08/2019	- ADD bag check when bag is being loaded.
//V3.00.4 TR 04/10/2019 - FIX: Additional check on Std.MaxCats due to config mode sets to 0 for first scan 
//V3.00.5 TR 06/11/2019 - ADD: Alarm when servo hoist is in error. 
//V3.00.6 TR 06/11/2019 - FIX: Don;t clear Comm with Comm[0] as unconfiguried tasks can write to Comm[0] 
PROGRAM _INIT
//Configuration
mySeq						:= 8;						//Sequence number	
MY_VC;						//SET CONSTANT				//Hoist Number Number
myZone 						:= 2;						//Safety Zone
myBag						:= 222;

allowFullBagsInServicePos	:= TRUE;					//Set this to true, if full bags are allowed into service position. Off by default to prevent squashing full bags			
		

//Options	
bulkLoaded					:= 0;						//Is the Hoist bulk Loaded.	
requestPrgCode				:= 0;						//Request a PRG code from trackview using this d32 register (Start 100 and increase by 20s MAX is 180	
CASE Std.PLCStn OF
	0:		
		myHoistID				:= 230 + MY_VC;
	1:
		myHoistID				:= 240 + MY_VC;

END_CASE;			


//Option to clear the destination when bag arrives,

alarm						ACCESS ADR(Alarm[mySeq]);
bag							ACCESS ADR(Bag[myBag]);
bag_out						ACCESS ADR(Bag[224]);	
	
pHoist 						ACCESS ADR(OpcUa.VC[myHoistID]);	
returnStep					ACCESS ADR(D[7970 + MY_VC]);

position_BagOut				:= 1;
position_BagIn				:= 2;
position_Service			:= 3;


i_bagReleased				ACCESS ADR(X[3].X14);	
//Outputs			
o_safeStopA					ACCESS ADR (Y[0].Y07);	
o_safeStopB					ACCESS ADR (Y[0].Y08);
o_guardMoveDown				ACCESS ADR(Hoist_Safety[MY_VC].O_OpenGuard);
o_guardMoveUp				ACCESS ADR(Hoist_Safety[MY_VC].O_CloseGuard);		

#if (MY_VC > MAX_HOIST) 
	#error 'MAX_HOIST has not been set correctly'
#endif	

END_PROGRAM

PROGRAM _CYCLIC
	
Bag[217].Cat := 1;	
Bag[217].Wgt := DINT_TO_UINT(pHoist.Read.Weight/100);
IF (Bag[217].Bid = 0) AND (BidStn > 0) THEN
	Bag[217].Bid := BidStn;
	BidStn := 0;
END_IF;		
	
Request.VC[1]				:= FALSE;

Enable.VC[1]  				:= FALSE;		
guardMoveDown				:= FALSE;



//Bit so we can customise the permission to move if required. FOR USE WITH MOVING TOP RAILS
permission_GetBag		:= TRUE; 	
permission_ReleaseBag	:= TRUE;
permission_Move			:= NOT Std.HaltSysZone[myZone];


pHoist.Write.PermissionToMove := 0;//We have to set permission to move when we want the hoist move.	
pHoist.Write.Heartbeat;//This is taken care of in the server task,
pHoist.Write.LoadBag 	:= 0;	//
pHoist.Write.ReceiveBag := 0;	//Cmd to recieve bag
pHoist.Write.ReleaseBag	:= 0;	//Cmd to release bag	
pHoist.Write.TargetPosition;	//Set the position of hoist.

autoMode 				:= pHoist.Read.Auto;		

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

//clear any latched bits
IF pls THEN				
	releaseBag := 0;
END_IF;		

//Sequence
IF (step = 0) THEN
	//Disabled
END_IF;	

//step 1 - move to emptybag in position	
IF (step = 1) THEN
	reqPosition := position_BagIn;		
	pHoist.Write.PermissionToMove := permission_Move;
	IF (pHoist.Read.PositionNo = reqPosition) AND pHoist.Read.ReadyToReceive THEN	
		D[900 + mySeq] := 2;	
	END_IF;	
	IF autoMode AND permission_Move THEN
		alarm.Name := ALM_CARRIAGE_MOVE_FAULT;
		alarm.Time := 1500;			
	END_IF;		
END_IF;	

//Step 2 - Give permission to recieve bag
IF (step = 2) THEN
	readyToRecieve := ((bag.Cat = 0) AND (pHoist.Read.PositionNo = reqPosition) AND pHoist.Read.ReadyToReceive AND autoMode);		
	pHoist.Write.ReceiveBag := 1;
	reqPosition := position_BagIn;				
	IF readyToRecieve AND RequestRel.LU[1] THEN // Bag hs been released to empty bag in
		D[900 + mySeq] := 3;
	ELSIF (bag.Cat > 0) THEN
		alarm.Name := ALM_BAG_DATA_ERROR;
	ELSIF (pHoist.Read.PositionNo <> reqPosition) AND autoMode AND permission_Move THEN // Move to position if the buffer hasn;t already been opened.
		pHoist.Write.PermissionToMove := permission_Move;
		alarm.Name := ALM_CARRIAGE_MOVE_FAULT;	
		alarm.Time := 1500;	
	END_IF;					
		
END_IF;

//Step 3-- Wait for bag to arrive on carriage.
IF (step = 3) THEN
	reqPosition := position_BagIn;	
	pHoist.Write.ReceiveBag := 1;	
	IF ((bag.Cat = 0) AND (pHoist.Read.PositionNo = reqPosition) AND pHoist.Read.ReadyToReceive AND autoMode AND RequestRel.LU[1]) THEN	
		readyToRecieve := 1;
	END_IF;
	Enable.VC[1] := readyToRecieve;	
	IF pHoist.Read.ReceiveBag AND (bag.Cat = 0) THEN
		D[900 + mySeq] := 4;						
	ELSIF (((pHoist.Read.PositionNo <> reqPosition) OR NOT pHoist.Read.ReadyToReceive ) AND autoMode AND permission_Move) THEN	
		alarm.Name := ALM_CARRIAGE_MOVE_FAULT;	
		alarm.Time := 1500;	
	END_IF;			
ELSE
	readyToRecieve := 0;		
END_IF;	

//step 4 - move to full bag out	
IF (step = 4) THEN
	reqPosition := position_BagOut;		
	pHoist.Write.PermissionToMove := permission_Move AND permission_ReleaseBag;		
	IF (pHoist.Read.PositionNo = reqPosition) AND NOT Enable.PN[1] THEN //We have no feedback for ready to release!! this is checked in the hoist.
		D[900 + mySeq] := step + 1;	
	END_IF;	
	IF autoMode AND permission_Move  THEN
		alarm.Name := ALM_CARRIAGE_MOVE_FAULT;
		alarm.Time := 1500;	
	ELSIF Enable.PN[1] THEN
			alarm.Name := ALM_GENERAL_SEQUENCE;
			alarm.Time := 500;			
	END_IF;		
	//We should check the hoist status for any alarms??	
END_IF;			


//step 5 Request Release full bag out
wieghtCheck := (pHoist.Read.Weight < 55000); // hoist sends to 3 decimal places
IF (step = 5) THEN		
	okToRelease := Enable.PN[1] AND wieghtCheck AND NOT i_bagReleased;
	reqPosition := position_BagOut;
	requestRelease := (((bag.Cat > 0) OR (myBag = 0) OR Enable.PN[1]) AND (pHoist.Read.PositionNo = reqPosition) AND autoMode AND NOT Std.HaltSysZone[myZone]);		
	Request.VC[1]	:= requestRelease;
	IF NOT wieghtCheck THEN
		alarm.Name := almBagOverWeight;
		alarm.Time	:= 500;		
	ELSIF requestRelease AND okToRelease  THEN
		D[900 + mySeq] := 6;
	ELSIF (myBag > 0) AND (bag.Cat = 0) THEN
		alarm.Name := ALM_BAG_DATA_ERROR;
		alarm.Time := 0;		
	END_IF;	
END_IF;	


//Step 6 Send the command to release the full bag

bagReleased := (i_bagReleased OR NOT Enable.PN[1]);
	

IF (step = 6) THEN
	okToRelease :=  Enable.PN[1] AND wieghtCheck;		
	reqPosition := position_BagOut;
	IF okToRelease AND (pHoist.Read.PositionNo = reqPosition) AND NOT Std.HaltSysZone[myZone] AND autoMode THEN
		releaseBag := 1;
	END_IF;					
	pHoist.Write.ReleaseBag := releaseBag;
		
	IF NOT wieghtCheck THEN
		alarm.Name := almBagOverWeight;
		alarm.Time	:= 500;
	END_IF;
	IF bagReleased AND releaseBag THEN
//		bag_out := bag;	
//		bag := Bag[0];	
		D[900 + mySeq] := 1;	
	END_IF;
	IF NOT Std.HaltSysZone[myZone] THEN
		alarm.Name := ALM_BAG_NOT_RELEASED;		
		alarm.Time := 1500;
	END_IF;		
ELSE				
	releaseBag := 0;							
END_IF;		

//Move to service position	
IF (step = 90) THEN	
	pHoist.Write.PermissionToMove := 1;
	reqPosition := position_Service;			
	IF (pHoist.Read.PositionNo = position_Service) THEN //We have no feedback for ready to release!! this is checked in the hoist.
		D[900 + mySeq] := 91;	
	END_IF;	
	IF autoMode AND permission_Move THEN
		alarm.Name := ALM_CARRIAGE_MOVE_FAULT;
		alarm.Time := 1500;	
	END_IF;			
END_IF;	

//step 91 -- In safe position- Wait for zone to be opened or request to go off
IF (step = 91) THEN				
	IF 	SafetyZone[myZone].AccessRequested AND NOT SafetyZone[myZone].Zone_Status THEN
		D[900 + mySeq] := 92;
	ELSIF NOT SafetyZone[myZone].AccessRequested THEN		
		D[900 + mySeq] := returnStep;					
	ELSIF Hoist_Safety[MY_VC].OutOfPosition THEN
		alarm.Name := ALM_SWITCH_FAULT;
		alarm.Time := 200;	
	END_IF;		
END_IF;	

//step 92 -- Door opened-  wait for safety OK
IF (step = 92) THEN	
	IF SafetyZone[myZone].Zone_Status THEN
		D[900 + mySeq] := returnStep;		
	END_IF;	
END_IF;

IF allowFullBagsInServicePos THEN
	fullBagOnHoist := 0;
ELSE		
	fullBagOnHoist := (((bag.Cat > 0) AND (bag.Cat <> Std.MaxCats)) OR ((step > 3) AND (step < 90)));		
END_IF;	
	
//Code to request the hoist to move to service position.	
IF SafetyZone[myZone].AccessRequested AND (step > 0) AND (step <> 3) AND (step <> 6) AND (step < 90)  AND autoMode AND NOT releaseBag AND NOT fullBagOnHoist THEN
	D[900 + mySeq] := 90;
	CASE step OF
		2:	
			returnStep := (step - 1);	
		ELSE
			returnStep := step;	
	END_CASE;		
END_IF;		


o_safeStopA	 	:= (step = 3) AND (pHoist.Read.ReadyToReceive OR TestSystem);//Safety stops	
o_safeStopB		:= o_safeStopA;

pHoist.Write.BagInTransit := (step = 3) OR releaseBag; //Stop the hoist going into manual mode while a bag is moving.
pHoist.Write.TargetPosition := reqPosition;
o_guardMoveDown := guardMoveDown;
o_guardMoveUp := NOT guardMoveDown;		

IF (pHoist.Read.Error OR NOT pHoist.Read.Heartbeat) AND NOT Std.HaltSysZone[myZone] THEN	
	alarm.Name := ALM_SERVO_HOIST;	
	IF pHoist.Read.Error THEN
		alarm.Time := 400;	
	ELSE
		alarm.Time := 3000;
	END_IF;
END_IF;		

//Alarms
timerAlarm(IN := NOT pls AND (alarm.Name > 0) AND (alarm.Name = lastAlarm) ,PT:= alarm.Time);
lastAlarm := alarm.Name;

alarm.On 	:= timerAlarm.Q;
alarm.ET 	:= timerAlarm.ET;	



END_PROGRAM


