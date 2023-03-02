//HTTP Client function...
//Read all requests into temporary memory.
ACTION _httpComm: 
	//Build URL
	URL := httpComm.Command.Cmd_URL;
	
	requestHeader.contentLength := httpComm.Command.Body_Data.Size;
	
	http_Client.enable := 1;
	http_Client.send := ((httpComm.Status = HTTP_COMM_STATUS_IN_PROCESS) AND NOT abort);
	http_Client.abort := abort;
	http_Client.option := httpOPTION_HTTP_11;
	http_Client.pHost := pHost;
	http_Client.hostPort := HTTP_Config.Port;
	http_Client.pUri := pUrl;
	http_Client.pRequestHeader := pRequestHeader;
	http_Client.method := httpComm.Command.Method;
	http_Client.pRequestData := httpComm.Command.Body_Data.Adr;
	http_Client.requestDataLen := httpComm.Command.Body_Data.Size;
	http_Client.pResponseHeader := pResponseHeader;
	http_Client.pResponseData := pTempMem;
	http_Client.responseDataSize := sizeTempMem;
	http_Client.pStatistics := pStatistics;
	//http_Client();
	
	IF (http_Client.status = ERR_OK) THEN
		abort := 0;
//		IF http_Client.tcpStatus = tcpERR_NOT_CONNECTED THEN
//			abort := 1;
//			httpComm.Status := HTTP_COMM_STATUS_ERROR;
//			ELS
		IF (httpComm.Status = HTTP_COMM_STATUS_IN_PROCESS) THEN;
			IF (responseHeader.status = '200 OK') THEN	
				IF (responseHeader.contentLength > 0) THEN
					IF (responseHeader.contentLength <= httpComm.Command.ResponseData.Size) THEN
						memset(httpComm.Command.ResponseData.Adr,0,httpComm.Command.ResponseData.Size);
						memmove(httpComm.Command.ResponseData.Adr,pTempMem,responseHeader.contentLength);
						httpComm.Status := HTTP_COMM_STATUS_COMPLETE;
					ELSE
						httpComm.Status := HTTP_COMM_STATUS_ERROR;
						httpComm.LastError := 'Response data area to small';
					END_IF;
				ELSIF (httpComm.Command.Method = httpMETHOD_POST) THEN
					httpComm.Status := HTTP_COMM_STATUS_COMPLETE;	
				END_IF;
			ELSIF (responseHeader.status <> emptyResponseHeader.status) THEN	
				IF debugToUSB THEN
					//Build Debug Data.
					strcpy(ADR(errorData),ADR(''));
					//memcpy(ADR(errorData),pTempMem,SIZEOF(errorData));//,responseHeader.contentLength);
					
					strcpy(ADR(errorData),ADR('Request Header - '));
					strcat(ADR(errorData),pRequestHeader);
					strcat(ADR(errorData),ADR('$r$n'));
					strcat(ADR(errorData),ADR('Request URL - '));
					strcat(ADR(errorData),pUrl);
					strcat(ADR(errorData),ADR('$r$n'));
					
					strcat(ADR(errorData),ADR('Request Body - '));
					IF httpComm.Command.Body_Data.Adr > 0 THEN
						strcat(ADR(errorData),httpComm.Command.Body_Data.Adr);
					ELSE
						strcat(ADR(errorData),ADR('no body sent'));
					END_IF;
					strcat(ADR(errorData),ADR('$r$n'));
					strcat(ADR(errorData),ADR('Response Data :'));
					strcat(ADR(errorData),ADR('$r$n'));
					//Check message will fit in error string.
					remainingStringLen := SIZEOF(errorData) - LEN(errorData) - 5; //Subtract extra 5 to make room for end of line characters
					IF (strlen(pTempMem) <= remainingStringLen) THEN
						strcat(ADR(errorData), pTempMem);
					ELSE
						strcat(ADR(errorData),ADR('Response message to large use postman'));
					END_IF;	
					strcat(ADR(errorData),ADR('$r$n'));
					
					fileRW.enable := 1;
					fileRW.mode := FILE_SAVE;
					fileRW.pFileDevice := ADR('USBStick');
					fileRW.pFileName := ADR('HttpError.txt') ;//adrFileName;
					fileRW.pData := ADR(errorData);
					fileRW.sizeData := strlen(ADR(errorData));
					fileRW.appendToFile := 1;
					fileRW();
					IF fileRW.status = ERR_OK THEN
						httpComm.Status := HTTP_COMM_STATUS_ERROR;
						httpComm.LastError := responseHeader.status;
						//debugToUSB := FALSE;
					ELSIF fileRW.status <> ERR_FUB_BUSY THEN	
						httpComm.Status := HTTP_COMM_STATUS_ERROR;
						httpComm.LastError := responseHeader.status;
					END_IF;	
				ELSE
					httpComm.Status := HTTP_COMM_STATUS_ERROR;
					httpComm.LastError := responseHeader.status;
				END_IF;	
			ELSIF (responseHeader.status = emptyResponseHeader.status) THEN	
//				httpComm.Status := HTTP_COMM_STATUS_ERROR;
//				httpComm.LastError := responseHeader.status;
//				abort := 1;
			END_IF;	
		END_IF;	
		//The B&R function block does not return status 0, when there is no data in the reponse body and we use the GET method.
	ELSIF ((http_Client.status = ERR_FUB_BUSY) AND (responseHeader.status = '200 OK') AND (httpComm.Command.ResponseData.Size = 0))THEN // AND (httpComm.Command.Method = httpMETHOD_GET)) THEN // THere is no data to recieve so the fub will not complete.
		httpComm.Status := HTTP_COMM_STATUS_COMPLETE;
		httpComm.LastError := 'Wrong method used- USE POST with no response data';
		http_Client.enable := 0;
	ELSIF (http_Client.status = httpERR_BUFFER_SIZE) THEN
		httpComm.Status := HTTP_COMM_STATUS_ERROR;
		httpComm.LastError := 'temp data area to small';	
	ELSIF (http_Client.status <> ERR_FUB_BUSY) THEN
		DebugErrCount := DebugErrCount + 1; 
		itoa(http_Client.status,ADR(httpComm.LastError));
		abort := 1;
	END_IF;	
	//We make sure we turn of the http send command between requests..
	IF EDGEPOS(httpComm.Status <> HTTP_COMM_STATUS_IN_PROCESS) THEN
		http_Client.send := 0;
		//http_Client();
		httpComm.lastResponse := responseHeader;
		ringBuffer[0] := 0;//Clear the comm object from the active part of ring buffer
		responseHeader := emptyResponseHeader;
		//memset(pTempMem,0,sizeTempMem); Giving cycle time errors.. There is no need to clear this memory anyway as we only copy the reposonse length.
	END_IF;
	http_Client();
END_ACTION

