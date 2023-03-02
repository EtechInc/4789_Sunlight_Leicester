(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Program: lu twin rail loading unit
 * File: lu.st
 * Author: treamsbottom
 * Created: August 21, 2018
 ********************************************************************
 * Implementation of program lu
 ********************************************************************)
//V1.00.1 First Release
PROGRAM _INIT
//Configuration
mySeq						:= 30;	//Sequence number
myIO						:= 23;	//First IO Block
myLU						:= 2;	// Loading unit number
myZone						:= 1;	// Safety Zone
myBag						:= 201; //Buffer Bag
myBuffBag					:= 0; 	// Tracking Empty bag in...
myOutBag					:= 0; // there is a buffer after the loading unit.	
useRequest					:= FALSE; //Use the Request bit. Only use when working with x_1_point. otherwise use RequestRelease as the i_bagAtBuffer.	
bufferSettleTime			:= 300; // Time for bag to settle in buffer	

useCompressor				:= FALSE;
myReportStn					:= 0;//myLU// Set Station index for reports. 0 = no report write. 
	
myBelt						:= 1;	// Set if loaded by a belt
myCan						:= 0;	// Set if using Kanlink...	
	
	
alarm						ACCESS ADR(Alarm[mySeq]);
bag							ACCESS ADR(Bag[myBag]);
bag_buff					ACCESS ADR(Bag[myBuffBag]);	
bag_out						ACCESS ADR(Bag[myOutBag]);
can							ACCESS ADR(CAN[myCan]);
	
	
END_PROGRAM


PROGRAM _CYCLIC
//Inputs
	
i_bagInLoadingUnit[1]	:= X[myIO].X03;
i_bagInLoadingUnit[2]	:= X[myIO].X04;
i_bagAtBuffer[1]		:= X[myIO].X01;			
i_bagAtBuffer[2]		:= X[myIO].X02;	
	
i_compressorAtTop[1]	:= TRUE; // Set to TRUE if there is no compressor
i_compressorAtTop[2]	:= TRUE;
i_compress				:= FALSE;

i_bagAtBufferOut[1] 	:= FALSE;	// Is there a buffer after the loading unit..
i_bagAtBufferOut[2] 	:= FALSE; 
i_bufferOutOpen[1]		:= FALSE;
i_bufferOutOpen[2]		:= FALSE;
	
o_openBuffer			:= FALSE;
o_steadyCylinders		:= FALSE;
o_releaseBag	 		:= FALSE;
o_moveCompressorDown	:= FALSE;
	
Request.LU[myLU]		:= FALSE;
RequestRel.LU[myLU]		:= FALSE;
	
IF (myBelt > 0) THEN	
	EnableRel.TransferBelt[myBelt] := FALSE;
END_IF;							

IF (myCan > 0) THEN	
	can.ReadyToLoad := FALSE;
END_IF		
		
IF (myBag = 0) THEN	
	alarm.Bag	:= mySeq + 10000;			
ELSE		
	alarm.Bag	:= myBag;	
END_IF;

alarm.Name 		:= 0;
alarm.Beacon		:= TRUE;
alarm.Extra		:= 0;
alarm.Time		:= 3000;

//Setup Sequence
step := D[900 + mySeq];
//Setup Pulse contact
pls := (step <> lastStep);
lastStep := step;

//Get BagID 
IF (bag.Cat > 0) AND (bag.Bid = 0) AND (BidStn > 0) THEN
	bag.Bid := BidStn;
	BidStn := 0;
END_IF;	
	
	
//Sequence
IF (step = 0) THEN
	//Disabled
END_IF;

lu_Enabled	:= (NOT Std.HaltSysZone[myZone]);//(D[mySeq] > 0) AND
	
//Check loading unit is clear.
switchFault 	:= (i_bagInLoadingUnit[1] OR i_bagInLoadingUnit[2]);
compressorUp 	:= (i_compressorAtTop[1] AND i_compressorAtTop[2]);		
ton_10ms_LuClear(IN:= compressorUp AND NOT switchFault,PT:= 200);
IF (step = 1) THEN
	IF (ton_10ms_LuClear.Q AND lu_Enabled) THEN
		D[900 + mySeq] := 2;
		Count[mySeq] := Count[mySeq] + 1;
	END_IF;
	IF (switchFault OR NOT compressorUp) THEN
		alarm.Name := ALM_SWITCH_FAULT;
	END_IF;
END_IF;
	
// Step 2 - Wait for bag at buffer if used
ton_10ms_SettledBuffer(IN:= (i_bagAtBuffer[1] AND i_bagAtBuffer[2]), PT:= bufferSettleTime);
IF (step = 2) THEN
	IF useRequest THEN 
		D[900 + mySeq] := 3;			
	ELSE		
		IF ton_10ms_SettledBuffer.Q THEN
			IF (myBuffBag > 0) THEN	
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
END_IF;

//Open buffer stop / Request bag
IF (step = 3) THEN
	releaseValid := ((myBuffBag = 0) OR ((bag.Cat = 0) AND (bag_buff.Cat > 0)));
	o_openBuffer := releaseValid AND NOT useRequest;
	Request.LU[myLU]  := releaseValid AND useRequest;
	IF ((i_bagInLoadingUnit[1] OR i_bagInLoadingUnit[2]) AND releaseValid) THEN
		IF (myBuffBag > 0) THEN
			bag := bag_buff; //Clear empty buffer bag data if used
			bag_buff := Bag[0];		
		END_IF;
		D[900 + mySeq] := 4;
	ELSIF (myBuffBag > 0) THEN
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
	ELSE		
		alarm.Name  := ALM_BAG_NOT_ARRIVED;		
	END_IF;
END_IF;

//Step 4 - Bag settles in loading unit
ton_10ms_SettleInLU(IN:= i_bagInLoadingUnit[1] AND i_bagInLoadingUnit[2] ,PT:= 300);
IF (step = 4) THEN
	IF ton_10ms_SettleInLU.Q THEN
		D[900 + mySeq] := 5;
	END_IF;
	alarm.Name := ALM_BAG_NOT_SETTLED;
END_IF;

//Steady cylinders on from steps 5 - 8
o_steadyCylinders := ((step >= 5) AND (step <= 8));
	
//Move Steady Cylinders down and check bag data
ton_10ms_SteadyDown(IN:= (step = 5), PT:= 200);
IF (step = 5) THEN
	IF ton_10ms_SteadyDown.Q  THEN
		IF (myBuffBag = 0) THEN
			IF (bag.Cat = 0) THEN	
				D[900 + mySeq] := 6;
			ELSE
				alarm.Name := ALM_BAG_DATA_ERROR;
				alarm.Time := 0;
			END_IF;		
		ELSE	
			IF (bag.Cat = Std.MaxCats) THEN	
				D[900 + mySeq] := 6;
			ELSE
				alarm.Name := ALM_BAG_DATA_ERROR;
				alarm.Time := 0;
			END_IF;				
		END_IF;		
	END_IF;
END_IF;


//Step 6 Wait for bag to be loaded..
IF (step = 6) THEN
	EnableRel.TransferBelt[myBelt] 	:= (myBelt > 0);
	IF (myCan > 0) THEN// Kanlink interface.
		can.ReadyToLoad 		:= NOT unloadFinished;
		IF (can.Category > 0) AND NOT unloadFinished THEN
			myPrg := UINT_TO_USINT(can.Program);
			myCat := can.Category;
			myCus := can.Customer;	
			myWgt := can.Weight;	
			myMis := can.BatchID; 
		END_IF;	
		// Get Program code
		IF ((myPrg = 0) AND (myCat > 0) AND (D32[100 + 20 * (myLU - 1)] <> myCat)) THEN
			D32[100 + 20 * (myLU - 1)] := myCat;
		ELSIF (D32[101 + 20 * (myLU - 1)] = myCat) THEN	
			myPrg := UDINT_TO_USINT(D32[102 + 20 * (myLU - 1)]);		
		END_IF;	
		IF can.UnloadFinished THEN
			unloadFinished := TRUE;
		END_IF;
		IF (unloadFinished AND (myCat > 0) AND (myPrg > 0)) THEN
			bag.Prg := myPrg;	
			bag.Cat := myCat;
			bag.Cus := myCus;		
			bag.Wgt := myWgt;	
			bag.Mis := myMis;	
		END_IF;			
	END_IF;	
		
	IF (bag.Cat > 0) AND (bag.Prg > 0) AND ((bag.Cat <> Std.MaxCats) OR (myBuffBag = 0)) THEN
		IF (myReportStn > 0) THEN
			IF (ReportLoading[myReportStn].Cat = 0) THEN
				ReportLoading[myReportStn].Prg := bag.Prg;
				ReportLoading[myReportStn].Cat := bag.Cat;
				ReportLoading[myReportStn].Cus := bag.Cus;
				ReportLoading[myReportStn].Wgt := bag.Wgt;
				ReportLoading[myReportStn].Cnt := 0;			
				ReportLoading[myReportStn].Stn := myReportStn;     				
				ReportLoading[myReportStn].Mcn := 0;					
				ReportLoading[myReportStn].Bid := bag.Mis;			
				D[900 + mySeq] := 7;
			END_IF;
		ELSE		
			D[900 + mySeq] := 7;
		END_IF;
	ELSIF (myCan > 0) AND unloadFinished THEN
		alarm.Name := ALM_BAG_DATA_ERROR;	
	END_IF;
ELSE
	D32[100 + 20 * (myLU - 1)] := 0;
	unloadFinished := FALSE;
	can.ReadyToLoad := FALSE;
	can.Program := 0;
	can.Category := 0;	
	can.Customer := 0;	
	can.Weight := 0;
	can.BatchID := 0;			
END_IF;
		
						
//Step 7 Check If compression is required
ton_10ms_CompressCheck(IN:=(step = 7),PT:= 30);
IF (step = 7) THEN	
	IF useCompressor THEN	
		IF i_compress THEN
			compress := TRUE;	
		END_IF;	
		IF ton_10ms_CompressCheck.Q THEN	
			IF compress THEN	
				D[900 + mySeq] := 8; // Compress	
			ELSE		
				D[900 + mySeq] := 9;	// Check compressor is OK
			END_IF;					
		END_IF;	
	ELSE
		D[900 + mySeq] := 9;
	END_IF;				
ELSE
	compress := FALSE;		
END_IF;
	
	
//Step 8 move linen compressor down.	
ton_10ms_CompressDown(IN:=(step = 8),PT:= 500);
IF (step = 8) THEN	
	IF useCompressor THEN
		IF ton_10ms_CompressDown.Q THEN
			D[900 + mySeq] := 9;			
		END_IF;
	ELSE							
		D[900 + mySeq] := 9;
	END_IF;	
END_IF;	

//step 9 check compressor status	
ton_10ms_CompressorCheck(IN:=((i_compressorAtTop[1] AND i_compressorAtTop[2]) OR NOT useCompressor),PT:= 200); 
IF (step = 9) THEN
	IF ton_10ms_CompressorCheck.Q  AND NOT Std.HaltSysZone[myZone] THEN
		D[900 + mySeq] := 10; 		
	END_IF;	
	alarm.Name := ALM_SWITCH_FAULT;		
END_IF;	
		

//Check for line space.
IF (step = 10) THEN
	releaseValid := (NOT i_bagAtBufferOut[1] AND NOT i_bufferOutOpen[1] AND NOT i_bagAtBufferOut[2] AND NOT i_bufferOutOpen[2] AND (bag.Cat > 0) AND (bag_out.Cat = 0));		
	IF NOT Std.HaltSysZone[myZone] THEN
		IF (myOutBag > 0) THEN // We are releasing into a buffer after the loading unit.
			IF releaseValid THEN
				D[900 + mySeq] := 11;
			END_IF;
		ELSE
			RequestRel.LU[myLU] := releaseValid;
			IF EnableRel.LU[myLU] AND releaseValid THEN
				D[900 + mySeq] := 11;
			END_IF;
		END_IF;
		IF (myBag > 0) AND (bag.Cat = 0) THEN
			alarm.Name := ALM_BAG_DATA_ERROR;
			alarm.Time := 0;	
		END_IF;		
	END_IF;
END_IF;
	
//Release bag.
IF (step = 11) THEN
	
	IF (myOutBag > 0) THEN
		releaseValid := (NOT i_bagAtBufferOut[1] AND NOT i_bufferOutOpen[1] AND NOT i_bagAtBufferOut[2] AND NOT i_bufferOutOpen[2] AND (bag.Cat > 0) AND (bag_out.Cat = 0));	
		o_releaseBag := releaseValid;
		IF i_bagAtBufferOut[1] AND i_bagAtBufferOut[2] THEN 
			IF (bag.Cat > 0) AND (bag_out.Cat = 0) THEN		
				bag_out := bag;	
				bag := Bag[0];
				D[900 + mySeq] := 1;	
			ELSE 
				alarm.Name := ALM_BAG_DATA_ERROR;	
				alarm.Time := 0;
			END_IF;		
		ELSIF releaseValid THEN 
			alarm.Name := ALM_BAG_NOT_RELEASED;		
		END_IF;	
	ELSE // We are using request and enable..
		o_releaseBag := EnableRel.LU[myLU];	
		IF NOT EnableRel.LU[myLU] AND (bag.Cat = 0) THEN // Make sure data is copied out by enabling sequence.
			D[900 + mySeq] := 1;
		ELSIF NOT EnableRel.LU[myLU] AND (bag.Cat > 0) THEN
			alarm.Name := ALM_BAG_DATA_ERROR;		
		END_IF;	
	END_IF;			
END_IF;

//-----------------------------------
//PLC Outputs - adjust TO suit system
//-----------------------------------

	

Y[myIO].Y07 		:= o_releaseBag;							
Y[myIO].Y08 		:= o_releaseBag;
	
Y[myIO].Y05 		:= o_openBuffer;
Y[myIO].Y06 		:= o_openBuffer;	

Y[myIO + 1].Y05 	:= o_steadyCylinders;
Y[myIO + 1].Y06 	:= o_steadyCylinders; //Elephants foot

//Y[myIO + 1].Y07 	:= o_moveCompressorDown;
//Y[myIO + 1].Y08 	:= o_moveCompressorDown;	

						
//Alarms
timerAlarm(IN := NOT pls AND (alarm.Name > 0),PT:= alarm.Time);

alarm.On 	:= timerAlarm.Q;
alarm.ET 	:= timerAlarm.ET;

END_PROGRAM

