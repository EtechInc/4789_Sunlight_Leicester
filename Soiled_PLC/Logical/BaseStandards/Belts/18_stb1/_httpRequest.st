
ACTION _httpRequest: 
	myHttp := 6;
	
	CASE HTTP_Comm[myHttp].Status OF
		HTTP_COMM_STATUS_DISABLED:
			//Build Request String..
			itoa(Bag[myBag].Cat,ADR(catString));
			itoa(Bag[myBag].Cus,ADR(cusString));
			itoa(Bag[myBag].Wgt,ADR(wgtString));
			itoa(Bag[myBag].Mis,ADR(batchString));
			requestURL := HTTP_IF_CALL_USP_REPLY_URL;

			requestURL := CONCAT(requestURL,HTTP_GET_BATCH_CREATE);
			requestURL := CONCAT(requestURL,'@SystemIndex=');
			requestURL := CONCAT(requestURL,Std.PLCStnString);
			requestURL := CONCAT(requestURL,',@LocationIndex=0');
			requestURL := CONCAT(requestURL,',@CatID=');
			requestURL := CONCAT(requestURL,catString);
			requestURL := CONCAT(requestURL,',@CusID=');
			requestURL := CONCAT(requestURL,cusString);
			requestURL := CONCAT(requestURL,',@Wgt=');
			requestURL := CONCAT(requestURL,wgtString);

			
			HTTP_Comm[myHttp].Command.Method := httpMETHOD_GET;
			HTTP_Comm[myHttp].Command.Cmd_URL := requestURL;
			HTTP_Comm[myHttp].Command.Body_Data.Adr := 0;//ADR(requestData);
			HTTP_Comm[myHttp].Command.Body_Data.Size := 0;//SIZEOF(requestData);
			HTTP_Comm[myHttp].Command.ResponseData.Adr := ADR(responseData); ;
			HTTP_Comm[myHttp].Command.ResponseData.Size := SIZEOF(responseData);;
			HTTP_Comm[myHttp].Status := HTTP_COMM_STATUS_ACTIVE_WAIT_BUF;
	
		HTTP_COMM_STATUS_ACTIVE_WAIT_BUF:
			//Command is sent to ring buffer.	
		HTTP_COMM_STATUS_IN_BUFFER:
			//Command recieved and in ring buffer
		HTTP_COMM_STATUS_IN_PROCESS:
			//Command being processed by httpClient.
		HTTP_COMM_STATUS_COMPLETE:
			//Decode response Data.
			//Response comes as Batch ID int, BatchID Guid.	
			//Search for , that splits values
			commaPos := 0;
			FOR n := 1 TO 30 DO			
				IF (responseData[n] = 44) THEN	
					commaPos := n;
					EXIT;
				END_IF;	
			END_FOR;
			IF (commaPos > 0) AND (commaPos <= 10) THEN // Check batch ID is in range. 	
				batchString := '';
				memcpy(ADR(batchString),ADR(responseData[1]),(commaPos -1 ));
				Bag[myBag].Mis := atoi(ADR(batchString));
			ELSE
				//Error with Batch ID or Proc has reutrn error...
				Alarm[mySeq].Name := ALM_BAG_DATA_ERROR;
				Alarm[mySeq].Time := 0;
			END_IF;	
		
		//HTTP_Comm[myHttp].Status := HTTP_COMM_STATUS_DISABLED;				
		
		HTTP_COMM_STATUS_ERROR: 	
			HTTP_Comm[myHttp].Status := HTTP_COMM_STATUS_DISABLED;		
			
	END_CASE;
	
	
END_ACTION
