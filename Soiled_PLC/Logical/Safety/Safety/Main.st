//---------------------------------------------
//-------------Safety Request------------------
//---------------------------------------------
//V1.00.2 -- 2019 May 24 -- TR -- Fix issue with master reset not working if not ready.
//V1.00.3 -- 2019 June 26 -- TR -- FIx issue with the solenoid not opening if the hoist switch is made after the bagInTransit timers.. Add timer for hoist in position so the hoist cannot be moving past the safe position and open the door.
//V1.00.4 -- 2019 November 11 -- TR -- 	FIX: Issues with the solenoid locking incorrectly,
										//ADD: Control to lift the edge protection gates ( Map Directly to all required outputs.) 	
PROGRAM _INIT
debounceMasterPT := 200; //2 second
transitSettlePT := 3000; //3000seconds
startUpWarningPT := 500; //5 secs
enableMasterReset := TRUE; // Set to true if master reset is to be used
FOR n:=0 TO MAX_SAFE_ZONES DO
	safeState[n] := 4;
END_FOR;
END_PROGRAM

PROGRAM _CYCLIC

ton_10ms_startUp_Warning(IN:=ton_10ms_Master_Reset.Q, PT:=startUpWarningPT);
Safety_Master_Reset := ton_10ms_startUp_Warning.Q AND Std.Clock1s;

IF SafetyZone[0].Main_Reset AND enableMasterReset THEN
	masterResetRequest := 1; // Set masterResetRequest
END_IF;
ton_10ms_Master_Reset(IN:= masterResetRequest, PT:=debounceMasterPT);


FOR n:=0 TO MAX_SAFE_ZONES DO
	//-------------------------------------------------------
	//---------------------Master-reset----------------------
	//-------------------------------------------------------
	
	lockDoor[n] := FALSE;
	
	tof_HoistsOutOfPosition[n].IN := SafetyZone[n].HoistsOutOfPosition;
	tof_HoistsOutOfPosition[n].PT := 100;
	tof_HoistsOutOfPosition[n]();
	
	ton_entryError[n].IN := (safeState[n] = 3);
	ton_entryError[n].PT := 100;
	ton_entryError[n]();

	IF ton_10ms_Master_Reset.Q AND NOT SafetyZone[n].Zone_Status AND SafetyZone[n].ResetReady THEN // only put a zone to reset if it needs it
		masterReset[n] := TRUE; // Set masterReset
		safeState[n] := 10; // Goto master reset state	
	END_IF;


	//-------------------------------------------------------
	//------------------END-Master-Reset-END-----------------
	//-------------------------------------------------------

	//-------------------------------------------------------
	//------------------Safety-State-Machine-----------------
	//-------------------------------------------------------

	//Wait for bags to finish moving and hoists to get into position.. Door can be unlocked 
	ton_10ms_Transit_Settle[n](IN:=SafetyZone[n].AccessRequested AND (safeState[n] = 1), PT:=transitSettlePT);
	f_trigRequestAccess[n].CLK:= SafetyZone[n].Interlock.GS_DI_01_Access_Reset;
	f_trigRequestAccess[n]();
	CASE safeState[n] OF
		0: //Zone reset do not enter
		
			// Operator requests access by pressing Access DI for 1 second then releasing
			//ton_10ms_Access_Debounce[n](IN:=SafetyZone[n].Interlock.GS_DI_01_Access_Reset, PT:=debouncePT);
			//Request Access on f_trig of pressing reset. if the zone is healthy 
			//SafetyZone[n].Interlock.GS_DO_01_Lock_Solenoid := FALSE; //Reset after reset pressed and door shut
			IF SafetyZone[n].Zone_Status AND f_trigRequestAccess[n].Q  THEN//	ELSIF (debounceEdgeNeg[n] OR SafetyZone[n].AccessRequested) AND NOT masterReset THEN //Look for falling edge if masterReset not requested
				SafetyZone[n].AccessRequested := TRUE; //Reset after unlocking or safe zone goes off
				safeState[n] := 1; //Access has been requested
				masterReset[n] := 0;
				//If zone accessed by override or depedant Zone drops out.
			ELSIF NOT SafetyZone[n].Zone_Status AND NOT SafetyZone[n].Interlock.GS_Two_Channel_Input THEN //If entered with overide goto state 3
				safeState[n] := 3;
			ELSIF NOT SafetyZone[n].Zone_Status AND SafetyZone[n].Interlock.GS_Two_Channel_Input THEN //If dependant zone drops out
				safeState[n] := 4;
			END_IF;

		1: //Access has been requested
			//Allow 1 second for moving bags to settle, once ok
			ton_10ms_bagsInTransit[n](IN:=NOT SafetyZone[n].BagsInTransit, PT:=100); //buffer the BagsInTransit bool
		
			//Latch solenoid lock open
			IF ton_10ms_bagsInTransit[n].Q AND SafetyZone[n].Disable AND NOT tof_HoistsOutOfPosition[n].Q THEN //Use Disable instead of AccessRequested, to ensure one cyclic check with Disable on to stop BagsInTransit being missed
				//SafetyZone[n].Interlock.GS_DO_01_Lock_Solenoid := TRUE; //Reset after reset pressed and door shut
				safeState[n] := 2; //Safe to enter no bags in transit
			ELSIF ton_10ms_Transit_Settle[n].Q THEN
				//SafetyZone[n].Interlock.GS_DO_01_Lock_Solenoid := NOT tof_HoistsOutOfPosition[n].Q; //Reset after reset pressed and door shut
				safeState[n] := 3; //Waiting time elapsed, enter with caution
			END_IF;
		
			//If zone accessed by override or depedant Zone drops out.
			IF NOT SafetyZone[n].Zone_Status AND NOT SafetyZone[n].Interlock.GS_Two_Channel_Input THEN //If entered with overide goto state 3
				safeState[n] := 3;
			ELSIF NOT SafetyZone[n].Zone_Status AND SafetyZone[n].Interlock.GS_Two_Channel_Input THEN //If dependant zone drops out
				safeState[n] := 4;
			ELSIF SafetyZone[n].Zone_Status AND f_trigRequestAccess[n].Q THEN //Cancel the request
				SafetyZone[n].AccessRequested := FALSE; //Reset after safe zone goes off
				safeState[n] := 4;
			END_IF;
		
		2..3: //Zone unlocked	
			//Reset access request
			lockDoor[n] := NOT tof_HoistsOutOfPosition[n].Q;
			
			IF SafetyZone[n].AccessRequested AND NOT SafetyZone[n].Zone_Status THEN
				SafetyZone[n].AccessRequested := FALSE; //Reset after safe zone goes off
				IF n = 0 THEN
					safeState[n] := 0; //Zone reset do not enter
				END_IF
			ELSIF SafetyZone[n].Zone_Status AND f_trigRequestAccess[n].Q  AND SafetyZone[n].AccessRequested THEN //Cancel the request
				SafetyZone[n].AccessRequested := FALSE; //Reset after safe zone goes off
				safeState[n] := 4;
			ELSIF SafetyZone[n].Zone_Status AND NOT SafetyZone[n].AccessRequested THEN // zone has been accessed and reset.
				safeState[n] := 0;
			END_IF;
	
		4:
			//Reset tower light state only if safety plc feedback ok
			IF SafetyZone[n].Zone_Status THEN //Check Safe PLC status
				safeState[n] := 0; //Zone reset do not enter
			END_IF;
	
		10: // Master reset
			IF (SafetyZone[n].Zone_Status OR NOT SafetyZone[n].ResetReady) THEN
				safeState[n] := 0;
				masterReset[n] := FALSE;
			END_IF;	
	
	END_CASE;

//	//Lock solenoid
//	//ton_10ms_Reset_Debounce[n](IN:=SafetyZone[n].Interlock.GS_DI_01_Access_Reset, PT:=debouncePT);
//	IF (SafetyZone[n].Interlock.GS_DI_01_Access_Reset AND (safeState[n] > 1) AND NOT masterReset[n]) THEN
//		//SafetyZone[n].Interlock.GS_DO_01_Lock_Solenoid := FALSE; //Reset after reset pressed and door shut
//		SafetyZone[n].AccessRequested := FALSE;
//		safeState[n] := 4; // Check zone status
//		//		ELSIF masterReset AND NOT SafetyZone[n].Zone_Status AND SafetyZone[n].ResetReady THEN
//		//			safeState[n] := 10; // Goto master reset state
//	END_IF;

	//Set disable to safe zone off or access requested
	SafetyZone[n].Disable := SafetyZone[n].AccessRequested OR NOT SafetyZone[n].Zone_Status;

	//-------------------------------------------------------
	//-------END--------Safety State Machine-------END-------
	//-------------------------------------------------------

	//-------------------------------------------------------
	//---------Set tower light status-&-TV-Indicators--------
	//-------------------------------------------------------
	IF (n > 0) THEN //Light tower 0 does not need to indicate access state.. It is used on the main cab to indicate alarms. See alarm Task.
		SafetyZone[n].TowerLight.TL_DO_Green := SafetyZone[n].TowerLight.TL_DO_Yellow := SafetyZone[n].TowerLight.TL_DO_Red := SafetyZone[n].TowerLight.TL_DO_Sounder := 0;
		CASE safeState[n] OF
			0: //Zone reset do not enter
				SafetyZone[n].TowerLight.TL_DO_Green 	:= SafetyZone[n].Zone_Status;
				SafetyZone[n].TowerLight.TL_DO_Red 		:= NOT SafetyZone[n].Zone_Status;
			1: //Access has been requested
				SafetyZone[n].TowerLight.TL_DO_Yellow 	:= Std.Clock1s; 	//Means Zone Ok but access requested
				SafetyZone[n].TowerLight.TL_DO_Green 	:= SafetyZone[n].Zone_Status;
				SafetyZone[n].TowerLight.TL_DO_Red 		:= NOT SafetyZone[n].Zone_Status;
			2: //Safe to enter no bags in transit and hoists in position
				SafetyZone[n].TowerLight.TL_DO_Yellow 	:= TRUE; //Amber & RED steady indicates safe to enter
				SafetyZone[n].TowerLight.TL_DO_Green 	:= SafetyZone[n].Zone_Status;
				SafetyZone[n].TowerLight.TL_DO_Red 		:= TRUE;
			3: //
				SafetyZone[n].TowerLight.TL_DO_Yellow 	:= Std.Clock200ms; //Amber/Green Alternate-- Enter with Caution
				SafetyZone[n].TowerLight.TL_DO_Sounder 	:= NOT ton_entryError[n].Q; //Short alarm to indicate enter with caution
				SafetyZone[n].TowerLight.TL_DO_Green 	:= NOT Std.Clock200ms;
			SafetyZone[n].TowerLight.TL_DO_Red 		:= NOT Std.Clock200ms OR SafetyZone[n].HoistsOutOfPosition; // If red ight on then fault
			
			4: //Ready for Reset  
				SafetyZone[n].TowerLight.TL_DO_Yellow 	:= Std.Clock500ms AND SafetyZone[n].ResetReady; //Flash Yellow when ready to be reset
				SafetyZone[n].TowerLight.TL_DO_Green 	:= SafetyZone[n].Zone_Status;

			10://Master Reset Zone about to start
				SafetyZone[n].TowerLight.TL_DO_Sounder := TRUE;
				SafetyZone[n].TowerLight.TL_DO_Red := Std.Clock200ms; //Red fast flash indicates zone will reset

		END_CASE;

	
	END_IF;		

	//-------------------------------------------------------------
	//-------END-Set tower light status-&-TV-Indicators-END--------
	//-------------------------------------------------------------


	//Check if the master reset has reset all zones.
	IF (masterReset[n] AND NOT SafetyZone[n].Zone_Status) THEN 
		resetRequired := 1;	
	END_IF;	

	SafetyZone[n].Interlock.GS_DO_01_Lock_Solenoid := lockDoor[n];
	SafetyZone[n].LiftGates := (SafetyZone[n].Zone_Status AND (SafetyZone[n].BagsInTransit OR NOT SafetyZone[n].AccessRequested)); // Edge protection gates.

END_FOR;

IF NOT resetRequired THEN
	masterResetRequest := 0;	
END_IF;	
resetRequired := 0;	

//Flash reset btn on main cabinet
IF masterResetRequest THEN // We can do a master reset and not out safe 0 to reset
	SafetyZone[0].Main_Lamp := Std.Clock200ms;
ELSE
	SafetyZone[0].Main_Lamp := Std.Clock1s AND NOT SafetyZone[0].Zone_Status;
END_IF;	

		
	
//--------------------CUSTOMISTATION FOR INDICATION--------------------



//FOR n := 0 TO MAX_DUAL_CHANNELS DO
//	Indication[40 + n] := NOT SafetyZone[0].E_Stop.ES_SI_Two_Channel[n];
//END_FOR;
//
//Indication[61]	:= NOT SafetyZone[1].Interlock.GS_Two_Channel_Input;
//Indication[62]	:= NOT SafetyZone[2].Interlock.GS_Two_Channel_Input;
//Indication[63] 	:= NOT SafetyZone[3].Interlock.GS_Two_Channel_Input;
//Indication[64] 	:= NOT SafetyZone[4].Interlock.GS_Two_Channel_Input;
//
////Fire Doors
//Indication[65] 	:= NOT SafetyZone[1].E_Stop.ES_SI_Two_Channel[1];
//Indication[66] 	:= NOT SafetyZone[1].E_Stop.ES_SI_Two_Channel[2];


END_PROGRAM

