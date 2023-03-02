/* Automation Studio generated header file */
/* Do not edit ! */
/* KGlibMsg  */

#ifndef _KGLIBMSG_
#define _KGLIBMSG_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
/* Constants */
#ifdef _REPLACE_CONST
 #define MNMSG_CLASS_NO_ACK 255U
 #define MNMSG_CLASS_MAINTENANCE 20U
 #define MNMSG_CLASS_INFO 11U
 #define MNMSG_CLASS_WARNING 10U
 #define MNMSG_CLASS_EXTFAULT 1U
 #define MNMSG_CLASS_INTFAULT 0U
 #define MNMSG_EVENT_COME 1U
 #define MNMSG_EVENT_ACK 2U
 #define MNMSG_EVENT_GONE 3U
 #define MNMSG_EVENT_GONE_TWO 4U
 #define MNMSG_STAT_NOTFOUND 1U
 #define MNMSG_STAT_WRITEPTR 2U
 #define MNMSG_STAT_READPTR 3U
 #define MNMSG_STAT_RBNOREAD 10U
 #define MNMSG_MAX_MSGLIST 39U
#else
 _GLOBAL_CONST unsigned char MNMSG_CLASS_NO_ACK;
 _GLOBAL_CONST unsigned char MNMSG_CLASS_MAINTENANCE;
 _GLOBAL_CONST unsigned char MNMSG_CLASS_INFO;
 _GLOBAL_CONST unsigned char MNMSG_CLASS_WARNING;
 _GLOBAL_CONST unsigned char MNMSG_CLASS_EXTFAULT;
 _GLOBAL_CONST unsigned char MNMSG_CLASS_INTFAULT;
 _GLOBAL_CONST unsigned short MNMSG_EVENT_COME;
 _GLOBAL_CONST unsigned short MNMSG_EVENT_ACK;
 _GLOBAL_CONST unsigned short MNMSG_EVENT_GONE;
 _GLOBAL_CONST unsigned short MNMSG_EVENT_GONE_TWO;
 _GLOBAL_CONST unsigned short MNMSG_STAT_NOTFOUND;
 _GLOBAL_CONST unsigned short MNMSG_STAT_WRITEPTR;
 _GLOBAL_CONST unsigned short MNMSG_STAT_READPTR;
 _GLOBAL_CONST unsigned short MNMSG_STAT_RBNOREAD;
 _GLOBAL_CONST unsigned short MNMSG_MAX_MSGLIST;
#endif




/* Datatypes and datatypes of function blocks */
typedef struct MsgCfgLine_Typ
{	unsigned short wFunction_ID;
	unsigned short wMsgNumber;
	unsigned short wInstance;
	unsigned short wRes;
} MsgCfgLine_Typ;

typedef struct MsgHistList_Typ
{	plcdt TimeStampEvent;
	unsigned short wFunction_ID;
	unsigned short wMsgNumber;
	unsigned short wInstance;
	unsigned short wMsgClass;
	signed long diAttr1;
	signed long diAttr2;
	plcstring sAttrTxt[14];
	unsigned short wEvent;
	unsigned long lTime;
} MsgHistList_Typ;

typedef struct IFMsgHistList_Typ
{	plcwstring utfMsgText[68];
	unsigned char bMsgClass;
	unsigned char bEvent;
} IFMsgHistList_Typ;

typedef struct MsgList_Typ
{	plcdt TimeStamp;
	unsigned short wFunction_ID;
	unsigned short wMsgNumber;
	unsigned char bInstance;
	unsigned char bAckLevel;
	plcstring sAttrTxt[14];
	signed long diAttr1;
	signed long diAttr2;
} MsgList_Typ;

typedef struct MsgTxtLine_Typ
{	unsigned short wFunctionID;
	unsigned short wNumber;
	unsigned short wInstance;
	plcwstring utfText[64];
} MsgTxtLine_Typ;

typedef struct MsgHelpTxtLine_Typ
{	unsigned short wFunctionID;
	unsigned short wNumber;
	unsigned short wInstance;
	plcwstring utfText[256];
} MsgHelpTxtLine_Typ;

typedef struct MsgKgMsgStatus_Typ
{	unsigned short wFunctionID;
	unsigned short wMsgClass;
	unsigned short wNumber;
	unsigned short wMsgAckLevel;
	unsigned short wInstance;
	plcstring sMsgAttrTxt[14];
	signed long diMsgAttr1;
	signed long diMsgAttr2;
	unsigned short wMaintNumber;
	plcstring sMaintAttrTxt[14];
	signed long diMaintAttr1;
	signed long diMaintAttr2;
	unsigned short wMaintAckLevel;
	plcbit xAckMaint;
	plcbit xAckFault;
	plcbit xAckAva;
	plcbit xAckRead;
} MsgKgMsgStatus_Typ;

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct msgBinSearchCfgList
{
	/* VAR_INPUT (analog) */
	struct MsgCfgLine_Typ (*MsgCfgList)[65535];
	unsigned short wCntMsgCfg;
	unsigned short wFunctionID;
	unsigned short wMsgNo;
	unsigned short wInstance;
	/* VAR_OUTPUT (analog) */
	unsigned short wMsgIdx;
	unsigned short wStatus;
	/* VAR (analog) */
	signed long dMin;
	signed long dMax;
	signed long dSearch;
} msgBinSearchCfgList_typ;
#else
/* Data type msgBinSearchCfgList not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct msgInsertMsgLine
{
	/* VAR_INPUT (analog) */
	unsigned long AdrIntFaultList;
	unsigned long AdrExtFaultList;
	unsigned long AdrWarnList;
	unsigned long AdrInfoList;
	unsigned long AdrMaintList;
	unsigned long AdrCntIntFault;
	unsigned long AdrCntExtFault;
	unsigned long AdrCntWarn;
	unsigned long AdrCntInfo;
	unsigned long AdrCntMaint;
	struct MsgList_Typ MsgLine;
	unsigned char Class;
	/* VAR (analog) */
	struct MsgList_Typ (*MsgList)[40];
	unsigned char* bCntList;
	unsigned short i;
	unsigned short j;
	unsigned long TestCnt;
	/* VAR_INPUT (digital) */
	plcbit Insert;
	/* VAR_OUTPUT (digital) */
	plcbit Changed;
	/* VAR (digital) */
	plcbit xFound;
} msgInsertMsgLine_typ;

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct msgBinSearchTxtLine
{
	/* VAR_INPUT (analog) */
	struct MsgTxtLine_Typ (*MsgTxtList)[65535];
	unsigned short wCntMsgTxt;
	unsigned short wFunctionID;
	unsigned short wNumber;
	unsigned short wInstance;
	unsigned char bTupel;
	/* VAR_OUTPUT (analog) */
	unsigned short wMsgPos;
	unsigned short wStatus;
	/* VAR (analog) */
	unsigned short wPos;
	unsigned short wPosMin;
	unsigned short wPosMax;
	unsigned short wPosBeg;
	unsigned short wPosEnd;
	unsigned short wPosMinLeft;
	unsigned short wPosMaxLeft;
	unsigned short wPosBegLeft;
	unsigned short wPosMinRight;
	unsigned short wPosMaxRight;
	unsigned short wPosEndRight;
	unsigned short wCnt;
	/* VAR (digital) */
	plcbit xRepeat;
	plcbit xPosFound;
	plcbit xPosFoundLeft;
	plcbit xPosFoundRight;
} msgBinSearchTxtLine_typ;
#else
/* Data type msgBinSearchTxtLine not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct msgBinSearchHelpTxtLine
{
	/* VAR_INPUT (analog) */
	struct MsgHelpTxtLine_Typ (*MsgHelpTxtList)[65535];
	unsigned short wCntMsgHelpTxt;
	unsigned short wFunctionID;
	unsigned short wNumber;
	unsigned short wInstance;
	unsigned char bTupel;
	/* VAR_OUTPUT (analog) */
	unsigned short wMsgPos;
	unsigned short wStatus;
	/* VAR (analog) */
	unsigned short wPos;
	unsigned short wPosMin;
	unsigned short wPosMax;
	unsigned short wPosBeg;
	unsigned short wPosEnd;
	unsigned short wPosMinLeft;
	unsigned short wPosMaxLeft;
	unsigned short wPosBegLeft;
	unsigned short wPosMinRight;
	unsigned short wPosMaxRight;
	unsigned short wPosEndRight;
	unsigned short wCnt;
	/* VAR (digital) */
	plcbit xRepeat;
	plcbit xPosFound;
	plcbit xPosFoundLeft;
	plcbit xPosFoundRight;
} msgBinSearchHelpTxtLine_typ;
#else
/* Data type msgBinSearchHelpTxtLine not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct msgReplSubStr
{
	/* VAR_INPUT (analog) */
	plcwstring (*utfStr);
	plcwstring (*utfSubStr);
	plcwstring (*utfStrToReplWith);
	plcwstring (*utfStrResult);
	/* VAR_OUTPUT (analog) */
	unsigned short wStatus;
	unsigned short wMatched;
	/* VAR (analog) */
	plcwstring utfStrFirst[2];
	plcwstring utfStrSecond[2];
	unsigned long lChrPosStr;
	unsigned long lChrPosSubStr;
	/* VAR (digital) */
	plcbit xCat;
} msgReplSubStr_typ;

typedef struct msgNextChrPos
{
	/* VAR_INPUT (analog) */
	plcwstring (*utfStr);
	plcwstring utfChr[2];
	unsigned long lStartPos;
	/* VAR_OUTPUT (analog) */
	unsigned long lChrPos;
	unsigned short wStatus;
	/* VAR (analog) */
	plcwstring _utfChr[2];
	unsigned long _lChrPos;
	unsigned long _lUtfLen;
} msgNextChrPos_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void msgBinSearchCfgList(struct msgBinSearchCfgList* inst);
_BUR_PUBLIC void msgInsertMsgLine(struct msgInsertMsgLine* inst);
_BUR_PUBLIC void msgBinSearchTxtLine(struct msgBinSearchTxtLine* inst);
_BUR_PUBLIC void msgBinSearchHelpTxtLine(struct msgBinSearchHelpTxtLine* inst);
_BUR_PUBLIC void msgReplSubStr(struct msgReplSubStr* inst);
_BUR_PUBLIC void msgNextChrPos(struct msgNextChrPos* inst);


#ifdef __cplusplus
};
#endif
#endif /* _KGLIBMSG_ */

