(********************************************************************
* COPYRIGHT -- Bernecker + Rainer
********************************************************************
* Program: SafetySample
* File: SafetySample.st
* Author: B&R
********************************************************************
* Implementation of program SafetySample
********************************************************************
V1.00.1: TR 16/12/20: Clean up task, Add automatic detection OF EPL path AND node. New Structure TO Safety Vars 
*)

PROGRAM _INIT

(* command structure for remote control FUB *)
	remotecmd.Version := safeVERSION_R107;	(* version *)
	remotecmd.Password := 'safeplc';				(* password *)
	remotecmd.NewPassword 	:= 'safeplc';	
	
	remoteCmdGetStatus 		:= remotecmd;
	remoteCmdGetStatus.Command		:= safeCMD_STATUS;
	remoteCmdGetStatus.Data			:= 0;
	remoteCmdGetStatus.Number := 10;// ID to show request from auto refresh
	
	remoteControlcmd ACCESS ADR(remoteCmdGetStatus);
	
	
	(* command structure for application download *)
	appcmd1.Version := safeVERSION_R107;	(* version *)
	appcmd1.Password := 'safeplc';					(* password *)
	appcmd1.ApplicationID := 1;				(* application id *)

	(* hide elements in visualization *)
	FOR xcnt := 0 TO SIZEOF(statusButtonActiv) - 1 DO
		statusButtonActiv[xcnt] := 1;
	END_FOR

	(* hide elements in visualization *)
	statusButtonUnlockApp := 1;
	statusButtonUnlockData := 1;
	statusAcknInfoData := 1;
	statusButtonUnlockExtData := 1;
	statusAcknInfoExtData := 1;
	statusDialog := 1;

	(* set SafeLOGIC ID *)
	visuUsedSLIDRemote := 1;
	visuUsedSLIDData := 1;

	slxused := 0;	
	safety := 0;	
	visuEnableButtons := 0;
	

END_PROGRAM

PROGRAM _CYCLIC

	//on init make sure we have set the password..
	safePLC_Ok := (Safety.ModuleID  > 0);
	
	ton_refreshStatus(IN := (safety > 0) AND safePLC_Ok AND NOT safeRemoteControl_0.Busy AND NOT ton_refreshStatus.Q, PT:=100);
	
//	//Alarm for Hoist
//	IF (safeLogicStatus.SafeOSState <> 16#66) THEN //16# is Run[SAFE]
//		MpAlarmXSet(gAlarmXCore_Link,'SafetyPLCNotRunning');
//	ELSIF EDGEPOS(safeLogicStatus.SafeOSState = 16#66) THEN 	
//		MpAlarmXReset(gAlarmXCore_Link,'SafetyPLCNotRunning');
//	END_IF;		
//	//End of Alarm
	
	CASE safety OF
		0:// Get nodes and interface info
			getNode.enable := 1; 
			getNode.pvName := 'Safety.MasterReset';
			IF (getNode.status = ERR_OK) THEN	
				Node := getNode.NodeNumber;
				Interface := getNode.IF_Adr;			
				getNode.enable := 0;
				safety := 2;
			ELSIF (getNode.status <> ERR_FUB_BUSY) AND (getNode.status <> ERR_FUB_ENABLE_FALSE)  THEN
				safety := 100;
			END_IF;
			getNode();
			
		2:// Check the hardware variant
			CASE Safety.ModuleID OF
				16#0000_DD61: //X20SL8100	
					slxused := 0;	
					safety := 3;
				
				16#0000_C5B0: // X20 SLX210
				slxused := 1;	
				safety := 3;
				
			END_CASE;	
			
		3: // Set the password on app load
			visuEnableButtons := 0;
			IF safePLC_Ok THEN
				remotecmd.Command 	:= safeCMD_ENTER;
				remotecmd.Number 	:= 0;
				remotecmd.Data		:= safeCMD_SK_PW;
				IF safeRemoteControl_0.Done THEN
					safety := 10;
				ELSIF EDGEPOS(safeRemoteControl_0.Error) THEN
					execute := 0;
				END_IF;		
				safeRemoteControl_0(SafeLOGICID := visuUsedSLIDRemote, Execute := execute, pCommandData := ADR(remotecmd));
				execute := 1;
			END_IF;			
				
		10:// RUN UI	
			
			
			//Lock the control buttons when the fub's are busy.
			visuEnableButtons := safePLC_Ok AND ((remoteControlcmd.Number = 10) OR NOT safeRemoteControl_0.Busy) AND NOT safeDownloadApplication_0.Busy;
			(****************************************************************************************************************************************)
			(****************************************************************************************************************************************)
			(****************************************************************************************************************************************)
			(* show dialog to ackn command *)
			IF (dialogRemoteCmd = 1) THEN
				statusDialog := 0;
				dialogRemoteCmd := 0;
				indexButtonLeft := 0;
				indexButtonRight := 1;
				indexHeaderText := 0;
				IF (remotecmd.Data = safeCMD_SK_FORMAT) THEN
					indexMessageText := 0;
				ELSIF (remotecmd.Data = safeCMD_SK_XCHG) THEN
					indexMessageText := 1;
				ELSIF (remotecmd.Data = safeCMD_1_UDID_ACKN) THEN
					indexMessageText := 2;
				ELSIF (remotecmd.Data = safeCMD_2_UDID_ACKN) THEN
					indexMessageText := 3;
				ELSIF (remotecmd.Data = safeCMD_3_UDID_ACKN) THEN
					indexMessageText := 4;
				ELSIF (remotecmd.Data = safeCMD_4_UDID_ACKN) THEN
					indexMessageText := 5;
				ELSIF (remotecmd.Data =  safeCMD_N_UDID_ACKN) THEN
					indexMessageText := 6;
				ELSIF (remotecmd.Data =  safeCMD_CLEAR_DATA) THEN
					indexMessageText := 7;
				ELSIF (remotecmd.Data = safeCMD_FW_ACKN) THEN
					indexMessageText := 8;
				ELSIF (remotecmd.Data = safeCMD_RESET) THEN
					indexMessageText := 9;
				END_IF
			END_IF

			(* if dialog is ackn execute fub *)
			IF (dialogButtonLeft = 1 AND indexHeaderText = 0) THEN
				executeRemoteCmd := 1;
				dialogButtonLeft := 0;
				statusDialog := 1;
			ELSIF (dialogButtonRight = 1 AND indexHeaderText = 0) THEN
				dialogButtonRight := 0;
				statusDialog := 1;
			END_IF

			(* password must be at least 6 characters long *)
			IF brsstrlen(ADR(remotecmd.NewPassword)) < 6 THEN
				statusSetPassword := 2;
			ELSE
				statusSetPassword := 0;
			END_IF
			
			IF NOT safeRemoteControl_0.Busy THEN
				IF executeRemoteCmd THEN
					remoteControlcmd ACCESS ADR(remotecmd);
					executeRemoteControl := 1;
					executeRemoteCmd := 0;
				ELSIF ton_refreshStatus.Q THEN  // Set default, so we always read the status cyclically..	
					executeRemoteControl := 1;
					remoteControlcmd ACCESS ADR(remoteCmdGetStatus);
				END_IF;
			END_IF;
			
			safeRemoteControl_0(SafeLOGICID := visuUsedSLIDRemote, Execute := executeRemoteControl, pCommandData := ADR(remoteControlcmd));
			executeRemoteControl := 0; // Make sure we always look at Rising edge inputs.
			
			
			(* reset execution flag *)
			IF (safeRemoteControl_0.Done = 1) THEN
				// If we have formatted or reset the key then wait for the PLC 	
				IF (remoteControlcmd.Data = safeCMD_CLEAR_DATA) OR (remoteControlcmd.Data = safeCMD_SK_FORMAT) THEN 
					safety := 0;
				END_IF;	
				safeLogicStatus := safeRemoteControl_0.SafeLOGICStatus;
			ELSIF (safeRemoteControl_0.Error = 1) THEN
				safety := 0;
			END_IF

			(* variables for visualization *)
			IF (safeLogicStatus.SafeKEYChanged = 1) THEN
				FOR xcnt := 0 TO SIZEOF(statusButtonActiv) - 1 DO
					statusButtonActiv[xcnt] := 1;
					statusButtonInactiv[xcnt] := 0;
				END_FOR
				statusButtonActiv[1] := 0;
				statusButtonInactiv[1] := 1;
			ELSIF (safeLogicStatus.NumberOfUDIDMismatches = 1 AND safeLogicStatus.Scanning = 0) THEN
				FOR xcnt := 0 TO SIZEOF(statusButtonActiv) - 1 DO
					statusButtonActiv[xcnt] := 1;
					statusButtonInactiv[xcnt] := 0;
				END_FOR
				statusButtonActiv[3] := 0;
				statusButtonInactiv[3] := 1;
			ELSIF (safeLogicStatus.NumberOfUDIDMismatches = 2 AND safeLogicStatus.Scanning = 0) THEN
				FOR xcnt := 0 TO SIZEOF(statusButtonActiv) - 1 DO
					statusButtonActiv[xcnt] := 1;
					statusButtonInactiv[xcnt] := 0;
				END_FOR
				statusButtonActiv[4] := 0;
				statusButtonInactiv[4] := 1;
			ELSIF (safeLogicStatus.NumberOfUDIDMismatches = 3 AND safeLogicStatus.Scanning = 0) THEN
				FOR xcnt := 0 TO SIZEOF(statusButtonActiv) - 1 DO
					statusButtonActiv[xcnt] := 1;
					statusButtonInactiv[xcnt] := 0;
				END_FOR
				statusButtonActiv[5] := 0;
				statusButtonInactiv[5] := 1;
			ELSIF (safeLogicStatus.NumberOfUDIDMismatches = 4 AND safeLogicStatus.Scanning = 0) THEN
				FOR xcnt := 0 TO SIZEOF(statusButtonActiv) - 1 DO
					statusButtonActiv[xcnt] := 1;
					statusButtonInactiv[xcnt] := 0;
				END_FOR
				statusButtonActiv[6] := 0;
				statusButtonInactiv[6] := 1;
			ELSIF (safeLogicStatus.NumberOfUDIDMismatches > 4 AND safeLogicStatus.Scanning = 0) THEN
				FOR xcnt := 0 TO SIZEOF(statusButtonActiv) - 1 DO
					statusButtonActiv[xcnt] := 1;
					statusButtonInactiv[xcnt] := 0;
				END_FOR
				statusButtonActiv[7] := 0;
				statusButtonInactiv[7] := 1;
			ELSIF (safeLogicStatus.NumberOfDifferentFirmware <> 0 AND safeLogicStatus.Scanning = 0) THEN
				FOR xcnt := 0 TO SIZEOF(statusButtonActiv) - 1 DO
					statusButtonActiv[xcnt] := 1;
					statusButtonInactiv[xcnt] := 0;
				END_FOR
				statusButtonActiv[11] := 0;
				statusButtonInactiv[11] := 1;
			ELSE
				FOR xcnt := 0 TO SIZEOF(statusButtonActiv) - 1 DO
					statusButtonActiv[xcnt] := 1;
					statusButtonInactiv[xcnt] := 0;
				END_FOR
			END_IF
			(* status text - MXCHG *)
			IF (safeLogicStatus.LedTestActive = 1) THEN
				indexMxchgLed := 40;
			ELSIF (safeLogicStatus.Scanning = 1) THEN
				indexMxchgLed := 30;
			ELSIF (safeLogicStatus.NumberOfUDIDMismatches = 1) THEN
				indexMxchgLed := 1;
			ELSIF (safeLogicStatus.NumberOfUDIDMismatches = 2) THEN
				indexMxchgLed := 2;
			ELSIF (safeLogicStatus.NumberOfUDIDMismatches = 3) THEN
				indexMxchgLed := 3;
			ELSIF (safeLogicStatus.NumberOfUDIDMismatches = 4) THEN
				indexMxchgLed := 4;
			ELSIF (safeLogicStatus.NumberOfUDIDMismatches > 4) THEN
				indexMxchgLed := 5;
			ELSIF (safeLogicStatus.NumberOfMissingModules <> 0) THEN
				indexMxchgLed := 20;
			ELSIF (safeLogicStatus.NumberOfUDIDMismatches = 0) THEN
				indexMxchgLed := 10;
			END_IF
			(* status text - FW-ACKN *)
			IF (safeLogicStatus.SafeKEYChanged = 0 AND safeLogicStatus.NumberOfDifferentFirmware = 0) THEN
				indexFwAcknLed := 10;
			ELSIF (safeLogicStatus.SafeKEYChanged = 1) THEN
				indexFwAcknLed := 1;
			ELSIF (safeLogicStatus.NumberOfDifferentFirmware <> 0) THEN
				indexFwAcknLed := 2;
			END_IF
			(* status text - FAIL *)
			IF (safeLogicStatus.FailSafe <> 16#55) THEN
				indexFAILLed := 2;
			ELSIF (safeLogicStatus.openSAFETYstate = 0) THEN
				indexFAILLed := 0;
			ELSIF (safeLogicStatus.openSAFETYstate = 1) THEN
				indexFAILLed := 1;
			END_IF
			(* status text - R/E *)
			indexRELed := safeLogicStatus.SafeOSState;

			(****************************************************************************************************************************************)
			(****************************************************************************************************************************************)
			(****************************************************************************************************************************************)
			(* show dialog to ackn command *)
			IF (dialogApplication = 1) THEN
				IF (statusDialog  <> 0) THEN
					statusDialog := 0;
					dialogApplication := 0;
					indexButtonLeft := 0;
					indexButtonRight := 1;
					indexHeaderText := 1;
					indexMessageText := 10;
				ELSE
					statusDialog := 1;
				END_IF;		
			END_IF

			(* if dialog is ackn unlock application *)
			IF (dialogButtonLeft = 1 AND indexHeaderText = 1) THEN
				executeapp1 := 1;
				appcmd1.Unlock := 1;
				dialogButtonLeft := 0;
				statusDialog := 1;
			ELSIF (dialogButtonRight = 1 AND indexHeaderText = 1) THEN
				executeapp1 := 1;
				appcmd1.Unlock := 2;
				dialogButtonRight := 0;
				statusDialog := 1;
			END_IF

			(* convert application CRC to HEX string *)
			itoahex(safeDownloadApplication_0.ApplicationCRC, ADR(visuApplicationCRC));

			safeDownloadApplication_0(SafeLOGICID := appcmd1.ApplicationID, Execute := executeapp1, pCommandData := ADR(appcmd1));
			(* show unlock button *)
			IF (safeDownloadApplication_0.UnlockRequired = 1) THEN
				statusButtonUnlockApp := 0;
			ELSE
				appcmd1.Unlock := 0;
				statusButtonUnlockApp := 1;
			END_IF
			IF EDGEPOS(safeDownloadApplication_0.UnlockRequired = 1) THEN 
				dialogApplication := 1;
			END_IF;
			
			IF (safeDownloadApplication_0.Done OR safeDownloadApplication_0.Error)  THEN
				executeapp1 := 0;
			END_IF;

			(* read UDID from SafeLOGIC-X *)
			UDID_Low := Safety.UDID_low;
			UDID_High := Safety.UDID_high;
			
//			IF slxused = 1 THEN
//				readUDIDlowSLX(enable := 1, pDeviceName := ADR(Station), pChannelName := ADR('UDID_low'));
//
//				IF readUDIDlowSLX.status = 0 THEN
//					UDID_Low := readUDIDlowSLX.value;
//				ELSIF readUDIDlowSLX.status <> 65535 THEN
//					UDID_Low := 0;
//				END_IF
//
//				readUDIDhighSLX(enable := 1, pDeviceName := ADR(Station), pChannelName := ADR('UDID_high'));
//
//				IF readUDIDhighSLX.status = 0 THEN
//					UDID_High := UDINT_TO_UINT(readUDIDhighSLX.value);
//				ELSIF readUDIDhighSLX.status <> 65535 THEN
//					UDID_High := 0;
//				END_IF
//	
//				(* hide / show visualization elements *)
//				stautsSLXInformation := 0;
//				statusSLInformation := 1;
//				(* read UDID form SafeLOGIC *)
//			ELSE
//				readUDIDlowSL(enable := 1, pDevice := ADR(Interface), node := Node, index := 16#2000, subindex := 6, pData := ADR(UDID_Low), datalen := SIZEOF(UDID_Low));
//
//				IF readUDIDlowSL.status <> 0 AND readUDIDlowSL.status <> 65535 THEN
//					UDID_Low := 0;
//				END_IF
//
//				readUDIDhighSL(enable := 1, pDevice := ADR(Interface), node := Node, index := 16#2000, subindex := 7, pData := ADR(UDID_High), datalen := SIZEOF(UDID_High));
//
//				IF readUDIDhighSL.status <> 0 AND readUDIDhighSL.status <> 65535 THEN
//					UDID_High := 0;
//				END_IF
//	
//				(* hide / show visualization elements *)
//				stautsSLXInformation := 1;
//				statusSLInformation := 0;
//			END_IF
		
		100://Error
		
		
	END_CASE;					
				
				
				
				
				
				
				
	(* convert UDID to HEX string *)
	itoahex(UDID_Low, ADR(visuUDID_Low));
	itoahex(UDID_High, ADR(visuUDID_High));

	(****************************************************************************************************************************************)
	(****************************************************************************************************************************************)
	(****************************************************************************************************************************************)
	(* write UDID for SafeLOGIC to command structure *)
	appcmd1.UDID_Low := UDID_Low;
	appcmd1.UDID_High := UDID_High;
	datacmd1.UDID_Low := UDID_Low;
	datacmd1.UDID_High := UDID_High;
	datacmd2.UDID_Low := UDID_Low;
	datacmd2.UDID_High := UDID_High;

	(****************************************************************************************************************************************)
	(****************************************************************************************************************************************)
	(****************************************************************************************************************************************)
	(* mappView lists use strings for values rather than int,uint etc. convert UINT to Strings. *)
	strRE_Led := UINT_TO_STRING(indexRELed);
	strMXCHG_Led := UINT_TO_STRING(indexMxchgLed);
	strFWACKN_Led := UINT_TO_STRING(indexFwAcknLed);  
	strFAIL_Led := UINT_TO_STRING(indexFAILLed);
	
	IF NOT safePLC_Ok THEN 
		strStatusID := '10';
	ELSIF (safety = 0) THEN
		IF (safeRemoteControl_0.StatusID = ERR_FUB_BUSY) THEN
			strStatusID := '11';
		ELSE
			strStatusID := UINT_TO_STRING(safeRemoteControl_0.StatusID);	
		END_IF;	
	ELSIF safeDownloadApplication_0.Busy OR safeDownloadApplication_0.Error  THEN
		strStatusID := UINT_TO_STRING(safeDownloadApplication_0.StatusID);
	ELSIF  ((safeRemoteControl_0.Busy AND remoteControlcmd.Number <> 10) OR safeRemoteControl_0.Error)  THEN	
		strStatusID := UINT_TO_STRING(safeRemoteControl_0.StatusID);
	ELSE
		strStatusID := '1';//NOTHING	
	END_IF;
	
	strStatus := UINT_TO_STRING(safeLogicStatus.Status);
	
	strDownloadStatus := UINT_TO_STRING(safeDownloadApplication_0.StatusID);
	//strDataStatus := UINT_TO_STRING(safeDownloadData_0.StatusID);
	strMessageTest := UINT_TO_STRING(indexMessageText);  
 
	(* guide user by changing button to orange. *)
	IF (statusButtonActiv[0] = 1) THEN
		strSKFormatStyle := 'Kannegiesser1';
	ELSE
		strSKFormatStyle := 'orange';
	END_IF;
 
	IF (statusButtonActiv[1] = 1) THEN
		strSKXCHGtStyle := 'Kannegiesser1';
	ELSE
		strSKXCHGtStyle := 'orange';
	END_IF;
 
	IF (statusButtonActiv[2] = 1) THEN
		strScanStyle := 'Kannegiesser1';
	ELSE
		strScanStyle := 'orange';
	END_IF;
 
	IF (statusButtonActiv[3] = 1) THEN
		strAck1Style := 'Kannegiesser1';
	ELSE
		strAck1Style := 'orange';    
	END_IF;
 
	IF (statusButtonActiv[4] = 1) THEN
		strAck2Style := 'Kannegiesser1';
	ELSE
		strAck2Style := 'orange';
	END_IF;
 
	IF (statusButtonActiv[5] = 1) THEN
		strAck3Style := 'Kannegiesser1';
	ELSE
		strAck3Style := 'orange';
	END_IF;
 
	IF (statusButtonActiv[6] = 1) THEN
		strAck4Style := 'Kannegiesser1';
	ELSE
		strAck4Style := 'orange';
	END_IF;
 
	IF (statusButtonActiv[7] = 1) THEN
		strAckNStyle := 'Kannegiesser1';
	ELSE
		strAckNStyle := 'orange';
	END_IF;
 
	IF (statusButtonActiv[8] = 1) THEN
		strClearStyle := 'Kannegiesser1';
	ELSE
		strClearStyle := 'orange';
	END_IF; 
 
	IF (statusButtonActiv[9] = 1) THEN
		strTestStyle := 'Kannegiesser1';
	ELSE
		strTestStyle := 'orange';
	END_IF;  
 
	IF (statusButtonActiv[11] = 1) THEN
		strFWACKNStyle := 'Kannegiesser1';
	ELSE
		strFWACKNStyle := 'orange';
	END_IF;  
 
	IF (statusButtonUnlockApp = 0) THEN
		bVisAppButtons := TRUE;
	ELSE
		bVisAppButtons := FALSE;
	END_IF;
 
	IF (statusSLInformation = 0) THEN
		bVisInterfaceNode := TRUE;
		bVisStation := FALSE;    
	ELSE
		bVisInterfaceNode := FALSE;
		bVisStation := TRUE;
	END_IF;

			END_PROGRAM
