/* Automation Studio generated header file */
/* Do not edit ! */
/* Code_Lib  */

#ifndef _CODE_LIB_
#define _CODE_LIB_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "AsString.h"
		#include "AsTCP.h"
		#include "AsETH.h"
#endif
#ifdef _SG4
		#include "AsString.h"
		#include "AsTCP.h"
		#include "AsETH.h"
#endif
#ifdef _SGC
		#include "AsString.h"
		#include "AsTCP.h"
		#include "AsETH.h"
#endif


/* Constants */
#ifdef _REPLACE_CONST
/*Constant READER_COLOUR_RED not declared. Initialized constants from structured datatypes cannot be used in ANSI C programs / libraries. See Automation Help for details.*/

/*Constant READER_COLOUR_GREEN not declared. Initialized constants from structured datatypes cannot be used in ANSI C programs / libraries. See Automation Help for details.*/

/*Constant READER_COLOUR_BLUE not declared. Initialized constants from structured datatypes cannot be used in ANSI C programs / libraries. See Automation Help for details.*/

 #define READER_TCP_PORT 50010U
 #define READER_MAX_DATA 256U
 #define READER_TCP_TIMEOUT 10U
 #define READER_MAX_DEVICES 3U
 #define READER_MAX_RESEND_COUNT 20U
/*Constant READER_EMPTY_DATA not declared. Initialized constants from structured datatypes cannot be used in ANSI C programs / libraries. See Automation Help for details.*/

 #define cTelNet_cmd_NODATA 0U
 #define cTelNet_cmd_TRIGGER_ON 1U
 #define cTelNet_cmd_CLEAR_READ_BUFFER 9U
 #define cTelNet_MaxCommands 9U
 _WEAK const plcstring TelNet_Command[10][257] = {"<FUNCTION Modifier=\"AcceptData\" Reply=\"SetSingleData\" Check=\"Safe\" />","||>TRIGGER ON\r\n","<FUNCTION Modifier=\"SetSingleData\" Reply=\"On\" Check=\"Safe\"><SENSOR Type=\"OPx\"><SETTINGS Version=\"1\"><CONFIGURATION Id=\"Command\" Version=\"1\"><PARAMETER Id=\"TriggerStart\" Value=\"1\" /></CONFIGURATION></SETTINGS></SENSOR></FUNCTION>","","","","","","",""};
#else



 _GLOBAL_CONST unsigned short READER_TCP_PORT;
 _GLOBAL_CONST unsigned short READER_MAX_DATA;
 _GLOBAL_CONST unsigned long READER_TCP_TIMEOUT;
 _GLOBAL_CONST unsigned char READER_MAX_DEVICES;
 _GLOBAL_CONST unsigned char READER_MAX_RESEND_COUNT;

 _GLOBAL_CONST unsigned char cTelNet_cmd_NODATA;
 _GLOBAL_CONST unsigned char cTelNet_cmd_TRIGGER_ON;
 _GLOBAL_CONST unsigned char cTelNet_cmd_CLEAR_READ_BUFFER;
 _GLOBAL_CONST unsigned char cTelNet_MaxCommands;
 _GLOBAL_CONST plcstring TelNet_Command[10][257];
#endif




/* Datatypes and datatypes of function blocks */
typedef enum enum_SocketState
{	eTCPConnect,
	eTCPSend,
	eTCPRead,
	eTCPDisconnect,
	eTCPError,
	eTCPIoctl,
	eTCPConnectToClient,
	eTCPWaitForCmd,
	eTCPResetPower
} enum_SocketState;

typedef enum e_CloseAllPortState
{	e_DoNothing,
	e_GetOpenIdents,
	e_CloseAllOpenIdents
} e_CloseAllPortState;

typedef struct ReaderInterface_typ
{	plcbit result_Bad;
	plcbit result_Good;
	plcbit read;
	plcbit power;
	plcbit airBlast;
} ReaderInterface_typ;

typedef struct ReaderDecodeData_typ
{	unsigned short PLCStn;
	unsigned short Colour;
	unsigned short BagNumber;
} ReaderDecodeData_typ;

typedef struct Reader_typ
{	enum enum_SocketState SocketState;
	plcstring SendData[257];
	plcstring RecieveData[257];
	plcstring IPAddress[16];
	unsigned char cmd;
	unsigned long Resend_Count;
	unsigned long NoDataRecv_TimeOut;
	unsigned short LastError;
	struct ReaderInterface_typ interface;
	struct ReaderDecodeData_typ decoded_Data;
	plcbit req_Read;
	plcbit read_Fail;
	plcbit read_Complete;
	unsigned char read_TryCount;
	plcbit send_TimeOut;
	unsigned long RetryFailCount;
	enum enum_SocketState LastErrorState;
} Reader_typ;

typedef struct ReaderColourCodes_typ
{	unsigned short value;
	plcstring string[2];
	unsigned char ascii;
} ReaderColourCodes_typ;

typedef struct CloseAllOpenTCPIdents
{
	/* VAR_OUTPUT (analog) */
	unsigned short Status;
	/* VAR (analog) */
	unsigned long SelIdent;
	unsigned long No_OpenIdents;
	struct TcpClose TCP_Close;
	unsigned long Open_TCP_Idents[100];
	struct TcpIoctl TCP_Ioctl;
	enum e_CloseAllPortState e_State;
	unsigned short cNothing;
	/* VAR_INPUT (digital) */
	plcbit Enable;
} CloseAllOpenTCPIdents_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void CloseAllOpenTCPIdents(struct CloseAllOpenTCPIdents* inst);


#ifdef __cplusplus
};
#endif
#endif /* _CODE_LIB_ */

