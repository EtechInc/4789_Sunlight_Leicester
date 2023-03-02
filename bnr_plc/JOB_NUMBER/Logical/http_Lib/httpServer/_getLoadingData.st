
ACTION _getLoadingData: 


	prg	:= 0;
	cat := 0;
	cus := 0;
	dst := 0;
	error := 0;
	found := 0;
	//Set common parameters of the function.
	getParameterName.searchString := requestData;
	getParameterName.searchOffset := 0;
	getParameterName.searchEndProperty := STRING_DOLLAR;

	//Find the category
	getParameterName.searchPropertyName := '"category":';
	getParameterName.searchEndProperty := ',';
	getParameterName();
	IF getParameterName.status = ERR_OK THEN
		cat := DINT_TO_UDINT(atoi(ADR(getParameterName.outputValue)));
	ELSE
		error := 2;
	END_IF;	

	//Find the customer
	getParameterName.searchPropertyName := '"customer":';
	getParameterName.searchEndProperty := ',';
	getParameterName();
	IF getParameterName.status = ERR_OK THEN
		cus := DINT_TO_UDINT(atoi(ADR(getParameterName.outputValue)));
	ELSE
		error := 2;
	END_IF;	
		
	//Find the destination
	getParameterName.searchPropertyName := '"destination":';
	getParameterName.searchEndProperty := ',';
	getParameterName();
	IF getParameterName.status = ERR_OK THEN
		dst := DINT_TO_USINT(atoi(ADR(getParameterName.outputValue)));
	ELSE
		error := 4;
	END_IF;		
	
	
	//Find the program
	getParameterName.searchPropertyName := '"program":';
	getParameterName.searchEndProperty := ',';
	getParameterName();
	IF getParameterName.status = ERR_OK THEN
		prg := DINT_TO_USINT(atoi(ADR(getParameterName.outputValue)));
		bag ACCESS ADR(Bag[212]);	
		found := found + 1;	
		bag.Cat := cat;	
		bag.Prg := prg;
		bag.Cus := cus;
		bag.Dst := dst;
	ELSE
		error := 3;
	END_IF;	
		
	sendResponse := (found > 0);
	errorResponse := (error > 0);
	
END_ACTION
