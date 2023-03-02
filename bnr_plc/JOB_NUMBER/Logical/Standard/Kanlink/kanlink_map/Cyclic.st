
PROGRAM _CYCLIC	
//	//Opener code
//	
//	
//	//Tunnel X
//	r56.open_signal	:= 	Comm[1].DropLoad;
//	r56.receive_signal	:= 	Comm[1].LoadDropped;
//	Comm[1].BagReady	:= r56.sling_ready;
//  
//	IF r56.sling_ready THEN
//		Comm[1].Customer	:= wash_com_cust_1;
//		Comm[1].Category	:= wash_com_cat_1;
//		Comm[1].BatchID		:= DByte_TO_4Byte(ADR(wash_com_batch1_1),ADR(wash_com_batch2_1));
//		Comm[1].Weight		:= (wash_com_wt_1 * 10);
//	ELSE
//		Comm[1].Customer	:= 0;
//		Comm[1].Category	:= 0;
//		Comm[1].BatchID		:= 0;
//		Comm[1].Weight		:= 0;
//	END_IF;
//  
//	IF EDGEPOS(r56.fire) THEN
//		wash_com_cust_1 := 0;
//		wash_com_cat_1  := 0;
//		wash_com_wt_1  := 0;
//		wash_com_batch1_1 := 0;
//		wash_com_batch2_1 := 0;
//	END_IF;
//	
//	
//	
//	
//	//Washer X
//	WasherOpenTimer1(IN:= r60.sling_ready AND Comm[3].DropLoad, PT := t#1500ms);
//	IF EDGEPOS(Comm[3].ReadyToLoad) THEN
//		r60.transfer_requested_signal := TRUE;
//	END_IF;
//	
//	r60.open_signal	:= 	WasherOpenTimer1.Q;
//	r60.receive_signal	:= 	Comm[3].LoadDropped;
//	Comm[3].BagReady	:= r60.sling_ready;
//	
//  
//	IF r60.sling_ready THEN
//		Comm[3].Customer	:= wash_com_cust_3;
//		Comm[3].Category	:= wash_com_cat_3;
//		Comm[3].BatchID		:= DByte_TO_4Byte(ADR(wash_com_batch1_3),ADR(wash_com_batch2_3));
//		Comm[3].Weight		:= (wash_com_wt_3 * 10);
//	ELSE
//		Comm[3].Customer	:= 0;
//		Comm[3].Category	:= 0;
//		Comm[3].BatchID		:= 0;
//		Comm[3].Weight		:= 0;
//	END_IF;
//	
//	IF EDGEPOS(r60.fire) OR NOT(Comm[3].ReadyToLoad) THEN
//		r60.transfer_requested_signal := FALSE;
//	END_IF;	
//  
//	IF EDGEPOS(r60.fire) THEN
//		wash_com_cust_3 := 0;
//		wash_com_cat_3  := 0;
//		wash_com_wt_3  := 0;
//		wash_com_batch1_3 := 0;
//		wash_com_batch2_3 := 0;
//	END_IF;
//	
//	
//	
//	//Dryer X
//	DryerOpenTimer1(IN:= r106.sling_ready AND Comm[6].DropLoad, PT := t#1500ms);
//	r106.transfer_requested_signal := Comm[6].ReadyToLoad;
//	r106.open_signal	:= 	DryerOpenTimer1.Q;
//	r106.receive_signal	:= 	Comm[6].LoadDropped;
//	Comm[6].BagReady	:= r106.sling_ready;
//  
//	IF r106.sling_ready THEN
//		Comm[6].Customer	:= wash_com_cust_10;
//		Comm[6].Category	:= wash_com_cat_10;
//		Comm[6].BatchID		:= DByte_TO_4Byte(ADR(wash_com_batch1_10),ADR(wash_com_batch2_10));
//		Comm[6].Weight		:= (wash_com_wt_10 * 10);
//	ELSE
//		Comm[6].Customer	:= 0;
//		Comm[6].Category	:= 0;
//		Comm[6].BatchID		:= 0;
//		Comm[6].Weight		:= 0;
//	END_IF;
//  
//	IF EDGEPOS(r106.fire) THEN
//		wash_com_cust_10 := 0;
//		wash_com_cat_10  := 0;
//		wash_com_wt_10  := 0;
//		wash_com_batch1_10 := 0;
//		wash_com_batch2_10 := 0;
//	END_IF;
//	
//	
//	
//	
//	
//	
//	// Transfers
//	
//	//Wet Transfer X
//	wash_com_cust_6 	:= UDINT_TO_INT(Comm[28].Customer);
//	wash_com_cat_6 		:= UDINT_TO_INT(Comm[28].Category);
//	wash_com_wt_6 		:= (Comm[28].Weight/10);
//	wash_com_batch1_6	:= Get_Lower2Bytes(Comm[28].BatchID);
//	wash_com_batch2_6	:= Get_Higher2Bytes(Comm[28].BatchID);
//	//	Comm[28].bCustom[0]
//			
//	
//	Comm[28].ReadyToLoad	:= r80.sling_ready;
//	r80.transfer_requested_signal := Comm[28].BagReady;
//	r80.xfer_in_progress	:= Comm[28].Unloading;
//	r80.xfer_complete := Comm[28].UnloadFinished;
//
//	IF EDGEPOS(r80.fire) THEN
//		wash_com_cust_6 := 0;
//		wash_com_cat_6 := 0;
//		wash_com_wt_6 := 0;
//		wash_com_batch1_6 := 0;
//		wash_com_batch2_6 := 0;
//	END_IF;	
END_PROGRAM
