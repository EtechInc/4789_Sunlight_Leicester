
TYPE
	OpcUa_type : 	STRUCT 
		VC : ARRAY[230..248]OF OpcUa_VC_type;
	END_STRUCT;
	OpcUa_VC_type : 	STRUCT 
		Read : OpcUa_VC_Read_type;
		Write : OpcUa_VC_Write_type;
	END_STRUCT;
	OpcUa_VC_Write_type : 	STRUCT 
		Heartbeat : BOOL;
		PermissionToMove : BOOL;
		TargetPosition : USINT;
		ReleaseBag : BOOL;
		ReceiveBag : BOOL;
		LoadBag : BOOL;
		BagInTransit : BOOL;
	END_STRUCT;
	OpcUa_VC_Read_type : 	STRUCT 
		StatusInfo : STRING[80];
		ActPosition : REAL;
		PositionNo : USINT;
		ReleaseBag : BOOL;
		ReceiveBag : BOOL;
		Heartbeat : BOOL;
		ReadyToReceive : BOOL;
		Auto : BOOL;
		Manual : BOOL;
		Error : BOOL;
		ChuteBlocked : BOOL;
		BagOnCarriage : BOOL;
		IsHome : BOOL;
		Weight : DINT;
	END_STRUCT;
END_TYPE
