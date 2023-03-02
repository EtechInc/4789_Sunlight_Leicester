(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Package: TrackView
 * File: TrackView.typ
 * Author: Administrator
 * Created: March 02, 2009
 ********************************************************************
 * Data types of package TrackView
 ********************************************************************)

TYPE
	Typ_MachineStatus : 	STRUCT 
		MACHINE_NO : UDINT; (*MACHINE NUMBER 6 - DIGITS*)
		DATA_VALID : USINT; (*0 - OFFLINE / 1 - ONLINE*)
		MACHINE_STATUS : USINT; (*0 - OFF ; 1 - ON WITHOUT MESSAGE ; 2 - ON WITH MESSAGE *)
		MSG_TYPE : USINT; (*0 - WITHOUT MESSAGE ; 1 - WARNING ; 2 - ALARM*)
		SPARE_FREI_1 : USINT; (*NOT USED*)
		MSG_NR : UINT; (*0 - NO MESSAGE ; >0 - WARNING OR ALARM*)
		SPARE_FREI_2 : UINT; (*NOT USED*)
	END_STRUCT;
END_TYPE
