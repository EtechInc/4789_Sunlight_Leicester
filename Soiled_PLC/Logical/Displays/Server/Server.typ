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
	Monitor_typ : 	STRUCT 
		ServerState : STRING[20];
		ServerPort : UINT;
		Ident : UDINT;
		ClientInfo : ARRAY[0..19] OF MonitorClient_typ;
	END_STRUCT;
	MonitorClient_typ : 	STRUCT  (*Monitor selected variables*)
		State : STRING[20];
		Port : UINT;
		IPAddress : STRING[20];
		Ident : UDINT;
	END_STRUCT;
	Server_typ : 	STRUCT  (*TCP Server Variables*)
		Status : USINT; (*TCP Server Connection Status*)
		client_address : STRING[20]; (*Address of the client connection to the Server*)
		TcpServer_0 : TcpServer; (*AsTCP.TcpServer FUB*)
		TcpRecv_0 : TcpRecv; (*AsTCP.TcpRecv FUB*)
		TcpSend_0 : TcpSend; (*AsTCP.TcpSend FUB*)
		TcpClose_0 : TcpClose; (*AsTCP.TcpClose FUB*)
		TcpIoctl_0 : TcpIoctl; (*AsTCP.TcpIoctl*)
		linger_opt : tcpLINGER_typ;
		recv_timeout : UDINT; (*receive timeout*)
	END_STRUCT;
	ServerOpen_typ : 	STRUCT 
		Status : UINT;
		linger_opt : tcpLINGER_typ;
		TcpIoctl_0 : TcpIoctl; (*AsTCP.TcpIoctl*)
		TcpOpen_0 : TcpOpen; (*AsTCP.TcpOpen FUB*)
		TcpClose_0 : TcpClose; (*AsTCP.TcpClose FUB*)
	END_STRUCT;
END_TYPE
