
TYPE
	Loading_Vars : 	STRUCT 
		EnableStnRelease : BOOL;
		BeltHasRun : BOOL;
		Found : UINT;
		Line : UINT;
		Search : UINT;
		Stations : ARRAY[0..MAX_WEIGHSTATIONS]OF USINT;
		NoStations : USINT;
	END_STRUCT;
	Stn_Vars : 	STRUCT 
		DestManual : UINT;
		LampOn : BOOL;
		GreenLamp : BOOL;
		QTime : UINT;
		ReleaseButton : BOOL;
		SpacesRequired : UINT;
		SP1 : BOOL;
		SP2 : BOOL;
		SP3 : BOOL;
		Count : UINT;
		Closed : BOOL;
		CloseFlap : BOOL;
		CntInput : BOOL;
		Weight : INT;
		Open : BOOL;
		MixCustomer : BOOL;
		PBCount : UINT;
		Purge : BOOL;
		Unlock : BOOL;
		ManualRelease : BOOL;
		PurgeReverse : BOOL;
	END_STRUCT;
END_TYPE
