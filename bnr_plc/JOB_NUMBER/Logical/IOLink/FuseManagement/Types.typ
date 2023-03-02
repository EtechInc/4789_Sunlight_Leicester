(*Insert your comment here.*)

TYPE
	Fuse_typ : 	STRUCT 
		pDevice : UDINT; (**pointer to Address on IO Link interface*)
		ProcessData : ARRAY[0..5]OF USINT;
		index : UINT; (**Setting Index*)
		Read : FuseRead_typ;
		Write : FuseWrite_typ;
		IOLinkRead : ioLinkRead;
		IOLinkWrite : ioLinkWrite;
		trip : UINT; (**We have detected a trip error*)
		readStatusOnly : BOOL; (**Bit to say all config params have been read- only cycle through the status to see if we have an error*)
	END_STRUCT;
	FuseWrite_typ : 	STRUCT 
		MinVoltage : INT;
		MaxVoltage : INT;
		EnableEvents : USINT;
		AutoNodeAllocation_Off : BOOL;
		AutoNodeAllocation_On : BOOL;
		Channel : ARRAY[1..MAX_FUSES]OF FuseChannel_typ;
	END_STRUCT;
	FuseRead_typ : 	STRUCT 
		MinVoltage : INT;
		MaxVoltage : INT;
		ErrorCount : UINT;
		Channel : ARRAY[1..MAX_FUSES]OF FuseChannel_Read_typ;
		DeviceStatus : USINT;
		DeviceStatusString : STRING[80];
		InputVoltage : UINT;
		NoNodes : USINT;
		EnableEvents : USINT;
		GatewayOptions : FuseGateway_enum;
	END_STRUCT;
	FuseGateway_enum : 
		(
		EB_AUTO_NODE_OFF,
		EB_AUTO_NODE_ON
		);
	FuseType_enum : 
		(
		EB_UNKNOWN := 0,
		EB_3824_100_0 := 170,
		EB_0824_100_0 := 138,
		EB_1824_010_0 := 145,
		EB_1824_020_0 := 146,
		EB_1824_030_0 := 147,
		EB_1824_040_0 := 148,
		EB_1824_060_0 := 150,
		EB_1824_080_0 := 152,
		EB_1824_100_0 := 154
		);
	FuseChannel_Read_typ : 	STRUCT 
		TripCurrent : USINT; (*400 + Fuse Number*)
		Status : USINT;
		TripCount : SINT;
		ActCurrent : UINT;
		Type : FuseType_enum;
	END_STRUCT;
	FuseChannel_typ : 	STRUCT 
		TripCurrent : USINT; (*400 + Fuse Number*)
		Status : USINT;
	END_STRUCT;
END_TYPE
