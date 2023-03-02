(********************************************************************
 * COPYRIGHT -- Kannegiesser UK
 ********************************************************************
 * PROGRAM: Display
 * File: Display.st
 * Author: T.Reamsbottom
 * Created: Feb 24, 2016
 ********************************************************************
 * Implementation OF PROGRAM Display
 ********************************************************************)
//V1.00.1 First Release.  

PROGRAM _INIT
	//Set Default values
	backcolour := 16#0008;	
	index := 1;
	FOR n := 1 TO MAX_DISPLAYS DO
		//Set the display and layout vars...
		FOR i := 1 TO 1 DO
			display[n].Layout[i].bag := 220 + index; 		
			//Set station name as String
			stnIndex := UINT_TO_STRING(index);
			stnName := CONCAT('ES',stnIndex);
			
			display[n].Layout[i].displayID := stnName;//Only set if required.	
			display[n].Layout[i].backcolour := 0;// only set if a custom backcolour is required. 
			index := index + 1;
		END_FOR;
	END_FOR;
	// Get size of bag to redure load on PLC
	sizeBag := SIZEOF(Bag[0]);
END_PROGRAM

PROGRAM _CYCLIC
	
	FOR n:= 1 TO MAX_DISPLAYS DO 
		FOR i := 1 TO MAX_LAYOUTS DO
			//Reference to simple Var.	
			layout ACCESS ADR(display[n].Layout[i]);
			//Check if data has been set by OPCuA Client
			IF (OPCuA_Display[n].Layout[i].data[43] = 1) THEN
				decodeDisplay.enable := 1;	
				decodeDisplay.pInputData := ADR(OPCuA_Display[n].Layout[i].data);
				decodeDisplay.pBag := ADR(Bag[layout.bag]);
				decodeDisplay.sizeBag := sizeBag;
				decodeDisplay();
				IF decodeDisplay.status = ERR_OK THEN // When decode is complete, set write bit to 0
					OPCuA_Display[n].Layout[i].data[43] := 0;		
				END_IF;	
			ELSIF (OPCuA_Display[n].Layout[i].data[43] = 2) THEN
				memset(ADR(OPCuA_Display[n].Layout[i]),50,SIZEOF(OPCuA_Display[n].Layout[i]));
				OPCuA_Display[n].Layout[i].data[43] := 3;	
			ELSIF (OPCuA_Display[n].Layout[i].data[43] >= 2) THEN
				OPCuA_Display[n].Layout[i].data[43] := OPCuA_Display[n].Layout[i].data[43] + 1;
				IF (OPCuA_Display[n].Layout[i].data[43] >= 100) THEN	
					OPCuA_Display[n].Layout[i].data[43] := 0;
				END_IF;	
			ELSE // Send data
				//Set Default Back colour
				IF layout.backcolour = 0 THEN
					layout.backcolour := backcolour;
				END_IF;	
				//Bag Data
				layout.bagData := Bag[layout.bag];
				IF (UINT_TO_INT(layout.bagData.Wgt) < 0) THEN	
					layout.bagData.Wgt := 0;		
				END_IF;
				//Encode the data to binary for more efficient OPC Comms.
				
				encodeDisplay.enable := 1;
				encodeDisplay.displayIndex := n;
				encodeDisplay.layoutIndex := i;
				encodeDisplay.layoutData := layout;
				encodeDisplay();
				IF encodeDisplay.status = ERR_OK THEN
					memcpy(ADR(OPCuA_Display[n].Layout[i]),ADR(encodeDisplay.outputData),SIZEOF(OPCuA_Display[n].Layout[i]));	
				END_IF;	
			END_IF;	
		END_FOR;//Layout
	END_FOR;//Display
	 
END_PROGRAM
