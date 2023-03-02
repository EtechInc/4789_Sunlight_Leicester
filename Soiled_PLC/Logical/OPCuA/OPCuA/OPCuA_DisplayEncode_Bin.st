
(* TODO: Add your comment here *)
FUNCTION_BLOCK OPCuA_DisplayEncode_Bin
	IF enable THEN	
		status := ERR_FUB_BUSY;	
		//Copy Bag data...
		memcpy(ADR(outputData[0]),ADR(layoutData.bagData),SIZEOF(layoutData.bagData));
		//display ID STRING[5] 5 bytes
		memcpy(ADR(outputData[32]),ADR(layoutData.displayID),5);
		//display back Colour
		memcpy(ADR(outputData[37]),ADR(layoutData.backcolour),2);
		//Display Index Index.	
		memcpy(ADR(outputData[39]),ADR(displayIndex),2);
		//Index Layout 2 bytes
		memcpy(ADR(outputData[41]),ADR(layoutIndex),2);
		//Clien Write...
		outputData[43] := 0;
		status := ERR_OK;
	ELSE	
		status := ERR_FUB_ENABLE_FALSE;			
	END_IF;
END_FUNCTION_BLOCK