(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * PROGRAM: pnlMemCard
 * File: pnlMemCard.st
 * Author: treamsbottom
 * Created: April 8, 2016
 ********************************************************************
 * Implementation OF PROGRAM pnlMemCard
 ********************************************************************)

PROGRAM _INIT
	state 			:= 0;
	adrFileName 	:= ADR('Test');//file name
	adrFileDevice	:= ADR('memcard');  //ADR('FTP');//Can be file name set up in AS, or Devlink folder name
	//adrParameter := ADR('/DEVICE=C:\\Projects\FTP\Test');//Path for Devlink
	//adrParameter := ADR('/SIP=10.8.4.211 /PROTOCOL=ftp /USER=SUP /PASSWORD=12345');
	//Create temporary memory object for the files to be read into..
	sizeTempMem := 30000000; //Allocate 30MB of free memory
	TMP_alloc(sizeTempMem,ADR(pTempMem));
	init := 1;
END_PROGRAM


PROGRAM _CYCLIC
	IF init = 1 THEN
		//Get pointer to device. not using AS
//		devLink.enable := 1;
//		devLink.pDevice := adrFileDevice;
//		devLink.pParam := adrParameter;
//		devLink();
//		IF (devLink.status = ERR_OK) OR (devLink.status = fiERR_DEVICE_ALREADY_EXIST) THEN
			init:= 0;	
//		ELSIF devLink.status = fiERR_SYSTEM THEN
//			error := FileIoGetSysError();
//		END_IF;
	ELSE	
		CASE state OF
			MEMCARD_SAVE:
				fileRW.enable := 1;
				fileRW.mode := FILE_SAVE;
				fileRW.pFileDevice := adrFileDevice;
				fileRW.pFileName := ADR('line') ;//adrFileName;
				fileRW.pData := ADR(Line[0]);
				fileRW.sizeData := SIZEOF(Line);
				fileRW.Offset := 0;
				fileRW();
				IF fileRW.status = ERR_OK THEN
					state := 99;
				ELSIF fileRW.status <> ERR_FUB_BUSY THEN	
					state := 100;
				END_IF;	
			
			MEMCARD_READ:	
				fileRW.enable := 1;
				fileRW.mode := FILE_READ;
				fileRW.pFileDevice := adrFileDevice;
				fileRW.pFileName := adrFileName;
				fileRW.pData := do_Ident;//ADR(TestData[0]);
				fileRW.sizeData := testSize;//SIZEOF(TestData);//100;
				fileRW.Offset := 0;
				fileRW();
				IF fileRW.status = ERR_OK THEN
					state := 99;
				ELSIF fileRW.status <> ERR_FUB_BUSY THEN	
					state := 100;
				END_IF;	
			
//			5:
//				do_Read.enable := 1;
//				do_Read.ident := do_Ident;
//				do_Read.pDestination := ADR(TestData[0]);
//				do_Read.len := 99;//testSize;
//				do_Read();
//				IF do_Read.status = ERR_OK	THEN
//					state := 99;
//				ELSIF do_Read.status <> ERR_FUB_BUSY THEN	
//					state := 100;
//				END_IF;	
//			
//			6:
//				//Test get address of data object ot see if we can copy the data we need into data object
//				do_GetInfo.enable := 1;
//				do_GetInfo.pName := ADR('Config');
//				do_GetInfo();
//				IF do_GetInfo.status = ERR_OK THEN
//					do_Ident := do_GetInfo.ident;
//					state := 99;
//				ELSIF do_GetInfo.status <> ERR_FUB_BUSY THEN	
//					state := 100;
//				END_IF;	
//			
//			
//			7:
//				do_Create.enable 	:= 1;
//				do_Create.pName 	:= ADR('Config');
//				do_Create.Option 	:= doNO_CS;// DO NOT USE CHECKSUM AS WE COPY DATA DIRECTLY IN THE MEMORY..
//				do_Create.pCpyData 	:= 0;
//				do_Create.MemType	:= doUSRROM; 
//				do_Create.len		:= testSize;
//				do_Create();
//				IF (do_Create.status = ERR_OK) OR (do_Create.status = doERR_CHECKSUM_WARNING) THEN
//					do_Ident := do_Create.ident;
//					state := 99;
//				ELSIF do_Create.status <> ERR_FUB_BUSY THEN	
//					state := 100;
//				END_IF;	
//			
//			8:
//				do_Delete.enable := 1;
//				do_Delete.ident := do_Ident;
//				do_Delete();
//				IF do_Delete.status = ERR_OK THEN
//					state := 99;
//				ELSIF do_Delete.status <> ERR_FUB_BUSY THEN	
//					state := 100;
//				END_IF;	
			
			10:
//				fiToDatObj.enable := 1;
//				fiToDatObj.pFileDevice := adrFileDevice;
//				fiToDatObj.pFileName := ADR('Test');// adrFileName;
//				fiToDatObj.pDoName := ADR('Config');
//				fiToDatObj.MemType := doUSRROM;
//				fiToDatObj();
//				IF fiToDatObj.status = ERR_OK THEN
//					state := 99;
//				ELSIF fiToDatObj.status <> ERR_FUB_BUSY THEN	
//					state := 100;
//				END_IF;	
				fiToMem.enable := 1;
				fiToMem.pFileDevice := adrFileDevice;
				fiToMem.pFileName := adrFileName;
				fiToMem.pTempMem := pTempMem;	
				fiToMem.sizeTempMem := sizeTempMem;
				fiToMem();
				IF fiToMem.status = ERR_OK THEN
					state := 99;
				ELSIF fiToMem.status <> ERR_FUB_BUSY THEN	
					state := 100;
				END_IF;	
			
			11:
//				do_Write.enable := 1;
//				do_Write.ident := do_Ident;
//				do_Write.Offset := 0;
//				do_Write.len := do_GetInfo.len;
//				do_Write.pSource := do_GetInfo.pDatObjMem;
//				do_Write();
//				IF do_Write.status = ERR_OK	 THEN
//					state := 99;
//				ELSIF do_Write.status <> ERR_FUB_BUSY THEN
//					state := 100;
//				END_IF;	
			
			
			12: //Create XML Readt
				xmlReadCreate.enable := 1;
				xmlReadCreate.memorySize := fiToMem.fiSize;
				xmlReadCreate.pXmlMemory := pTempMem;
				xmlReadCreate();
				IF xmlReadCreate.status = ERR_OK THEN
					state := 99;
				ELSIF xmlReadCreate.status <> ERR_FUB_BUSY THEN
					state := 100;	
				END_IF;	
			
			13:	//Read next node
				xmlReadNode.enable := 1;
				xmlReadNode.ident := xmlReadCreate.ident;
				xmlReadNode.forceRead := forceRead;
				xmlReadNode.skipSubtree := skip;
				xmlReadNode.pName := ADR(xmlName);
				xmlReadNode.nameSize := SIZEOF(xmlName);
				xmlReadNode.pValue := ADR(xmlValue);
				xmlReadNode.valueSize := SIZEOF(xmlValue);
				xmlReadNode();	
				IF xmlReadNode.status = ERR_OK THEN		
					state := 99;
				ELSIF xmlReadNode.status <> ERR_FUB_BUSY THEN
					state := 100;	
				END_IF
				
			14://Read Attribute number
				xmlReadAttNum.enable := 1;
				xmlReadAttNum.ident := xmlReadCreate.ident;
				xmlReadAttNum.index := xmlIndex;
				xmlReadAttNum.pName := ADR(xmlName);
				xmlReadAttNum.nameSize := SIZEOF(xmlName);
				xmlReadAttNum.pValue := ADR(xmlValue);
				xmlReadAttNum.valueSize := SIZEOF(xmlValue);
				xmlReadAttNum();	
				IF xmlReadAttNum.status = ERR_OK THEN		
					state := 99;
				ELSIF xmlReadAttNum.status <> ERR_FUB_BUSY THEN
					state := 100;	
				END_IF
			
			15:
				xmlCloseReader.enable := 1;
				xmlCloseReader.ident := xmlReadCreate.ident;
				xmlCloseReader();
				IF xmlCloseReader.status = ERR_OK THEN
					state := 99;
				ELSIF xmlCloseReader.status <> ERR_FUB_BUSY THEN
					state := 100;	
				END_IF;	
			
			
			
			
			20:
			n:= 0;
			FOR n:= 0 TO 100 DO //Use loop to increase scan time..	
				CASE xmlReader OF
					0://Copy into memory
						fiToMem.enable := 1;
						fiToMem.pFileDevice := adrFileDevice;
						fiToMem.pFileName := adrFileName;
						fiToMem.pTempMem := pTempMem;	
						fiToMem.sizeTempMem := sizeTempMem;
						fiToMem();
						IF fiToMem.status = ERR_OK THEN
							xmlReader := 1;
						ELSIF fiToMem.status <> ERR_FUB_BUSY THEN	
							xmlReader := 100;
						END_IF;	
						
					1://Create XML Reaser
						xmlReadCreate.enable := 1;
						xmlReadCreate.memorySize := fiToMem.fiSize;
						xmlReadCreate.pXmlMemory := pTempMem;
						xmlReadCreate();
						IF xmlReadCreate.status = ERR_OK THEN
							lineCount := 0;		
							xmlReader := 2;
						ELSIF xmlReadCreate.status <> ERR_FUB_BUSY THEN
							xmlReader := 100;	
						END_IF;	
					
					2://Search for 'Config setting'
						xmlReadNode.enable := 1;
						xmlReadNode.ident := xmlReadCreate.ident;
						xmlReadNode.forceRead := forceRead;
						xmlReadNode.skipSubtree := skip;
						xmlReadNode.pName := ADR(xmlName);
						xmlReadNode.nameSize := SIZEOF(xmlName);
						xmlReadNode.pValue := ADR(xmlValue);
						xmlReadNode.valueSize := SIZEOF(xmlValue);
						xmlReadNode();	
						IF xmlReadNode.status = ERR_OK THEN		
							IF xmlName = 'Config' THEN
								lineCount := lineCount + 1;
								xmlIndex := 0;
								xmlReader := 3;
							END_IF;	
						ELSIF xmlReadNode.status = xmlERR_NO_FURTHER_XML_NODE THEN
							xmlReader := 4;//End of file
						ELSIF xmlReadNode.status <> ERR_FUB_BUSY THEN
							xmlReader := 100;	
						END_IF		
					
					3://Decode XML elements
						xmlReadAttNum.enable := 1;
						xmlReadAttNum.ident := xmlReadCreate.ident;
						xmlReadAttNum.index := xmlIndex;
						xmlReadAttNum.pName := ADR(xmlName);
						xmlReadAttNum.nameSize := SIZEOF(xmlName);
						xmlReadAttNum.pValue := ADR(xmlValue);
						xmlReadAttNum.valueSize := SIZEOF(xmlValue);
						xmlReadAttNum();	
						IF xmlReadAttNum.status = ERR_OK THEN		
							IF xmlName = 'Property' THEN
									xmlProperty := xmlValue;
							ELSIF xmlName = 'Index' THEN
								xmlPropertyIndex := atoi(ADR(xmlValue));	
							ELSIF xmlName =	'FirstBag' THEN
								IF (xmlProperty = 'Line') AND (xmlPropertyIndex > 0) AND  (xmlPropertyIndex <= MAX_LINES) THEN
									Line[xmlPropertyIndex].FirstBag := DINT_TO_UINT(atoi(ADR(xmlValue)));		
								END_IF;
							ELSIF xmlName = 'LastBag' THEN
								IF (xmlProperty = 'Line') AND (xmlPropertyIndex > 0) AND  (xmlPropertyIndex <= MAX_LINES) THEN
									Line[xmlPropertyIndex].LastBag := DINT_TO_UINT(atoi(ADR(xmlValue)));		
								END_IF;
							END_IF;
							xmlIndex := xmlIndex + 1;		
						ELSIF xmlReadAttNum.status = xmlERR_INVALID_ATTRIBUTE_INDEX THEN//No more elements go back to beginning..
							xmlReader := 2;	
						ELSIF xmlReadAttNum.status <> ERR_FUB_BUSY THEN
							xmlReader := 100;	
						END_IF

					4://Close XML Reader
						xmlCloseReader.enable := 1;
						xmlCloseReader.ident := xmlReadCreate.ident;
						xmlCloseReader();
						IF xmlCloseReader.status = ERR_OK THEN
							xmlReader := 99;
						ELSIF xmlCloseReader.status <> ERR_FUB_BUSY THEN
							xmlReader := 100;	
						END_IF;	
					
					99:
						state := 99;	
						xmlReader := 0;
					100://Error
						state := 100;	
						xmlReader := 0;
					

				END_CASE;
				IF xmlReader = 0 THEN
					EXIT;
				END_IF;		
			END_FOR;
			
		END_CASE;	
	END_IF;
	


END_PROGRAM
