
ACTION _Contactron: 
	//----------------------------------------------
	//-----------------Contactron-------------------
	//----------------------------------------------

	//Write control word
	FOR n:=1 TO MAX_CONTACTRON DO
		contactron ACCESS ADR(IO_Link.Contactron[n]);
		
		
		IF Std.TestMode  THEN
			contactron.Status.Device_Ok := 1;
			IF contactron.Cmd.Run THEN
				contactron.Status.Current := 1.0;
			ELSE
				contactron.Status.Current := 0.0;
			END_IF;
			
		ELSE
			contactron.Comms.Read.CurrentActual 		:= contactron.Comms.Read.Data[0];
			contactron.Comms.Read.DeviceType 			:= contactron.Comms.Read.Data[1];
			contactron.Comms.Read.ThermalPercentOfMax 	:= contactron.Comms.Read.Data[2];
			contactron.Comms.Read.CurrentPercentOfMax 	:= contactron.Comms.Read.Data[3];
			contactron.Comms.Read.CurrentStatus 		:= contactron.Comms.Read.Data[4];
			contactron.Comms.Read.Diagnostics 			:= contactron.Comms.Read.Data[5];
			
		
			//Read status
			contactron.Status.Error 			:= contactron.Comms.Read.Diagnostics.0;
			contactron.Status.STO_Active 		:= NOT contactron.Comms.Read.Diagnostics.3;
			contactron.Status.Device_Ok 		:= contactron.Comms.Read.Diagnostics.5;
			contactron.Status.Overload_Warning 	:= contactron.Comms.Read.Diagnostics.6;
			contactron.Status.MainsFailure 		:= ((contactron.Comms.Read.CurrentStatus AND CONTACTRON_TRIP_STATUS) = CONTACTRON_MAINS_LOSS);
			contactron.Status.PhaseLoss 		:= ((contactron.Comms.Read.CurrentStatus AND CONTACTRON_TRIP_STATUS) = CONTACTRON_PHASE_LOSS);
			contactron.Status.Current 			:= contactron.Comms.Read.CurrentActual * 0.01;
			contactron.Status.DeviceType 		:= contactron.Comms.Read.DeviceType;
			
			
			IF contactron.Status.Error THEN
				run := 0;
//			ELSE IF contactron.Manaual.enable THEN
//				run := Manaul.run.
			ELSE	
				run := contactron.Cmd.Run;
			END_IF;
			
			CASE contactron.Cmd.Direction OF
				CONTACTRON_FORWARD:
					contactron.Comms.Write.Control.0 := run;
					contactron.Comms.Write.Control.7 := run;
					contactron.Comms.Write.Control.1 := FALSE;
					contactron.Comms.Write.Control.5 := FALSE;
			
				CONTACTRON_REVERSE:
					contactron.Comms.Write.Control.0 := FALSE;
					contactron.Comms.Write.Control.7 := FALSE;
					contactron.Comms.Write.Control.1 := run;
					contactron.Comms.Write.Control.5 := run;
			
				ELSE
					contactron.Comms.Write.Control.0 := FALSE;
					contactron.Comms.Write.Control.7 := FALSE;
					contactron.Comms.Write.Control.1 := FALSE;
					contactron.Comms.Write.Control.5 := FALSE;

			END_CASE;
		
			contactron.Comms.Write.Control.2 := contactron.Cmd.Reset_Manual;
			contactron.Comms.Write.Control.3 := contactron.Cmd.Reset_Automatic;
			contactron.Comms.Write.Control.4 := FALSE; //NOT USED
			contactron.Comms.Write.Control.6 := contactron.Cmd.Stop;
		
			IF contactron.Cmd.Current > 0 THEN //Write trip current level
				contactron.Comms.Write.NominalCurrent := (contactron.Cmd.Current OR CONTACTRON_WRITE_CURRENT);
			ELSE
				contactron.Comms.Write.NominalCurrent := 0;
			END_IF;
			IF contactron.Cmd.Current = (contactron.Comms.Read.CurrentStatus AND CONTACTRON_CURRENT_STATUS) THEN
				contactron.Cmd.Current := 0; //Reset trip current if cmd written
			END_IF;
	
		END_IF;
		
		//Clear the manual commands.
		contactron.Manual := CONTACTRON_MANUAL_DEFAULT;
	END_FOR;
END_ACTION
