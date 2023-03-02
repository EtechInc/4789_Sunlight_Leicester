(********************************************************************
 * COPYRIGHT -- HP
 ********************************************************************
 * Program: 6_x_Dc
 * File: 6_x_Dc.st
 * Author: zmclaren
 * Created: May 14, 2015
 ********************************************************************
 * Implementation of program 6_x_Dc
 ********************************************************************)
//Version 1.00.0 First Release.
//Version 1.00.2 Make  Can.BagReady Optional to avoid overwriting the static bag 
PROGRAM _INIT
//Configuration
myIO					:= 151;   //Discharger IO module number
myStartStop				:= 6;     //Start / Stop used on TrackView display (Traffic Light)
mySeq					:= 6;     //Sequence number
myDC					:= 1;     //Discharger number
myCan					:= 0;     //Discharger CAN / KanLink as may differ from discharger number
myBuffBag				:= 0;   //Buffer bag number - set to 0 to use Request / Enable
myBag					:= 135;   //Discharger bag number 	
myDst					:= 21;    //Destination number for bags to be opened at this discharger (destination 0 will also be opened)
myRelCounter			:= 22;    //Bag released counter number - set to 0 to use RequestRel / EnableRel
myOutBag				:= Line[myRelCounter].LastBag; // For tracking full bags
myZone					:= 0;     //Safe Zone
myBagCloser				:= TRUE;  //Bag closer is fitted?
myCodesStrobe			:= FALSE; //Use Jensen (Senking) strobe method for transfer of codes to CBW
myPushButtonControl		:= TRUE; //Bag is opened by pressing a pushbutton and confirmed empty with a second press.
myPickerControl			:= FALSE; //Bag is opened by a picker (only open bag signal which goes off when load has dropped)	
bagsPassThroughDC		:= TRUE; // Bags with different destination are allowed to pass through the discharger.
	
	
alarm					ACCESS ADR(Alarm[mySeq]);
bag						ACCESS ADR(Bag[myBag]);
outBag					ACCESS ADR(Bag[myOutBag]);
	
END_PROGRAM

PROGRAM _CYCLIC

IF myPushButtonControl OR myPickerControl THEN
	CAN[myCan].DropLoad		:= X[0].X01; //Input open bag
    CAN[myCan].LoadDropped	:= X[0].X02; //Input load has dropped if used
END_IF;

//Single bag buffer after discharger - enter input and output for the proximity switch and buffer stop.
i_bagAtEmptyBuffer		:= FALSE;
o_emptyBagBufferOpen	:= FALSE;


//IO Configuration

dischargerEnable 		:= ((D[myStartStop] > 0) AND NOT Std.HaltSysZone[myZone]);
	
i_bagAtBuffer			:= X[myIO].X01;
i_bagAtDischarger		:= X[myIO].X02;
i_openBag				:= Enable.SK[myDC];
i_loadDropped			:= FALSE;
i_bagReleased			:= X[myIO].X03;
i_bagEmpty			  	:= X[myIO].X04;  //  Do not set as NOT or False needs to be seen on step 3

o_bagReady				:= FALSE;
o_openBuffer 			:= FALSE;
o_steadys				:= FALSE;
o_closer				:= FALSE;
o_openBag				:= FALSE;
o_openStop				:= FALSE;

Request.DC[myDC]		:= FALSE;
RequestRel.DC[myDC] 	:= FALSE;


//Setup Alarm
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

//Check Status - Bag settled at buffer, no bag at discharger, bag at buffer on screen and no bag at discharger on the screen
useBuffer := (myBuffBag > 0);
ton_10ms_SettledBuffer(IN:= i_bagAtBuffer, PT:= 300);
IF (step = 1) THEN
	//Disable sequence if input made
	IF (dischargerEnable AND NOT i_bagAtDischarger AND (bag.Cat = 0) AND NOT Std.HaltSysZone[myZone]) THEN
		IF useBuffer AND NOT myDCBatch THEN  // No batch standerd
			IF (ton_10ms_SettledBuffer.Q AND (Bag[myBuffBag].Cat > 0)) THEN 
				D[900 + mySeq] := 2;
				Count[mySeq] := Count[mySeq] + 1;	
			END_IF;
		ELSIF useBuffer AND myDCBatch THEN  // Use Batch set myDCBatch
			IF (ton_10ms_SettledBuffer.Q AND (Bag[myBuffBag].Cat > 0) AND (D[batchSizeSet] > 0)) THEN // Make sure batch size has arrived in buffer.
				D[900 + mySeq] := 2;
				Count[mySeq] := Count[mySeq] + 1;	
			END_IF;
	
			//Alarm - Buffer bag detection error
			IF (myBuffBag > 0) THEN
				IF (Bag[myBuffBag].Cat > 0) AND NOT i_bagAtBuffer THEN
					alarm.Name 	:= almBagNotAtProx;
					alarm.Bag	:= myBuffBag;
				ELSIF  (Bag[myBuffBag].Cat = 0) AND i_bagAtBuffer THEN
					alarm.Name 	:= almBagNotShownOnScreen;
					alarm.Bag	:= myBuffBag;
				END_IF;
			END_IF;
		ELSE
			D[900 + mySeq] := 2;
			Count[mySeq] := Count[mySeq] + 1;	
		END_IF;
	END_IF;

	//Alarm - Bag detected at discharger
	IF (bag.Cat > 0) THEN
		alarm.Name := almBagDataError;
	ELSIF i_bagAtDischarger THEN
		alarm.Name := almSwitchFault;
	END_IF;
END_IF;


//Wait for bag in discharger
IF (step = 2) THEN
	o_openBuffer 		:= useBuffer;
	Request.DC[myDC] 	:= NOT useBuffer;
	IF i_bagAtDischarger THEN
		D[900 + mySeq] := 3;
	END_IF;
	IF useBuffer THEN
		alarm.Name := almBagNotArrived;
	END_IF;
END_IF;


//Let bag settle in discharger
ton_10ms_SettledAtDischarger(IN:= i_bagAtDischarger, PT:= 300);
IF (step = 3) THEN
	IF useBuffer THEN
		IF ((bag.Cat = 0) AND (Bag[myBuffBag].Cat > 0)) THEN
			bag := Bag[myBuffBag];
			Bag[myBuffBag] 	:= Bag[0];
		END_IF;
	END_IF;
	IF ((bag.Dst <> myDst) AND (bag.Dst <> 0)) THEN
		D[900 + mySeq] := 11; //Bag is for another destination then go-to release bag
	END_IF;
	IF ton_10ms_SettledAtDischarger.Q THEN 
		IF bag.Cat = Std.MaxCats THEN
			D[900 + mySeq] := 8;
		ELSIF ((bag.Dst <> myDst) AND (bag.Dst <> 0) AND bagsPassThroughDC ) THEN
			D[900 + mySeq] := 11; //Bag is for another destination then go-to release bag
		ELSIF i_bagEmpty THEN  //Make sure empty bag photocell is working (Cannot be set to NOT at top)
			D[900 + mySeq] := 4;
		END_IF;
	ELSE		
		alarm.Name := almBagNotSettled;
	END_IF;
END_IF;

//Allow steadys to move down
ton_10ms_SteadysDown(IN:= (step = 4), PT:= 300);
IF (step = 4) THEN
	IF ton_10ms_SteadysDown.Q THEN
		IF (bag.Prg = Std.MaxProg) THEN
			D[900 + mySeq] := 8; //Empty bag then go-to close
		ELSE
			IF myCodesStrobe THEN
				IF CAN[myCan].StrobeComplete THEN
					D[900 + mySeq] := 5;
				END_IF
			ELSIF myPushButtonControl THEN
				IF NOT i_openBag THEN
					D[900 + mySeq] := 5;
				END_IF;  
				alarm.Name := almSwitchFault;
			ELSE 
				D[900 + mySeq] := 5;
			END_IF;
		END_IF;
	END_IF;
END_IF;

//Steady cylinders on from steps 4 - 9
o_steadys := ((step >= 4) AND (step <= 9));

//Bag opener on from step 5 - 8
o_openBag := ((step >= 6) AND (step <= 8));

CodeStep  := ((step >= 5) AND (step <= 6));


////Wash Codes
//IF CodeStep THEN
//	CAN[myCan].Program		:= bag.Prg;
//	CAN[myCan].Category 	:= bag.Cat;
//	CAN[myCan].Customer 	:= bag.Cus;
//	CAN[myCan].Weight   	:= bag.Wgt;   //D[batchWeightSet] (WgtRound / 10) ;rounded up weight divide BY 10
//	CAN[myCan].BatchID		:= bag.Mis;	
//	CAN[myCan].DoubleLoad 	:= FALSE;
//ELSE
//	CAN[myCan].Program 		:= 0;
//	CAN[myCan].Category 	:= 0;
//	CAN[myCan].Customer 	:= 0;
//	CAN[myCan].Weight   	:= 0;
//	CAN[myCan].BatchID		:= 0;
//	CAN[myCan].DoubleLoad 	:= FALSE;
//END_IF;


//Bag Ready to Washing Machine
IF (step = 5) THEN
	o_bagReady 			:= myPushButtonControl OR myPickerControl;
	IF (myCan > 0) THEN CAN[myCan].BagReady := NOT myPushButtonControl OR myPickerControl; END_IF;
	IF i_openBag OR TestDischarger THEN
		D[900 + mySeq] := 6;
	END_IF;
ELSE
	CAN[myCan].BagReady	:= FALSE;
END_IF;

//Set LoadDropped to False
IF (step <> 6) THEN
	LoadDropped := FALSE;
END_IF;


//Open Bag Until LoadDropped Received and has been open for 6 seconds
ton_10ms_MinOpen(IN:= (step = 6), PT:= 600); 
IF (step = 6) THEN

	IF (myPushButtonControl OR myPickerControl) THEN 
		IF (NOT i_openBag OR TestDischarger) THEN
			LoadDropped := TRUE;
		END_IF;
	ELSE 
		IF (i_loadDropped OR TestDischarger) THEN
			LoadDropped := TRUE;	
		END_IF;
	END_IF;

	IF (LoadDropped AND ton_10ms_MinOpen.Q) THEN
//		//Write Report
//		IF (ReportUnloading[myDC].Cat = 0) THEN
//			ReportUnloading[myDC].Prg := bag.Prg; 	//Program
//			ReportUnloading[myDC].Cat := bag.Cat;	//Category
//			ReportUnloading[myDC].Cus := bag.Cus;	//Customer
//			ReportUnloading[myDC].Wgt := bag.Wgt;	//Weight
//			ReportUnloading[myDC].Cnt := 0;					//Count
//			ReportUnloading[myDC].Stn := 0;					//Station
//			ReportUnloading[myDC].Mcn := myDC;				//Machine
//			ReportUnloading[myDC].Mis := bag.Mis;	//Batch ID
//			D[batchSizeSet] := (D[batchSizeSet] - 1); 
//		END_IF
		D[900 + mySeq] := 7;
		alarm.Time := 60000;	
		alarm.Name := almLoadNotDropped;
	END_IF;
END_IF;

//Change display to empty bag - clear all other bag data
IF (step = 7) THEN
	IF myPushButtonControl THEN
		o_bagReady := Std.Clock200ms;
		IF ((NOT i_openBag AND NOT i_loadDropped AND NOT i_bagEmpty) OR TestDrop) THEN
			//bag		:= Bag[0];
			bag.Prg 	:= Std.MaxProg;
			bag.Cat	:= Std.MaxCats;
			bag.Cus 	:= Std.MaxCust; 
			bag.Dst 	:= 0;	
			D[900 + mySeq] 	:= 8;
		END_IF;
		IF (i_loadDropped OR i_bagEmpty) THEN
			alarm.Name := ALM_SWITCH_FAULT;
		END_IF;
	ELSE
		IF ((NOT i_openBag AND NOT i_loadDropped AND NOT i_bagEmpty) OR TestDrop) THEN
			//bag		:= Bag[0];
			bag.Prg 	:= Std.MaxProg;
			bag.Cat	:= Std.MaxCats;
			bag.Cus 	:= Std.MaxCust; 
			bag.Dst 	:= 0;
			D[900 + mySeq] 	:= 8;
		END_IF;
		IF (i_openBag OR i_loadDropped OR i_bagEmpty) THEN
			alarm.Name := almSwitchFault;
		END_IF;
	END_IF;
END_IF;

//Close bag
ton_10ms_CloserDelay(IN:= (step = 8), PT:= 200);	
ton_10ms_CloserDown(IN:= (step = 8), PT:= 800); 
IF (step = 8) THEN
	IF myBagCloser THEN
		o_closer := ton_10ms_CloserDelay.Q;
		IF ton_10ms_CloserDown.Q THEN
			D[900 + mySeq] := 9;
		END_IF;
	ELSE
		D[900 + mySeq] := 10;
	END_IF;
END_IF;

//Allow closer to go back up
ton_10ms_CloserUp(IN:= (step = 9), PT:= 600); 
IF (step = 9) THEN
	IF ton_10ms_CloserUp.Q THEN
		D[900 + mySeq] := 10;
	END_IF;
END_IF;

//Allow steadys to go up
ton_10ms_SteadyUp(IN:= (step = 10), PT:= 200); 
IF (step = 10) THEN
	IF ton_10ms_SteadyUp.Q AND NOT EnableRel.DC[myDC] THEN
		D[900 + mySeq] := 11;
	END_IF;
END_IF;

//Check for space on empty bag buffer / Request release
UseCounter := (myRelCounter > 0);
IF (step = 11) THEN
	IF UseCounter THEN
		IF (Line[myRelCounter].Clear AND NOT i_bagAtEmptyBuffer AND NOT o_emptyBagBufferOpen) THEN
			D[900 + mySeq] := 12;
		END_IF;
		IF (Line[myRelCounter].Clear AND i_bagAtEmptyBuffer AND NOT o_emptyBagBufferOpen) THEN
			alarm.Name := almSwitchFault;
		END_IF;
	ELSE
		RequestRel.DC[myDC]	:= TRUE;
		IF EnableRel.DC[myDC] THEN
			D[900 + mySeq] := 12;
		END_IF;
	END_IF;
END_IF;

//Open buffer stop - unitl bag out
IF (step = 12) THEN
	o_openStop := (((outBag.Cat = 0) AND (bag.Cat > 0)) OR (myOutBag = 0));
	IF (myOutBag = 0) THEN
		bag := Bag[0]; //Clear bag;
	END_IF;
	
	IF UseCounter THEN
		IF pls THEN
			C[myRelCounter] := 0;
		END_IF;
		IF (myOutBag > 0) THEN	
			IF (outBag.Cat = 0) AND (bag.Cat > 0) AND Line[myRelCounter].Trip  THEN
				outBag := bag;
				bag := Bag[0];	
				D[900 + mySeq] := 1;	
			END_IF;			
		ELSE		
			IF Line[myRelCounter].Trip OR i_bagReleased  THEN
				D[900 + mySeq] := 1;
			END_IF;
		END_IF;		
	ELSE
		IF NOT EnableRel.DC[myDC] AND ((myOutBag = 0) OR (bag.Cat = 0)) THEN
			D[900 + mySeq] := 1;
		END_IF;
	END_IF;
	alarm.Name := almBagNotReleased;
END_IF;

//Alarms
timerAlarm(IN := NOT pls AND (alarm.Name > 0),PT:= alarm.Time);
alarm.On 	:= timerAlarm.Q;
alarm.ET 	:= timerAlarm.ET;

//Outputs
Request.SK[myDC] := o_bagReady;
Y[myIO].Y01 	:= o_openBuffer;
Y[myIO].Y02 	:= o_steadys;
Y[myIO].Y03 	:= o_openBag;
Y[myIO].Y04 	:= o_openStop;
Y[myIO].Y05 	:= o_closer;
END_PROGRAM
