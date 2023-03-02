
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	//_compileXML;
	DF2327SortedBatches;
	
	DF2327SortedBatches.updatedAt := CurrentTimestamp;
	batch;
	
	
	encodeXML.enable := enable;
	encodeXML.pStructName := ADR('DF2327SortedBatches');
	encodeXML.pData := ADR(Data);
	encodeXML.sizeData := SIZEOF(Data);
	encodeXML();
	IF (encodeXML.status = ERR_OK) THEN	
		enable := 0;
	ELSIF (encodeXML.status <> ERR_FUB_BUSY) THEN 	
		
	END_IF;	
	
	IF testTim THEN
		memcpy(ADR(Data),ADR(''),SIZEOF(Data));
		testTim := 0;
	 END_IF;
END_PROGRAM



