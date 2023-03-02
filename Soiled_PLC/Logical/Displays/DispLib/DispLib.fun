(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Library: DispLib
 * File: DispLib.fun
 * Author: Dave
 * Created: December 12, 2010
 ********************************************************************
 * Functions and function blocks of library DispLib
 ********************************************************************)

FUNCTION_BLOCK IP_Replace (*Replace existing first 3 parts of IP address*)
	VAR_INPUT
		pIP_New : UDINT;
		pIP_Now : UDINT;
	END_VAR
	VAR_OUTPUT
		IP_Replace : STRING[16];
		status : UINT;
	END_VAR
	VAR
		ethStatus : UINT;
		Node : UDINT;
		IP_Hex : UDINT;
		IP_Build : UDINT;
		IP_HexReplace : UDINT;
		IP_HexNew : UDINT;
	END_VAR
END_FUNCTION_BLOCK
