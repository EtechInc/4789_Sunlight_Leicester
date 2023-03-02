
PROGRAM _INIT
	serviceName := 'supertrackPLC.api';
	httpServer.pServiceName := ADR(serviceName);
	httpServer.pUri := ADR(URI);	
	httpServer.uriSize := SIZEOF(URI);
	httpServer.pRequestHeader := ADR(requestHeader);	
	httpServer.pRequestData := ADR(requestData);	
	httpServer.requestDataSize := SIZEOF(requestData);	
	httpServer.pResponseHeader := ADR(responseHeader);	
	httpServer.pResponseData := ADR(responseData);
	
	httpServer.pStatistics := ADR(Statistics);
		
	httpServer.option := httpOPTION_HTTP_11 + httpOPTION_SERVICE_TYPE_NAME; //HTTP 1.1	

END_PROGRAM

PROGRAM _CYCLIC
	
	httpServer.enable := 1;	
	httpServer.send := sendResponse; // Send Response on Rising edge.
	httpServer.abort := abortResponse;	//Send abort Response on Rising Edge
	httpServer();

	sendResponse := 0;
	abortResponse := 0;
	
	IF httpServer.status = ERR_OK THEN
	//Get The Function Name --		1
		IF activeFunction = 0 THEN _getFunctionName; END_IF;
	//Exectute the Function 	
		CASE activeFunction OF
			HTTP_SVR_FNC_NOT_FOUND: //Nothing
				sendResponse := 1;
				memset(ADR(responseData),0,SIZEOF(responseData));//Clear responseData
				responseData := 'error Function Not found, Function Must be specified with function=';
				httpServer.responseDataLen := LEN(responseData);
			
			HTTP_SVR_GET_FNC_SET_BAG_DEST: //Set Bag Destination -- 1
//				_setBagDestination;
			HTTP_SVR_GET_FNC_TEST://Test
				sendResponse := 1;
				memset(ADR(responseData),0,SIZEOF(responseData));//Clear responseData
				responseData := 'Test Get';
				httpServer.responseDataLen := LEN(responseData);
			
//			HTTP_SVR_GET_FNC_IOLINK://IO_Link GET function
//				sendResponse := 1;
//				memset(ADR(responseData),0,SIZEOF(responseData));//Clear responseData
//				responseData := IO_Link.httpResponse;
//				httpServer.responseDataLen := LEN(responseData);
//				IO_Link.Load := TRUE; //Reload httpResponse with XML data incase its a after status http call
			
			HTTP_SVR_GET_FNC_RESTART_PLC:
				sendResponse := 1;
				memset(ADR(responseData),0,SIZEOF(responseData));//Clear responseData
				responseData := 'PLC will carry out a warm restart';
				httpServer.responseDataLen := LEN(responseData);
				IF httpServer.phase = 4 THEN //Wait for response to be sent
					SYSreset(TRUE,1); //Restart PLC
				END_IF;
			
//			HTTP_SVR_GET_FNC_IOLINK_GEN_FILE://IO_Link GET function Generate file
//				sendResponse := 1;
//				memset(ADR(responseData),0,SIZEOF(responseData));//Clear responseData
//				responseData := 'Config File Generated';
//				httpServer.responseDataLen := LEN(responseData);
//				IO_Link.Save := TRUE;
				
//			HTTP_SVR_GET_FNC_IOLINK_STATUS://IO_Link GET function Status request
//				sendResponse := 1;
//				memset(ADR(responseData),0,SIZEOF(responseData));//Clear responseData
//				responseData := 'Status Loaded';
//				httpServer.responseDataLen := LEN(responseData);
//				IO_Link.Status := TRUE;
			
			HTTP_SVR_GET_FNC_ABB://ABB GET function Status request
					sendResponse := 1;
					memset(ADR(responseData),0,SIZEOF(responseData));//Clear responseData
					responseData := ABB_EPL.httpRequest;
					httpServer.responseDataLen := LEN(responseData);
				
//			HTTP_SVR_POST_FNC_IOLINK://IO_Link POST function
//				sendResponse := 1;
//				memset(ADR(responseData),0,SIZEOF(responseData));//Clear responseData
//				responseData := 'IOLinkPost';
//				httpServer.responseDataLen := LEN(responseData);
//				//Clear IO_Link.httpResponse if file found
//				memset(ADR(IO_Link.httpResponse),0,SIZEOF(IO_Link.httpResponse));
//				IO_Link.httpResponse := requestData;
//				IO_Link.httpRequestState := 1;
			
			HTTP_SVR_POST_FNC_ABB://IO_Link POST function
					sendResponse := 1;
					memset(ADR(responseData),0,SIZEOF(responseData));//Clear responseData
					responseData := 'ABBPost';
					httpServer.responseDataLen := LEN(responseData);
					//Clear ABB_EPL.httpResponse
					memset(ADR(ABB_EPL.httpResponse),0,SIZEOF(ABB_EPL.httpResponse));
					memcpy(ADR(ABB_EPL.httpResponse),ADR(requestData),SIZEOF(ABB_EPL.httpResponse));
					ABB_EPL.callBackUpWrite := TRUE;
			
		END_CASE
	ELSE		
		activeFunction := 0;
	END_IF;

	 
END_PROGRAM

PROGRAM _EXIT
	//Disable the Server on Exit..
	httpServer.enable := 1;	
	httpServer();
END_PROGRAM
