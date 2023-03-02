
(* *Get API name from URI *)
FUNCTION FindAPI
	
	Start := LEN(ServiceName) + 2;// We must add the / character and 1 to place the cursor on the first Letter of the API name.
	Length := FIND(URI,'?');
	IF (Length = 0) THEN
		Length := LEN(URI)- LEN(ServiceName) + 1;;	
	ELSE 
		Length := Length - LEN(ServiceName) - 2;	
	END_IF;	
	
	 
	apiName := 	MID(URI,Length,Start);
	
	IF (apiName = 'ConfirmBagReEntry') THEN FindAPI := API_MAINTENANCE_CONFIRM_REENTRY;		
	ELSIF (apiName = 'Functions') THEN FindAPI := API_ST_FUNCTIONS;	
	ELSIF (apiName = 'SendBeltLoadingConfig') THEN FindAPI := API_CUSTOM_BELT_CONFIG;		
	ELSIF (apiName = 'ResetSafety') THEN FindAPI := API_CUSTOM_RESET_SAFETY;
	ELSIF (apiName = 'load-config') THEN FindAPI := API_CONFIG_LOAD_NEW;
	ELSIF (apiName = 'discharger-submit') THEN FindAPI := API_DISCHARGER_SUBMIT;
	ELSIF (apiName = 'abb-manual-control') THEN FindAPI := API_ABB_MANUAL_CMD;
	ELSIF (apiName = 'part-load') THEN FindAPI := API_DATA_ENTRY_PARTLOAD;	
	ELSE FindAPI := API_UNKNOWN;
	END_IF;		
		
		
		
END_FUNCTION
