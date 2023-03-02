
(* TODO: Add your comment here *)
FUNCTION_BLOCK OPCuA_DisplayEncode_String
	IF enable THEN	
		status := ERR_FUB_BUSY;	
		
		//Build String	
		buildString := '';
		//Start with Bag Index.	
		itoa(displayIndex,ADR(myValue));
		buildString := myValue;
		buildString := CONCAT(buildString,';');
	
		itoa(layoutIndex,ADR(myValue));	
		buildString := CONCAT(buildString,myValue);
		buildString := CONCAT(buildString,';');	
		
		itoa(layoutData.bagData.Prg,ADR(myValue));	
		buildString := CONCAT(buildString,myValue);
		buildString := CONCAT(buildString,';');	
		
		itoa(layoutData.bagData.Cat,ADR(myValue));	
		buildString := CONCAT(buildString,myValue);
		buildString := CONCAT(buildString,';');	
		
		itoa(layoutData.bagData.Cus,ADR(myValue));	
		buildString := CONCAT(buildString,myValue);
		buildString := CONCAT(buildString,';');	
		
		itoa(layoutData.bagData.Wgt,ADR(myValue));	
		buildString := CONCAT(buildString,myValue);
		buildString := CONCAT(buildString,';');	
		
		itoa(layoutData.bagData.Cnt,ADR(myValue));	
		buildString := CONCAT(buildString,myValue);
		buildString := CONCAT(buildString,';');	
		
		itoa(layoutData.bagData.Mis,ADR(myValue));	
		buildString := CONCAT(buildString,myValue);
		buildString := CONCAT(buildString,';');
		
		itoa(layoutData.bagData.Ur1,ADR(myValue));	
		buildString := CONCAT(buildString,myValue);
		buildString := CONCAT(buildString,';');
		
		itoa(layoutData.bagData.Ur2,ADR(myValue));	
		buildString := CONCAT(buildString,myValue);
		buildString := CONCAT(buildString,';');	
			
		buildString := CONCAT(buildString,layoutData.displayID);
		buildString := CONCAT(buildString,';');
		
		itoa(layoutData.backcolour,ADR(myValue));	
		buildString := CONCAT(buildString,myValue);
		
		outputString := buildString;
		status := ERR_OK;
	ELSE	
		status := ERR_FUB_ENABLE_FALSE;			
	END_IF;
END_FUNCTION_BLOCK
