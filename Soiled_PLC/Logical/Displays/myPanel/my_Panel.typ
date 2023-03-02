(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Package: myPanel
 * File: myPanel.typ
 * Author: Administrator
 * Created: February 23, 2009
 ********************************************************************
 * Data types of package myPanel
 ********************************************************************)

TYPE
	Panel_typ : 	STRUCT 
		Text : STRING[20];
		Datapoint : DINT;
		Min : DINT;
		Max : DINT;
		Status : UINT;
		Completion : UINT;
		Locking : UINT;
	END_STRUCT;
	Panel_Motor_Monitor_typ : 	STRUCT 
		MonitorIndex : USINT;
		Datapoint : DINT;
	END_STRUCT;
END_TYPE
