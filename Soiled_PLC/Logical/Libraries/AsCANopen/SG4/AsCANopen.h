/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _ASCANOPEN_
#define _ASCANOPEN_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#include <runtime.h>

#ifndef _IEC_CONST
#define _IEC_CONST _WEAK const
#endif

/* Constants */
#ifdef _REPLACE_CONST
 #define ERR_CANopen_EMERGENCY_RECEIVED 30820U
 #define ERR_CANOPEN_DEVICE_NOT_FOUND 30840U
 #define ERR_CANOPEN_DEVICE_NOT_OPENED 30841U
 #define ERR_CANOPEN_INVALID_POINTER 30842U
 #define ERR_CANOPEN_INVALID_NODEID 30843U
 #define ERR_CANOPEN_FB_CAL_ERROR 30844U
 #define ERR_CANOPEN_INVALID_COBID 30845U
 #define ERR_CANOPEN_INVALID_DATALENGTH 30846U
 #define ERR_CANOPEN_NO_DATA_AVAILABLE 30847U
 #define coINIT 0U
 #define coRESET_COMM 1U
 #define coRESETAPP 2U
 #define coPREOPERATIONAL 3U
 #define coSTOPPED 4U
 #define coOPERATIONAL 5U
 #define coUNKNOWN 6U
 #define coNOTAVAIL 7U
 #define coSTATE_WAIT_FOR_BOOTUP 0U
 #define coSTATE_WAIT_FOR_CONFIGURATION 1U
 #define coSTATE_CONFIGURATION_RUNNING 2U
 #define coSTATE_CONFIGURATION_READY 3U
 #define coSTATE_RUN 4U
 #define coSTATE_MISSING 5U
 #define coSTATE_STOPPED 6U
 #define coSTATE_CONFIGURATION_FAILED 7U
 #define coSTART_REMOTE_NODE 0U
 #define coSTOP_REMOTE_NODE 1U
 #define coENTER_PRE_OPERATIONAL 2U
 #define coRESET_NODE 3U
 #define coRESET_COMMUNICATION 4U
 #define coNO_ERROR 0U
 #define coOTHER_ERROR 1U
 #define coDATA_OVERFLOW 2U
 #define coTIME_OUT 3U
 #define coBUS_OFF 16U
 #define coERROR_PASSIVE 17U
 #define coGENERIC_ERROR 33U
 #define coNOT_AVAILABLE 34U
 #define coNO_MASTER_MODE 35U
 #define coINVALID_NODE_ID 36U
 #define coTRANSFER_BUSY 37U
 #define coNET_NOT_AVAILABLE 38U
 #define coNO_SDO_CHANNEL 48U
 #define coSDO_BUSY 49U
 #define coSDO_INITIALIZE 50U
 #define coSDO_LENGTH 51U
 #define coSDO_ERROR 52U
 #define coNO_VALID_DATA 64U
 #define coALREADY_EXIST 65U
 #define coNO_FREE_ENTRY 66U
 #define coNO_SUCH_COB_ID 67U
 #define coNO_FREE_CHANNEL 68U
 #define coZERO_NOT_ALLOWED 69U
 #define coINVALID_COB_ID 70U
 #define coNG_NODE_MISSING 80U
 #define coTOG_NOT_ALT 84082688U
 #define coSDO_PROT_TIMEOUT 84148224U
 #define coCMD_SPEC_INV 84148225U
 #define coINV_BLCK_SIZE 84148226U
 #define coINV_SEQ_NMBR 84148227U
 #define coCRC_ERROR 84148228U
 #define coOUT_OF_MEM 84148229U
 #define coUNSUP_OBJ_ACCESS 100728832U
 #define coWRITE_ONLY_OBJ 100728833U
 #define coREAD_ONLY_OBJ 100728834U
 #define coOBJ_NOT_EXISTING 100794368U
 #define coNO_OBJ_MAP 100925505U
 #define coEXCEED_PDO_LGTH 100925506U
 #define coGEN_PRM_INCMPTBL 100925507U
 #define coGEN_DEV_INCPTBL 100925511U
 #define coHW_ERR 101056512U
 #define coTYPE_NO_MATCH 101122064U
 #define coTYPE_TOO_HIGH 101122066U
 #define coTYPE_TOO_LOW 101122067U
 #define coINV_SUBIDX 101253137U
 #define coVAL_RANGE_EXCEED 101253168U
 #define coVAL_TOO_HIGH 101253169U
 #define coVAL_TOO_LOW 101253170U
 #define coVAL_MAX_MIN 101253174U
 #define coGENERAL_ERROR 134217728U
 #define coTRANSFER_ERROR 134217760U
 #define coTRANSFER_ERROR_LOC_CTRL 134217761U
 #define coTRANSFER_ERROR_DEV_STATE 134217762U
 #define coDYN_OBJDICT_GEN_ERROR 134217763U
 #define coSDO_TYPE_AUTO_BEST_CASE 0U
 #define coSDO_TYPE_SEGMENTED_TRANSFER 1U
 #define coSDO_TYPE_BLOCK_TRANSFER 2U
 #define coMONITORING_TYPE_HEARTBEAT 1U
 #define coMONITORING_TYPE_LIFEGUARDING 2U
#else
 _IEC_CONST unsigned short ERR_CANopen_EMERGENCY_RECEIVED = 30820U;
 _IEC_CONST unsigned short ERR_CANOPEN_DEVICE_NOT_FOUND = 30840U;
 _IEC_CONST unsigned short ERR_CANOPEN_DEVICE_NOT_OPENED = 30841U;
 _IEC_CONST unsigned short ERR_CANOPEN_INVALID_POINTER = 30842U;
 _IEC_CONST unsigned short ERR_CANOPEN_INVALID_NODEID = 30843U;
 _IEC_CONST unsigned short ERR_CANOPEN_FB_CAL_ERROR = 30844U;
 _IEC_CONST unsigned short ERR_CANOPEN_INVALID_COBID = 30845U;
 _IEC_CONST unsigned short ERR_CANOPEN_INVALID_DATALENGTH = 30846U;
 _IEC_CONST unsigned short ERR_CANOPEN_NO_DATA_AVAILABLE = 30847U;
 _IEC_CONST unsigned short coINIT = 0U;
 _IEC_CONST unsigned short coRESET_COMM = 1U;
 _IEC_CONST unsigned short coRESETAPP = 2U;
 _IEC_CONST unsigned short coPREOPERATIONAL = 3U;
 _IEC_CONST unsigned short coSTOPPED = 4U;
 _IEC_CONST unsigned short coOPERATIONAL = 5U;
 _IEC_CONST unsigned short coUNKNOWN = 6U;
 _IEC_CONST unsigned short coNOTAVAIL = 7U;
 _IEC_CONST unsigned short coSTATE_WAIT_FOR_BOOTUP = 0U;
 _IEC_CONST unsigned short coSTATE_WAIT_FOR_CONFIGURATION = 1U;
 _IEC_CONST unsigned short coSTATE_CONFIGURATION_RUNNING = 2U;
 _IEC_CONST unsigned short coSTATE_CONFIGURATION_READY = 3U;
 _IEC_CONST unsigned short coSTATE_RUN = 4U;
 _IEC_CONST unsigned short coSTATE_MISSING = 5U;
 _IEC_CONST unsigned short coSTATE_STOPPED = 6U;
 _IEC_CONST unsigned short coSTATE_CONFIGURATION_FAILED = 7U;
 _IEC_CONST unsigned short coSTART_REMOTE_NODE = 0U;
 _IEC_CONST unsigned short coSTOP_REMOTE_NODE = 1U;
 _IEC_CONST unsigned short coENTER_PRE_OPERATIONAL = 2U;
 _IEC_CONST unsigned short coRESET_NODE = 3U;
 _IEC_CONST unsigned short coRESET_COMMUNICATION = 4U;
 _IEC_CONST unsigned short coNO_ERROR = 0U;
 _IEC_CONST unsigned short coOTHER_ERROR = 1U;
 _IEC_CONST unsigned short coDATA_OVERFLOW = 2U;
 _IEC_CONST unsigned short coTIME_OUT = 3U;
 _IEC_CONST unsigned short coBUS_OFF = 16U;
 _IEC_CONST unsigned short coERROR_PASSIVE = 17U;
 _IEC_CONST unsigned short coGENERIC_ERROR = 33U;
 _IEC_CONST unsigned short coNOT_AVAILABLE = 34U;
 _IEC_CONST unsigned short coNO_MASTER_MODE = 35U;
 _IEC_CONST unsigned short coINVALID_NODE_ID = 36U;
 _IEC_CONST unsigned short coTRANSFER_BUSY = 37U;
 _IEC_CONST unsigned short coNET_NOT_AVAILABLE = 38U;
 _IEC_CONST unsigned short coNO_SDO_CHANNEL = 48U;
 _IEC_CONST unsigned short coSDO_BUSY = 49U;
 _IEC_CONST unsigned short coSDO_INITIALIZE = 50U;
 _IEC_CONST unsigned short coSDO_LENGTH = 51U;
 _IEC_CONST unsigned short coSDO_ERROR = 52U;
 _IEC_CONST unsigned short coNO_VALID_DATA = 64U;
 _IEC_CONST unsigned short coALREADY_EXIST = 65U;
 _IEC_CONST unsigned short coNO_FREE_ENTRY = 66U;
 _IEC_CONST unsigned short coNO_SUCH_COB_ID = 67U;
 _IEC_CONST unsigned short coNO_FREE_CHANNEL = 68U;
 _IEC_CONST unsigned short coZERO_NOT_ALLOWED = 69U;
 _IEC_CONST unsigned short coINVALID_COB_ID = 70U;
 _IEC_CONST unsigned short coNG_NODE_MISSING = 80U;
 _IEC_CONST unsigned long coTOG_NOT_ALT = 84082688U;
 _IEC_CONST unsigned long coSDO_PROT_TIMEOUT = 84148224U;
 _IEC_CONST unsigned long coCMD_SPEC_INV = 84148225U;
 _IEC_CONST unsigned long coINV_BLCK_SIZE = 84148226U;
 _IEC_CONST unsigned long coINV_SEQ_NMBR = 84148227U;
 _IEC_CONST unsigned long coCRC_ERROR = 84148228U;
 _IEC_CONST unsigned long coOUT_OF_MEM = 84148229U;
 _IEC_CONST unsigned long coUNSUP_OBJ_ACCESS = 100728832U;
 _IEC_CONST unsigned long coWRITE_ONLY_OBJ = 100728833U;
 _IEC_CONST unsigned long coREAD_ONLY_OBJ = 100728834U;
 _IEC_CONST unsigned long coOBJ_NOT_EXISTING = 100794368U;
 _IEC_CONST unsigned long coNO_OBJ_MAP = 100925505U;
 _IEC_CONST unsigned long coEXCEED_PDO_LGTH = 100925506U;
 _IEC_CONST unsigned long coGEN_PRM_INCMPTBL = 100925507U;
 _IEC_CONST unsigned long coGEN_DEV_INCPTBL = 100925511U;
 _IEC_CONST unsigned long coHW_ERR = 101056512U;
 _IEC_CONST unsigned long coTYPE_NO_MATCH = 101122064U;
 _IEC_CONST unsigned long coTYPE_TOO_HIGH = 101122066U;
 _IEC_CONST unsigned long coTYPE_TOO_LOW = 101122067U;
 _IEC_CONST unsigned long coINV_SUBIDX = 101253137U;
 _IEC_CONST unsigned long coVAL_RANGE_EXCEED = 101253168U;
 _IEC_CONST unsigned long coVAL_TOO_HIGH = 101253169U;
 _IEC_CONST unsigned long coVAL_TOO_LOW = 101253170U;
 _IEC_CONST unsigned long coVAL_MAX_MIN = 101253174U;
 _IEC_CONST unsigned long coGENERAL_ERROR = 134217728U;
 _IEC_CONST unsigned long coTRANSFER_ERROR = 134217760U;
 _IEC_CONST unsigned long coTRANSFER_ERROR_LOC_CTRL = 134217761U;
 _IEC_CONST unsigned long coTRANSFER_ERROR_DEV_STATE = 134217762U;
 _IEC_CONST unsigned long coDYN_OBJDICT_GEN_ERROR = 134217763U;
 _IEC_CONST unsigned short coSDO_TYPE_AUTO_BEST_CASE = 0U;
 _IEC_CONST unsigned short coSDO_TYPE_SEGMENTED_TRANSFER = 1U;
 _IEC_CONST unsigned short coSDO_TYPE_BLOCK_TRANSFER = 2U;
 _IEC_CONST unsigned char coMONITORING_TYPE_HEARTBEAT = 1U;
 _IEC_CONST unsigned char coMONITORING_TYPE_LIFEGUARDING = 2U;
#endif




/* Datatypes and datatypes of function blocks */
typedef struct CANopenEnableCyclicSync
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	plctime synctime;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short error;
	/* VAR (analog) */
	unsigned short stateman;
	unsigned short statusbuffer;
	unsigned long pDeviceHandle;
	plcstring strDeviceName[257];
	/* VAR_INPUT (digital) */
	plcbit enable;
	plcbit syncmode;
} CANopenEnableCyclicSync_typ;

typedef struct CANopenGetLocalNodeID
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short nodeid;
	/* VAR (analog) */
	unsigned short stateman;
	unsigned short statusbuffer;
	unsigned long pDeviceHandle;
	plcstring strDeviceName[257];
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenGetLocalNodeID_typ;

typedef struct CANopenGetKernelState
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short state;
	/* VAR (analog) */
	unsigned short stateman;
	unsigned short statusbuffer;
	unsigned long pDeviceHandle;
	plcstring strDeviceName[257];
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenGetKernelState_typ;

typedef struct CANopenRegisterCOBID
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned short cobid;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short error;
	/* VAR (analog) */
	unsigned short stateman;
	unsigned short statusbuffer;
	unsigned long pDeviceHandle;
	plcstring strDeviceName[257];
	/* VAR_INPUT (digital) */
	plcbit enable;
	plcbit inscribe;
} CANopenRegisterCOBID_typ;

typedef struct CANopenPDORead8
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned short cobid;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short error;
	unsigned long errorinfo;
	unsigned char data0;
	unsigned char data1;
	unsigned char data2;
	unsigned char data3;
	unsigned char data4;
	unsigned char data5;
	unsigned char data6;
	unsigned char data7;
	unsigned char datalen;
	/* VAR (analog) */
	unsigned short stateman;
	unsigned short statusbuffer;
	unsigned long pDeviceHandle;
	plcstring strDeviceName[257];
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenPDORead8_typ;

typedef struct CANopenPDOWrite8
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned short cobid;
	unsigned char data0;
	unsigned char data1;
	unsigned char data2;
	unsigned char data3;
	unsigned char data4;
	unsigned char data5;
	unsigned char data6;
	unsigned char data7;
	unsigned char datalen;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short error;
	unsigned long errorinfo;
	/* VAR (analog) */
	unsigned short stateman;
	unsigned short statusbuffer;
	unsigned long pDeviceHandle;
	plcstring strDeviceName[257];
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenPDOWrite8_typ;

typedef struct CANopenSDORead8
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned char node;
	unsigned short index;
	unsigned char subindex;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short error;
	unsigned long errorinfo;
	unsigned char data0;
	unsigned char data1;
	unsigned char data2;
	unsigned char data3;
	unsigned char data4;
	unsigned char data5;
	unsigned char data6;
	unsigned char data7;
	unsigned char datalen;
	/* VAR (analog) */
	unsigned char sdo_channel;
	signed char sdo_mode;
	signed char sdo_confirmed;
	unsigned short stateman;
	unsigned short statusbuffer;
	unsigned long pDeviceHandle;
	plcstring strDeviceName[257];
	unsigned char databuffer[8];
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenSDORead8_typ;

typedef struct CANopenSDOWrite8
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned char node;
	unsigned short index;
	unsigned char subindex;
	unsigned char data0;
	unsigned char data1;
	unsigned char data2;
	unsigned char data3;
	unsigned char data4;
	unsigned char data5;
	unsigned char data6;
	unsigned char data7;
	unsigned char datalen;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short error;
	unsigned long errorinfo;
	/* VAR (analog) */
	unsigned char sdo_channel;
	signed char sdo_mode;
	signed char sdo_confirmed;
	unsigned short stateman;
	unsigned short statusbuffer;
	unsigned long pDeviceHandle;
	plcstring strDeviceName[257];
	unsigned char databuffer[8];
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenSDOWrite8_typ;

typedef struct CANopenGetState
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned char node;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short state;
	/* VAR (analog) */
	unsigned short stateman;
	unsigned short statusbuffer;
	unsigned long pDeviceHandle;
	plcstring strDeviceName[257];
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenGetState_typ;

typedef struct CANopenNMT
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned char node;
	unsigned short state;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short error;
	/* VAR (analog) */
	unsigned short stateman;
	unsigned short statusbuffer;
	unsigned long pDeviceHandle;
	plcstring strDeviceName[257];
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenNMT_typ;

typedef struct CANopenRecvEmcyDev
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned char node;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short error;
	unsigned short emcy_err_code;
	unsigned char emcy_err_register;
	unsigned char emcy_err_field1;
	unsigned char emcy_err_field2;
	unsigned char emcy_err_field3;
	unsigned char emcy_err_field4;
	unsigned char emcy_err_field5;
	/* VAR (analog) */
	unsigned short stateman;
	unsigned short statusbuffer;
	unsigned long pDeviceHandle;
	plcstring strDeviceName[257];
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenRecvEmcyDev_typ;

typedef struct CANopenRecvEmcy
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short error;
	unsigned char node;
	unsigned short emcy_err_code;
	unsigned char emcy_err_register;
	unsigned char emcy_err_field1;
	unsigned char emcy_err_field2;
	unsigned char emcy_err_field3;
	unsigned char emcy_err_field4;
	unsigned char emcy_err_field5;
	/* VAR (analog) */
	unsigned short stateman;
	unsigned short statusbuffer;
	unsigned long pDeviceHandle;
	plcstring strDeviceName[257];
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenRecvEmcy_typ;

typedef struct CANopenWriteEmcy
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned short emcy_err_code;
	unsigned char emcy_err_register;
	unsigned char emcy_err_field1;
	unsigned char emcy_err_field2;
	unsigned char emcy_err_field3;
	unsigned char emcy_err_field4;
	unsigned char emcy_err_field5;
	unsigned short emcy_add_info;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short error;
	/* VAR (analog) */
	unsigned short stateman;
	unsigned short statusbuffer;
	unsigned long pDeviceHandle;
	plcstring strDeviceName[257];
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenWriteEmcy_typ;

typedef struct CANopenRecvBootupDev
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned char node;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short error;
	/* VAR (analog) */
	unsigned short stateman;
	unsigned short statusbuffer;
	unsigned long pDeviceHandle;
	plcstring strDeviceName[257];
	/* VAR_INPUT (digital) */
	plcbit enable;
	/* VAR_OUTPUT (digital) */
	plcbit recv;
} CANopenRecvBootupDev_typ;

typedef struct CANopenRecvBootup
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short error;
	unsigned char node;
	/* VAR (analog) */
	unsigned short stateman;
	unsigned short statusbuffer;
	unsigned long pDeviceHandle;
	plcstring strDeviceName[257];
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenRecvBootup_typ;

typedef struct CANopenSendSync
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short error;
	/* VAR (analog) */
	unsigned short stateman;
	unsigned short statusbuffer;
	unsigned long pDeviceHandle;
	plcstring strDeviceName[257];
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenSendSync_typ;

typedef struct CANopenSDOReadData
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned char node;
	unsigned short index;
	unsigned char subindex;
	unsigned char transfertype;
	unsigned long pRxdata;
	unsigned long maxlength;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short error;
	unsigned long errorinfo;
	unsigned long rxlength;
	/* VAR (analog) */
	unsigned short _statemachine;
	unsigned short _result;
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenSDOReadData_typ;

typedef struct CANopenSDOWriteData
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned char node;
	unsigned short index;
	unsigned char subindex;
	unsigned char transfertype;
	unsigned long pTxdata;
	unsigned long txlength;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short error;
	unsigned long errorinfo;
	/* VAR (analog) */
	unsigned short _statemachine;
	unsigned short _result;
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenSDOWriteData_typ;

typedef struct CANopenLayer2Read8
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short canID;
	unsigned char data[8];
	unsigned char datalen;
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenLayer2Read8_typ;

typedef struct CANopenGetSlaveState
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned char node;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short slaveState;
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenGetSlaveState_typ;

typedef struct CANopenActivateSlaveMonitoring
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned char node;
	unsigned char monitoringType;
	unsigned short monitoringTime;
	unsigned short monitoringFactor;
	unsigned long options;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	unsigned short _statemachine;
	unsigned short _result;
	/* VAR_INPUT (digital) */
	plcbit enable;
} CANopenActivateSlaveMonitoring_typ;



/* Prototyping of functions and function blocks */
void CANopenEnableCyclicSync(struct CANopenEnableCyclicSync* inst);
void CANopenGetLocalNodeID(struct CANopenGetLocalNodeID* inst);
void CANopenGetKernelState(struct CANopenGetKernelState* inst);
void CANopenRegisterCOBID(struct CANopenRegisterCOBID* inst);
void CANopenPDORead8(struct CANopenPDORead8* inst);
void CANopenPDOWrite8(struct CANopenPDOWrite8* inst);
void CANopenSDORead8(struct CANopenSDORead8* inst);
void CANopenSDOWrite8(struct CANopenSDOWrite8* inst);
void CANopenGetState(struct CANopenGetState* inst);
void CANopenNMT(struct CANopenNMT* inst);
void CANopenRecvEmcyDev(struct CANopenRecvEmcyDev* inst);
void CANopenRecvEmcy(struct CANopenRecvEmcy* inst);
void CANopenWriteEmcy(struct CANopenWriteEmcy* inst);
void CANopenRecvBootupDev(struct CANopenRecvBootupDev* inst);
void CANopenRecvBootup(struct CANopenRecvBootup* inst);
void CANopenSendSync(struct CANopenSendSync* inst);
void CANopenSDOReadData(struct CANopenSDOReadData* inst);
void CANopenSDOWriteData(struct CANopenSDOWriteData* inst);
void CANopenLayer2Read8(struct CANopenLayer2Read8* inst);
void CANopenGetSlaveState(struct CANopenGetSlaveState* inst);
void CANopenActivateSlaveMonitoring(struct CANopenActivateSlaveMonitoring* inst);
unsigned short CANopenSetSDOTimeout(unsigned long pDevice, unsigned long sdoTimeout);


#ifdef __cplusplus
};
#endif
#endif /* _ASCANOPEN_ */

                                                           
