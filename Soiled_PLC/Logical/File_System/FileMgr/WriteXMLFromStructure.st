
(* Convert Data structure to XML  *)
FUNCTION_BLOCK WriteXMLFromStructure
	
	
	IF EDGEPOS(enable) THEN
		state := CREATE_WRITER;
		status := ERR_FUB_BUSY;
		openElements := 0;
		LastError := 0;
		pv_tryCount := 0;
		memcpy(pData,ADR(''),sizeData);
	ELSIF EDGENEG(enable) THEN
		state := CLOSE_WRITER;
	END_IF;
	
	IF EDGEPOS(state = READ_DATA_STRUCTURE) THEN
		openElements := openElements + 1;	
	END_IF;
	
	CASE state OF
		READY://
			//Wait for rising edge of enable to start.
		
		CREATE_WRITER://Create the XML writer
			createXMLwriter.enable := 1;
			createXMLwriter();
			IF (createXMLwriter.status = ERR_OK) THEN
				ident := createXMLwriter.ident;	
				state := START_DOC;
			ELSE
				state := READY;
				LastError := createXMLwriter.status;
			END_IF;	
		
		START_DOC://Set the header and version number
			xmlStartDocument.enable 		:= 1;
			xmlStartDocument.ident 			:= ident;
			xmlStartDocument.pVersion		:= ADR('1.0');
			xmlStartDocument.pEncoding 		:= ADR('UTF-8');
			xmlStartDocument.pStandalone 	:= 0;
			xmlStartDocument();
			IF (xmlStartDocument.status = ERR_OK) THEN
				state := WRITE_ROOT_ELEMENT;
				index := 0;
			ELSIF (xmlStartDocument.status <> ERR_FUB_BUSY) THEN
				LastError := xmlStartDocument.status;
				state := CLOSE_WRITER;	
			END_IF;
		
		WRITE_ROOT_ELEMENT: //Write the ROOT Element -- This is the name of data structure..
			xmlWriteElementStart.enable := 1;	
			xmlWriteElementStart.ident := ident;
			xmlWriteElementStart.pName := pStructName;
			xmlWriteElementStart();
			IF (xmlWriteElementStart.status = ERR_OK) THEN
				pName := pStructName;
				state := READ_DATA_STRUCTURE;
			ELSIF (xmlWriteElementStart.status <> ERR_FUB_BUSY) THEN 	
				LastError := xmlWriteElementStart.status;
				state := CLOSE_WRITER;	
			END_IF;
				
		READ_DATA_STRUCTURE:// Read from the data structure to get the element names
			//What have to pass in the structure Name..
			// Only pass the structure name -- The code will handle it if it;s global or local
			pvStatus := PV_item(pName,index,ADR(pvName));
			IF (pvStatus = ERR_OK) THEN
				//Build the full var name- for use later.
				brsstrcpy(ADR(pvFullName),pName);
				brsstrcat(ADR(pvFullName),ADR('.'));
				brsstrcat(ADR(pvFullName),ADR(pvName));
				state := WRITE_START_ELEMENT;
			ELSIF (pvStatus = 14710)THEN// ERR_SYS_PV_NOT_FOUND)
				pv_tryCount := (pv_tryCount + 1);
				IF (pv_tryCount > 1) THEN
					//Error PV not found	
					LastError := pvStatus;
					state := CLOSE_WRITER;		
				ELSE	
					//Add the taskname in front of the var to declare it as local.
					ST_name(0,ADR(taskName),0);
					brsstrcat(ADR(taskName),ADR(':'));
					brsstrcat(ADR(taskName),pStructName);
					pName := ADR(taskName);
				END_IF;	
			ELSIF pvStatus = 14704 THEN //No more elements
				state := CLOSE_ALL_ELEMENTS;
			ELSIF pvStatus <> ERR_FUB_BUSY THEN
				LastError := pvStatus;
				state := CLOSE_WRITER;
			END_IF;		
		
		WRITE_START_ELEMENT:
			xmlWriteElementStart.enable := 1;	
			xmlWriteElementStart.ident := ident;
			xmlWriteElementStart.pName := ADR(pvName);
			xmlWriteElementStart();
			IF (xmlWriteElementStart.status = ERR_OK) THEN
				//Check the PV property to see if has a value we need to write.
				pvStatus := PV_ninfo(ADR(pvFullName),ADR(pv_dataType),ADR(pv_dataLen),ADR(noOfElements));
				IF pvStatus = ERR_OK THEN
					//Get the value here. cast it to string to write into element..
					//get the address of the var.
					pvGetAdrStatus := PV_xgetadr(ADR(pvFullName),ADR(pv_Adr),ADR(pv_dataLen));
					IF pvGetAdrStatus = ERR_OK THEN
//Future... Use the noOfElements to be able to write array values..
						//Set the state here to apply to all-- Overwrite in each action if we don't want to write any element data.
						val := 0;
						state := WRITE_ELEMENT_TEXT;
						elementVal := 'Test';
						CASE pv_dataType OF
							0://Structures.. No data for the element
								state := READ_DATA_STRUCTURE;
								index := index + 1;
							
							1,2,3,4,5,6,7,8,17,18,19,21: //max 32bit data...
								brsmemcpy(ADR(val),pv_Adr,pv_dataLen);
								brsitoa(val,ADR(elementVal));
							9://String
								//Check MAX element text here... 30charss
							
							
							10://64Bit numbers ULINT 
							
							14:// LREAL
							
							20://LWORD
							
							23://LINT
							
							11://Date Time-- Needs casting.
								//B&R Casting Returns #DTxx xx xx xx
								//We need to return the C# Standard DT format,, Date..T...Time
								brsmemcpy(ADR(val),pv_Adr,pv_dataLen);
								tempString := DATE_TO_STRING(DT_TO_DATE(UDINT_TO_DT(val)));
								pv_dataLen := brsstrlen(ADR(tempString));
								elementVal := RIGHT(tempString,UDINT_TO_INT(pv_dataLen - 2));
								
								brsstrcat(ADR(elementVal),ADR('T'));
								
								tempString := TOD_TO_STRING(DT_TO_TOD(UDINT_TO_DT(val)));
								pv_dataLen := brsstrlen(ADR(tempString));
								tempString := RIGHT(tempString,UDINT_TO_INT(pv_dataLen - 4));
								brsstrcat(ADR(elementVal),ADR(tempString));
							
							12://Time Only
								elementVal := 'Time';
							13://Date only
								elementVal := 'Date';
							16://Time of day
								elementVal := 'Time Of Day';
							15://Array of structure- We could have to decode futher into here
								//For now we just write this with no data.
								state := READ_DATA_STRUCTURE;
								index := index + 1;
							
						END_CASE;
					ELSIF pvGetAdrStatus <> ERR_FUB_BUSY THEN
						state := CLOSE_WRITER;
						LastError := pvGetAdrStatus;	
					END_IF;	
				ELSIF (pvStatus <> ERR_FUB_BUSY) THEN
					state := CLOSE_WRITER;
					LastError := pvStatus;	
				END_IF;		
			ELSIF xmlWriteElementStart.status <> ERR_FUB_BUSY THEN
				state := CLOSE_WRITER;
				LastError := xmlWriteElementStart.status;
			END_IF;
		
		WRITE_ELEMENT_TEXT:
			//Write the PV value into the elements..
			xmlWriteElemText.enable := 1;
			xmlWriteElemText.ident := ident;
			xmlWriteElemText.pText := ADR(elementVal);
			xmlWriteElemText();
			IF (xmlWriteElemText.status = ERR_OK) THEN
				state := WRITE_END_ELEMENT;
			ELSIF (xmlWriteElemText.status <> ERR_FUB_BUSY) THEN	
				state := CLOSE_WRITER;
				LastError := xmlWriteElemText.status;
			END_IF;	
		
		WRITE_END_ELEMENT: //Only close element with a value..
			xmlWriteEndElement.enable := 1;
			xmlWriteEndElement.ident := ident;	
			xmlWriteEndElement();
			IF (xmlWriteEndElement.status = ERR_OK) THEN
				openElements := openElements - 1;
				state := READ_DATA_STRUCTURE;
				index := index + 1;// Get the next piece of data.
			ELSIF (xmlWriteEndElement.status <> ERR_FUB_BUSY) THEN
				LastError := xmlWriteEndElement.status;
				state := CLOSE_WRITER;
			END_IF;
		
		CLOSE_ALL_ELEMENTS://Close all remaining open elements.
			IF (openElements >= 1) THEN 
				xmlWriteEndElement.enable := 1;
				xmlWriteEndElement.ident := ident;	
				xmlWriteEndElement();
				IF (xmlWriteEndElement.status = ERR_OK) THEN
					openElements := openElements - 1;
				ELSIF (xmlWriteEndElement.status <> ERR_FUB_BUSY) THEN
					LastError := xmlWriteEndElement.status;
					state := CLOSE_WRITER;
				END_IF;		
			ELSE
				state := END_DOC;
			END_IF;	
		
		END_DOC://		
			xmlEndDocument.enable := 1;
			xmlEndDocument.ident := ident;
			xmlEndDocument();
			IF (xmlEndDocument.status = ERR_OK) THEN
				state := CREATE_XML_FILE;
			ELSIF (xmlEndDocument.status <> ERR_FUB_BUSY) THEN	
				LastError := xmlEndDocument.status;
				state := CLOSE_WRITER;	
			END_IF;	
		
		CREATE_XML_FILE://Copy the XML file to the required data area.
			xmlGetMemInfo.enable := 1;	
			xmlGetMemInfo.ident := ident;
			xmlGetMemInfo();
			IF (xmlGetMemInfo.status = ERR_OK) THEN
				IF (sizeData >= xmlGetMemInfo.xmlDataSize) THEN
					//memcpy(pData,xmlGetMemInfo.pXmlData,xmlGetMemInfo.xmlDataSize);	
					brsstrcpy(pData,xmlGetMemInfo.pXmlData);
					state := CLOSE_WRITER;
				ELSE
					LastError := 1001;//Data area to small.
					state := CLOSE_WRITER;
				END_IF;	
			ELSIF (xmlGetMemInfo.status <> ERR_FUB_BUSY) THEN
				LastError := xmlGetMemInfo.status;
				state := CLOSE_WRITER;	
			END_IF;	
	
		CLOSE_WRITER://
			xmlCloseWriter.enable := 1;	
			xmlCloseWriter.ident := ident;
			IF (xmlCloseWriter.status = ERR_OK) THEN
				ident := 0;
				IF LastError = 0 THEN
					state := FINISHED;
				ELSE
					state := ERROR;	
				END_IF;	
			ELSIF (xmlCloseWriter.status <> ERR_FUB_BUSY) THEN
				ident := 0;
				state := ERROR;
			END_IF;
		
		FINISHED:
			status := ERR_OK;
			
		ERROR:
			status := LastError;	
		
	END_CASE;
	IF (LastError > 0) THEN
		status := LastError;	
	END_IF;	
	
END_FUNCTION_BLOCK
