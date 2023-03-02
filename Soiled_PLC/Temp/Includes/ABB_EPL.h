/* Automation Studio generated header file */
/* Do not edit ! */
/* ABB_EPL  */

#ifndef _ABB_EPL_
#define _ABB_EPL_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "AsEPL.h"
#endif
#ifdef _SG4
		#include "AsEPL.h"
#endif
#ifdef _SGC
		#include "AsEPL.h"
#endif


/* Constants */
#ifdef _REPLACE_CONST
 #define PLK_INTERFACE "IF3"
 #define ABB_MIN_VELOCITY 20U
 #define MAX_FREQUENCY_HZ 70U
 #define MAX_DRIVES 23U
 #define MAX_PARAMS 15U
 #define DISABLE_VOLTAGE 1024U
 #define FAULT_RESET 1264U
 #define QUICK_STOP 1136U
 #define ENABLE_OPERATION 1151U
 #define RAMP_DOWN 1399U
 #define SHUT_DOWN 1142U
 #define SET_REMOTE 1024U
 #define SWITCH_ON 1143U
#else
 _GLOBAL_CONST plcstring PLK_INTERFACE[6];
 _GLOBAL_CONST unsigned char ABB_MIN_VELOCITY;
 _GLOBAL_CONST unsigned char MAX_FREQUENCY_HZ;
 _GLOBAL_CONST unsigned char MAX_DRIVES;
 _GLOBAL_CONST unsigned char MAX_PARAMS;
 _GLOBAL_CONST unsigned short DISABLE_VOLTAGE;
 _GLOBAL_CONST unsigned short FAULT_RESET;
 _GLOBAL_CONST unsigned short QUICK_STOP;
 _GLOBAL_CONST unsigned short ENABLE_OPERATION;
 _GLOBAL_CONST unsigned short RAMP_DOWN;
 _GLOBAL_CONST unsigned short SHUT_DOWN;
 _GLOBAL_CONST unsigned short SET_REMOTE;
 _GLOBAL_CONST unsigned short SWITCH_ON;
#endif




/* Datatypes and datatypes of function blocks */
typedef enum ABB_Motor_Size_enum
{	ABB_MOTOR_0_25KW,
	ABB_MOTOR_0_37KW_0_91A_1374,
	ABB_MOTOR_0_37KW_0_97A_1342,
	ABB_MOTOR_0_37KW_1_14A_1380,
	ABB_MOTOR_0_75KW,
	ABB_MOTOR_1_5KW,
	ABB_MOTOR_2_2KW_4_75A_1450,
	ABB_MOTOR_3KW,
	ABB_MOTOR_CUSTOM
} ABB_Motor_Size_enum;

typedef enum ABB_EPL_Comm_State_enum
{	ABB_DISCONNECTED,
	ABB_QUICK_STOP,
	ABB_CONFIG,
	ABB_SWITCH_ON_INHIBITED,
	ABB_NOT_READY_TO_SWITCH_ON,
	ABB_READY_TO_SWITCH_ON,
	ABB_READY_TO_RUN,
	ABB_RUNNING,
	ABB_TRIPPED,
	ABB_OFF_REMOTE,
	ABB_STO,
	ABB_RAMP_DOWN
} ABB_EPL_Comm_State_enum;

typedef enum ABB_DIRECTION_Enum
{	ABB_DIRECTION_FWD,
	ABB_DIRECTION_REV
} ABB_DIRECTION_Enum;

typedef struct ABB_Settings_typ
{	signed short Slow;
	signed short Fast;
	signed short Acc;
	signed short Dec;
	signed long MaxCurrent;
} ABB_Settings_typ;

typedef struct ABB_EPL_Comm_typ
{	unsigned short ControlWord;
	unsigned short StatusWord;
	signed short TargetVelocity;
	signed short ActVelocity;
	plcbit ModuleOk;
	enum ABB_EPL_Comm_State_enum State;
	signed long ActCurrent;
	signed long ActTorque;
	unsigned short ErrorCode;
} ABB_EPL_Comm_typ;

typedef struct ABB_EPL_cmd_typ
{	signed short TargetVelocity;
	plcbit Run;
	plcbit Reset;
	plcbit QuickStop;
	enum ABB_Motor_Size_enum MotorSize;
	float Dec_seconds;
	float Acc_seconds;
	enum ABB_DIRECTION_Enum Direction;
	unsigned char Node;
	plcbit BrakeFitted;
} ABB_EPL_cmd_typ;

typedef struct ABB_EPL_status_typ
{	plcbit ReadyToSwitchOn;
	plcbit ReadyToRun;
	plcbit Tripped;
	plcbit DriveEnabled;
	plcbit QuickstopActive;
	plcbit SwitchOnInhibit;
	plcbit Warning;
	plcbit AtSpeed;
	signed long ActCurrent;
	signed long ActTorque;
	plcbit ThermalTrip;
	plcbit OnRemote;
	plcbit Running;
} ABB_EPL_status_typ;

typedef struct ABB_EPL_Param_Read_typ
{	signed long ActCurrent_0107;
	signed long ActTorque_0110;
} ABB_EPL_Param_Read_typ;

typedef struct ABB_EPL_Param_Write_typ
{	signed long Ramp_AccTime1_2872;
	signed long Ramp_DecTime1_2873;
	signed long Motor_NominalCurrent_9906;
	signed long Motor_NominalSpeed_9909;
	signed long Motor_NominalPower_9910;
	signed long QuickStopTime_2323;
} ABB_EPL_Param_Write_typ;

typedef struct ABB_EPL_Param_typ
{	struct ABB_EPL_Param_Read_typ Read;
	struct ABB_EPL_Param_Write_typ Write;
} ABB_EPL_Param_typ;

typedef struct EPL_SDO
{	unsigned short index;
	unsigned char subIndex;
	signed long data;
	unsigned long datalen;
	unsigned short status;
	unsigned long errorInfo;
} EPL_SDO;

typedef struct EPL_Config
{	struct EplSDOWrite function;
	unsigned char currentParam;
	unsigned char New_Member;
	struct EPL_SDO params[16];
} EPL_Config;

typedef struct ABB_EPL_typ
{	struct ABB_EPL_Comm_typ Comm;
	struct ABB_EPL_cmd_typ Cmd;
	struct ABB_EPL_status_typ Status;
	struct ABB_EPL_Param_typ Parameters;
	struct EPL_Config Config;
} ABB_EPL_typ;

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct ABB_EPL_Struct
{	struct ABB_Settings_typ Settings[23];
	struct ABB_EPL_typ Drives[23];
	plcstring httpRequest[5001];
	unsigned char httpResponse[5000];
	plcbit callBackUpWrite;
} ABB_EPL_Struct;
#else
/* Data type ABB_EPL_Struct not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct ABB_PackData
{
	/* VAR_INPUT (analog) */
	unsigned long pData;
	/* VAR (analog) */
	struct ABB_EPL_typ* abb;
} ABB_PackData_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void ABB_PackData(struct ABB_PackData* inst);


#ifdef __cplusplus
};
#endif
#endif /* _ABB_EPL_ */

