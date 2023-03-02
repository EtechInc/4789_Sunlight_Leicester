(********************************************************************
* COPYRIGHT --  
********************************************************************
* PROGRAM: sb
* File: sb.st
* Author: treamsbottom
* Created: March 16, 2018
********************************************************************
* Implementation OF Static Bag
********************************************************************)
//V1.00.1 First Release
//V1.00.2 Add option to use Comms or Pushbutton via the myCan Var.
PROGRAM _INIT
//Configuration
mySeq						:= 23;	//Sequence number	
myZone						:= 0;

myDC						:= 14;// Discharger Static bag is linked to	
myIO						:= 150 + myDC; // use standard numbering or override with manual reference.
myBag						:= 296; //Buffer Bag	
myDischargerBag				:= 295;
myCan						:= myDC;  // If use the myCan we enable automatic release from the discharger.

alarm						ACCESS ADR(Alarm[mySeq]);
bag							ACCESS ADR(Bag[myBag]);
bag_disch					ACCESS ADR(Bag[myDischargerBag]);	
can							ACCESS ADR(CAN[myCan]);

END_PROGRAM


PROGRAM _CYCLIC
//Inputs
i_pushbutton 	:= X[myIO].X05;	
pushbutton.CLK 	:= i_pushbutton; 
pushbutton();			

staticBagEnable := NOT Std.HaltSysZone[myZone];	

o_bagReady 					:= 0;	
o_openBag 					:= 0;
o_openCatch 				:= 0;
Enable.SK[myDC]				:= 0;
IF (myCan > 0) THEN
	can.BagReady 			:= 0;		
END_IF;

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
pls := (step <> laststep);
laststep := step;

//Sequence
IF (step = 0) THEN
	//Disabled
END_IF;

//step 1 - Check signals 
IF (step = 1) THEN
	IF staticBagEnable THEN
		IF (myCan > 0) THEN
			IF NOT can.DropLoad AND NOT can.LoadDropped THEN	
				D[900 + mySeq] := 2;
			ELSE			
				alarm.Name := ALM_SWITCH_FAULT;
				alarm.Time := 0;				
			END_IF;		
		ELSIF (NOT i_pushbutton AND (bag.Cat = 0)) THEN
			D[900 + mySeq] := 2;
		END_IF;
		IF (bag.Cat <> 0) THEN	
			alarm.Name := ALM_BAG_DATA_ERROR;
			alarm.Time := 0;
		ELSIF i_pushbutton AND (myCan = 0) THEN 
			alarm.Name := ALM_SWITCH_FAULT;
			alarm.Time := 0;	
		END_IF;
	END_IF;
END_IF;

IF (bag.Cat > 0) AND (bag.Bid = 0) AND (BidStn > 0) THEN
	bag.Bid := BidStn;
	BidStn := 0;	
END_IF;	

//step 2 - Enable discharger TO open
IF (step = 2) THEN
	IF (myCan > 0) THEN // Release from Discharger automatically
		IF (Request.SK[myDC] AND (bag_disch.Cat > 0) AND (bag.Cat = 0)) THEN
			bag := bag_disch;
			bag_disch.Cat :=  Std.MaxCats;
			bag_disch.Prg 	:= Std.MaxProg;
			bag_disch.Cus	:= Std.MaxCust;		
			bag_disch.Dst := 0;	
			bag.Bid := 0;	
			D[900 + mySeq] := 3;
		ELSIF Request.SK[myDC] AND (bag_disch.Cat = 0) THEN
			alarm.Name := ALM_BAG_DATA_ERROR;
			alarm.Time := 0;
			alarm.Bag := myDischargerBag;	
		ELSIF (bag.Cat > 0) THEN
			alarm.Name := ALM_BAG_DATA_ERROR;
			alarm.Time := 0;		
		END_IF;			
	ELSE //Pushbutton 
		o_bagReady := Request.SK[myDC] AND Std.Clock2s AND (bag_disch.Cat > 0);
		IF (Request.SK[myDC] AND pushbutton.Q AND (bag_disch.Cat > 0)) THEN
			bag := bag_disch;
			bag_disch.Cat :=  Std.MaxCats;
			bag_disch.Prg 	:= Std.MaxProg;
			bag_disch.Cus	:= Std.MaxCust;		
			bag_disch.Dst := 0;	
			bag.Bid := 0;	
			D[900 + mySeq] := 3;
		ELSIF Request.SK[myDC] AND (bag_disch.Cat = 0) THEN
			alarm.Name := ALM_BAG_DATA_ERROR;
			alarm.Time := 0;
			alarm.Bag := myDischargerBag;	
		END_IF;		
	END_IF;		

END_IF;


//step 3 - Allow linen TO drop
ton_10ms_MinDischOpen(IN:= NOT Request.SK[myDC],PT:= 100);
IF (step = 3) THEN
	o_openCatch 	:= 1;
	Enable.SK[myDC] := 1;
	IF ton_10ms_MinDischOpen.Q THEN
		D[900 + mySeq] := 4;
	END_IF;
END_IF;


codeStep  := ((step >= 4) AND (step <= 5)); 

//Wash Codes
IF codeStep THEN
	can.Program		:= bag.Prg;
	can.Category 	:= bag.Cat;
	can.Customer 	:= bag.Cus;
	can.Weight   	:= bag.Wgt;   
	can.BatchID		:= bag.Mis;	
	can.DoubleLoad 	:= FALSE;
ELSE
	can.Program 	:= 0;
	can.Category 	:= 0;
	can.Customer 	:= 0;
	can.Weight   	:= 0;
	can.BatchID		:= 0;
	can.DoubleLoad 	:= FALSE;
END_IF;	

//step 4 - Bag full wait Drop load from Washing Machine
IF (step = 4) THEN	
	o_bagReady := (myCan = 0);
	can.BagReady := (myCan > 0);
	IF (myCan > 0) THEN
		IF can.DropLoad THEN
			D[900 + mySeq] := 5;
		END_IF;		
	ELSIF pushbutton.Q THEN
		D[900 + mySeq] := 5;
	END_IF;
END_IF;


//step 5 - Open bag
ton_10ms_minOpen(IN:= (step = 5),PT:= 600);
IF (step = 5) THEN
	o_openCatch 	:= TRUE;
	o_openBag 		:= TRUE;
	IF (myCan > 0) THEN	
		IF can.LoadDropped THEN	
			loadDropped := 1;
		END_IF;	
	ELSE		
		o_bagReady 		:= Std.Clock1s AND ton_10ms_minOpen.Q;	
		IF  pushbutton.Q  AND ton_10ms_minOpen.Q THEN
			loadDropped := 1;
		END_IF;
	END_IF;
	
	IF loadDropped AND ton_10ms_minOpen.Q THEN
		//Write Report
		IF (ReportUnloading[myDC].Cat = 0) AND Std.StationReports THEN
			ReportUnloading[myDC].Prg := bag.Prg;// 	;PROGRAM
			ReportUnloading[myDC].Cus := bag.Cus;//		;Customer
			ReportUnloading[myDC].Wgt := bag.Wgt;//		;Weight
			ReportUnloading[myDC].Cnt := 0;//			;Count
			ReportUnloading[myDC].Stn := 0;//			;Station
			ReportUnloading[myDC].Mcn := myDC;//		;Machine
			ReportUnloading[myDC].Bid := bag.Bid;//		
			ReportUnloading[myDC].Mis := bag.Mis;//		;Batch ID
			//ReportUnloading[myDC].TimeStamp := CurrentTimestamp;//	
			bag := Bag[0];
			D[900 + mySeq] := 6;
		END_IF;
	END_IF;
ELSE
	loadDropped := 0;	
END_IF;	

//step 6 - Close bag
ton_10ms_closerDown(IN:= (step = 6),PT:= 1000);
IF (step = 6) THEN
	o_openCatch := TRUE;
	IF ton_10ms_closerDown.Q THEN
		bag := Bag[0];
		D[900 + mySeq] := 7;
	END_IF;
END_IF;

//step 7 - Allow catch TO settle
ton_10ms_closerUp(IN:= (step = 7),PT:= 400);
IF (step = 7) THEN
	IF ton_10ms_closerUp.Q THEN
		D[900 + mySeq] := 1;
	END_IF;
END_IF;


//-----------------------------------
//PLC Outputs - adjust TO suit system
//-----------------------------------

Y[myIO].Y08	:= o_bagReady  AND (myCan = 0);	
Y[myIO].Y06	:= o_openCatch;
Y[myIO].Y07 := o_openBag;		

//Alarms
timerAlarm(IN := NOT pls AND (alarm.Name > 0),PT:= alarm.Time);

alarm.On 	:= timerAlarm.Q;
alarm.ET 	:= timerAlarm.ET;

END_PROGRAM

