(********************************************************************
 * COPYRIGHT -- HP
 ********************************************************************
 * Library: zzSQL_Lib
 * File: zzSQL_Lib.fun
 * Author: treamsbottom
 * Created: May 04, 2012
 ********************************************************************
 * Functions and function blocks of library zzSQL_Lib
 ********************************************************************)

FUNCTION_BLOCK SQL_Write (**General Write to SWL Server. Set Data parameters in connection string.*)
	VAR_INPUT
		enable : BOOL;
		pServerName : UDINT;
		pUserName : UDINT;
		pPassword : UDINT;
		pDatabaseName : UDINT;
		pSQl_Cmd_String : UDINT;
	END_VAR
	VAR_OUTPUT
		status : UINT;
		sql_Error : UINT;
	END_VAR
	VAR
		SQL : SQL_Enum;
		internal_error : BOOL;
		SQLConnect : dbConnect;
		sql_Ident : UDINT;
		sql_Status : UINT;
		SQLExecute : dbExecuteSql;
		SQLDisconnect : dbDisconnect;
		SQLGetErrorMsg : dbGetErrorMessage;
		SQL_Error_Msg : STRING[100];
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK SQL_Read_Write (**SQL FB that return 20 UDINTS from Cat number*)
	VAR_INPUT
		pServerName : UDINT;
		pUserName : UDINT;
		pPassword : UDINT;
		pDatabaseName : UDINT;
		pData : UDINT;
		pSQl_Cmd_String : UDINT;
		enable : BOOL;
	END_VAR
	VAR_OUTPUT
		sql_Status : UINT;
		sql_Error : UINT;
		SQL_Error_Msg : STRING[100];
		status : UINT;
	END_VAR
	VAR
		SQL : SQL_Enum;
		Data : ARRAY[0..Dec_SqlOutputTypArrayLen] OF SQL_Output;
		sIndex : STRING[8];
		SQLConnect : dbConnect;
		sql_Ident : UDINT;
		SQLDisconnect : dbDisconnect;
		SQLExecute : dbExecuteSql;
		SQLFetchNextRow : dbFetchNextRow;
		n : UINT;
		SQLGetData : dbGetData;
		ColumnCount : UINT;
		SQlColumnCount : dbGetColumnCount;
		SQL_Data : BOOL;
		SQLGetErrorMsg : dbGetErrorMessage;
		internal_error : BOOL;
	END_VAR
END_FUNCTION_BLOCK
