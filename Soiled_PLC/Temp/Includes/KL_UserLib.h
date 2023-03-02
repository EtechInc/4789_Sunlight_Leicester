/* Automation Studio generated header file */
/* Do not edit ! */
/* KL_UserLib 0.91.0 */

#ifndef _KL_USERLIB_
#define _KL_USERLIB_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _KL_UserLib_VERSION
#define _KL_UserLib_VERSION 0.91.0
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
/* Constants */
#ifdef _REPLACE_CONST
 #define HLKANLINK_MAX_OVERVIEW_DATA 31U
 #define HLKANLINK_MAX_SERVERCONNS 10U
 #define HLKANLINK_MAX_CLIENTCONNS 10U
#else
 _GLOBAL_CONST unsigned short HLKANLINK_MAX_OVERVIEW_DATA;
 _GLOBAL_CONST unsigned short HLKANLINK_MAX_SERVERCONNS;
 _GLOBAL_CONST unsigned short HLKANLINK_MAX_CLIENTCONNS;
#endif




/* Datatypes and datatypes of function blocks */
typedef struct BatchProcData_typ
{	unsigned char bProgram;
	unsigned char bTypeOfLinen;
	unsigned short wDisinfectionTime;
	unsigned short wPreWashingTime;
	unsigned short wMainWashingTime;
	unsigned short wRinsingTime;
	unsigned short wTotalWashingTime;
	plcbit xDrainConnectionBox;
	plcbit xCleanConnectionBox;
	plcbit xColorChange;
} BatchProcData_typ;

typedef struct Batch_typ
{	struct BatchData_typ BatchData;
	struct BatchProcData_typ BatchProcData;
} Batch_typ;

typedef struct BatchLoadTrig_typ
{	unsigned long lTriggerChange[3];
} BatchLoadTrig_typ;

typedef struct BatchTrig_typ
{	unsigned long lTriggerChange[31];
} BatchTrig_typ;

typedef struct BatchLoad_typ
{	struct Batch_typ Batch[3];
} BatchLoad_typ;

typedef struct BatchUnloadTrig_typ
{	unsigned long lTriggerChange[3];
} BatchUnloadTrig_typ;

typedef struct KL_UserTyp
{	unsigned long adrBatch;
} KL_UserTyp;

typedef struct KL_WetExtNextBatch_typ
{	unsigned short wProgNr;
	unsigned short wWeight;
	unsigned char bBatchNo[16];
	unsigned char bTypeBatchNo;
} KL_WetExtNextBatch_typ;

typedef struct KL_WetExtRespDos_typ
{	plcbit xRunning;
	plcbit xJobDone;
} KL_WetExtRespDos_typ;

typedef struct KL_WetExtReqDos_typ
{	unsigned long lAmount;
	plcbit xEnable;
} KL_WetExtReqDos_typ;

typedef struct KL_WetExtTankInfo_typ
{	unsigned short wNr;
	plcbit xReady;
	signed short iTemperature;
} KL_WetExtTankInfo_typ;

typedef struct KL_WetExtractResp_typ
{	unsigned short wState;
	unsigned short wNiveau;
	struct KL_WetExtRespDos_typ DosState[9];
	struct KL_WetExtTankInfo_typ WetAccState[5];
	struct KL_WetExtNextBatch_typ NextBatch;
} KL_WetExtractResp_typ;

typedef struct KL_WetExtractReq_typ
{	unsigned short wState;
	unsigned short wRecycleDest;
	struct KL_WetExtReqDos_typ Dosage[9];
	plcbit xFlush;
	unsigned short wReqTankInfo[5];
	plcbit xTankReq[5];
	plcbit xDrain;
	plcbit xPump;
	plcstring sCategory[12];
} KL_WetExtractReq_typ;

typedef struct KL_WetExtract_typ
{	struct KL_WetExtractResp_typ Resp;
	struct KL_WetExtractReq_typ Req;
} KL_WetExtract_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC unsigned long KL_OnRecReq(unsigned long adrReqData, unsigned long adrRespData, unsigned long adrKanlink, unsigned short iCmdNr, unsigned long adrUserData);


#ifdef __cplusplus
};
#endif
#endif /* _KL_USERLIB_ */

