(********************************************************************
 * COPYRIGHT -- HP
 ********************************************************************
 * Library: TelNet
 * File: TelNet.fun
 * Author: treamsbottom
 * Created: February 20, 2015
 ********************************************************************
 * Functions and function blocks of library TelNet
 ********************************************************************)

FUNCTION_BLOCK CloseAllOpenTCPIdents (*Close all open TCP idents made with TcpOpen*) (*$GROUP=User*)
	VAR_INPUT
		Enable : BOOL;
	END_VAR
	VAR_OUTPUT
		Status : UINT;
	END_VAR
	VAR
		SelIdent : UDINT;
		No_OpenIdents : UDINT;
		TCP_Close : TcpClose;
		Open_TCP_Idents : ARRAY[0..99] OF UDINT;
		TCP_Ioctl : TcpIoctl;
		e_State : e_CloseAllPortState;
		cNothing : UINT;
	END_VAR
END_FUNCTION_BLOCK
