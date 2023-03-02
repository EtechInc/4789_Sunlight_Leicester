
ACTION _setParameters:
	//V2.00.2 Encode parameters 
	_encodeParameters;
	
	//Overwrite Max current
	IF ABB_EPL.Settings[drive.Cmd.Node-100].MaxCurrent > 0 THEN
		drive.Config.params[7].data := ABB_EPL.Settings[drive.Cmd.Node-100].MaxCurrent;
	END_IF;
	drive.Cmd.Acc_seconds := ABB_EPL.Settings[drive.Cmd.Node-100].Acc;
	drive.Cmd.Dec_seconds := ABB_EPL.Settings[drive.Cmd.Node-100].Dec;
	
	drive.Config.function.enable := TRUE;																	//Enable function block
	drive.Config.function.pDevice := ADR(PLK_INTERFACE);														//Set powerlink address in ABB_Driver init task
	drive.Config.function.node := drive.Cmd.Node; 															//Node number of drive, set in ABB_EPL[n].cmd.node if non standard.
	
	IF drive.Config.currentParam <= MAX_PARAMS THEN
		IF (drive.Config.params[drive.Config.currentParam].status > 0) THEN									//Call function only if not completed		
			drive.Config.function.index := drive.Config.params[drive.Config.currentParam].index; 			//Powerlink index address
			drive.Config.function.subindex := drive.Config.params[drive.Config.currentParam].subIndex;		//Powerlink sub index address
			drive.Config.function.pData := ADR(drive.Config.params[drive.Config.currentParam].data);		//Value of data to write
			drive.Config.function.datalen := drive.Config.params[drive.Config.currentParam].datalen;		//Size of data type														//Call function
			IF (drive.Config.function.status = ERR_OK) THEN 												//Clear errors
				drive.Config.params[drive.Config.currentParam].status := 0;
				drive.Config.params[drive.Config.currentParam].errorInfo := 0;
				drive.Config.currentParam := drive.Config.currentParam + 1;
			ELSIF (drive.Config.function.status <> ERR_FUB_BUSY) AND (drive.Config.function.status <> ERR_FUB_ENABLE_FALSE) THEN //Store errors
				drive.Config.params[drive.Config.currentParam].status := drive.Config.function.status;
				drive.Config.params[drive.Config.currentParam].errorInfo := drive.Config.function.errorinfo;
				drive.Config.function.enable := FALSE;
//			ELSIF drive.Config.function.status <> 20925 THEN;//ERR_PLMGR_STATION_NOT_ACTIVE THEN  //Only skip if the devuce is active																																					//Skip if other error to stop PLC hanging in bootup
//				drive.Config.params[drive.Config.currentParam].status := drive.Config.function.status;
//				drive.Config.params[drive.Config.currentParam].errorInfo := drive.Config.function.errorinfo;
//				drive.Config.currentParam := drive.Config.currentParam + 1;
			END_IF;
			drive.Config.function();	
		ELSE
			drive.Config.function.enable := FALSE;
		END_IF;
	END_IF;
		
	//Parameters should be loaded onto default settings.
	//to default the drive set 9606 t0 34560 
	//Node ID (5103) has to be manually set
	
	write ACCESS ADR (drive.Parameters.Write);
	
	CASE drive.Cmd.MotorSize OF // Need to set these values correctly
		
		ABB_MOTOR_0_25KW:
			write.Motor_NominalCurrent_9906		:= 7; //0.68 A
			write.Motor_NominalPower_9910		:= 25; // 0.37 kW
			write.Motor_NominalSpeed_9909 		:= 1300;	
		
		ABB_MOTOR_0_37KW_0_91A_1374:	
			write.Motor_NominalCurrent_9906		:= 9; //0.91 A
			write.Motor_NominalPower_9910		:= 37; // 0.37 kW
			write.Motor_NominalSpeed_9909 		:= 1374;	

		ABB_MOTOR_0_37KW_0_97A_1342:	
			write.Motor_NominalCurrent_9906		:= 10; //0.97 A
			write.Motor_NominalPower_9910		:= 37; // 0.37 kW
			write.Motor_NominalSpeed_9909 		:= 1342;	

		ABB_MOTOR_0_37KW_1_14A_1380:	
			write.Motor_NominalCurrent_9906		:= 7; //1.14 A
			write.Motor_NominalPower_9910		:= 37; // 0.37 kW
			write.Motor_NominalSpeed_9909 		:= 1380;	
				
		ABB_MOTOR_0_75KW:	
			write.Motor_NominalCurrent_9906		:= 18; //1.75 A
			write.Motor_NominalPower_9910		:= 75; // 0.75 kW
			write.Motor_NominalSpeed_9909 		:= 1440;
		
		ABB_MOTOR_1_5KW:
			write.Motor_NominalCurrent_9906		:= 30;// 3 A?
			write.Motor_NominalPower_9910		:= 150;// 1.5kW
			write.Motor_NominalSpeed_9909 		:= 1450;
		
		ABB_MOTOR_2_2KW_4_75A_1450:	
			write.Motor_NominalCurrent_9906		:= 48; //4.75 A
			write.Motor_NominalPower_9910		:= 220; // 2.2 kW
			write.Motor_NominalSpeed_9909 		:= 1450;
		
		ABB_MOTOR_3KW:	
			write.Motor_NominalCurrent_9906		:= 64; 
			write.Motor_NominalPower_9910		:= 300; // 3 kW
			write.Motor_NominalSpeed_9909 		:= 1456;	
		
		
		ABB_MOTOR_CUSTOM: // Future  Alow Motor data to be set individaully
		//write.Motor_NominalCurrent_9906		:= 100;
		//write.Motor_NominalPower_9910			:= ;
		//write.Motor_NominalSpeed_9909 		:= 1450; //RPM
		//Over current = ??
		//Over torque = ??
			
	END_CASE;	
END_ACTION
