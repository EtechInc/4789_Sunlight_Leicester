/* Automation Studio generated header file */
/* Do not edit ! */
/* KGstdLib  */

#ifndef _KGSTDLIB_
#define _KGSTDLIB_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "Ethernet.h"
		#include "DataObj.h"
		#include "AsTime.h"
		#include "AsArLog.h"
		#include "AsIODiag.h"
		#include "AsBrStr.h"
#endif
#ifdef _SG4
		#include "Ethernet.h"
		#include "DataObj.h"
		#include "AsTime.h"
		#include "AsArLog.h"
		#include "AsIODiag.h"
		#include "AsBrStr.h"
#endif
#ifdef _SGC
		#include "Ethernet.h"
		#include "DataObj.h"
		#include "AsTime.h"
		#include "AsArLog.h"
		#include "AsIODiag.h"
		#include "AsBrStr.h"
#endif


/* Constants */
#ifdef _REPLACE_CONST
 #define KG_UNIT_US 1U
 #define KG_UNIT_METRIC 0U
 #define KG_MODULE_X67DM1321 4881U
 #define KG_MODULE_X20BT9400 41528U
 #define KG_MODULE_X20IF2772 7973U
 #define KG_MODULE_X20IF1072 7968U
 #define KG_MODULE_4PP065IF231 45243U
 #define KG_MODULE_X20PS2100 7103U
 #define KG_MODULE_X20BR9300 7105U
 #define KG_MODULE_X20DO9322 7066U
 #define KG_MODULE_X20DI9371 7061U
 #define KG_MODULE_NO 0U
 #define KG_CPU_PCT_04 45977U
 #define KG_CPU_PCT_03 42973U
 #define KG_CPU_CTT_11 41660U
 #define KG_CPU_PP65_0571_P74 43364U
 #define KG_CPU_PP420_1043_75 9149U
 #define KG_CPU_X20CP1586 50096U
 #define KG_CPU_X20CP1584 50032U
 #define KG_CPU_X20CP3585 50095U
 #define KG_CPU_X20CP3486 7961U
 #define KG_CPU_X20CP1486 8548U
 #define KG_CPU_X20CP3484_1 43711U
 #define KG_CPU_X20CP3484 9126U
 #define KG_CPU_X20CP1484_1 43710U
 #define KG_CPU_X20CP1484 9125U
 #define KG_RB_LOC_MODE_FROMEND 2U
 #define KG_RB_LOC_MODE_FROMSTART 1U
 #define KG_RB_LOC_MODE_ABSOLUTE 0U
 #define KG_ERR_NULLSTRING 41U
 #define KG_ERR_NULPOINTER 40U
 #define KG_INFO_DO_NEW 31U
 #define KG_ERR_WRONGSIZES 30U
 #define KG_ERR_GETETHPORT_ADRIF 22U
 #define KG_ERR_GETETHPORT_IFSTRING 21U
 #define KG_ERR_RB_SIZE 7U
 #define KG_ERR_RB_LOCPOINTER 6U
 #define KG_ERR_RB_STARTPOINTER 5U
 #define KG_ERR_RB_READPOINTER 4U
 #define KG_ERR_RB_WRITEPOINTER 3U
 #define KG_ERR_RB_POINTER 2U
 #define KG_ERR_RB_NOREAD 1U
 #define KG_AUTH_NOACK 255U
 #define KG_AUTH_ADMIN 4U
 #define KG_AUTH_KGTECHNICIAN 3U
 #define KG_AUTH_TECHNICIAN 2U
 #define KG_AUTH_OPERATOR 1U
 #define KG_AUTH_LOCKED 0U
 #define KG_CMD_NOCOMMAND 0U
 #define KG_CMD_GETLOCK 59998U
 #define KG_CMD_RELEASELOCK 59999U
 #define KG_CMDSTAT_NOTREADY 65529U
 #define KG_CMDSTAT_INVALID_PARAMETER 65530U
 #define KG_CMDSTAT_GETLOCKFAILED 65531U
 #define KG_CMDSTAT_RELEASELOCKFAILED 65532U
 #define KG_CMDSTAT_NOTVALID 65533U
 #define KG_CMDSTAT_BUSY 65535U
 #define KG_MACHINESTATE_OFF 0U
 #define KG_MACHINESTATE_EMERGENCYSTOP 1U
 #define KG_MACHINESTATE_SAFESTOP 2U
 #define KG_MACHINESTATE_FAULT 3U
 #define KG_MACHINESTATE_FAULT_GONE 4U
 #define KG_MACHINESTATE_SERVICE 5U
 #define KG_MACHINESTATE_AUTOMATIC_RUN 6U
 #define KG_MACHINESTATE_STOP 7U
 #define KG_MACHINESTATE_WAIT_AUTOMATIC 8U
 #define KG_MACHINESTATE_WAIT_MAN 9U
 #define KG_MACHINESTATE_WARNING 10U
 #define KG_MACHINESTATE_DRY_HEATING 30U
 #define KG_MACHINESTATE_DRY_COOLDOWN 31U
 #define KG_MACHINESTATE_DRY_CLEAN_FILTER 32U
 #define KG_MACHINESTATE_DRY_AFTERRUN 33U
 #define KG_MACHINESTATE_DRY_FAN_CLEAN 34U
 #define KG_MACHINESTATE_CONV_FWD 40U
 #define KG_MACHINESTATE_CONV_FWD2 41U
 #define KG_MACHINESTATE_CONV_REV 42U
 #define KG_MACHINESTATE_CONV_REV2 43U
 #define KG_MACHINESTATEX_OFF 256U
 #define KG_MACHINESTATEX_EMERGENCYSTOP 257U
 #define KG_MACHINESTATEX_SAFESTOP 258U
 #define KG_MACHINESTATEX_FAULT 259U
 #define KG_MACHINESTATEX_FAULT_GONE 260U
 #define KG_MACHINESTATEX_SERVICE 261U
 #define KG_MACHINESTATEX_AUTOMATIC_RUN 6U
 #define KG_MACHINESTATEX_STOP 263U
 #define KG_MACHINESTATEX_WAIT_AUTOMATIC 520U
 #define KG_MACHINESTATEX_WAIT_MAN 521U
 #define KG_MACHINESTATEX_WARNING 10U
 #define KG_MACHINESTATEX_DRY_HEATING 30U
 #define KG_MACHINESTATEX_DRY_COOLDOWN 31U
 #define KG_MACHINESTATEX_DRY_CLEAN_FILTE 32U
 #define KG_MACHINESTATEX_DRY_AFTERRUN 33U
 #define KG_MACHINESTATEX_DRY_FAN_CLEAN 34U
 #define KG_MACHINESTATEX_CONV_FWD 40U
 #define KG_MACHINESTATEX_CONV_FWD2 41U
 #define KG_MACHINESTATEX_CONV_REV 42U
 #define KG_MACHINESTATEX_CONV_REV2 43U
#else
 _GLOBAL_CONST unsigned char KG_UNIT_US;
 _GLOBAL_CONST unsigned char KG_UNIT_METRIC;
 _GLOBAL_CONST unsigned long KG_MODULE_X67DM1321;
 _GLOBAL_CONST unsigned long KG_MODULE_X20BT9400;
 _GLOBAL_CONST unsigned long KG_MODULE_X20IF2772;
 _GLOBAL_CONST unsigned long KG_MODULE_X20IF1072;
 _GLOBAL_CONST unsigned long KG_MODULE_4PP065IF231;
 _GLOBAL_CONST unsigned long KG_MODULE_X20PS2100;
 _GLOBAL_CONST unsigned long KG_MODULE_X20BR9300;
 _GLOBAL_CONST unsigned long KG_MODULE_X20DO9322;
 _GLOBAL_CONST unsigned long KG_MODULE_X20DI9371;
 _GLOBAL_CONST unsigned long KG_MODULE_NO;
 _GLOBAL_CONST unsigned long KG_CPU_PCT_04;
 _GLOBAL_CONST unsigned long KG_CPU_PCT_03;
 _GLOBAL_CONST unsigned long KG_CPU_CTT_11;
 _GLOBAL_CONST unsigned long KG_CPU_PP65_0571_P74;
 _GLOBAL_CONST unsigned long KG_CPU_PP420_1043_75;
 _GLOBAL_CONST unsigned long KG_CPU_X20CP1586;
 _GLOBAL_CONST unsigned long KG_CPU_X20CP1584;
 _GLOBAL_CONST unsigned long KG_CPU_X20CP3585;
 _GLOBAL_CONST unsigned long KG_CPU_X20CP3486;
 _GLOBAL_CONST unsigned long KG_CPU_X20CP1486;
 _GLOBAL_CONST unsigned long KG_CPU_X20CP3484_1;
 _GLOBAL_CONST unsigned long KG_CPU_X20CP3484;
 _GLOBAL_CONST unsigned long KG_CPU_X20CP1484_1;
 _GLOBAL_CONST unsigned long KG_CPU_X20CP1484;
 _GLOBAL_CONST unsigned char KG_RB_LOC_MODE_FROMEND;
 _GLOBAL_CONST unsigned char KG_RB_LOC_MODE_FROMSTART;
 _GLOBAL_CONST unsigned char KG_RB_LOC_MODE_ABSOLUTE;
 _GLOBAL_CONST unsigned short KG_ERR_NULLSTRING;
 _GLOBAL_CONST unsigned short KG_ERR_NULPOINTER;
 _GLOBAL_CONST unsigned short KG_INFO_DO_NEW;
 _GLOBAL_CONST unsigned short KG_ERR_WRONGSIZES;
 _GLOBAL_CONST unsigned short KG_ERR_GETETHPORT_ADRIF;
 _GLOBAL_CONST unsigned short KG_ERR_GETETHPORT_IFSTRING;
 _GLOBAL_CONST unsigned short KG_ERR_RB_SIZE;
 _GLOBAL_CONST unsigned short KG_ERR_RB_LOCPOINTER;
 _GLOBAL_CONST unsigned short KG_ERR_RB_STARTPOINTER;
 _GLOBAL_CONST unsigned short KG_ERR_RB_READPOINTER;
 _GLOBAL_CONST unsigned short KG_ERR_RB_WRITEPOINTER;
 _GLOBAL_CONST unsigned short KG_ERR_RB_POINTER;
 _GLOBAL_CONST unsigned short KG_ERR_RB_NOREAD;
 _GLOBAL_CONST unsigned char KG_AUTH_NOACK;
 _GLOBAL_CONST unsigned char KG_AUTH_ADMIN;
 _GLOBAL_CONST unsigned char KG_AUTH_KGTECHNICIAN;
 _GLOBAL_CONST unsigned char KG_AUTH_TECHNICIAN;
 _GLOBAL_CONST unsigned char KG_AUTH_OPERATOR;
 _GLOBAL_CONST unsigned char KG_AUTH_LOCKED;
 _GLOBAL_CONST unsigned short KG_CMD_NOCOMMAND;
 _GLOBAL_CONST unsigned short KG_CMD_GETLOCK;
 _GLOBAL_CONST unsigned short KG_CMD_RELEASELOCK;
 _GLOBAL_CONST unsigned short KG_CMDSTAT_NOTREADY;
 _GLOBAL_CONST unsigned short KG_CMDSTAT_INVALID_PARAMETER;
 _GLOBAL_CONST unsigned short KG_CMDSTAT_GETLOCKFAILED;
 _GLOBAL_CONST unsigned short KG_CMDSTAT_RELEASELOCKFAILED;
 _GLOBAL_CONST unsigned short KG_CMDSTAT_NOTVALID;
 _GLOBAL_CONST unsigned short KG_CMDSTAT_BUSY;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_OFF;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_EMERGENCYSTOP;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_SAFESTOP;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_FAULT;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_FAULT_GONE;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_SERVICE;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_AUTOMATIC_RUN;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_STOP;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_WAIT_AUTOMATIC;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_WAIT_MAN;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_WARNING;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_DRY_HEATING;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_DRY_COOLDOWN;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_DRY_CLEAN_FILTER;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_DRY_AFTERRUN;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_DRY_FAN_CLEAN;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_CONV_FWD;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_CONV_FWD2;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_CONV_REV;
 _GLOBAL_CONST unsigned char KG_MACHINESTATE_CONV_REV2;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_OFF;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_EMERGENCYSTOP;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_SAFESTOP;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_FAULT;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_FAULT_GONE;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_SERVICE;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_AUTOMATIC_RUN;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_STOP;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_WAIT_AUTOMATIC;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_WAIT_MAN;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_WARNING;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_DRY_HEATING;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_DRY_COOLDOWN;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_DRY_CLEAN_FILTE;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_DRY_AFTERRUN;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_DRY_FAN_CLEAN;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_CONV_FWD;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_CONV_FWD2;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_CONV_REV;
 _GLOBAL_CONST unsigned short KG_MACHINESTATEX_CONV_REV2;
#endif




/* Datatypes and datatypes of function blocks */
typedef enum kgMachineState_enum
{	msOFF = 0,
	msEmergency_Stop = 1,
	msSafe = 2,
	msFault = 3,
	msFaultWaitQuit = 4,
	msService = 5,
	msAutomatic = 6,
	msStop = 7,
	msStandby = 8,
	msStandbyWaitQuit = 9,
	msWarning = 10,
	msAuto_Dryer_Heating = 30,
	msAuto_Dryer_Cooldown = 31,
	msAuto_Dryer_Clean_Filter = 32,
	msAuto_Dryer_Afterrung = 33,
	msAuto_Dryer_Cleaningfan_Running = 34,
	msAuto_Conv_Fwd = 40,
	msAuto_Conv_Fwd2nd = 41,
	msAuto_Conv_Rev = 42,
	msAuto_Conv_Rev2nd = 43
} kgMachineState_enum;

typedef enum kgMachinetypeW3_typ
{	kgW3LOADSYSTEM = 0,
	kgW3WASHER = 10,
	kgW3WETSHUTTLE = 30,
	kgW3EXTRACTOR = 40,
	kgW3EXTRACTOR2 = 50,
	kgW3CONVEYOR = 60,
	kgW3DRYER = 70,
	kgW3SHAKER = 110,
	kgW3SINGLEWASHER = 120,
	kgW3PROCESS = 150,
	kgW3IFBOX = 160,
	kgW3DEVICE = 180,
	kgW3SERVER = 202,
	kgW3PCSTATION = 210,
	kgW3BIT = 230,
	kgW3NOTDEFINED = 255
} kgMachinetypeW3_typ;

typedef struct KG_CmdResponse_typ
{	unsigned short wCmdStatus;
	unsigned short wLockStatus;
} KG_CmdResponse_typ;

typedef struct KG_Command_typ
{	unsigned short wCommand;
	unsigned long lData0;
	unsigned long lData1;
} KG_Command_typ;

typedef struct KG_CmdRequest_typ
{	struct KG_Command_typ Command;
} KG_CmdRequest_typ;

typedef struct KG_Cmd_typ
{	struct KG_CmdResponse_typ Response;
	struct KG_CmdRequest_typ Request;
} KG_Cmd_typ;

typedef struct Stat_typ
{	unsigned short wStatus;
	plcstring sStatus[128];
} Stat_typ;

typedef struct KG_ErrLog_typ
{	unsigned short wErrorNo;
	unsigned long lAttr1;
	unsigned long lAttr2;
} KG_ErrLog_typ;

typedef struct kgGetEthPort
{
	/* VAR_INPUT (analog) */
	unsigned long adrIF;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	unsigned char _bStep;
	struct DiagCreateInfo DiagCreateInfo_CPU;
	struct DiagGetNumInfo DiagGetNumInfo_CPU;
	struct DiagDisposeInfo DiagDisposeInfo_CPU;
	/* VAR_INPUT (digital) */
	plcbit enable;
	/* VAR (digital) */
	plcbit _xReady;
} kgGetEthPort_typ;

typedef struct kgNextBatchNoLong
{
	/* VAR_INPUT (analog) */
	unsigned char Group;
	/* VAR_OUTPUT (analog) */
	unsigned short Status;
	unsigned long BatchNo;
	/* VAR (analog) */
	unsigned char _bOldYear;
	unsigned char _bOldMonth;
	unsigned char _bOldDay;
	struct DTStructureGetTime DTStrucGetTime;
	struct DTStructure _dtStruc;
	unsigned char _bGroup;
	unsigned short _wNo;
	unsigned char _bStep;
	struct DatObjInfo _diBatchNo;
	unsigned long* _pBatchNo;
	struct DatObjWrite _dwBatchNo;
	struct DatObjCreate _dcBatchNo;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	/* VAR (digital) */
	plcbit zzEdge00000;
} kgNextBatchNoLong_typ;

typedef unsigned char MAC_type[6];

typedef struct kgGetMacAdress
{
	/* VAR_OUTPUT (analog) */
	MAC_type Mac;
	unsigned short Status;
	/* VAR (analog) */
	struct kgGetEthPort _gep;
	plcstring _sIF[24];
	struct ETHxinfo _exi;
	MAC_type _bMAC;
	/* VAR_INPUT (digital) */
	plcbit Enable;
} kgGetMacAdress_typ;

typedef unsigned char GUID_type[16];

typedef struct kgGetBatchNoUnique
{
	/* VAR_INPUT (analog) */
	MAC_type Mac;
	/* VAR_OUTPUT (analog) */
	GUID_type BatchNo;
	unsigned short Status;
	/* VAR (analog) */
	struct DTGetTime DTGetTime_0;
	plctime _time;
	/* VAR_INPUT (digital) */
	plcbit Enable;
} kgGetBatchNoUnique_typ;

typedef struct kgUSINT16toGUID
{
	/* VAR_INPUT (analog) */
	unsigned char usintarray[16];
	/* VAR_OUTPUT (analog) */
	GUID_type GUID;
} kgUSINT16toGUID_typ;

typedef struct kgGUIDtoSTRING
{
	/* VAR_INPUT (analog) */
	GUID_type GUID;
	/* VAR_OUTPUT (analog) */
	plcstring sOut[37];
	/* VAR (analog) */
	unsigned char (*usintarray)[16];
	unsigned char (*_StringArray)[37];
	signed short _Ptr;
	signed short _i;
	unsigned char _b;
} kgGUIDtoSTRING_typ;

typedef struct kgLogLine
{
	/* VAR_INPUT (analog) */
	plcstring sLoglineTemplate[128];
	unsigned long lAttr1;
	unsigned long lAttr2;
	/* VAR_OUTPUT (analog) */
	plcstring sLogline[128];
	unsigned long pLogline;
	/* VAR (analog) */
	signed short _iPos1;
	signed short _iPos2;
	signed short _iCrs;
	plcstring sValue[12];
	plcstring _sTemp[128];
} kgLogLine_typ;

typedef struct kgArLogWrite
{
	/* VAR_INPUT (analog) */
	unsigned long ident;
	unsigned long logLevel;
	unsigned long errornr;
	plcstring text[128];
	unsigned long var1;
	unsigned long var2;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	struct AsArLogWrite _AsArLogWrite;
	struct kgLogLine _kgLogLine;
	/* VAR_INPUT (digital) */
	plcbit enable;
} kgArLogWrite_typ;

typedef struct kgRBinsert
{
	/* VAR_INPUT (analog) */
	unsigned long pEntry;
	unsigned long lLenEntry;
	unsigned long doIdent;
	unsigned long doLen;
	/* VAR_OUTPUT (analog) */
	unsigned short wStatus;
	/* VAR_IN_OUT (analog and digital) */
	unsigned short* wPtrStart;
	unsigned short* wPtrWrite;
	unsigned short* wPtrRead;
	/* VAR (analog) */
	struct DatObjWrite doWrite;
	unsigned long _lRBlen;
	unsigned short _wPtrMax;
} kgRBinsert_typ;

typedef struct kgRBread
{
	/* VAR_INPUT (analog) */
	unsigned long pEntry;
	unsigned long lLenEntry;
	unsigned long doIdent;
	unsigned long doLen;
	unsigned short wPtrStart;
	unsigned short wPtrWrite;
	/* VAR_OUTPUT (analog) */
	unsigned short wStatus;
	/* VAR_IN_OUT (analog and digital) */
	unsigned short* wPtrRead;
	/* VAR (analog) */
	struct DatObjRead doRead;
	unsigned long _lRBlen;
	unsigned short _wPtrMax;
} kgRBread_typ;

typedef struct kgRBloc
{
	/* VAR_INPUT (analog) */
	unsigned long pEntry;
	unsigned long lLenEntry;
	unsigned long doIdent;
	unsigned long doLen;
	unsigned short wPtrStart;
	unsigned short wPtrWrite;
	unsigned short wPtrLoc;
	unsigned char bMode;
	/* VAR_OUTPUT (analog) */
	unsigned short wStatus;
	/* VAR (analog) */
	struct DatObjRead doRead;
	unsigned long _lRBlen;
	unsigned short _wPtrMax;
	unsigned short _wPtrLoc;
	unsigned short _wActLen;
} kgRBloc_typ;

typedef struct kgRBcreate
{
	/* VAR_INPUT (analog) */
	plcstring sName[11];
	unsigned char bMemType;
	unsigned short wCntEntry;
	unsigned long lLenEntry;
	/* VAR_OUTPUT (analog) */
	unsigned long doIdent;
	unsigned long doLen;
	unsigned short wStatus;
	unsigned long pDatObjMem;
	/* VAR_IN_OUT (analog and digital) */
	unsigned short* wPtrWrite;
	unsigned short* wPtrRead;
	unsigned short* wPtrStart;
	/* VAR (analog) */
	struct DatObjInfo _diRB;
	struct DatObjCreate _dcRB;
	struct DatObjDelete _ddRB;
} kgRBcreate_typ;

typedef struct kgRBbulkloc
{
	/* VAR_INPUT (analog) */
	unsigned long pEntry;
	unsigned long lLenEntry;
	unsigned short wCntEntry;
	unsigned long doIdent;
	unsigned long doLen;
	unsigned short wPtrStart;
	unsigned short wPtrWrite;
	unsigned short wPtrLoc;
	unsigned char bMode;
	/* VAR_OUTPUT (analog) */
	unsigned short wStatus;
	unsigned short wCntLoc;
	/* VAR (analog) */
	unsigned long _lRBlen;
	unsigned short _wPtrMax;
	unsigned short _wActLen;
	unsigned short _wPtrLoc;
	unsigned short _i;
	struct DatObjRead _doRead;
} kgRBbulkloc_typ;

typedef struct kgInitBatchNoLong
{
	/* VAR_OUTPUT (analog) */
	unsigned short Status;
	/* VAR (analog) */
	unsigned char _bStep;
	struct DatObjInfo _diBatchNo;
	struct DatObjCreate _dcBatchNo;
	unsigned long _BatchNo;
	/* VAR_INPUT (digital) */
	plcbit Enable;
} kgInitBatchNoLong_typ;

typedef struct kgCheckDo
{
	/* VAR_INPUT (analog) */
	unsigned long pName;
	unsigned long MinLen;
	unsigned long NomLen;
	unsigned char MemType;
	/* VAR_OUTPUT (analog) */
	unsigned long doId;
	unsigned long doMem;
	unsigned long doLen;
	unsigned short Status;
	/* VAR (analog) */
	unsigned short _wStep;
	struct DatObjInfo _doInfo;
	struct DatObjDelete _doDelete;
	struct DatObjCreate _doCreate;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	plcbit Create;
	/* VAR (digital) */
	plcbit _xReady;
} kgCheckDo_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void kgGetEthPort(struct kgGetEthPort* inst);
_BUR_PUBLIC void kgNextBatchNoLong(struct kgNextBatchNoLong* inst);
_BUR_PUBLIC void kgGetMacAdress(struct kgGetMacAdress* inst);
_BUR_PUBLIC void kgGetBatchNoUnique(struct kgGetBatchNoUnique* inst);
_BUR_PUBLIC void kgUSINT16toGUID(struct kgUSINT16toGUID* inst);
_BUR_PUBLIC void kgGUIDtoSTRING(struct kgGUIDtoSTRING* inst);
_BUR_PUBLIC void kgLogLine(struct kgLogLine* inst);
_BUR_PUBLIC void kgArLogWrite(struct kgArLogWrite* inst);
_BUR_PUBLIC void kgRBinsert(struct kgRBinsert* inst);
_BUR_PUBLIC void kgRBread(struct kgRBread* inst);
_BUR_PUBLIC void kgRBloc(struct kgRBloc* inst);
_BUR_PUBLIC void kgRBcreate(struct kgRBcreate* inst);
_BUR_PUBLIC void kgRBbulkloc(struct kgRBbulkloc* inst);
_BUR_PUBLIC void kgInitBatchNoLong(struct kgInitBatchNoLong* inst);
_BUR_PUBLIC void kgCheckDo(struct kgCheckDo* inst);
_BUR_PUBLIC unsigned short kgitoa_udint(unsigned long num, plcstring* str);
_BUR_PUBLIC unsigned short kgatoi_udint(plcstring* str, unsigned long* num);
_BUR_PUBLIC unsigned short kgatoi_uint(plcstring* str, unsigned short* num);
_BUR_PUBLIC unsigned long kgBatchNoToUDINT(GUID_type GUID);
_BUR_PUBLIC plcbit kgGUIDisZero(GUID_type GUID);
_BUR_PUBLIC unsigned char kgGetLineNumberW3(unsigned char Station, unsigned long pMachineType);
_BUR_PUBLIC unsigned char kgGetMachineAdressW3(unsigned char LineNumber, enum kgMachinetypeW3_typ MachineType);
#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_PUBLIC unsigned char kgXOR(unsigned long pMem, unsigned short wLen, unsigned char bInit, unsigned long pStatus, unsigned long pWordResult);
#else
_BUR_PUBLIC unsigned char kgXOR(unsigned long pMem, unsigned short wLen, unsigned char bInit, unsigned long pStatus, unsigned long pWordResult);
#endif

_BUR_PUBLIC float kgUnitconfREALtoDisplay(float Value, unsigned short Unit, unsigned char LocUnit, unsigned long pDigits, unsigned long pUnit);
_BUR_PUBLIC float kgUnitconfDisplayToREAL(float Display, unsigned short Unit, unsigned char LocUnit);
_BUR_PUBLIC unsigned short kgGetProgdata(plcstring* sBaseName, unsigned short wProgNo, unsigned short wProgMaxNo, unsigned long pMem, unsigned long lSize);
_BUR_PUBLIC plcbit kgSignalLight(plcbit xClock, unsigned short wStatus, plcbit* xGreen, plcbit* xYellow, plcbit* xRed);


#ifdef __cplusplus
};
#endif
#endif /* _KGSTDLIB_ */

