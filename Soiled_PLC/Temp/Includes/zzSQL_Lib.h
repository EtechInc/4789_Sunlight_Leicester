/* Automation Studio generated header file */
/* Do not edit ! */
/* zzSQL_Lib 1.00.1 */

#ifndef _ZZSQL_LIB_
#define _ZZSQL_LIB_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _zzSQL_Lib_VERSION
#define _zzSQL_Lib_VERSION 1.00.1
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "standard.h"
		#include "runtime.h"
		#include "AsTime.h"
		#include "AsString.h"
		#include "AsDb.h"
		#include "AsIecCon.h"
#endif
#ifdef _SG4
		#include "standard.h"
		#include "runtime.h"
		#include "AsTime.h"
		#include "AsString.h"
		#include "AsDb.h"
		#include "AsIecCon.h"
#endif
#ifdef _SGC
		#include "standard.h"
		#include "runtime.h"
		#include "AsTime.h"
		#include "AsString.h"
		#include "AsDb.h"
		#include "AsIecCon.h"
#endif


/* Constants */
#ifdef _REPLACE_CONST
 #define Dec_SqlOutputTypArrayLen 19U
 #define dec_c_MaxSQL 99U
 #define cSQLType_WriteOnly 0U
 #define cSQLType_ReadWrite 1U
 #define cSQLType_ReadOnly 2U
 #define SQL_Port ":1433"
 #define cSQL_Comma_Space ", "
 #define cSQL_Space " "
/*Constant cEmptySQlReq not declared. Initialized constants from structured datatypes cannot be used in ANSI C programs / libraries. See Automation Help for details.*/

 #define cSQLParam_Input 0U
 #define cSQLParam_Output 1U
 _WEAK const plcstring cSqluspCommands[20][51] = {"EXEC Supertrack.uspWriteSequenceCount","","EXEC Supertrack.uspBatchCreate","EXEC Supertrack.uspBatchUpdate","EXEC Supertrack.uspBatchVerify","EXEC Supertrack.uspBatchVerifyWithDelete","","EXEC Supertrack.uspBatchVerifyDeleteRetState","EXEC Supertrack.uspPicDBGetFTPPathPLC","EXEC Supertrack.uspzzGetNames","EXEC Supertrack.uspMaintenanceBagCount","EXEC Supertrack.uspMaintenanceBagGetState","EXEC Supertrack.uspMaintenanceBagCountReplyState","EXEC Supertrack.uspzzGetMultiNames","","","","","",""};
 #define cSQLReq_WriteSeqCount 0U
 #define cSQLReq_BatchCreate 2U
 #define cSQLReq_BatchUpdate 3U
 #define cSQLReq_BatchVerify 4U
 #define cSQLReq_BatchVerifyWithDelete 5U
 #define cSQLReq_BatchVerifyDeleteReState 7U
 #define cSQLReq_PicDBGetFTPPathPLC 8U
 #define cSQLReq_zzGetNames 9U
 #define cSQLReq_BagMaintCount 10U
 #define cSQLReq_BagMaintGetState 11U
 #define cSQLReq_BagMaintCount_R_State 12U
 #define cSQLReq_zzGetMultiNames 13U
 #define cSQL_BatchVerfiy_Match 1U
 #define cSQL_BatchVerfiy_MisMatch 2U
 #define cSQL_BatchVerfiy_DoesntExist 3U
#else
 _GLOBAL_CONST unsigned char Dec_SqlOutputTypArrayLen;
 _GLOBAL_CONST unsigned char dec_c_MaxSQL;
 _GLOBAL_CONST unsigned char cSQLType_WriteOnly;
 _GLOBAL_CONST unsigned char cSQLType_ReadWrite;
 _GLOBAL_CONST unsigned char cSQLType_ReadOnly;
 _GLOBAL_CONST plcstring SQL_Port[6];
 _GLOBAL_CONST plcstring cSQL_Comma_Space[3];
 _GLOBAL_CONST plcstring cSQL_Space[2];

 _GLOBAL_CONST unsigned char cSQLParam_Input;
 _GLOBAL_CONST unsigned char cSQLParam_Output;
 _GLOBAL_CONST plcstring cSqluspCommands[20][51];
 _GLOBAL_CONST unsigned char cSQLReq_WriteSeqCount;
 _GLOBAL_CONST unsigned char cSQLReq_BatchCreate;
 _GLOBAL_CONST unsigned char cSQLReq_BatchUpdate;
 _GLOBAL_CONST unsigned char cSQLReq_BatchVerify;
 _GLOBAL_CONST unsigned char cSQLReq_BatchVerifyWithDelete;
 _GLOBAL_CONST unsigned char cSQLReq_BatchVerifyDeleteReState;
 _GLOBAL_CONST unsigned char cSQLReq_PicDBGetFTPPathPLC;
 _GLOBAL_CONST unsigned char cSQLReq_zzGetNames;
 _GLOBAL_CONST unsigned char cSQLReq_BagMaintCount;
 _GLOBAL_CONST unsigned char cSQLReq_BagMaintGetState;
 _GLOBAL_CONST unsigned char cSQLReq_BagMaintCount_R_State;
 _GLOBAL_CONST unsigned char cSQLReq_zzGetMultiNames;
 _GLOBAL_CONST unsigned char cSQL_BatchVerfiy_Match;
 _GLOBAL_CONST unsigned char cSQL_BatchVerfiy_MisMatch;
 _GLOBAL_CONST unsigned char cSQL_BatchVerfiy_DoesntExist;
#endif




/* Datatypes and datatypes of function blocks */
typedef enum SQL_Enum
{	eError,
	eConnect,
	eReadData,
	eDisconnect,
	eExecute,
	eGetData,
	eColumnCount,
	eGetAffectedRow,
	eIdle
} SQL_Enum;

typedef struct zzSQLGetNameTyp
{	unsigned short BagNumber;
	unsigned long Prg;
	plcstring PrgLong[9];
	plcstring PrgName[33];
	unsigned long Cat;
	plcstring CatLong[9];
	plcstring CatName[33];
	unsigned long Cus;
	plcstring CusLong[9];
	plcstring CusName[33];
} zzSQLGetNameTyp;

typedef struct SQL_Parameter
{	unsigned char Type;
	plcstring Param_String[33];
} SQL_Parameter;

typedef plcstring SQL_Output[33];

typedef struct SQLRequest_typ
{	unsigned char SQLType;
	unsigned char SQL_usp;
	unsigned long RequestID;
	plcbit Complete;
	unsigned char NoOfParams;
	struct SQL_Parameter Parameters[20];
	plcbit Request;
	SQL_Output OutputData[20];
	plcbit Fail;
} SQLRequest_typ;

typedef struct SQLLogin_typ
{	plcstring Path[65];
	plcstring DBName[65];
	plcstring User[65];
	plcstring Password[65];
} SQLLogin_typ;

typedef struct SQL_Typ
{	struct SQLLogin_typ Login;
} SQL_Typ;

typedef struct SQL_Write
{
	/* VAR_INPUT (analog) */
	unsigned long pServerName;
	unsigned long pUserName;
	unsigned long pPassword;
	unsigned long pDatabaseName;
	unsigned long pSQl_Cmd_String;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short sql_Error;
	/* VAR (analog) */
	enum SQL_Enum SQL;
	struct dbConnect SQLConnect;
	unsigned long sql_Ident;
	unsigned short sql_Status;
	struct dbExecuteSql SQLExecute;
	struct dbDisconnect SQLDisconnect;
	struct dbGetErrorMessage SQLGetErrorMsg;
	plcstring SQL_Error_Msg[101];
	/* VAR_INPUT (digital) */
	plcbit enable;
	/* VAR (digital) */
	plcbit internal_error;
} SQL_Write_typ;

typedef struct SQL_Read_Write
{
	/* VAR_INPUT (analog) */
	unsigned long pServerName;
	unsigned long pUserName;
	unsigned long pPassword;
	unsigned long pDatabaseName;
	unsigned long pData;
	unsigned long pSQl_Cmd_String;
	/* VAR_OUTPUT (analog) */
	unsigned short sql_Status;
	unsigned short sql_Error;
	plcstring SQL_Error_Msg[101];
	unsigned short status;
	/* VAR (analog) */
	enum SQL_Enum SQL;
	SQL_Output Data[20];
	plcstring sIndex[9];
	struct dbConnect SQLConnect;
	unsigned long sql_Ident;
	struct dbDisconnect SQLDisconnect;
	struct dbExecuteSql SQLExecute;
	struct dbFetchNextRow SQLFetchNextRow;
	unsigned short n;
	struct dbGetData SQLGetData;
	unsigned short ColumnCount;
	struct dbGetColumnCount SQlColumnCount;
	struct dbGetErrorMessage SQLGetErrorMsg;
	/* VAR_INPUT (digital) */
	plcbit enable;
	/* VAR (digital) */
	plcbit SQL_Data;
	plcbit internal_error;
} SQL_Read_Write_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void SQL_Write(struct SQL_Write* inst);
_BUR_PUBLIC void SQL_Read_Write(struct SQL_Read_Write* inst);


#ifdef __cplusplus
};
#endif
#endif /* _ZZSQL_LIB_ */

