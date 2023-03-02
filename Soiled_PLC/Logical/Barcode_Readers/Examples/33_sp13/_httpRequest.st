
ACTION _httpRequest: 
	
	CASE HTTP_Comm[myHttp].Status OF
		
		HTTP_COMM_STATUS_DISABLED:
			//Build Request String..
			itoa(myBagNumber,ADR(bagNoString)); 
			
			//http://10.8.4.220/maintenance/api/Bags/bagCountUpdate?bagNumber=1&plcStation=0
			
			requestURL := HTTP_POST_MAINT_BAGCOUNT;
			requestURL := CONCAT(requestURL,'plcStation=');
			requestURL := CONCAT(requestURL,Std.PLCStnString);
			requestURL := CONCAT(requestURL,'&bagNumber=');
			requestURL := CONCAT(requestURL,bagNoString);

			requestData := 'FIX ME I SHOULDN T NEED TO BE HERE';
			
			HTTP_Comm[myHttp].Command.Method := httpMETHOD_POST;//Should httpMethod_POST
			HTTP_Comm[myHttp].Command.Cmd_URL := requestURL;
			HTTP_Comm[myHttp].Command.Body_Data.Adr := ADR(requestData);
			HTTP_Comm[myHttp].Command.Body_Data.Size := strlen(ADR(requestData));
			HTTP_Comm[myHttp].Command.ResponseData.Adr := ADR(httpResponse);
			HTTP_Comm[myHttp].Command.ResponseData.Size := SIZEOF(httpResponse);
			
			HTTP_Comm[myHttp].Status := HTTP_COMM_STATUS_ACTIVE_WAIT_BUF;
	
				
		HTTP_COMM_STATUS_ACTIVE_WAIT_BUF:
			//Command is sent to ring buffer.	
		HTTP_COMM_STATUS_IN_BUFFER:
			//Command recieved and in ring buffer
		HTTP_COMM_STATUS_IN_PROCESS:
			//Command being processed by httpClient.
		HTTP_COMM_STATUS_COMPLETE:
			//Decode response Data.
			//The response comes as string... In this case it is easier to read from the byte direct as the response is limited in the SQL proc.
			Bag[myBag].Ur1 := myBagNumber;
			Bag[myBag].Ur2 := UDINT_TO_UINT(atoi(ADR(httpResponse))); //Maintenance State
			IF (Bag[myBag].Ur2 > 0) THEN
				Bag[myBag].Ur2 := (Bag[myBag].Ur2 - 1);
			END_IF;	
				
			//verificationState := UDINT_TO_UINT(atoi(ADR(httpResponse[3]))); // Batch Verification State
			//httpComplete := 1;
			HTTP_Comm[myHttp].Status := HTTP_COMM_STATUS_DISABLED;				
		
		HTTP_COMM_STATUS_ERROR: 
			IF (myBagNumber > 0) THEN
				Bag[myBag].Ur1 := myBagNumber;
			ELSE
				Bag[myBag].Ur1 := DEFAULT_BAGNUMBER;
			END_IF;
				HTTP_Comm[myHttp].Status := HTTP_COMM_STATUS_DISABLED;		
			
	END_CASE;
	
	
END_ACTION
