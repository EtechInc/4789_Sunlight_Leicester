
(* *Pack the controlword and unpack the status word into ABB Structure  *)
FUNCTION_BLOCK ABB_PackData
	abb ACCESS pData; 
		
	CASE abb.Cmd.Direction OF
		
		ABB_DIRECTION_FWD:	
			abb.Comm.TargetVelocity :=	abb.Cmd.TargetVelocity;
		
		ABB_DIRECTION_REV:	
			abb.Comm.TargetVelocity :=	abb.Cmd.TargetVelocity * - 1;
	END_CASE;
	
	//Control Word																Status Word
	//Bit 0		Switch On														Bit 0		Ready To Switch On
	//Bit 1		Enable Voltage											Bit 1		Switched On
	//Bit 2		Quick Stop													Bit 2		Operation Enabled
	//Bit 3		Enable Operation										Bit 3		Fault
	//Bit 4		Not Used In Scalor Mode							Bit 4		Voltage Enabled
	//Bit 5		Not Used In Scalor Mode							Bit 5		Quick Stop
	//Bit 6		Not Used In Scalor Mode							Bit 6		Switch On Disabled
	//Bit 7		Fault Reset													Bit 7 	Warning
	//Bit 8		Halt																Bit 8		Drive Specific TBC
	//Bit 9		Operation Mode Specific							Bit 9		Remote
	//Bit 10	Reserved	??Remote Control??				Bit 10	Target Reached
	//Bit 11	Drive Specific	TBC									Bit 11 	Internal Limit Reached
	//Bit 12	Drive Specific	TBC									Bit 12	Not Used In Scalor Mode
	//Bit 13	Drive Specific	TBC									Bit 13	Not Used In Scalor Mode
	//Bit 14	Drive Specific	TBC									Bit 14	Drive Specific TBC
	//Bit 15	Drive Specific	TBC									Bit 15	Drive Specific TBC
	
	abb.Status.ReadyToSwitchOn 	:= abb.Comm.StatusWord.0;
	abb.Status.ReadyToRun 		:= abb.Comm.StatusWord.1;
	abb.Comm.StatusWord.2; //Ready to ref-- not used
	abb.Status.Tripped 			:= abb.Comm.StatusWord.3;
	abb.Status.DriveEnabled 	:= abb.Comm.StatusWord.4; //the drive is enabled..
	abb.Status.QuickstopActive 	:= NOT abb.Comm.StatusWord.5; //QuickStop is not active
	abb.Status.SwitchOnInhibit 	:= abb.Comm.StatusWord.6; //We can't enable the drive....
	abb.Status.Warning 			:= abb.Comm.StatusWord.7;
	abb.Status.AtSpeed 			:= abb.Comm.StatusWord.8;
	abb.Status.OnRemote 		:= abb.Comm.StatusWord.9;
	
	abb.Status.ActCurrent := abb.Comm.ActCurrent;
	abb.Status.ActTorque := abb.Comm.ActTorque;
	
	//abb.Status.ThermalTrip := abb.Comm.DI.0;
	IF abb.Cmd.Acc_seconds = 0 THEN
		abb.Cmd.Acc_seconds  := 1.5;// 1.5 seconds by default	
	END_IF;
	IF abb.Cmd.Dec_seconds = 0 THEN
		abb.Cmd.Dec_seconds := 1.5;// 1.5 seconds by default 
	END_IF;
	
	abb.Parameters.Write.Ramp_AccTime1_2872 := REAL_TO_DINT(abb.Cmd.Acc_seconds * 1000.0);
	abb.Parameters.Write.Ramp_DecTime1_2873 := REAL_TO_DINT(abb.Cmd.Dec_seconds * 1000.0);
	
END_FUNCTION_BLOCK
