(********************************************************************
 * COPYRIGHT -- Bernecker + Rainer
 ********************************************************************
 * Package: LibAsTCP
 * File: LibAsTCP.typ
 * Author: Bernecker + Rainer
 * Created: February 21, 2008
 ********************************************************************
 * Data types of package LibAsTCP
 ********************************************************************)

TYPE
	myPanel_typ : 	STRUCT 
		Text : STRING[20];
		Datapoint : DINT;
		Min : DINT;
		Max : DINT;
		Status : UINT;
		Completion : UINT;
		Locking : UINT;
	END_STRUCT;
	pnlDisplay_Typ : 	STRUCT 
		ClientIP : STRING[16]; (*Connectec Client IP Address*)
		SendData : ARRAY[0..3]OF pnlDisplaySend_Typ; (*Send Data*)
		ReceiveData : ARRAY[0..3]OF pnlDisplayReceive_Typ; (*Reveive Data*)
	END_STRUCT;
	pnlDisplayReceive_Typ : 	STRUCT 
		Language : UINT; (*Language selection*)
		Command : UINT; (*Command Received from panel eg. Button Pressed*)
		DataEntry1 : UDINT; (*Data entry value*)
		DataEntry2 : UDINT; (*Data entry value*)
		DataEntry3 : UDINT; (*Data entry value*)
		DataEntry4 : UDINT; (*Data entry value*)
		DataEntry5 : UDINT; (*Data entry value*)
		DataEntry6 : UDINT; (*Data entry value*)
	END_STRUCT;
	pnlDisplaySend_Typ : 	STRUCT 
		Language : USINT; (*Language from Master PLC*)
		IP_Address : STRING[16]; (*New Display IP Address the Gateway takes the complete address the IP and Server only the first 3 parts*)
		CycleSync_ms : UINT; (*Server sync cycle time*)
		SYSreset : UINT; (*System Reset (cold start etc..)*)
		Brightness : UINT; (*Panel Brightness*)
		MainDisplay : UINT; (*Selection of various main displays set from 20 onwards*)
		MainColour : UINT; (*Main foreground and background colour*)
		DisplayBag : Bag_typ; (*Display data for bag text*)
		TextColour1 : UINT; (*Text foreground and background colour*)
		TextColour2 : UINT; (*Text foreground and background colour*)
		TextColour3 : UINT; (*Text foreground and background colour*)
		TextColour4 : UINT; (*Text foreground and background colour*)
		TextColour5 : UINT; (*Text foreground and background colour*)
		TextColour6 : UINT; (*Text foreground and background colour*)
		Max1 : UDINT; (*Data entry limit*)
		Max2 : UDINT; (*Data entry limit*)
		Max3 : UDINT; (*Data entry limit*)
		Max4 : UDINT; (*Data entry limit*)
		Max5 : UDINT; (*Data entry limit*)
		Max6 : UDINT; (*Data entry limit*)
		SQL : SQLLogin_typ;
		StnName : STRING[5];
		CustomText : ARRAY[0..4]OF STRING[25];
	END_STRUCT;
	pnlClient_Typ : 	STRUCT 
		ButtonPressed : UINT;
		CurrentPage : UINT;
		ChangePage : UINT;
		IFport : STRING[16];
		ServerIPaddress : STRING[16];
		IPaddress : STRING[16];
		SubnetMask : STRING[16];
		Gateway : STRING[16];
		BroadcastAddress : STRING[16];
		Password : UINT;
		ServerCycle_ms : UINT;
	END_STRUCT;
	pnlTextType : 	STRUCT 
		Prg : UDINT;
		PrgLong : STRING[8];
		PrgName : STRING[50];
		Cat : UDINT;
		CatLong : STRING[8];
		CatName : STRING[50];
		Cus : UDINT;
		CusLong : STRING[8];
		CusName : STRING[50];
		ImagePath : STRING[32];
		Description : STRING[10];
	END_STRUCT;
END_TYPE
