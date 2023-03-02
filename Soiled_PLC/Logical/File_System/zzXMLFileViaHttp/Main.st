
PROGRAM _INIT
	pHost := ADR('10.8.4.102');
	URL := '/plctalk/api/values/3'; 
	pUri := ADR(URL);
	pResponseHeader := ADR(responseHeader);
	pRequestHeader := ADR(requestHeader);
	pStatistics := ADR(Statistics);
	pSendData := ADR(sendData);
	pResponseData := ADR(responseData);
	
	state 			:= 0;
	pFileName 	:= ADR('Test');//file name
	//pFileDevice	:=ADR('FTP');//Can be file name set up in AS, or Devlink folder name
	//pDevLinkParameter := ADR('/DEVICE=C:\\Projects\FTP\Test');//Path for Devlink
	//pDevLinkParameter := ADR('/SIP=10.8.4.211 /PROTOCOL=ftp /USER=SUP /PASSWORD=12345');
	pMemCard	:= ADR('memcard');//Pointer to memory card file device
	pUSB 		:= ADR('USB');
	//Create temporary memory object for the files to be read into..
	sizeTempMem := 10000000; //Allocate 10MB of free memory
	TMP_alloc(sizeTempMem,ADR(pTempMem));
END_PROGRAM

PROGRAM _CYCLIC
http_Client.enable := 1;
http_Client.send := testSend;
http_Client.abort := testAbort;
http_Client.option := httpOPTION_HTTP_11;
http_Client.pHost := pHost;
http_Client.hostPort := 0;//20997;
http_Client.pUri := pUri;
http_Client.pRequestHeader := 0;//pRequestHeader;
http_Client.pRequestData := pSendData;
http_Client.requestDataLen := LEN(sendData);
http_Client.pResponseHeader := pResponseHeader;
http_Client.pResponseData := pTempMem; //pResponseData;
http_Client.responseDataSize := sizeTempMem;//SIZEOF(responseData);
http_Client.pStatistics := pStatistics;
http_Client.method := httpMETHOD_GET;
http_Client();


	CASE state OF
		XML_READER_IDLE:
			testSend := 0;
		
		XML_READER_READ_FROM_HTTP: //Copy File from FTP Server to Memcard.
			testSend := 1;		
			IF (http_Client.phase = httpPHASE_RECEIVED) THEN
				state := 10;//XML_READER_DECODE_FILE;
				IF (responseHeader.contentLength > 0) THEN
					IF (responseHeader.contentLength <= SIZEOF(responseData)) THEN
						memcpy(pResponseData,pTempMem,responseHeader.contentLength);
					ELSE
						memcpy(pResponseData,pTempMem,SIZEOF(responseData));
					END_IF;
				END_IF;
			END_IF;
		
		
		
		10://Copy data to file for test..
			fileWrite.enable := 1;
			fileWrite.mode := FILE_SAVE;
			fileWrite.Offset := 0;
			fileWrite.pData := pTempMem;
			fileWrite.sizeData := responseHeader.contentLength;
			fileWrite.pFileDevice := pUSB;
			fileWrite.pFileName := ADR('text.xml');
			fileWrite();
			IF fileWrite.status = ERR_OK THEN
				state := XML_READER_DECODE_FILE;
			ELSIF fileWrite.status <> ERR_FUB_BUSY THEN
				state := XML_READER_DECODE_FILE;
			END_IF;
		
		XML_READER_DECODE_FILE:
		//Decode XML File Copy into temp memory then read...
			n:= 0;
			FOR n:= 0 TO 100 DO //Use loop to increase scan time..	
				CASE xmlReader OF
					0://Copy into memory
//						fiToMem.enable := 1;
//						fiToMem.pFileDevice := pMemCard;
//						fiToMem.pFileName := pFileName;
//						fiToMem.pTempMem := pTempMem;	
//						fiToMem.sizeTempMem := sizeTempMem;
//						fiToMem();
//						IF fiToMem.status = ERR_OK THEN
							xmlReader := 1;
//						ELSIF fiToMem.status <> ERR_FUB_BUSY THEN	
//							xmlReader := 100;
//						END_IF;	
						
					1://Create XML Reaser
						xmlReadCreate.enable := 1;
						xmlReadCreate.memorySize := responseHeader.contentLength;
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
						xmlReadNode.forceRead := 0;
						xmlReadNode.skipSubtree := 0;
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
					//memset(pTempMem,0,sizeTempMem); //Clear memory when finish	
					EXIT;
				END_IF;		
			END_FOR;	
			
			
			
		XML_READER_DECODE_ERROR:
			
		100://ERROR
			
		ELSE
			state := XML_READER_IDLE;
			
	END_CASE; 	

END_PROGRAM


