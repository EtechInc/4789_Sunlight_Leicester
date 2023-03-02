
(* *Decode the OPCuA vars into display type. *)
FUNCTION_BLOCK OPCuA_DisplayDecode
	IF enable THEN	
		status := ERR_FUB_BUSY;
		memcpy(pBag,pInputData,sizeBag);
		status := ERR_OK;
	ELSE	
		status := ERR_FUB_ENABLE_FALSE;
	END_IF;
	
END_FUNCTION_BLOCK
