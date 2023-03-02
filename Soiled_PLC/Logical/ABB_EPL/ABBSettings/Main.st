
//V1.00.0 -- First Release
//V1.00.1 -- Correct scaling and add missing motor sizes

PROGRAM _INIT

	FOR n := 1 TO MAX_DRIVES DO	
		ABB_EPL.Settings[n].Acc := 1;//50;
		ABB_EPL.Settings[n].Dec := 1;//30;
		ABB_EPL.Settings[n].Fast := 70;//60;
		ABB_EPL.Settings[n].Slow := 30;
		
		CASE ABB_EPL.Drives[n].Cmd.MotorSize OF // Need to set these values correctly

			ABB_MOTOR_0_25KW:
				ABB_EPL.Settings[n].MaxCurrent 		:= 190; //1.9A
	
			ABB_MOTOR_0_37KW_0_91A_1374:	
				
				ABB_EPL.Settings[n].MaxCurrent 		:= 320; //3.2A
		
			ABB_MOTOR_0_37KW_0_97A_1342:	
				ABB_EPL.Settings[n].MaxCurrent 		:= 350; //3.5A
			
			ABB_MOTOR_0_37KW_1_14A_1380:	
				ABB_EPL.Settings[n].MaxCurrent 		:= 350;//3.5A
				
			ABB_MOTOR_0_75KW:
				ABB_EPL.Settings[n].MaxCurrent 		:= 1170; //11.7A
			
			ABB_MOTOR_1_5KW:
				ABB_EPL.Settings[n].MaxCurrent 		:= 2200; //22A ???
		
			ABB_MOTOR_2_2KW_4_75A_1450:	
				ABB_EPL.Settings[n].MaxCurrent 		:= 3000; //30A ???
		
			ABB_MOTOR_3KW:	
				ABB_EPL.Settings[n].MaxCurrent 		:= 5248; //52.48
		
			ABB_MOTOR_CUSTOM: // Future  Alow Motor data to be set individaully
				//ABB_EPL.Settings[n].MaxCurrent 		:= 5500;
			
		END_CASE;	
	END_FOR;	
		 

END_PROGRAM

PROGRAM _CYCLIC

	

	
END_PROGRAM

