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
myBank 						:= 1;	
myZone						:= 1;
END_PROGRAM


PROGRAM _CYCLIC

i_partLoad[1]		:= X[306].X01;	
i_partLoad[2]		:= X[306].X02;	
i_partLoad[3]		:= X[306].X03;
i_partLoad[4]		:= X[306].X04;
i_partLoad[5]		:= X[307].X01;	
	
FOR n := Ldg[myBank].StartStn  TO Ldg[myBank].EndStn DO 	
	//Configuration
	mySeq						:= 40;	//Sequence number		
	myIO 						:= 300 + n;// Start of IO. will be auto incremented in control loop
	myBag						:= 210 + n;  //Start or station bags (- 1) - The bags used when full, not the loading program)	
	//Keep in array size
	IF n > MAX_ROTASTATIONS THEN	
		EXIT;	
	END_IF;
	//Configuration
	myAlm					:= mySeq + n;// Alarm index
	mySeq					:= 900 + mySeq + n;	//Sequence number		

	o_steady[n]			:= 0;
	o_releaseBag[n]		:= 0;	
	o_pusher[n] 		:= 0;		
	Stn[n].LampOn			:= 0;
		
	i_bagInStation[n] 	:= X[myIO].X03;	 	
	
		
	Stn[n].requestBag	:= 0;
	Stn[n].Unlock 		:= 0;	
	step := D[mySeq];	
	ton_SettledStation[n].IN := (step = 4);//i_bagInStation[n];
	ton_SettledStation[n].PT := 150;
	ton_SettledStation[n]();
		
	StnBag := (Std.StationBagsStart[myBank] - 1  + n);	
	
	IF (Bag[StnBag].Cat > 0) AND (Bag[StnBag].Bid = 0) AND (BidStn > 0) THEN	
		Bag[StnBag].Bid := BidStn;
		BidStn := 0;	
	END_IF;	
	
	Bag[StnBag].Wgt := Stn[n].Weight;
		
	IF (StnBag = 0) THEN	
		Alarm[myAlm].Bag	:= mySeq + 10000;			
	ELSE		
		Alarm[myAlm].Bag	:= StnBag;	
	END_IF;
		
	Alarm[myAlm].Name 		:= 0;
	Alarm[myAlm].Beacon	    := TRUE;
	Alarm[myAlm].Extra		:= 0;
	Alarm[myAlm].Time		:= 3000;
	
	//Setup Sequence
	step := D[mySeq];
	//Setup Pulse contact
	pls := (step <> lastStep);
	lastStep := step;
	
	//Sequence
	IF (step = 0) THEN
		//Disabled
		Stn[n].QTime := 0;
		Stn[n].ManualRelease := 0;
		Stn[n].Purge := 0;	
	END_IF;

	//1- Check station is empty
	IF (step = 1) THEN
		IF NOT 	i_bagInStation[n] AND (Bag[StnBag].Cat > 0) AND (Bag[myBag].Cat = 0) THEN// Make sure we have bag data from the loading prg..
			Stn[n].ManualRelease := 0;
			Stn[n].Purge := 0;
			Count[myAlm] := Count[myAlm] + 1;	
			D[mySeq] := 2;
		ELSIF (Bag[myBag].Cat > 0) THEN
			Alarm[myAlm].Name := ALM_BAG_DATA_ERROR;
			Alarm[myAlm].Time := 6000;
			Alarm[myAlm].Bag := myBag;	
		END_IF;		
	END_IF;		
		
	//2- Request Empty Bag	
	IF (step = 2) THEN
		Stn[n].requestBag := TRUE;
		IF (D[950 + myBank] = n) THEN
			D[mySeq] := 3;	
		END_IF;	
	END_IF;	
		
		
	//3- Bag enroute	
	IF (step = 3) THEN
		Stn[n].requestBag := TRUE;
//		//Special for testing full bags only
//		o_pusher[n] := (D[950 + myBank] = n) AND Test_FullBagMode AND ((D[908] = 98) OR (D[908] = 99));	
//		//End special	
		IF i_bagInStation[n] THEN		
			D[mySeq] := 4;	
		END_IF;		
		//Alarm Bag not arrived ?
	END_IF;		

	
	//4 Bag arrives in station	
	IF (step = 4) THEN
		IF ton_SettledStation[n].Q  AND (D[950 + myBank] <> n)  THEN
			D[mySeq] := 5;
		END_IF;	
		Alarm[myAlm].Name := ALM_BAG_NOT_SETTLED;
	END_IF;	
	
	o_steady[n] := (step > 4) AND (step <= 5) AND (Stn[n].Weight < 100); 
	//5- Wieghing Step - Go in to Q 	
	IF (step = 5) THEN
		//When station goes into Q copy stn bag data into myBag
		IF i_partLoad[n] THEN
			Stn[n].ManualRelease := 1;
		END_IF;		
		//Operate the lamp...(Red)
		Stn[n].LampOn := ((Stn[n].SP1 AND Std.Clock2s) OR Stn[n].SP2 OR (Stn[n].SP3 AND Std.Clock200ms));		
		IF Stn[n].QTime > 30 AND ((Bag[myBag].Cat = 0) OR (Bag[myBag].Cat = Std.MaxCats)) AND (Bag[StnBag].Cat > 0) THEN
			myBagNumber := Bag[myBag].Ur2;
			Bag[myBag] := Bag[StnBag];
			Bag[myBag].Ur2 :=	myBagNumber;
			Bag[StnBag].Bid := 0;
		END_IF;		
		IF (D[950 + myBank] = n) AND (Bag[myBag].Cat > 0) AND (Bag[myBag].Cat <> Std.MaxCats) AND Ldg[myBank].EnableStnRelease THEN
			D[mySeq] := 6;	
		ELSIF (D[950 + myBank] = n) AND Ldg[myBank].EnableStnRelease THEN
			Alarm[myAlm].Name := ALM_BAG_DATA_ERROR;
            Alarm[myAlm].Time := 6000;	
		END_IF;			
	ELSE
		Stn[n].LampOn := 1;
	END_IF;	
	
		ton_SettledWeight[n].IN := (step = 6);//i_bagInStation[n];
		ton_SettledWeight[n].PT := 150;
		ton_SettledWeight[n]();
	
	//6 Release Bag,,,	
	IF (step = 6) THEN
	IF NOT ton_SettledWeight[n].Q THEN			
		Bag[myBag].Wgt := Bag[StnBag].Wgt;	
	END_IF;			
	IF 	ton_SettledWeight[n].Q THEN	
		o_releaseBag[n] := 1;
		IF TON_SettledInStation[n].Q THEN
			Bag[myBag].Timestamp := CurrentTimestamp;
			bagReleased[n] := 1;
		END_IF;		
		o_pusher[n] := NOT bagReleased[n];
		Stn[n].Unlock := ton_retract[n].Q;
		IF (D[950 + myBank] <> n) THEN
			D[mySeq] := 1;	
		END_IF;		
	ELSE
			bagReleased[n] := 0;
	END_IF;			
	END_IF;		
		
//-----------------------------------
//PLC Outputs - adjust TO suit system
	//-----------------------------------
	//Remove if not using pusher...	
	ton_retract[n].IN := NOT o_pusher[n];
	ton_retract[n].PT := 600;//
	ton_retract[n]();	
	Y[myIO].Y05	:= o_reset;	
	Y[myIO].Y06 := o_releaseBag[n];		
	Y[myIO].Y05	:= o_pusher[n];
	
		
	//Alarms
	timerAlarm[n].IN := (Alarm[myAlm].Name > 0);
	timerAlarm[n].PT := Alarm[myAlm].Time;
	timerAlarm[n]();
			
	Alarm[myAlm].On 	:= timerAlarm[n].Q;
	Alarm[myAlm].ET 	:= timerAlarm[n].ET;
	
	
END_FOR;
Y[306].Y05 := Stn[1].LampOn;	
Y[306].Y06 := Stn[2].LampOn;	
Y[306].Y07 := Stn[3].LampOn;	
Y[306].Y08 := Stn[4].LampOn;	
Y[307].Y05 := Stn[5].LampOn;
Y[307].Y02 := o_steady[1];
Y[307].Y03 := o_steady[2];	
Y[307].Y04 := o_steady[3];	
Y[307].Y06 := o_steady[4];		
Y[307].Y07 := o_steady[5];		
	
END_PROGRAM

