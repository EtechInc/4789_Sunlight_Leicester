
PROGRAM _INIT
	//Use Static code now but change to config file later..
	HTTP_Config.Host := '10.8.4.220';	
	HTTP_Config.Port := 0;	
	
	//Configure RequestHeader
	requestHeader.protocol := 'HTTP/1.1';
	requestHeader.host := HTTP_Config.Host;
	requestHeader.contentType := 'text/plain';
	requestHeader.connection := 'Keep-Alive';
	requestHeader.keepAlive := 'max=100,timeout=5';
	//Turn off Debug.
	debugToUSB := 0;
	
	pHost := ADR(requestHeader.host);
	pUrl := ADR(URL);
	pRequestHeader := ADR(requestHeader);
	pResponseHeader := ADR(responseHeader);
	pStatistics := ADR(Statistics);
	sizeTempMem := 5000000; //Allocate 5MB of free memory
	TMP_alloc(sizeTempMem,ADR(pTempMem));
	//Check for any requests that were being processed on shut down..
	FOR n := 1 TO HTTP_MAX_COMM DO
		IF HTTP_Comm[n].Status = HTTP_COMM_STATUS_IN_PROCESS THEN
			ringBuffer[0] := n;	
		ELSIF HTTP_Comm[n].Status = HTTP_COMM_STATUS_IN_BUFFER THEN
			ringBuffer[n] := n;	
		END_IF;
	END_FOR;
	_orderRing;
END_PROGRAM

PROGRAM _CYCLIC
	
	//Listen to requests and add to ring buffer.
	_ringBuffer;
	
	//For this mod to work, we have to remove the dynamic ref to httpComm in _ringBuffer adn _addToRing
	//Wait for next command from ring buffer
	IF (ringBuffer[0] = 0) AND (ringBuffer[1] > 0) THEN
		ringBuffer[0] := ringBuffer[1];	
		httpComm ACCESS ADR(HTTP_Comm[ringBuffer[0]]);
		httpComm.Status := HTTP_COMM_STATUS_IN_PROCESS;
	ELSIF (ringBuffer[0] > 0) THEN
		httpComm ACCESS ADR(HTTP_Comm[ringBuffer[0]]);	
	END_IF;
	
	httpComm ACCESS ADR(HTTP_Comm[ringBuffer[0]]);
//	IF (ringBuffer[0] > 0) THEN 
//		httpComm.Status := HTTP_COMM_STATUS_IN_PROCESS;
//	END_IF	
	
	//Call the Http fub.
	_httpComm;
END_PROGRAM


