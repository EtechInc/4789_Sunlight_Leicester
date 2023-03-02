/* Automation Studio generated header file */
/* Do not edit ! */
/* KanLinkLib 0.94.5 */

#ifndef _KANLINKLIB_
#define _KANLINKLIB_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _KanLinkLib_VERSION
#define _KanLinkLib_VERSION 0.94.5
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "DataObj.h"
		#include "AsString.h"
		#include "sys_lib.h"
		#include "AsARCfg.h"
		#include "AsETH.h"
		#include "brsystem.h"
		#include "AsArLog.h"
		#include "AsUDP.h"
		#include "AsIODiag.h"
		#include "KGstdLib.h"
		#include "KL_UserLib.h"
#endif
#ifdef _SG4
		#include "DataObj.h"
		#include "AsString.h"
		#include "sys_lib.h"
		#include "AsARCfg.h"
		#include "AsETH.h"
		#include "brsystem.h"
		#include "AsArLog.h"
		#include "AsUDP.h"
		#include "AsIODiag.h"
		#include "KGstdLib.h"
		#include "KL_UserLib.h"
#endif
#ifdef _SGC
		#include "DataObj.h"
		#include "AsString.h"
		#include "sys_lib.h"
		#include "AsARCfg.h"
		#include "AsETH.h"
		#include "brsystem.h"
		#include "AsArLog.h"
		#include "AsUDP.h"
		#include "AsIODiag.h"
		#include "KGstdLib.h"
		#include "KL_UserLib.h"
#endif


/* Constants */
#ifdef _REPLACE_CONST
 #define MagicNr 2976579765U
 #define PreHeaderSize 8U
 #define HeaderSize 16U
 #define KL_optReqManually 32768U
 #define KL_optOnReqCall 16384U
 #define KLLIB_MSG_NULL_POINTER 60000U
 #define KLLIB_MSG_NOT_ENOUGH_MEM 60001U
 #define KLLIB_MSG_VAR_ERROR 60002U
#else
 _GLOBAL_CONST unsigned long MagicNr;
 _GLOBAL_CONST unsigned long PreHeaderSize;
 _GLOBAL_CONST unsigned long HeaderSize;
 _GLOBAL_CONST unsigned short KL_optReqManually;
 _GLOBAL_CONST unsigned short KL_optOnReqCall;
 _GLOBAL_CONST unsigned short KLLIB_MSG_NULL_POINTER;
 _GLOBAL_CONST unsigned short KLLIB_MSG_NOT_ENOUGH_MEM;
 _GLOBAL_CONST unsigned short KLLIB_MSG_VAR_ERROR;
#endif




/* Datatypes and datatypes of function blocks */
#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct KLreq1000_BTH_typ
{	plcbit xHready;
	plcbit xHreadyForLoad;
	plcbit xHbatchReceived;
	plcbit xHtransferzoneOccupied;
	plcbit xHreqCtrlTransfer;
	plcbit xHtransferRunning;
	plcbit xHwaitingForTransfer;
	plcbit xHshiftBatches;
	unsigned short wHstate;
	plcbit xHcmdAutomatic;
	plcbit xHreserve[5];
	unsigned short wTimeToReadyForLoad;
	unsigned short wRemainProctime;
} KLreq1000_BTH_typ;
#else
/* Data type KLreq1000_BTH_typ not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct PartBatchData_typ
{	plcstring sCustomNo[12];
	unsigned short wCustomWeight;
} PartBatchData_typ;

typedef struct BatchData_typ
{	plcdt dtTimeStamp;
	unsigned char bTypeBatchNo;
	unsigned char bCntCustomers;
	unsigned short wTotalWeight;
	unsigned char bBatchNo[16];
	plcstring sCategory[12];
	unsigned short utfMark[32];
	unsigned char bCustom[12];
	struct PartBatchData_typ PartBatch[8];
} BatchData_typ;

typedef struct KLresp1000_BTH_typ
{	plcbit xHsCmdFinishProcess;
	plcbit xHsReqForUnload;
	plcbit xHsUnloading;
	plcbit xHsReqCtrlTransfer;
	plcbit xHsTransferRunning;
	plcbit xHsRes;
	unsigned short wState;
	plcbit xCmdAuto;
	plcbit xCmdStartProcess;
	plcbit xHsDataValid;
	plcbit xHsRes2[3];
	unsigned short wCntLoads;
	struct BatchData_typ BatchData;
} KLresp1000_BTH_typ;

typedef struct KL_BTxf_typ
{	struct KLreq1000_BTH_typ Req;
	struct KLresp1000_BTH_typ Resp;
} KL_BTxf_typ;

typedef struct KLreq1002_Info_typ
{	unsigned short wCntPositions;
	unsigned short wNoOfPosition[6];
	unsigned short wRes;
} KLreq1002_Info_typ;

typedef struct KLresp1002_Info_typ
{	unsigned short wCntPositions;
	unsigned short wNoOfPositions[6];
	unsigned short wRes;
	struct BatchData_typ BatchData[6];
} KLresp1002_Info_typ;

typedef struct KL_BI_typ
{	struct KLreq1002_Info_typ Req;
	struct KLresp1002_Info_typ Resp;
} KL_BI_typ;

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct KLresp30010_SH_typ
{	plcstring MachineNo[16];
	unsigned short State;
	unsigned short RouteState[20];
	unsigned short WetAccState[10];
	unsigned short WetAccNiveau_mm[10];
	unsigned short WetAccNiveau_rel[10];
	unsigned short WetAccNiveau_Liter[10];
	unsigned short WetAccTemp[10];
	unsigned short WetAccMinLvlOK[10];
	unsigned short WetAccMaxLvlOK[10];
} KLresp30010_SH_typ;
#else
/* Data type KLresp30010_SH_typ not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct KLreq30010_SH_typ
{	plcstring MachineNo[16];
	unsigned short State;
	plcbit Handshake;
	unsigned char Route[20];
	unsigned short TankTemp[10];
} KLreq30010_SH_typ;
#else
/* Data type KLreq30010_SH_typ not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct KL_SiloData_typ
{	struct KLreq30010_SH_typ Req;
	struct KLresp30010_SH_typ Resp;
} KL_SiloData_typ;

typedef struct KL_Key_typ
{	unsigned long IP_Key;
	unsigned long CmdKey;
} KL_Key_typ;

typedef struct KL_ServerPar_typ
{	plcstring Name[16];
	unsigned short Adr;
	unsigned short Cmd;
	unsigned short CmdOpt;
	unsigned short Area;
	unsigned short TimeOut;
	plcstring sReq[81];
	plcstring sResp[81];
	plcbit AdvMode;
	plcstring AdrAdvMode[17];
} KL_ServerPar_typ;

typedef struct KL_ClientPar_typ
{	plcstring Name[16];
	unsigned short Adr;
	unsigned short Cmd;
	unsigned short CmdOpt;
	unsigned short Area;
	unsigned short CycleTime;
	plcstring sReq[81];
	plcstring sResp[81];
	plcbit AdvMode;
	plcstring AdrAdvMode[17];
} KL_ClientPar_typ;

typedef struct KL_Parameter_typ
{	struct KL_ServerPar_typ Server[11];
	struct KL_ClientPar_typ Client[11];
	unsigned long adrUserTyp;
} KL_Parameter_typ;

typedef struct IF_ServerOutTyp
{	plcbit xConnected;
	unsigned short iCfgState;
	unsigned long tag;
} IF_ServerOutTyp;

typedef struct IF_Server_typ
{	unsigned short iState;
	struct IF_ServerOutTyp out;
	unsigned long tag;
} IF_Server_typ;

typedef struct IF_ClientOut_typ
{	plcbit xConnected;
	unsigned long recTag;
} IF_ClientOut_typ;

typedef struct IF_Client_typ
{	struct IF_ClientOut_typ out;
	unsigned short iState;
	unsigned long tag;
} IF_Client_typ;

typedef struct IF_KL_Control_in_typ
{	plcbit xRun;
	plcbit xRestart;
} IF_KL_Control_in_typ;

typedef struct IFhlKanLink_Typ
{	struct IF_KL_Control_in_typ in;
	struct IF_Server_typ Server[11];
	struct IF_Client_typ Client[11];
	struct KL_Parameter_typ Parameter;
	plcbit xError;
} IFhlKanLink_Typ;

typedef struct IF_KL_Control_out_typ
{	unsigned short iError;
	unsigned short iServerError[11];
	unsigned short iClientError[11];
	unsigned short iStep;
} IF_KL_Control_out_typ;

typedef struct IFhlKLVisuIN_typ
{	signed short cmdNr;
	signed short cmdTag;
	unsigned short iServerNr;
	unsigned short iCltNr;
} IFhlKLVisuIN_typ;

typedef struct KL_ServerListe_typ
{	unsigned short Cmd;
	unsigned short CmdOpt;
	unsigned short Adr;
	unsigned short Area;
	unsigned long pRespStr;
	unsigned long pReqStr;
	unsigned long AdrDataReq;
	unsigned long ReqLength;
	unsigned long AdrDataResp;
	unsigned long RespLength;
	struct KL_Key_typ Key;
	plcbit xConnected;
	unsigned short iConnectionTimer;
	unsigned long adrParameter;
	plcstring sServerIPAdr[17];
	plcstring sClientIPAdr[17];
	unsigned short iReqCnt;
	plcbit xReqManually;
	unsigned short iReqID;
	unsigned short iCfgStatus;
	unsigned long adrInterface;
	plcbit xActiv;
	unsigned long tag;
} KL_ServerListe_typ;

typedef struct KL_ClientListe_typ
{	unsigned short RecCmd;
	unsigned short Cmd;
	unsigned short CmdOpt;
	unsigned short Adr;
	unsigned short Area;
	struct KL_Key_typ Key;
	unsigned long pResp;
	unsigned long pReq;
	unsigned long AdrDataReq;
	unsigned long AdrDataResp;
	unsigned long ReqLength;
	unsigned long RespLength;
	unsigned short TimeOut;
	unsigned short TimeOutLeft;
	plcbit xError;
	unsigned short iCycleWait;
	unsigned short iCycleTime;
	plcbit xDataRec;
	unsigned short iReqId;
	plcstring sClientAdr[17];
	plcbit xReqPending;
	unsigned short iTimeOutCnt;
	plcbit xActiv;
	unsigned short iCnt;
	plcbit xConnected;
	unsigned short iTimeOutCnt_Summe;
	unsigned long adrInterface;
	unsigned long adrParameter;
	unsigned long recTag;
} KL_ClientListe_typ;

typedef struct IFhlKLVisuOUT_typ
{	unsigned short step;
	unsigned short udpOpenStatus;
	unsigned short udpSendStatus;
	unsigned short udpRecStatus;
	unsigned short iCycleTime;
	unsigned long udNetId;
	struct KL_ServerListe_typ server;
	struct KL_ClientListe_typ client;
	signed short cmdResp;
} IFhlKLVisuOUT_typ;

typedef struct IFhlKLVisu_typ
{	struct IFhlKLVisuIN_typ in;
	struct IFhlKLVisuOUT_typ out;
} IFhlKLVisu_typ;

typedef struct udp_typ
{	struct UdpOpen open;
	struct UdpSend send;
	struct UdpRecv rec;
	struct UdpClose close;
} udp_typ;

typedef struct udint_array_typ
{	unsigned char a;
	unsigned char b;
	unsigned char c;
	unsigned char d;
} udint_array_typ;

typedef struct PreHeader_Typ
{	unsigned long Magic;
	unsigned short HeaderVersion;
	unsigned short Tag;
} PreHeader_Typ;

typedef struct HeaderV1_Typ
{	unsigned short ReqID;
	unsigned short dataFormat;
	unsigned short Command;
	unsigned short Length;
	unsigned short CmdNr;
	unsigned short CmdTag;
	unsigned long Tag;
} HeaderV1_Typ;

typedef struct KLresp0_MetaInfo_typ
{	plcstring KanLink_Hostname[16];
	plcstring Machine_type[16];
	plcstring SoftwareNo[16];
	plcstring SoftwareVersion[16];
	plcdt DataModelTimeStamp;
	unsigned short DataModelVersion;
	unsigned short TimeZone;
	unsigned short SommerTime;
} KLresp0_MetaInfo_typ;

typedef struct KL_Error_Frame_typ
{	unsigned short Version;
	unsigned short ErrorNumber;
	plcstring ErrorText[64];
} KL_Error_Frame_typ;

typedef struct KLreq2_Ping_typ
{	plcstring KanLink_Hostname[16];
} KLreq2_Ping_typ;

typedef struct KLresp2_Ping_typ
{	plcstring KanLink_Hostname[16];
	unsigned char FrameVersion;
} KLresp2_Ping_typ;

typedef struct ServerDataTyp
{	unsigned char receive_data[8192];
	unsigned char send_data[8192];
	struct PreHeader_Typ PreHeaderSend;
	struct PreHeader_Typ PreHeaderRec;
	struct HeaderV1_Typ HeaderV1Send;
	struct HeaderV1_Typ HeaderV1Rec;
	struct KLresp0_MetaInfo_typ MetaInfoResp;
	struct KL_Error_Frame_typ ErrorFrame;
	struct KLreq2_Ping_typ PingReq;
	struct KLresp2_Ping_typ PingResp;
	plcstring IPAdr[17];
} ServerDataTyp;

typedef struct KLLib_Init
{
	/* VAR_INPUT (analog) */
	unsigned long adrServer;
	unsigned long adrInterface;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	signed short _bStep;
	struct KanLink_FB* _dServer;
	struct kgGetEthPort GetEthPort_0;
	struct CfgGetIPAddr CfgGetIPAddr_0;
	struct RTInfo RTInfo_0;
	signed short _i;
	struct IFhlKanLink_Typ* _dIf;
	/* VAR_INPUT (digital) */
	plcbit enable;
} KLLib_Init_typ;

typedef struct KLLib_CfgClient
{
	/* VAR_INPUT (analog) */
	unsigned long adrKanlink;
	unsigned short ClientIndex;
	unsigned long adrName;
	unsigned char IPAdr;
	unsigned char Area;
	unsigned short CmdOpt;
	unsigned short Cmd;
	unsigned short CycleTime;
	unsigned long adrSReq;
	unsigned long adrSResp;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	struct KanLink_FB* _dKL;
	struct KL_ClientPar_typ* _dCltPar;
	unsigned long _iret;
} KLLib_CfgClient_typ;

typedef struct KLLib_CfgServer
{
	/* VAR_INPUT (analog) */
	unsigned long adrKanlink;
	unsigned short ServerIndex;
	unsigned long adrName;
	unsigned char IPAdr;
	unsigned char Area;
	unsigned short CmdOpt;
	unsigned short Cmd;
	unsigned short TimeOut;
	unsigned long adrSReq;
	unsigned long adrSResp;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	struct KanLink_FB* _dKL;
	struct KL_ServerPar_typ* _dSrvPar;
	unsigned long _iret;
} KLLib_CfgServer_typ;

typedef struct KanLink_FB
{
	/* VAR_INPUT (analog) */
	unsigned short Step;
	unsigned short ErrorNr;
	plcstring client_address[17];
	struct KL_Key_typ RecKey;
	plcstring sNetID[16];
	unsigned long udNetID;
	struct udp_typ udp;
	struct ServerDataTyp ServerData;
	struct KL_ServerListe_typ ServerListe[11];
	struct KL_ClientListe_typ ClientListe[11];
	unsigned long _uiLastId;
	unsigned long adrSelf;
	unsigned long _offset;
	unsigned long _SendLen;
	unsigned short DoCommand;
	struct KLLib_Init KLLib_Init_0;
	unsigned short _iCycleTime;
	unsigned long adrInterface;
	unsigned short iPort;
	plcstring sIF[11];
	struct KLLib_CfgClient CfgClient;
	struct KLLib_CfgServer CfgServer;
	/* VAR (analog) */
	struct PreHeader_Typ* _dPrehead;
	struct HeaderV1_Typ* _dHead;
	struct udint_array_typ* _udArr;
	unsigned long _dRecAdr;
	/* VAR_INPUT (digital) */
	plcbit _xOpenPort;
	plcbit _xSendClient;
	plcbit _xGetClientResp;
	plcbit _xGetServerReq;
	plcbit CanReturn;
	/* VAR_OUTPUT (digital) */
	plcbit xReturn;
	/* VAR (digital) */
	plcbit _xPreheadOK;
	plcbit _xVersionOK;
	plcbit _xUse;
} KanLink_FB_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void KanLink_FB(struct KanLink_FB* inst);
_BUR_PUBLIC void KLLib_Init(struct KLLib_Init* inst);
_BUR_PUBLIC void KLLib_CfgClient(struct KLLib_CfgClient* inst);
_BUR_PUBLIC void KLLib_CfgServer(struct KLLib_CfgServer* inst);
_BUR_PUBLIC plcbit KLLib_ClientTimer(struct KanLink_FB** Srv, unsigned short _iCycleTime);
_BUR_PUBLIC unsigned long KLLib_GetPVAdr(struct KL_ServerListe_typ** ServerItem);
_BUR_PUBLIC unsigned long KLLib_SendData(struct KanLink_FB** Srv, unsigned long SendAdr, unsigned long SendLen, unsigned long pDestination);
_BUR_PUBLIC unsigned long KLLib_ReadServerPara(unsigned long adrServerItem, unsigned long adrParaItem, unsigned long adrKanLink);
_BUR_PUBLIC unsigned long KLLib_ReadClientPara(unsigned long adrClientItem, unsigned long adrParaItem, unsigned long adrServer);
_BUR_PUBLIC unsigned long KLLib_InitCltPV(struct KL_ClientListe_typ** dclt);
_BUR_PUBLIC plcbit KL_BuildKey(unsigned short Command, unsigned char CmdNr, plcstring* IPAdr, unsigned long adrKey);
#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_PUBLIC unsigned short KLLib_CreateStrucDef(unsigned long lPtrAdr, unsigned long lPtrLen, plcstring* sRootName, plcstring* sItemName, unsigned long lDataAdr);
#else
_BUR_PUBLIC unsigned short KLLib_CreateStrucDef(unsigned long lPtrAdr, unsigned long lPtrLen, plcstring* sRootName, plcstring* sItemName, unsigned long lDataAdr);
#endif

_BUR_PUBLIC unsigned short KLLib_WriteStrucDefLine(unsigned long lPtrLine, unsigned long lPtrAdr, unsigned long lPtrLen);


__asm__(".section \".plc\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/KanLink_A19/KGFrameworkShare/Pkg_hlKanLinkUser/KL_UserLib/KL_UserLib.var\\\" scope \\\"global\\\"\\n\"");

__asm__(".previous");

#ifdef __cplusplus
};
#endif
#endif /* _KANLINKLIB_ */

