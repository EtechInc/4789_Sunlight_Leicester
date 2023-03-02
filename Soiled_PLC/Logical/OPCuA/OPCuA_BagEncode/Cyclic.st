PROGRAM _INIT
	
//	//Copy Address to local vars and single time copy bag into reduce plc load from 5.4#% to 2.68%
	FOR n := 0 TO MAX_BAGS DO
		pOPCuA_Data[n] := ADR(OPCuA_Bag[n].data[0]);
		pBagData[n] := ADR(Bag[n]);
		memcpy(ADR(OPCuA_Bag[n].data[32]),ADR(n),2);
	END_FOR;
	dataSize := SIZEOF(Bag[0]);
END_PROGRAM
PROGRAM _CYCLIC
FOR n := 0 TO MAX_BAGS DO
//FUB uses 16.9% CPU		
//	bagEncode.enable := 1;
//	bagEncode.bagIndex := n;
//	bagEncode.bag := Bag[n];
//	bagEncode.pOutputData := ADR(OPCuA_Bag[n].data[0]);
//	bagEncode.outputDataSize := SIZEOF(OPCuA_Bag[n].data);	
//	bagEncode();

//Single Memcpy = 3.56% CPU usage with ADR function...
//With single memcpy we have no hard control over byte position so we must so Bag in the correct format..
//															BYTE			
//		Prg : USINT; (*Program*)							0
//		Dst : USINT; (*Destination - Only Supertrack*)		1
//		Wgt : UINT; (*Weight*)								2..3
//		Cnt : UINT; (*Count (Items)*)						4..5
//		Ur1 : UINT; (*User 1*)								6..7
//		Bid : UDINT; (*Bag ID - Supertrack ID*)				8..11	
//		Cat : UDINT; (*Category*)							12..15
//		Mis : UDINT; (*Batch ID - MIS Mis Server*)			16..19
//		Cus : UDINT; (*Customer *)							20..23
//		Ur2 : UDINT; (*User 2*)								24..27
//		Timestamp : DATE_AND_TIME;							28..31
//		Bag Index;	UNIT									32..33
		memcpy(pOPCuA_Data[n],pBagData[n],dataSize);
		
		
END_FOR;		
	
	
	 
END_PROGRAM
