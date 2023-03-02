
TYPE
	SafeInterlockType : 	STRUCT 
		GS_DI_01_Access_Reset : BOOL; (*Interlock access request and zone reset operator input*)
		GS_DI_02_Monitor_Solenoid : BOOL; (*Interlock solenoid feedback*)
		GS_DO_01_Lock_Solenoid : BOOL; (*Interlock solenoid output*)
		GS_Two_Channel_Input : BOOL; (*Safe PLC feedback of the state of interlock dual channel*)
	END_STRUCT;
	SafeE_StopType : 	STRUCT 
		ES_SI_Two_Channel : ARRAY[0..MAX_DUAL_CHANNELS]OF BOOL; (*Safe PLC feedback of the state of e-stop dual channel*)
	END_STRUCT;
	SafeTowerLightType : 	STRUCT 
		TL_DO_Green : BOOL; (*Tower light output for Green light*)
		TL_DO_Yellow : BOOL; (*Tower light output for Yellow light*)
		TL_DO_Red : BOOL; (*Tower light output for Red light*)
		TL_DO_Sounder : BOOL; (*Tower light output for sounder*)
	END_STRUCT;
	SafeZoneType : 	STRUCT 
		Interlock : SafeInterlockType; (*Interlock structure*)
		E_Stop : SafeE_StopType; (*Emergency stop structure*)
		TowerLight : SafeTowerLightType; (*Tower light structure*)
		Zone_Status : BOOL; (*State of the zone passed back from safe PLC*)
		AccessRequested : BOOL; (*Operator as requested access*)
		BagsInTransit : BOOL; (*True = Sequences are still not in a safe step*)
		HoistsOutOfPosition : BOOL; (*True = Hoists in zone are not parked*)
		Main_Reset : BOOL; (*Main panel reset*)
		Main_Lamp : BOOL; (*Main panel lamp*)
		Disable : BOOL; (*Passed into sequences to inhibit stepping on*)
		EDM : BOOL; (*EDM Feedback from linking relays*)
		ResetReady : BOOL; (*Zone is ready to be reset*)
		LiftGates : BOOL; (*Lift the edge protection gates.*)
	END_STRUCT;
	Safety_Hoist_type : 	STRUCT 
		I_Operator_PushButton : BOOL; (*Bulk loading operator push button*)
		O_OpenGuard : BOOL; (*Sliding guard output*)
		O_CloseGuard : BOOL; (*Sliding guard output*)
		OutOfPosition : BOOL; (*True when hoist is not in Service position*)
		I_GuardClosed : BOOL; (*Sliding guard closed*)
	END_STRUCT;
END_TYPE
