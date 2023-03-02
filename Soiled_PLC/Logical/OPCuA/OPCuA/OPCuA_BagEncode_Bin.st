
(* Encode Bag data in USINT For OPCuA comms *)
FUNCTION_BLOCK OPCuA_BagEncode_Bin
	IF enable THEN	
		status := ERR_FUB_BUSY;	
		
		//Clear old data,	
		buildData ACCESS pOutputData;
		IF outputDataSize >= SIZEOF(buildData) THEN
			//Start with display Index Index.	
			memcpy(ADR(buildData[0]),ADR(bagIndex),2);
			//Bag program USINT 1 Byte
			memcpy(ADR(buildData[2]),ADR(bag.Prg),1);
			//Bag destination USINT 1 Byte
			memcpy(ADR(buildData[3]),ADR(bag.Dst),1);
			//Bag Weight UINT 2 bytes
			memcpy(ADR(buildData[4]),ADR(bag.Wgt),2);
			//Bag Count UINT 2 bytes
			memcpy(ADR(buildData[6]),ADR(bag.Cnt),2);
			//Bag UR1 UINT 2 bytes
			memcpy(ADR(buildData[8]),ADR(bag.Ur1),2);
			//Bag bid UDINT 4 bytes
			memcpy(ADR(buildData[10]),ADR(bag.Ur1),4);
			//Bag Category UDINT 4 bytes
			memcpy(ADR(buildData[14]),ADR(bag.Cat),4);
			//Bag Customer UDINT 4 bytes
			memcpy(ADR(buildData[18]),ADR(bag.Cus),4);
			//Bag UR2 UDINT 4 bytes
			memcpy(ADR(buildData[22]),ADR(bag.Ur2),4);
			//Bag Timestamp DATE_AND_TIME 4 bytes
			memcpy(ADR(buildData[26]),ADR(bag.Timestamp),4);
			//Bag Batch ID UDINT (May expand to GUID)
			memcpy(ADR(buildData[30]),ADR(bag.Mis),4);
	
			status := ERR_OK;
		ELSE	
			status := 35624;
		END_IF;	
	ELSE	
		status := ERR_FUB_ENABLE_FALSE;			
	END_IF;	
	

END_FUNCTION_BLOCK
