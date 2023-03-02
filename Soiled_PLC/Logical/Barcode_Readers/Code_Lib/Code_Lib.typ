(********************************************************************
 * COPYRIGHT -- HP
 ********************************************************************
 * Library: TelNet
 * File: TelNet.typ
 * Author: treamsbottom
 * Created: February 20, 2015
 ********************************************************************
 * Data types of library TelNet
 ********************************************************************)

TYPE
	enum_SocketState : 
		(
		eTCPConnect,
		eTCPSend,
		eTCPRead,
		eTCPDisconnect,
		eTCPError,
		eTCPIoctl,
		eTCPConnectToClient,
		eTCPWaitForCmd,
		eTCPResetPower
		);
	Reader_typ : 	STRUCT 
		SocketState : enum_SocketState;
		SendData : STRING[READER_MAX_DATA];
		RecieveData : STRING[READER_MAX_DATA];
		IPAddress : STRING[15];
		cmd : USINT; (** Constant for telnet string commands*)
		Resend_Count : UDINT;
		NoDataRecv_TimeOut : UDINT;
		LastError : UINT;
		interface : ReaderInterface_typ;
		decoded_Data : ReaderDecodeData_typ;
		req_Read : BOOL;
		read_Fail : BOOL;
		read_Complete : BOOL;
		read_TryCount : USINT;
		send_TimeOut : BOOL;
		RetryFailCount : UDINT;
		LastErrorState : enum_SocketState;
	END_STRUCT;
	e_CloseAllPortState : 
		(
		e_DoNothing,
		e_GetOpenIdents,
		e_CloseAllOpenIdents
		);
	ReaderInterface_typ : 	STRUCT 
		result_Bad : BOOL;
		result_Good : BOOL;
		read : BOOL;
		power : BOOL;
		airBlast : BOOL;
	END_STRUCT;
	ReaderDecodeData_typ : 	STRUCT 
		PLCStn : UINT;
		Colour : UINT;
		BagNumber : UINT;
	END_STRUCT;
	ReaderColourCodes_typ : 	STRUCT 
		value : UINT;
		string : STRING[1];
		ascii : USINT;
	END_STRUCT;
END_TYPE
