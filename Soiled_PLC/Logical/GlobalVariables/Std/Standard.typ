
TYPE
	WriteDisplay : 	STRUCT 
		Data : ARRAY[0..7]OF USINT;
	END_STRUCT;
	Test_Vars : 	STRUCT 
		TransferBelt : BOOL;
		Stations : BOOL;
		Dischargers : BOOL;
	END_STRUCT;
	Std_Vars : 	STRUCT 
		HaltSys : BOOL;
		HaltSysZone : ARRAY[0..4]OF BOOL;
		StopSystem : BOOL;
		SafetyOnZone : ARRAY[0..4]OF BOOL;
		SafetyOn : BOOL;
		AutoMaticRelease : BOOL;
		AutoRecirculation : BOOL;
		AutoLineAllocation : BOOL;
		BagsWithDestinations : BOOL;
		BagsWithDestinations2 : BOOL;
		BagWithDestAtFront : BOOL;
		BagSpacing : USINT;
		Clock100ms : BOOL;
		Clock200ms : BOOL;
		Clock500ms : BOOL;
		Clock1s : BOOL;
		Clock2s : BOOL;
		EStop : BOOL;
		EStopLoading : BOOL;
		EnableOverUnderRelease : BOOL;
		MaxAreas : UINT;
		MaxProg : USINT;
		MaxCats : UDINT;
		MaxCust : UDINT;
		MaxDischargers : USINT;
		MaxIO : UINT;
		MaxLines : UINT;
		MaxLinesBuffers : UINT;
		MaxWeighstations : UINT;
		MaxCountingStations : UINT;
		MaxStationBanks : UINT;
		MaxSearch : UINT;
		MinReleaseWeight : UINT;
		Monitor : UINT;
		MotorOverload : BOOL;
		MotorOverloadLoading : BOOL;
		PairingLoop : BOOL;
		Purging : BOOL;
		PurgeCompleted : BOOL;
		RepSpacing : USINT;
		StnBatchCode : UINT;
		StnsInQ : BOOL;
		StnsToPurge : ARRAY[0..4]OF BOOL;
		StationBagsStart : UINT;
		StationBagDisplay : UINT;
		CountingBagsStart : UINT;
		StationReports : BOOL;
		StationsClosed : BOOL;
		UnloadingMaxDepth : UINT;
		CustomerFIFO : BOOL;
		CustomerFound : BOOL;
		CustomerNewFound : BOOL;
		CustomerEditFound : BOOL;
		PLCStn : USINT;
		MaxSeq : USINT;
		PLCStnString : STRING[1];
		ReversingBelt : BOOL;
		PurgeBank : ARRAY[0..4]OF PurgeBatch_typ;
		AutoPurge : BOOL;
		MinPurgeWeight : USINT;
		StationBankReg : UINT;
		Drives_AllowLocalMode : BOOL;
	END_STRUCT;
	ReadDisplay : 	STRUCT 
		Data : ARRAY[0..7]OF USINT;
	END_STRUCT;
	PurgeBatch_typ : 	STRUCT 
		PurgeBatch : ARRAY[0..98]OF UINT;
		PurgeBagQty : UINT;
		PurgeBatchCount : UINT;
		PurgeBatchWieght : UINT;
		PurgeOn : UINT;
		StationsStatus : ARRAY[0..1]OF UDINT;
	END_STRUCT;
	fiLOCAL_OBJ : 	STRUCT 
		StateMan : UINT;
		ErrMan : UINT;
		Init : UDINT;
	END_STRUCT;
	comstype : 	STRUCT 
		delime : UINT;
		delim : ARRAY[0..1]OF USINT;
		tx_cnt : UINT;
		rx_cnt : UINT;
		tx_len : UINT;
		rx_len : UINT;
		argc : UINT;
		argv : UDINT;
		idle : UINT;
	END_STRUCT;
END_TYPE
