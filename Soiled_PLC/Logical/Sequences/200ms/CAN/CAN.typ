
TYPE
	WET_CAN : 	STRUCT 
		ControlSignals : USINT;
		ControlSignals2 : USINT;
		Category : UINT;
		Customer : UINT;
		Weight : UINT;
	END_STRUCT;
	DRY_CAN : 	STRUCT 
		ControlSignals : USINT;
		ControlByte2 : USINT;
		Category : UDINT;
		Weight : UINT;
	END_STRUCT;
	DRY_CAN1 : 	STRUCT 
		CustomerCode : UDINT;
		BatchCode : UDINT;
	END_STRUCT;
	DRYCAN_comm_typ : 	STRUCT 
		ReadFrame : DRY_CAN;
		WriteFrame : DRY_CAN;
		WriteFrame1 : DRY_CAN1;
		EventRead : BOOL;
		EventWrite : BOOL;
		EventWrite1 : BOOL;
	END_STRUCT;
	CAN_Vars : 	STRUCT 
		StrobeComplete : BOOL;
		BagReady : BOOL;
		BatchCode : UINT;
		Category : UDINT;
		Customer : UDINT;
		Destination : UINT;
		DropLoad : BOOL;
		DoubleLoad : BOOL;
		Drier1Loading : BOOL;
		Drier2Loading : BOOL;
		Drier1Unloading : BOOL;
		Drier2Unloading : BOOL;
		FaultNumber : USINT;
		Live : BOOL;
		LiveTime : UINT;
		LoadDropped : BOOL;
		LoadFinished : BOOL;
		MachineID : UINT;
		Program : UINT;
		PressShift : BOOL;
		ReadyToLoad : BOOL;
		SP1 : UINT;
		SP2 : UINT;
		SP3 : UINT;
		Transfer : BOOL;
		UnloadFinished : BOOL;
		Weight : UINT;
		BatchID : UDINT;
		Batch_QtyRemaining : UINT;
		LoadRecieved : BOOL;
		Unloading : BOOL;
		Batchpart : ARRAY[0..7]OF Batchpart_typ;
		Batchpart_wgt : ARRAY[0..9]OF UINT;
	END_STRUCT;
	Batchpart_typ : 	STRUCT 
		Wgt : UINT;
		Customer : UDINT;
	END_STRUCT;
	Comm_typ : 	STRUCT 
		StrobeComplete : BOOL;
		BagReady : BOOL;
		BatchCode : UINT;
		Category : UDINT;
		Customer : UDINT;
		Destination : UINT;
		DropLoad : BOOL;
		DoubleLoad : BOOL;
		Live : BOOL;
		LiveTime : UINT;
		LoadDropped : BOOL;
		LoadFinished : BOOL;
		Program : UINT;
		ReadyToLoad : BOOL;
		UnloadFinished : BOOL;
		Weight : UINT;
		BatchID : UDINT;
		Batch_QtyRemaining : UINT;
		LoadRecieved : BOOL;
		Unloading : BOOL;
		Batchpart : ARRAY[0..7]OF Batchpart_typ;
		Batchpart_wgt : ARRAY[0..9]OF UINT;
		Count : UINT;
		Bid : UDINT; (**Internal use only pass bid ID>*)
		TimeStamp : DATE_AND_TIME; (**Internal use only*)
		Transfer : BOOL;
	END_STRUCT;
END_TYPE
