
//V1.00.0 -- First Release
//V1.00.1 -- Update so we monitor the status of the fuse and can send reset commands
//V1.00.2 -- Invert the fault lamp to a healthy lamp to stay consistent with hardwired devices

PROGRAM _INIT
Fuse[1].pDevice := ADR('SL1.IF1.ST11.IF1.ST9.IF1');//'SL1.IF1.ST2.IF1.ST7.IF1');
Fuse[2].pDevice := ADR('SL1.IF1.ST11.IF1.ST9.IF2');
Fuse[3].pDevice := ADR('SL1.IF1.ST11.IF1.ST9.IF3');	
Fuse[4].pDevice := ADR('SL1.IF1.ST11.IF1.ST9.IF4');	
Fuse[5].pDevice := ADR('SL1.IF1.ST11.IF1.ST10.IF1');	
Fuse[6].pDevice := ADR('SL1.IF1.ST11.IF1.ST10.IF2');	
Fuse[7].pDevice := ADR('SL1.IF1.ST21.IF1.ST9.IF1');
Fuse[8].pDevice := ADR('SL1.IF1.ST21.IF1.ST9.IF2');
Fuse[9].pDevice := ADR('SL1.IF1.ST21.IF1.ST9.IF3');	
Fuse[10].pDevice := ADR('SL1.IF1.ST21.IF1.ST9.IF4');	
Fuse[11].pDevice := ADR('SL1.IF1.ST21.IF1.ST10.IF1');	
Fuse[12].pDevice := ADR('SL1.IF1.ST21.IF1.ST10.IF2');	
Fuse[13].pDevice := ADR('SL1.IF1.ST61.IF1.ST5.IF3');
Fuse[14].pDevice := ADR('SL1.IF1.ST61.IF1.ST5.IF4');
Fuse[15].pDevice := ADR('SL1.IF1.ST62.IF1.ST5.IF3');
Fuse[16].pDevice := ADR('SL1.IF1.ST62.IF1.ST5.IF4');
Fuse[17].pDevice := ADR('SL1.IF1.ST63.IF1.ST5.IF3');
Fuse[18].pDevice := ADR('SL1.IF1.ST63.IF1.ST5.IF4');


FOR n := 1 TO MAX_FUSE_BANKS DO	
	fuse ACCESS ADR(Fuse[n]);		
	fuse.Write.MinVoltage := 1500;	
	fuse.Write.MaxVoltage := 2800;	
	FOR i := 1 TO MAX_FUSES DO
      fuse.Write.Channel[i].Status := EB_STATE_ON;
      fuse.Write.Channel[i].TripCurrent := 40;
  END_FOR;
	fuse.index := 90;
	fuse.readStatusOnly := 0;
	fuseTrippedAlarm[n] := 0;	
END_FOR;	
	
//alarm 	ACCESS ADR(Alarm[208]);	
END_PROGRAM

PROGRAM _CYCLIC
	
IF EDGEPOS(X[1003].X04) THEN
	reset[0] := 1;	
END_IF;		
IF EDGEPOS(X[2003].X04) THEN
	reset[1] := 1;	
END_IF;	

fuseFault[0] := 0;
fuseFault[1] := 0;	
//alarm.On	:= 0;
//alarm.Name	:= 0;		
	
	
	
FOR n := 1 TO MAX_FUSE_BANKS DO	
	fuse ACCESS ADR(Fuse[n]);		
	read ACCESS ADR(fuse.IOLinkRead);
	write ACCESS ADR(fuse.IOLinkWrite);
		
	read.enable := 1;
	write.enable := 1;	
	write.pDeviceName 	:= fuse.pDevice;	
	read.pDeviceName 	:= fuse.pDevice;
	
	IF EDGEPOS(read.readLen > 0) THEN	
		count := count + 1;
	END_IF;	

	IF (read.errorCode > 0) THEN
		fuse.index := 10;	
	END_IF;		
	
	IF (n < 5) THEN	
		plc := 0;	
	ELSE	
		plc := 1;
	END_IF;	

	CASE fuse.index	OF
		0:
			
				
		32:	//Read Error Count	
			read.datatype 		:= ioLinkTYPE_SINT;
			read.pData			:= ADR(fuse.Read.ErrorCount);
			read.dataLen		:= SIZEOF(fuse.Read.ErrorCount);
			read.index			:= fuse.index;
			read.subIndex		:= 0;
			read();	
			IF read.status = ERR_OK THEN	
				fuse.index := fuse.index + 1;	
			ELSIF (read.status <> ERR_FUB_BUSY) AND (read.status <> ERR_FUB_ENABLE_FALSE)  THEN
				fuse.index := fuse.index + 1;
				//fuse.Read.ErrorCount := 0;	
			END_IF;					
		
		33://		
			fuse.index := 36;
		
		36://Device Status	 R/O USINT
			read.datatype 		:= ioLinkTYPE_SINT;
			read.pData			:= ADR(fuse.Read.DeviceStatus);
			read.dataLen		:= SIZEOF(fuse.Read.DeviceStatus);
			read.index			:= fuse.index;
			read.subIndex		:= 0;
			read();	
			IF read.status = ERR_OK THEN	
				fuse.index := fuse.index + 1;	
			ELSIF (read.status <> ERR_FUB_BUSY) AND (read.status <> ERR_FUB_ENABLE_FALSE)  THEN
				fuse.index := fuse.index + 1;
				//fuse.Read.ErrorCount := 0;	
			END_IF;	
				
		37:// Device Status	 R/O String
			read.datatype 		:= ioLinkTYPE_STRING;
			read.pData			:= ADR(fuse.Read.DeviceStatusString);
			read.dataLen		:= SIZEOF(fuse.Read.DeviceStatusString);
			read.index			:= fuse.index;
			read.subIndex		:= 0;
			read();	
			IF read.status = ERR_OK THEN	
				fuse.index := fuse.index + 1;	
			ELSIF (read.status <> ERR_FUB_BUSY) AND (read.status <> ERR_FUB_ENABLE_FALSE)  THEN
				fuse.index := fuse.index + 1;
				//fuse.Read.ErrorCount := 0;	
			END_IF;	

		38:
			fuse.index := 80;		
				
		80://		
			IF (fuse.trip > 0) THEN
				command := UINT_TO_USINT((fuse.trip * 5) - 2); // <--RESET //((fuse.trip * 5) - 4); //<-- ON
				
				write.datatype 		:= ioLinkTYPE_USINT;
				write.pData			:= ADR(command);
				write.dataLen		:= SIZEOF(command);
				write.index			:= fuse.index;
				write.subIndex		:= 0;
				write();	
				IF (write.status = ERR_OK) THEN
					fuse.index := fuse.index + 1;	;
				ELSIF (write.status <> ERR_FUB_BUSY) AND (write.status <> ERR_FUB_ENABLE_FALSE) THEN
					fuse.index := fuse.index + 1;	
				END_IF;		
			ELSE
				fuse.index := fuse.index + 1;				
			END_IF;		
					
				
		81://Gateway options ? R/W		
			IF fuse.Write.AutoNodeAllocation_Off OR fuse.Write.AutoNodeAllocation_On  THEN
				//1 is automatic allocation off!
				//0 is on?
				IF fuse.Write.AutoNodeAllocation_Off THEN
					write.datatype 		:= ioLinkTYPE_RECORD;
					gatewayOption 		:= 1;
					write.subIndex		:= 1;	
				ELSE
					write.datatype 		:= ioLinkTYPE_SINT;
					gatewayOption 		:= 0;
					write.subIndex		:= 0 ;	
				END_IF;
				write.pData			:= ADR(gatewayOption);	
				write.dataLen		:= 1;
				write.index			:= fuse.index;
				write();	
				IF (write.status = ERR_OK) THEN
					fuse.index := fuse.index + 1;	;
					fuse.Write.AutoNodeAllocation_On := 0;	
					fuse.Write.AutoNodeAllocation_Off := 0;		
				ELSIF (write.status <> ERR_FUB_BUSY) AND (write.status <> ERR_FUB_ENABLE_FALSE) THEN
					fuse.index := fuse.index + 1;	
					fuse.Write.AutoNodeAllocation_On := 0;	
					fuse.Write.AutoNodeAllocation_Off := 0;	
				END_IF;
			
			ELSE // Read if no write
				read.datatype 		:= ioLinkTYPE_SINT;
				read.pData			:= ADR(fuse.Read.GatewayOptions);
				read.dataLen		:= SIZEOF(fuse.Read.GatewayOptions);
				read.index			:= fuse.index;
				read.subIndex		:= 0;	
				read();	
				IF read.status = ERR_OK THEN	
					fuse.index := fuse.index + 1;	
				ELSIF (read.status <> ERR_FUB_BUSY) AND (read.status <> ERR_FUB_ENABLE_FALSE)  THEN
					fuse.index := fuse.index + 1;	
				END_IF;				
			END_IF;		
				
		82://Set breaker 1 options to all		
			fuse.index := 90;	
				
		83:// Reset individual breaker.		
		
				
		90://Input Voltage		
			read.datatype 		:= ioLinkTYPE_INT;
			read.pData			:= ADR(fuse.Read.InputVoltage);
			read.dataLen		:= SIZEOF(fuse.Read.InputVoltage);
			read.index			:= fuse.index;
			read.subIndex		:= 0;
			read();	
			IF read.status = ERR_OK THEN	
				fuse.index := fuse.index + 1;	
			ELSIF (read.status <> ERR_FUB_BUSY) AND (read.status <> ERR_FUB_ENABLE_FALSE)  THEN
				fuse.index := fuse.index + 1;
			END_IF;	
			
		91://Number of Nodes			
			read.datatype 		:= ioLinkTYPE_USINT;
			read.pData			:= ADR(fuse.Read.NoNodes);
			read.dataLen		:= SIZEOF(fuse.Read.NoNodes);
			read.index			:= fuse.index;
			read.subIndex		:= 0;
			read();	
			IF read.status = ERR_OK THEN	
				IF (fuse.Read.NoNodes > MAX_FUSES) THEN
					fuse.Read.NoNodes := MAX_FUSES;
				END_IF;
				fuse.index := fuse.index + 1;	
			ELSIF (read.status <> ERR_FUB_BUSY) AND (read.status <> ERR_FUB_ENABLE_FALSE)  THEN
				fuse.Read.NoNodes := 0;
				fuse.index := fuse.index + 1;	
			END_IF;			
		
		92://		
			fuse.index := 100;	
				
		100:// Max Voltage	
			IF (fuse.Write.MaxVoltage > 0) THEN
				
				write.datatype 		:= ioLinkTYPE_INT;
				write.pData			:= ADR(fuse.Write.MaxVoltage);
				write.dataLen		:= SIZEOF(fuse.Write.MaxVoltage);
				write.index			:= fuse.index;
				write.subIndex		:= 0;
				write();	
				IF (write.status = ERR_OK) THEN
					fuse.index := fuse.index + 1;
					fuse.Read.MaxVoltage := fuse.Write.MaxVoltage;	
					fuse.Write.MaxVoltage := 0;	
				ELSIF (write.status <> ERR_FUB_BUSY) AND (write.status <> ERR_FUB_ENABLE_FALSE) THEN
					fuse.index := fuse.index + 1;	
					fuse.Write.MaxVoltage := 0;	
				END_IF;
			ELSE // Read if no write
				
				read.datatype 		:= ioLinkTYPE_INT;
				read.pData			:= ADR(fuse.Read.MaxVoltage);
				read.dataLen		:= SIZEOF(fuse.Read.MaxVoltage);
				read.index			:= fuse.index;
				read.subIndex		:= 0;	
				read();	
				IF read.status = ERR_OK THEN	
					fuse.index := fuse.index + 1;	
				ELSIF (read.status <> ERR_FUB_BUSY) AND (read.status <> ERR_FUB_ENABLE_FALSE)  THEN
					fuse.index := fuse.index + 1;	
					fuse.Read.MaxVoltage := 0;	
				END_IF;				
			END_IF;
					
					
		101://MinVoltage	
			IF (fuse.Write.MinVoltage > 0) THEN 
				write.datatype 		:= ioLinkTYPE_INT;
				write.pData			:= ADR(fuse.Write.MinVoltage);
				write.dataLen		:= SIZEOF(fuse.Write.MinVoltage);
				write.index			:= fuse.index;
				write.subIndex		:= 0;
				write();	
				IF (write.status = ERR_OK) THEN
					fuse.index := fuse.index + 1;
					fuse.Read.MinVoltage :=	fuse.Write.MinVoltage;
					fuse.Write.MinVoltage := 0;
				ELSIF (write.status <> ERR_FUB_BUSY) AND (write.status <> ERR_FUB_ENABLE_FALSE) THEN
					fuse.index := fuse.index + 1;	
					fuse.Write.MinVoltage := 0;	
				END_IF;
			ELSE // Read if no write
				
				read.datatype 		:= ioLinkTYPE_INT;
				read.pData			:= ADR(fuse.Read.MinVoltage);
				read.dataLen		:= SIZEOF(fuse.Read.MinVoltage);
				read.index			:= fuse.index;
				read.subIndex		:= 0;	
				read();	
				IF read.status = ERR_OK THEN	
					fuse.index := fuse.index + 1;	
				ELSIF (read.status <> ERR_FUB_BUSY) AND (read.status <> ERR_FUB_ENABLE_FALSE)  THEN
					fuse.index := fuse.index + 1;	
					fuse.Read.MinVoltage := 0;	
				END_IF;			
			END_IF;
		
		102:// Enable Events R/W		
			IF (fuse.Write.EnableEvents > 0) THEN 
				write.datatype 		:= ioLinkTYPE_SINT;
				write.pData			:= ADR(fuse.Write.EnableEvents);
				write.dataLen		:= SIZEOF(fuse.Write.EnableEvents);
				write.index			:= fuse.index;
				write.subIndex		:= 0;
				write();	
				IF (write.status = ERR_OK) THEN
					fuse.index := fuse.index + 1;	
					fuse.Write.EnableEvents := 0;
				ELSIF (write.status <> ERR_FUB_BUSY) AND (write.status <> ERR_FUB_ENABLE_FALSE) THEN
					fuse.index := fuse.index + 1;	
					fuse.Write.EnableEvents := 0;	
				END_IF;
			ELSE // Read if no write
			
				read.datatype 		:= ioLinkTYPE_SINT;
				read.pData			:= ADR(fuse.Read.EnableEvents);
				read.dataLen		:= SIZEOF(fuse.Read.EnableEvents);
				read.index			:= fuse.index;
				read.subIndex		:= 0;	
				read();	
				IF read.status = ERR_OK THEN	
					fuse.index := fuse.index + 1;	
				ELSIF (read.status <> ERR_FUB_BUSY) AND (read.status <> ERR_FUB_ENABLE_FALSE)  THEN
					fuse.index := fuse.index + 1;	
					fuse.Read.EnableEvents := 0;	
				END_IF;			
			END_IF;
				
				
		103:		
			fuse.index := 201;
		
		201..240://Read Only Trip Counter		
			index := (fuse.index - 200);
			read.datatype 		:= ioLinkTYPE_SINT;
			read.pData			:= ADR(fuse.Read.Channel[index].TripCount);
			read.dataLen		:= SIZEOF(fuse.Read.Channel[index].TripCount);
			read.index			:= fuse.index;
			read.subIndex		:= 0;
			read();	
			IF read.status = ERR_OK THEN	
				fuse.index := fuse.index + 1;	
			ELSIF (read.status <> ERR_FUB_BUSY) AND (read.status <> ERR_FUB_ENABLE_FALSE)  THEN
				fuse.index := fuse.index + 1;
				//fuse.Read.Channel[index].TripCount := 0;	
			END_IF;					
		
		241:
			fuse.index := 301;
				
		301..340://Read only Actaul Current		
			index := (fuse.index - 300);
			read.datatype 		:= ioLinkTYPE_INT;
			read.pData			:= ADR(fuse.Read.Channel[index].ActCurrent);
			read.dataLen		:= SIZEOF(fuse.Read.Channel[index].ActCurrent);
			read.index			:= fuse.index;
			read.subIndex		:= 0;
			read();	
			IF read.status = ERR_OK THEN	
				IF (fuse.index < (300 + fuse.Read.NoNodes)) THEN
					fuse.index := fuse.index + 1;	
				ELSE
					fuse.index := 401;
				END_IF;		
			ELSIF (read.status <> ERR_FUB_BUSY) AND (read.status <> ERR_FUB_ENABLE_FALSE)  THEN
				IF (fuse.index < (300 + fuse.Read.NoNodes)) THEN
					fuse.index := fuse.index + 1;	
				ELSE
					fuse.index := 401;
				END_IF;		
			END_IF;				
		
		341:
			fuse.index := 401;		
				
		401..440://Over Current	
			index := (fuse.index - 400);		
			IF (fuse.Write.Channel[index].TripCurrent > 0) THEN
				write.datatype 		:= ioLinkTYPE_SINT;
				write.pData			:= ADR(fuse.Write.Channel[index].TripCurrent);
				write.dataLen		:= SIZEOF(fuse.Write.Channel[index].TripCurrent);
				write.index			:= fuse.index;
				write.subIndex		:= 0;	
				write();	
				IF (write.status = ERR_OK) THEN
					IF (fuse.index < (400 + fuse.Read.NoNodes)) THEN
						fuse.index := fuse.index + 1;
					ELSE
						fuse.index := 441;
					END_IF;
					fuse.Read.Channel[index].TripCurrent := fuse.Write.Channel[index].TripCurrent;	
					fuse.Write.Channel[index].TripCurrent := 0;
				ELSIF (write.status <> ERR_FUB_BUSY) AND (write.status <> ERR_FUB_ENABLE_FALSE) THEN
					IF (fuse.index < (400 + fuse.Read.NoNodes)) THEN
						fuse.index := fuse.index + 1;
					ELSE
						fuse.index := 441;
					END_IF;	
					fuse.Write.Channel[index].TripCurrent := 0;	
				END_IF;
			ELSE // Read if no write
				
				read.datatype 		:= ioLinkTYPE_USINT;
				read.pData			:= ADR(fuse.Read.Channel[index].TripCurrent);
				read.dataLen		:= SIZEOF(fuse.Read.Channel[index].TripCurrent);
				read.index			:= fuse.index;
				read.subIndex		:= 0;
				read();	
				IF read.status = ERR_OK THEN	
					IF (fuse.index < (400 + fuse.Read.NoNodes)) THEN
						fuse.index := fuse.index + 1;	
					ELSE
						fuse.index := 441;
					END_IF;		
				ELSIF (read.status <> ERR_FUB_BUSY) AND (read.status <> ERR_FUB_ENABLE_FALSE)  THEN
					IF (fuse.index < (400 + fuse.Read.NoNodes)) THEN
						fuse.index := fuse.index + 1;	
					ELSE
						fuse.index := 441;
					END_IF;	
					fuse.Read.Channel[index].TripCurrent := 0;	
				END_IF;				
			END_IF;
		
		441..500:
			fuse.index := 501;
			fuse.trip := 0;
				
		501..540://	status RO
			index := (fuse.index - 500);		
		
			read.datatype 		:= ioLinkTYPE_USINT;
			read.pData			:= ADR(fuse.Read.Channel[index].Status);
			read.dataLen		:= SIZEOF(fuse.Read.Channel[index].Status);
			read.index			:= fuse.index;
			read.subIndex		:= 0;	
			read();	
			IF read.status = ERR_OK THEN	
				IF (fuse.index < (500 + fuse.Read.NoNodes)) THEN		
					fuse.index := fuse.index + 1;	
				ELSE
					fuse.index := 541;
				END_IF;		
			ELSIF (read.status <> ERR_FUB_BUSY) AND (read.status <> ERR_FUB_ENABLE_FALSE)  THEN
				IF (fuse.index < (500 + fuse.Read.NoNodes)) THEN
					
					CASE fuse.Read.Channel[index].Status OF
						EB_STATE_NC:
						
						EB_STATE_OFF:	
						
						EB_STATE_ON:	
						
						EB_STATE_TRIP:	
							fuse.trip := index;
						EB_STATE_I_90:
						
						EB_STATE_I_100:	
						
						EB_STATE_TRIP_HARDWARE:
						
						EB_STATE_TRIP_THERMAL:
							fuse.trip := index;
							
						EB_STATE_TRIP_SW_OFF:	
						
					END_CASE;	
						
						
					fuse.index := fuse.index + 1;	
				ELSE
					fuse.index := 541;
				END_IF;	
				fuse.Read.Channel[index].Status := 0;	
			END_IF;				

			
		541:	
			IF reset[plc] THEN
				fuse.index := 80;
			ELSIF fuse.readStatusOnly THEN
				fuse.index := 500;
			ELSE		
				fuse.index := 901;	
			END_IF;
			IF (fuse.trip > 0) THEN	
				fuseTrippedAlarm[n] := 1;
			ELSE
				fuseTrippedAlarm[n] := 0;
			END_IF;
					
		701..740://Options	
				
		901..940:	
			index := (fuse.index - 900);
			read.datatype 		:= ioLinkTYPE_USINT;
			read.pData			:= ADR(fuse.Read.Channel[index].Type);
			read.dataLen		:= SIZEOF(fuse.Read.Channel[index].Type);
			read.index			:= fuse.index;
			read.subIndex		:= 0;
			read();	
			IF read.status = ERR_OK THEN	
				IF (fuse.index < (900 + fuse.Read.NoNodes)) THEN
					fuse.index := fuse.index + 1;	
				ELSE
					fuse.index := 941;
				END_IF;		
			ELSIF (read.status <> ERR_FUB_BUSY) AND (read.status <> ERR_FUB_ENABLE_FALSE)  THEN
				IF (fuse.index < (900 + fuse.Read.NoNodes)) THEN
					fuse.index := fuse.index + 1;	
				ELSE
					fuse.index := 941;
				END_IF;
				//fuse.Read.Channel[index].ActCurrent := 0;	
			END_IF;		
		
		941:	
			fuse.index := 501;
			fuse.readStatusOnly := 1;	
			
			
		998:// Test Write	
			write.pData := ADR(testData);
			write();	
			IF (write.status = ERR_OK) THEN
				fuse.index := 1000;
			ELSIF (write.status <> ERR_FUB_BUSY) AND (write.status <> ERR_FUB_ENABLE_FALSE) THEN
				fuse.index := 1001;
			END_IF;	
		999:// Test Read	
			read();	
			IF (read.status = ERR_OK) THEN	
				fuse.index := 1000;	
			ELSIF (read.status <> ERR_FUB_BUSY) AND (read.status <> ERR_FUB_ENABLE_FALSE)  THEN
				fuse.index := 1001;
			END_IF;	
		1000:// Test result
			
	END_CASE;		
	
		
	IF fuseTrippedAlarm[n] THEN	
		fuseFault[plc]	:= 1;
		//alarm.On	:= TRUE;
		//alarm.Name	:= ALM_FUSE_TRIPPED;	
	END_IF;	
	
	IF NOT fuseFault[plc] THEN	
		reset[plc] := 0;
	END_IF;
			
END_FOR;		
	
Y[1004].Y02 := NOT fuseFault[0];	
Y[2004].Y02 := NOT fuseFault[1];	
	
END_PROGRAM



