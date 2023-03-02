
ACTION _visu: 
	
	
		
	FOR n := 1 TO max_manualControls DO				
		
		visu_man ACCESS ADR(visu_manual[n]);
		
		selIndex := atoi(ADR(visu_man.selectedValue));
		IF (selIndex > 0) AND (selIndex <= MAX_CONTACTRON) AND (selIndex <> visu_man.selectedIndex) THEN
			updateDropDown := 1;
			visu_man.selectedIndex := DINT_TO_UINT(selIndex);
		END_IF;
		
		visu_man.ListBoxVisible := (visu_man.selectedIndex = 0);
		
		visu_man.refreshDropDown.CLK := (visu_man.selectedIndex = 0);
		visu_man.refreshDropDown();
		IF visu_man.refreshDropDown.Q THEN
			updateDropDown := 1;
		END_IF;
		
		contactron ACCESS ADR(IO_Link.Contactron[visu_man.selectedIndex]);		
		contactron.Manual.Enable := 1; //Mark Contactron as in manual mode
		
		visu_man.Visible 		:= (visu_man.selectedIndex >0);
		visu_man.Name    		:= gSettings.Contactron[visu_man.selectedIndex].Name;
//		visu_man.Node	 		:=
		visu_man.CommOk  		:= contactron.Status.Device_Ok;
		visu_man.ActCurrent 	:= contactron.Comms.Read.CurrentActual;
		visu_man.ErrorCode 		:= contactron.Status.Error;
		
		visu_man.ErrorActive := (contactron.Status.Error);
		
//		drive ACCESS ADR(ABB_EPL.Drives[visu_man.selectedIndex]);	
//		drive.Manual.Enable 	:= 1; // Mark the drive as in manual mode.
//		drive.Manual.Velocity 	:= visu_man.TargetVelocity;
//		
//		visu_man.Visible		:= (visu_man.selectedIndex > 0);
//		visu_man.Name			:= gSettings.Drive[visu_man.selectedIndex].Name;
//		visu_man.Node		 	:= drive.Config.Node;
//		visu_man.ModuleOk 		:= drive.Comm.ModuleOk;
//		visu_man.ActVelocity 	:= ABS(drive.Comm.ActVelocity);
//		visu_man.ActCurrent 	:= drive.Comm.ActCurrent;
//		visu_man.ActTorque 		:= drive.Comm.ActTorque;
//		visu_man.ErrorCode 		:= drive.Comm.ErrorCode;
//		
//		visu_man.ErrorActive	:= (drive.Comm.State = ABB_TRIPPED);
//		
		IF visu_man.ErrorReset THEN
			visu_man.ErrorReset := 0;		
			contactron.Manual.ErrorReset := 1;
		END_IF;	
			
		
//		CASE drive.Comm.State OF
//			ABB_INIT:
//				visu_man.State := '$$Drives.State.Init';
//			ABB_DISCONNECTED:
//				visu_man.State := '$$Drives.State.Disconnected';				
//			ABB_QUICK_STOP:
//				visu_man.State := '$$Drives.State.QuickStop';			
//			ABB_CONFIG:	
//				visu_man.State := '$$Drives.State.Config';			
//			ABB_SWITCH_ON_INHIBITED:	
//				visu_man.State := '$$Drives.State.SwitchOnInhibit';				
//			ABB_NOT_READY_TO_SWITCH_ON:	
//				visu_man.State := '$$Drives.State.NotReady';				
//			ABB_READY_TO_SWITCH_ON:	
//				visu_man.State := '$$Drives.State.ReadyToSwitchOn';				
//			ABB_READY_TO_RUN:	
//				visu_man.State := '$$Drives.State.ReadyToRun';				
//			ABB_RUNNING:	
//				visu_man.State := '$$Drives.State.Running';				
//			ABB_TRIPPED:
//				visu_man.State := '$$Drives.State.Tripped';					
//			ABB_OFF_REMOTE:
//				visu_man.State := '$$Drives.State.OffRemote';				
//			ABB_STO:	
//				visu_man.State := '$$Drives.State.STO';				
//			ABB_RAMP_DOWN:	
//				visu_man.State := '$$Drives.State.RampDown';
//			ELSE
//				visu_man.State := '';
//		END_CASE;
//		
		RunMotor := (contactron.Status.Device_Ok) AND NOT (contactron.Status.Error);
//		targetSpeedValid := ((visu_man.TargetVelocity >= ABB_MIN_VELOCITY) AND (visu_man.TargetVelocity <= ABB_MAX_VELOCITY) AND ((drive.Comm.State = ABB_READY_TO_RUN) OR  (drive.Comm.State = ABB_RUNNING)));
		//		
		IF NOT visu_man.Enable THEN
			visu_man.RunReverse				:= 0;
			visu_man.RunForwards			:= 0;
			visu_man.EnableRunReverse   	:= 0;
			visu_man.EnableRunForwards		:= 0;
		ELSIF visu_man.RunForwards THEN
			contactron.Manual.RunForwards 	:= 1;
			contactron.Cmd.Run				:= RunMotor;
			visu_man.EnableRunReverse	  	:= 0;
		ELSIF visu_man.RunReverse THEN
			contactron.Manual.RunReverse	:= 1;
			contactron.Cmd.Run				:= RunMotor;
			visu_man.EnableRunForwards		:= 0;
		ELSE
			visu_man.EnableRunReverse		:= 1;
			visu_man.EnableRunForwards		:= 1;
		END_IF;
		
//		IF NOT targetSpeedValid THEN
//			visu_man.RunReverse 		:= 0;
//			visu_man.RunForwards 		:= 0;
//			visu_man.EnableRunReverse 	:= 0;
//			visu_man.EnableRunForwards 	:= 0;
//		ELSIF visu_man.RunForwards THEN
//			drive.Manual.Direction 	:= ABB_DIRECTION_FWD;	
//			drive.Manual.Run		:= targetSpeedValid;
//			visu_man.EnableRunReverse := 0;
//		ELSIF visu_man.RunReverse THEN
//			drive.Manual.Direction 	:= ABB_DIRECTION_REV;	
//			drive.Manual.Run		:= targetSpeedValid;
//			visu_man.EnableRunForwards := 0;
//		ELSE
//			visu_man.EnableRunReverse := 1;
//			visu_man.EnableRunForwards := 1;
//			drive.Manual.Run		:= 0;	
//		END_IF;	
			
	END_FOR;	
	
	//Build the list box string;
	//[{'value':'text_1', 'text':'$$IAT/testText1'}, {'value':'text_2', 'text':'$$IAT/testText2'}]
	IF updateDropDown THEN
		index := 1;
		brsmemset(ADR(manualSelectDrowDown),0,SIZEOF(manualSelectDrowDown));
		manualSelectDrowDown[0] := '{"value":0,"text":""}';
		FOR n := 1 TO MAX_CONTACTRON DO	
			contactron ACCESS ADR(IO_Link.Contactron[n]);	
			IF NOT contactron.Manual.Enable THEN
				itoa(n,ADR(sIndex));
				
				IF (gSettings.Contactron[n].Name <> '') THEN
					name := gSettings.Contactron[n].Name;
				ELSE	
					name := 'C ';
					brsstrcat(ADR(name),ADR(sIndex));
				END_IF;	
				brsstrcat(ADR(manualSelectDrowDown[index]),ADR('{"value":"'));
				brsstrcat(ADR(manualSelectDrowDown[index]),ADR(sIndex));
				brsstrcat(ADR(manualSelectDrowDown[index]),ADR('","text":"'));
				brsstrcat(ADR(manualSelectDrowDown[index]),ADR(name));
				brsstrcat(ADR(manualSelectDrowDown[index]),ADR('"}'));
				index := index + 1;
			END_IF;
		END_FOR;
		updateDropDown := FALSE;	
	END_IF;	

		
	

	

END_ACTION
