
TYPE
	VCiLock_Signals_Type : 	STRUCT 
		ReqRelease : BOOL; (*Output [Releasing] - Request to release a bag*)
		EnabRelease : BOOL; (*Input [Releasing] - Enable bag release*)
		InPosn : BOOL; (*Output [Receive] - Carriage in position*)
		ReqSend : BOOL; (*Input [Receive] - Request to send a bag*)
		EnabSend : BOOL; (*Output  [Receive] - Enable sending a bag*)
		ReqPosn : BOOL; (*Input - Request go to a position*)
	END_STRUCT;
	Enable_Vars : 	STRUCT 
		Search : UINT;
		TransferBelt : ARRAY[0..4]OF BOOL;
		Ongoing : ARRAY[0..4]OF BOOL;
		Offgoing : ARRAY[0..4]OF BOOL;
		BSN : ARRAY[0..4]OF BOOL;
		BSF : ARRAY[0..9]OF BOOL;
		FB : ARRAY[0..4]OF BOOL;
		IC : ARRAY[0..9]OF BOOL;
		DC : ARRAY[0..9]OF BOOL;
		LU : ARRAY[0..9]OF BOOL;
		PI : ARRAY[0..9]OF BOOL;
		PC : ARRAY[0..9]OF BOOL;
		PN : ARRAY[0..99]OF BOOL;
		PF : ARRAY[0..9]OF BOOL;
		SB : ARRAY[0..9]OF BOOL;
		SK : ARRAY[0..9]OF BOOL;
		SP : ARRAY[0..39]OF BOOL;
		VC : ARRAY[0..9]OF BOOL;
		WB : ARRAY[0..4]OF BOOL;
		SDP : ARRAY[0..2]OF BOOL;
		FDC : ARRAY[0..2]OF BOOL;
		FDCEmpty : ARRAY[0..2]OF BOOL;
		SDC1Drop : BOOL;
		DCEmptyRelease : ARRAY[0..10]OF BOOL;
		EmptyBagInSVC : ARRAY[0..5]OF BOOL;
		SVC1LowLevel : BOOL;
		SVC3LowLevel : BOOL;
		SVC3HighLevel : BOOL;
		SVC2FullBagLowLevel : BOOL;
		SVC2AtTop : BOOL;
		SVC4ToSDP1 : BOOL;
		SVCFullBag : ARRAY[0..4]OF BOOL;
		VC_LowLevel : ARRAY[0..4]OF BOOL;
		SVCEmptyBag : ARRAY[0..4]OF BOOL;
		VC_HighLevel : ARRAY[0..4]OF BOOL;
	END_STRUCT;
	VCiLock_Posn_Typ : 	STRUCT 
		Posn : ARRAY[0..5]OF VCiLock_Signals_Type;
	END_STRUCT;
END_TYPE
