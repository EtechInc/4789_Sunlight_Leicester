
ACTION _compileXML:
	state ACCESS ADR(xml.Write.State);
	testData;

	CASE xmlWriter.State OF
		
		30://Open an XML writer
			xmlWriter.Functions.CreateMemWriter.enable := 1;		
			IF (xmlWriter.Functions.CreateMemWriter.status = ERR_OK) THEN
				xmlWriter.State := 1;		
			END_IF;
		
		1:// Write the document header
			//Write the encoding version.
		
		
		
		
		10://Wait.
			structName := 'testData';
			pStructName := ADR(structName);
		
		11://Read the Data structure so we can manipulate into XML
			//What have to pass in the structure Name..
			// Only pass the structure name -- The code will handle it if it;s global or local
			status := PV_item(pStructName,index,ADR(pvName));
			IF (status = ERR_OK) THEN
				//Build the pvFullName
				brsstrcpy(ADR(pvFullName),ADR(structName));
				brsstrcat(ADR(pvFullName),ADR('.'));
				brsstrcat(ADR(pvFullName),ADR(pvName));
				xmlWriter.State := 20;
			ELSIF (status =  ERR_SYS_PV_NOT_FOUND) THEN
				//Add the taskname in front of the var to declare it as local.
				ST_name(0,ADR(taskName),0);
				brsstrcat(ADR(taskName),ADR(':'));
				brsstrcat(ADR(taskName),ADR(structName));
				brsstrcpy(ADR(structName),ADR(taskName));
				pStructName := ADR(structName);	
			END_IF;
		
		
		20://Get the info..
			pvStatus := PV_ninfo(ADR(pvFullName),ADR(pv_dataType),ADR(pv_dataLen),ADR(noOfElements));	
			IF pvStatus = ERR_OK THEN
				xmlWriter.State := 21;	
			END_IF;
		
		
		21://
			//Don't use get val as it doesn;t support strings..
			//We can get the address and memcpy... then cast to string
			
			//pvStatus := PV_xgetval(ADR(pvFullName),subIndex,ADR(pvValue),2);
			IF pvStatus = ERR_OK THEN
				xmlWriter.State := 22;	
			END_IF;
		
		
		99://Close the writer.
			//xml			
		
		
	END_CASE;	
	

END_ACTION
