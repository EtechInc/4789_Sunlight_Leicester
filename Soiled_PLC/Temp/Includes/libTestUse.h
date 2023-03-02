/* Automation Studio generated header file */
/* Do not edit ! */
/* libTestUse  */

#ifndef _LIBTESTUSE_
#define _LIBTESTUSE_
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
 #define LIBTEST_STAT_POINTER_IS_NULL 60000U
 #define LIBTEST_CNT_TSTCMD 40U
 #define LIBTEST_CNT_TSTPARAM 3U
#else
 _GLOBAL_CONST unsigned short LIBTEST_STAT_POINTER_IS_NULL;
 _GLOBAL_CONST unsigned short LIBTEST_CNT_TSTCMD;
 _GLOBAL_CONST unsigned short LIBTEST_CNT_TSTPARAM;
#endif




/* Datatypes and datatypes of function blocks */
#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct TestUser_CmdTest_typ
{	unsigned long pCmd[40];
	unsigned long pParamMem[40][3];
	unsigned long pParamSize[40][3];
	unsigned long pCmdResult[40];
	unsigned long pBatchLoad;
	unsigned long pBatch;
	unsigned long pBatchUnload;
	unsigned long pBatchLoadTrig;
	unsigned long pBatchTrig;
	unsigned long pBatchUnloadTrig;
	unsigned long pBatchForLoadingOk;
	unsigned long pMachineState;
	unsigned long pMachineStateTxt;
	unsigned long pMachineStateAtt1;
	unsigned long pMachineStateAtt2;
} TestUser_CmdTest_typ;
#else
/* Data type TestUser_CmdTest_typ not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct TestUser_SetMode
{
	/* VAR_INPUT (analog) */
	unsigned short wMode;
	unsigned long pStruc;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	unsigned short _wSetModeState;
	/* VAR_INPUT (digital) */
	plcbit enable;
} TestUser_SetMode_typ;

typedef struct TestUser_RunTest
{
	/* VAR_INPUT (analog) */
	unsigned short wMode;
	unsigned long pStruc;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	struct TestUser_CmdTest_typ* _CmdTest;
	unsigned short _i;
	unsigned short* _wCommand;
	unsigned short (*_CmdResult)[2];
	unsigned char _bResult;
	unsigned short _wResult;
	unsigned short _wXORStatus;
	unsigned short _j;
	struct BatchLoad_typ (*_BatchLoad)[4];
	struct Batch_typ (*_Batch)[31];
	struct Batch_typ (*_BatchUnload)[3];
	struct BatchLoadTrig_typ (*_BatchLoadTrig)[4];
	struct BatchTrig_typ* _BatchTrig;
	struct BatchUnloadTrig_typ* _BatchUnloadTrig;
	struct TON _TonShiftClck1;
	struct TON _TonShiftClck2;
	unsigned short _wShiftStep;
	unsigned long _lBatchNo;
	unsigned long* _pBatchNo;
	struct DTGetTime _GetTime;
	plcstring _sValue[11];
	plcbit* _xBatchForLoadingOk;
	unsigned long* _enMachineState;
	unsigned short* _wMachineStateTxt;
	unsigned long* _lMachineStateAtt1;
	unsigned long* _lMachineStateAtt2;
	unsigned short _wMachineStateCnt;
	struct TON _Ton1sClck2;
	struct TON _Ton1sClck1;
	/* VAR_INPUT (digital) */
	plcbit enable;
	/* VAR (digital) */
	plcbit _xBatchLoadOk;
	plcbit _xBatchOk;
	plcbit _xBatchUnloadOk;
} TestUser_RunTest_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void TestUser_SetMode(struct TestUser_SetMode* inst);
_BUR_PUBLIC void TestUser_RunTest(struct TestUser_RunTest* inst);
_BUR_PUBLIC unsigned short TestUser_StopTask(unsigned long st_name);


#ifdef __cplusplus
};
#endif
#endif /* _LIBTESTUSE_ */

