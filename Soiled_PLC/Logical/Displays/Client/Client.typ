(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Program: Client
 * File: Client.typ
 * Author: Dave
 * Created: December 06, 2010
 ********************************************************************
 * Local data types of program Client
 ********************************************************************)

TYPE
	Client_typ : 	STRUCT  (*TCP Client Variables*)
		TcpOpen_0 : TcpOpen; (*AsTCP.TcpOpen FUB*)
		TcpClient_0 : TcpClient; (*AsTCP.TcpClient FUB*)
		TcpRecv_0 : TcpRecv; (*AsTCP.TcpRecv FUB*)
		TcpSend_0 : TcpSend; (*AsTCP.TcpSend FUB*)
		TcpIoctl_0 : TcpIoctl; (*AsTCP.TcpIoctl FUB*)
		TcpClose_0 : TcpClose; (*AsTCP.TcpClose FUB*)
		linger_opt : tcpLINGER_typ; (*AsTCP.tcpLINGER_typ*)
		recv_timeout : UDINT; (*receive timeout*)
	END_STRUCT;
END_TYPE
