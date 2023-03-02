
PROGRAM _INIT
myZone 			:= 0;
//myDrive[1]		:= 1;
//myDrive[2]		:= 2;
//myDrive[3]		:= 3;
//myDrive[4]		:= 4;
//myDrive[5]		:= 5;
//myDrive[6]		:= 6;
	
//Comm for foul wash belt
comm							ACCESS ADR(Comm[21]);
	
FOR n := 1 TO LOCAL_MAX_DRIVES DO
	myDrive[n]					:= UINT_TO_USINT(n);	
	drive						ACCESS ADR(ABB_EPL.Drives[myDrive[n]]);

	direction[n] 				:= ABB_DIRECTION_FWD;	
	drive.Cmd.Acc_seconds := 1; //0 will default to 3 seconds
	drive.Cmd.Dec_seconds := 0.5; //0 will default to 3 second
	CASE n OF	
		1:
			beltSpeed[n] 	:= 70;
			drive.Cmd.MotorSize := ABB_MOTOR_0_37KW_0_97A_1342;
	
		2:
			beltSpeed[n] 	:= 70;
			drive.Cmd.BrakeFitted := 1;
			drive.Cmd.MotorSize := ABB_MOTOR_0_75KW;
		
		3:
			beltSpeed[n] 	:= 70;
			drive.Cmd.MotorSize := ABB_MOTOR_0_25KW;
		
		
		END_CASE;
mySeq						:= 36;
alarm						ACCESS ADR(Alarm[mySeq]);

(*	i_largeLoad	ACCESS ADR(X[0].X02);	                                              SB-B           _________________________________________________
	i_beltStart ACCESS ADR(X[351].X06);	                                             |         |                                                      ]
	i_beltStop 	ACCESS ADR(X[351].X07);	                                             |         |                SB-A                                  ]
	                                                                                 |         |                                                      ]
	i_beltStart_2 ACCESS ADR(X[352].X06);  	                                         |         |     __________________________________________________
	i_beltStop_2 ACCESS ADR(X[352].X07);	                                         |         |
		                                                                             |         |
	i_beltModeA	ACCESS ADR(X[0].X01);                                                |         |
	i_beltModeB	ACCESS ADR(X[0].X02);	                                             |         |
	                                                                                 |         |
	linenAtFin_time := 500;	                                                      |         |         *)
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
END_FOR;	
	
	 
END_PROGRAM

PROGRAM _CYCLIC
	
alarm.Name 		:= 0;
alarm.Beacon	:= TRUE;
alarm.Extra		:= 0;
alarm.Bag		:= myBag;
alarm.Time		:= 3000;

//Setup Sequence
step := D[900 + mySeq];
//Setup Pulse contact
pls := (step <> lastStep);
lastStep := step;	
	
	
sortingMode := UINT_TO_USINT(D[936]);	
	
	
WasherUnloading         := X[12].X04 OR Testwash;//relay in panel signal from washers;             
ManaulOperation         := X[12].X16;//switch on remote box;           
InchPushButton          := X[12].X12;//momentery push button;        

BeltA_DetectsLargeLoad  := X[12].X14;//photocell on belt SB-A;           
SBA_PhotocellReverse    := X[12].X10;//photocell at end OF SB-A in reverse; 
       
SBA_Photocell           := X[12].X15;//linen detected end OF SB-A; 
SB_3PhotocellFullBottom := X[12].X11;//linen at end OF conveyor when reversing;

SB4_PhotoCell           := X[12].X13;


      
LoadOK                  := X[15].X01;//push button on panel;
	
	





Request.SB[2]           := FALSE;	


IF ((step >= 3) AND (step <= 6)) OR ((step >=7) AND (step <= 10)) THEN
    O_BrakeA := TRUE;
ELSE  
    O_BrakeA := FALSE;
END_IF;

IF ((step >= 4) AND (step <= 9) AND (step <> 5) AND NOT StopBelts)  THEN
    O_BrakeSB3 := TRUE;
ELSE  
    O_BrakeSB3 := FALSE;
END_IF;

	
	

//;Sequence
IF (STEP = 0) THEN
	//disabled
END_IF;

ton_10ms_ResetBelt(IN:= (step = 1),PT:= 200);		
//TON_10ms(((STEP = 1)),200,ResetBelt,ResetBeltET)
IF (step = 1) THEN
	IF ResetBelt THEN
		D[936] := 2;
	END_IF;
END_IF;	

IF (step <> 2) THEN
	Alternate := 1;
END_IF;

//;Wait FOR unload signal AND manaul OR auto
ton_10ms_FDC1(IN:= ((step = 2)AND (Alternate = 1)),PT:= 500);        //      (((STEP = 2) AND (Alternate = 1)),500,FDC1,FDC1ET)
ton_10ms_Clear(IN:=((step = 2)AND (Alternate = 2)),PT:= 200);  
ton_10ms_FDC2(IN:= ((step = 2)AND (Alternate = 3)),PT:= 500);//ton_10ms(((STEP = 2)AND (Alternate = 3)),500,FDC2,FDC2ET)
ton_10ms_Clear1(IN:=((step = 2)AND (Alternate = 4)),PT:= 200);//ton_10ms(((STEP = 2)AND (Alternate = 4)),200,Clear1,Clear1ET)

IF (step = 2) THEN
	IF ((Alternate > 4) OR (Alternate <= 0)) THEN
		 Alternate := 1;
    END_IF;
    
   IF ton_10ms_FDC1.Q THEN
    	Alternate := 2;
    ELSIF ton_10ms_Clear.Q THEN
    	Alternate := 3;
    ELSIF ton_10ms_FDC2.Q THEN
    	Alternate := 4;
	ELSIF ton_10ms_Clear1.Q THEN
		Alternate := 1;
	END_IF;
	
	O_BeltReadyFDC1 := (Alternate = 1);
    O_BeltReadyFDC2 := (Alternate = 3);
	
	//;O_BeltReadyFDC1 = Std.M9035
	//;O_BeltReadyFDC2 = NOT Std.M9035
		
	IF ((WasherUnloading = TRUE) AND (NOT ManaulOperation)) THEN
		D[936] := 4; //;changed from 3
	ELSIF ((WasherUnloading = TRUE) AND  (ManaulOperation = TRUE)) THEN
		D[936] := 10;		
	END_IF;
END_IF;

//run belt at 10 meters a minute
IF (step = 3) THEN	
	O_RunBeltA_Forward := TRUE; //;10ms	
	IF (BeltA_DetectsLargeLoad = TRUE) THEN		
		D[936] := 7;
	END_IF;	
	IF (SBA_Photocell = TRUE) THEN
		D[936] := 4;
	END_IF;
END_IF;


ton_10ms_StopBelts(IN:=((step = 6) AND NOT RunBelt),PT:= 500);
ton_10ms_RunBelt(IN:=StopBelts,PT:= 500);

ton_10ms_SB_3Full(IN:=(SB_3PhotocellFullBottom = TRUE),PT:= 50);
ton_10ms_SB_3Clear(IN:=(SB_3PhotocellFullBottom = FALSE),PT:= 50);
ton_10ms_LinenDetected(IN:=((step = 4) AND SB4_PhotoCell),PT:= 600);
IF (step = 4) THEN
	
	     O_RunBeltA_Forward   := TRUE; //;SB_3Clear
	     O_RunBeltA_Slow      := kev;
	     O_RunBeltB_Forward   := TRUE;
	     O_RunBeltB_Speed2    := TRUE;
	     O_Runbelt3_Forward   := TRUE;
	     O_RunBelt3_Speed2    := TRUE;
	  
	IF (BeltA_DetectsLargeLoad = TRUE) THEN		
		D[936] := 8;
	END_IF;
	IF (LinenDetected = TRUE) THEN
		D[936] := 5;
	END_IF;
END_IF;

//I_SafetyRelayOn AND sb2 NOT running
ton_10ms_SB2Clear(IN:=(NOT Std.HaltSys AND (Y[14].Y04= TRUE) AND NOT Y[14].Y03),PT:= 1700);
IF (step = 5) THEN
	Request.SB[2] := TRUE;
	IF (ton_10ms_SB2Clear.Q = TRUE) THEN
		D[936] := 6;
	END_IF;
END_IF;



//;run belts at 10ms
ton_10ms_SBBeltClear(IN:=((step = 6) AND (NOT SB4_PhotoCell) AND (NOT Std.HaltSys = TRUE)),PT:= 3000);	
IF (step = 6) THEN
		Request.SB[2] := TRUE;
    IF ((Y[14].Y04 = TRUE) AND NOT StopBelts) THEN
		 O_RunBeltA_Forward         := TRUE;
		 O_RunBeltA_Slow            := SlowA;
		 O_RunBeltB_Forward         := TRUE;
		 O_Runbelt3_Forward         := TRUE;		
	END_IF;	
	IF (BeltA_DetectsLargeLoad = TRUE) THEN
		BeltAlarm   := TRUE;
		D[936] := 9;
	END_IF;
	IF SBBeltClear THEN
		D[936] := 1;
	END_IF;
END_IF;


//;Large load from step 3
IF (step = 7) THEN
	AlarmLamp              := TRUE;
	O_OK_Lamp              := TRUE;
	O_PauseUnloading       := TRUE;
	IF (InchPushButton AND (SB4_PhotoCell = FALSE)) THEN
	    O_RunBeltA_Forward := TRUE;
	 
		O_RunBeltA_Slow    := ton_10ms_Slow1.Q;
				
	END_IF;
	IF LoadOK THEN
		D[936] := 3;
	END_IF;
END_IF;

ton_10ms_Slow1(IN:=(O_RunBeltA_Forward = TRUE),PT:= 50);

//;Large load from step 4
IF (step = 8) THEN
	AlarmLamp              := TRUE;
	O_OK_Lamp              := TRUE;
	O_PauseUnloading       := TRUE;
	IF (InchPushButton AND (SB4_PhotoCell = FALSE)) THEN
	    O_RunBeltA_Forward := TRUE;
	    O_RunBeltA_Slow    := SlowA;
	    O_RunBeltB_Forward := TRUE;
	    O_RunBeltB_Slow    := SlowB;
	    O_Runbelt3_Forward := TRUE;
	    O_Runbelt3_Slow    := Slow3; 
	    
	END_IF;
	IF LoadOK THEN
		D[936] := 4;
	END_IF;
  END_IF;


//;Large load from step 6
IF (step = 9) THEN
	AlarmLamp              := TRUE;
	O_OK_Lamp              := TRUE;
	O_PauseUnloading       := TRUE;
	IF (InchPushButton AND (SB4_PhotoCell = FALSE)) THEN
		O_RunBeltA_Slow    := SlowA;
	    O_RunBeltA_Forward := TRUE;
	    O_RunBeltB_Forward := TRUE;
	    O_RunBeltB_Slow    := SlowB;
	    O_Runbelt3_Forward := TRUE;
	    O_Runbelt3_Slow    := Slow3;
	    
	END_IF
	IF LoadOK THEN
		D[936] := 6;
	END_IF
END_IF

//;manual mode
IF (step = 10) THEN
//	;AlarmLamp              = TRUE
	O_OK_Lamp              := TRUE;
//	;O_PauseUnloading       := TRUE;
	IF (InchPushButton  AND (SBA_PhotocellReverse = FALSE)) THEN
	    O_ReverseBeltA    := TRUE;
	END_IF;
	IF LoadOK THEN
		D[936] := 1;
	END_IF;
END_IF;

//Alarms
timerAlarm(IN := NOT pls AND (alarm.Name > 0),PT:= alarm.Time);

alarm.On 	:= timerAlarm.Q;
alarm.ET 	:= timerAlarm.ET;







ton_10ms_SlowA(IN:=(O_RunBeltA_Forward = TRUE),PT:= 50);
ton_10ms_SlowB(IN:=(O_RunBeltB_Forward = TRUE),PT:= 50);
ton_10ms_Slow3(IN:=(O_Runbelt3_Forward = TRUE),PT:= 50);





//;Outputs
Y[12].Y15 := AlarmLamp;// ;YC15
Y[15].Y01 := O_OK_Lamp;// ;Lamp on push button box YF01
Y[12].Y14  := O_BeltReadyFDC1;//;YC14
Y[12].Y16  := O_BeltReadyFDC2;//;YC16



Y[14].Y13  := O_RunBeltA_Slow;// ;YE13
Y[14].Y09 := O_RunBeltA_Forward;//;YE09
 
Y[14].Y11 := O_RunBeltB_Forward;//;YE11

Y[14].Y05 := O_Runbelt3_Forward;//  ;YYE05

Y[14].Y12 := O_RunBeltB_Slow;//;YE12

Y[14].Y08 := O_Runbelt3_Slow;// ;YE08

Y[14].Y10 := O_ReverseBeltA;//    ;YE10

Y[15].Y02 := O_RunBeltB_Speed2;// ;YF02

Y[15].Y03 := O_RunBelt3_Speed2;// ;YF03

Y[15].Y04 := O_PauseUnloading;//  ;YF04

Y[14].Y06 := Y[14].Y05;

Y[14].Y16 := O_BrakeA;// ;YE16
Y[14].Y14 := O_BrakeSB3;//  ;YE14


CASE sortingMode OF
			
	99: //Test Mode
	
		runBelts[1] := (D[2] > 0);	
		runBelts[2] := (D[3] > 0);
		runBelts[3] := (D[4] > 0);	
	
END_CASE;	
	
	
FOR n := 1 TO LOCAL_MAX_DRIVES DO	
		
	drive						ACCESS ADR(ABB_EPL.Drives[myDrive[n]]);	
//	IF (ABB_EPL.Settings[n].Fast > 0) THEN
//		beltSpeed[n] := ABB_EPL.Settings[n].Fast;	
//	END_IF;	

	drive.Cmd.TargetVelocity := beltSpeed[n];	
	drive.Cmd.Run := o_run[n] AND NOT Std.HaltSysZone[myZone];
	drive.Cmd.QuickStop 	:= NOT Std.HaltSysZone[myZone];
	drive.Cmd.Direction		:= direction[n];	
	Indication[12 + n] 		:= drive.Status.Running;	
END_FOR;	



END_PROGRAM