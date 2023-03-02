/* Automation Studio generated header file */
/* Do not edit ! */
/* FC302  */

#ifndef _FC302_
#define _FC302_
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
 #define posnNameNone 0U
 #define posnNameTop 1U
 #define posnNameTopBagIn 2U
 #define posnNameTopBagOut 3U
 #define posnNameBottom 4U
 #define posnNameBottomBagIn 5U
 #define posnNameBottomBagOut 6U
 #define posnNameMiddle 7U
 #define posnNameMiddleBagIn 8U
 #define posnNameMiddleBagOut 9U
 #define posnNameHighLevel 10U
 #define posnNameHighLevelBagIn 11U
 #define posnNameHighLevelBagOut 12U
 #define posnNameLowLevel 13U
 #define posnNameLowLevelBagIn 14U
 #define posnNameLowLevelBagOut 15U
 #define posnNameMidLevel 16U
 #define posnNameMidLevelBagIn 17U
 #define posnNameMidLevelBagOut 18U
 #define posnNameDocking 19U
 #define posnNameDummy 20U
 #define posnNameLoading 21U
 #define posnNameLine 22U
 #define posnNameParking 23U
 #define posnNameRecirculation 24U
 #define posnNameSafety 25U
 #define posnNameWeighing 26U
 #define posnExtraNone 0U
 #define posnExtraLine1 1U
 #define posnExtraLine2 2U
 #define posnExtraLine3 3U
 #define posnExtraLine4 4U
 #define posnExtraLine5 5U
 #define posnExtraLine6 6U
 #define posnExtraLine7 7U
 #define posnExtraLine8 8U
 #define posnExtraLine9 9U
 #define posnExtraLine10 10U
 #define posnExtraLine11 11U
 #define posnExtraLine12 12U
 #define posnExtraLine13 13U
 #define posnExtraLine14 14U
 #define posnExtraLine15 15U
 #define posnExtraLine16 16U
 #define posnExtraLine17 17U
 #define posnExtraLine18 18U
 #define posnExtraLine19 19U
 #define posnExtraLine20 20U
 #define posnExtraLine21 21U
 #define posnExtraLine22 22U
 #define posnExtraLine23 23U
 #define posnExtraLine24 24U
 #define posnExtraLine25 25U
 #define posnExtraLine26 26U
 #define posnExtraLine27 27U
 #define posnExtraLine28 28U
 #define posnExtraLine29 29U
 #define posnExtraSeqHeader1 101U
 #define posnExtraSeqHeader2 102U
 #define posnExtraSeqHeader3 103U
 #define posnExtraSeqHeader4 104U
 #define posnExtraSeqHeader5 105U
 #define posnExtraSeqHeader6 106U
 #define posnExtraSeqHeader7 107U
 #define posnExtraSeqHeader8 108U
 #define posnExtraSeqHeader9 109U
 #define posnExtraSeqHeader10 110U
 #define posnExtraSeqHeader11 111U
 #define posnExtraSeqHeader12 112U
 #define posnExtraSeqHeader13 113U
 #define posnExtraSeqHeader14 114U
 #define posnExtraSeqHeader15 115U
 #define posnExtraSeqHeader16 116U
 #define posnExtraSeqHeader17 117U
 #define posnExtraSeqHeader18 118U
 #define posnExtraSeqHeader19 119U
 #define posnExtraSeqHeader20 120U
 #define posnExtraSeqHeader21 121U
 #define posnExtraSeqHeader22 122U
 #define posnExtraSeqHeader23 123U
 #define posnExtraSeqHeader24 124U
 #define posnExtraSeqHeader25 125U
 #define posnExtraSeqHeader26 126U
 #define posnExtraSeqHeader27 127U
 #define posnExtraSeqHeader28 128U
 #define posnExtraSeqHeader29 129U
 #define posnExtraSeqHeader30 130U
 #define posnExtraSeqHeader31 131U
 #define posnExtraSeqHeader32 132U
 #define posnExtraSeqHeader33 133U
 #define posnExtraSeqHeader34 134U
 #define posnExtraSeqHeader35 135U
 #define posnExtraSeqHeader36 136U
 #define posnExtraSeqHeader37 137U
 #define posnExtraSeqHeader38 138U
 #define posnExtraSeqHeader39 139U
 #define posnExtraSeqHeader40 140U
 #define posnExtraSeqHeader41 141U
 #define posnExtraSeqHeader42 142U
 #define posnExtraSeqHeader43 143U
 #define posnExtraSeqHeader44 144U
 #define posnExtraSeqHeader45 145U
 #define posnExtraSeqHeader46 146U
 #define posnExtraSeqHeader47 147U
 #define posnExtraSeqHeader48 148U
 #define posnExtraSeqHeader49 149U
 #define MaxRobo 7U
 #define MaxPositions 29U
 #define ModeNothing 0U
 #define ModeReference 1U
 #define ModeManualMove 2U
 #define ModePosnTune 3U
 #define ModeMovePosn 4U
 #define ActionNothing 0U
 #define ActionMoveUp 1U
 #define ActionMoveDown 2U
 #define ActionMoveLeft 3U
 #define ActionMoveRight 4U
 #define FC302_SEQ_OK 0U
 #define FC302_SEQ_Disabled 1U
 #define FC302_SEQ_IndexError 2U
 #define FC302_SEQ_SetCANPreOperational 3U
 #define FC302_SEQ_RestartCANnode 4U
 #define FC302_SEQ_ReadParameterTable 5U
 #define FC302_SEQ_WriteParameters 6U
 #define FC302_SEQ_StoreParameters 7U
 #define FC302_SEQ_CheckParamStored 8U
 #define FC302_SEQ_StartCANnode 9U
 #define FC302_SEQ_WaitDriveOperational 10U
 #define FC302_SEQ_Referencing 11U
 #define FC302_SEQ_MotorWiringFault 12U
 #define FC302_SEQ_RefNotFound 13U
 #define FC302_SEQ_ParameterError 14U
 #define FC302_SEQ_RefSwitchFault 15U
 #define FC302_SEQ_AutoTune 16U
 #define FC302_SEQ_Jog 17U
 #define FC302_SEQ_ReleaseSwitchFault 18U
 #define FC302_SEQ_ReceiveSwitchFault 19U
 #define FC302_SEQ_RailNotAligned 20U
 #define FC302_STW_Trip 101U
 #define FC302_STW_Error 102U
 #define FC302_STW_TripLock 103U
 #define FC302_STW_Warning 104U
 #define FC302_STW_DriveOverTemp 105U
 #define FC302_STW_DriveVoltageFault 106U
 #define FC302_STW_DriveTorqueLimit 107U
 #define FC302_STW_ThermalTimeLimit 108U
#else
 _GLOBAL_CONST unsigned short posnNameNone;
 _GLOBAL_CONST unsigned short posnNameTop;
 _GLOBAL_CONST unsigned short posnNameTopBagIn;
 _GLOBAL_CONST unsigned short posnNameTopBagOut;
 _GLOBAL_CONST unsigned short posnNameBottom;
 _GLOBAL_CONST unsigned short posnNameBottomBagIn;
 _GLOBAL_CONST unsigned short posnNameBottomBagOut;
 _GLOBAL_CONST unsigned short posnNameMiddle;
 _GLOBAL_CONST unsigned short posnNameMiddleBagIn;
 _GLOBAL_CONST unsigned short posnNameMiddleBagOut;
 _GLOBAL_CONST unsigned short posnNameHighLevel;
 _GLOBAL_CONST unsigned short posnNameHighLevelBagIn;
 _GLOBAL_CONST unsigned short posnNameHighLevelBagOut;
 _GLOBAL_CONST unsigned short posnNameLowLevel;
 _GLOBAL_CONST unsigned short posnNameLowLevelBagIn;
 _GLOBAL_CONST unsigned short posnNameLowLevelBagOut;
 _GLOBAL_CONST unsigned short posnNameMidLevel;
 _GLOBAL_CONST unsigned short posnNameMidLevelBagIn;
 _GLOBAL_CONST unsigned short posnNameMidLevelBagOut;
 _GLOBAL_CONST unsigned short posnNameDocking;
 _GLOBAL_CONST unsigned short posnNameDummy;
 _GLOBAL_CONST unsigned short posnNameLoading;
 _GLOBAL_CONST unsigned short posnNameLine;
 _GLOBAL_CONST unsigned short posnNameParking;
 _GLOBAL_CONST unsigned short posnNameRecirculation;
 _GLOBAL_CONST unsigned short posnNameSafety;
 _GLOBAL_CONST unsigned short posnNameWeighing;
 _GLOBAL_CONST unsigned short posnExtraNone;
 _GLOBAL_CONST unsigned short posnExtraLine1;
 _GLOBAL_CONST unsigned short posnExtraLine2;
 _GLOBAL_CONST unsigned short posnExtraLine3;
 _GLOBAL_CONST unsigned short posnExtraLine4;
 _GLOBAL_CONST unsigned short posnExtraLine5;
 _GLOBAL_CONST unsigned short posnExtraLine6;
 _GLOBAL_CONST unsigned short posnExtraLine7;
 _GLOBAL_CONST unsigned short posnExtraLine8;
 _GLOBAL_CONST unsigned short posnExtraLine9;
 _GLOBAL_CONST unsigned short posnExtraLine10;
 _GLOBAL_CONST unsigned short posnExtraLine11;
 _GLOBAL_CONST unsigned short posnExtraLine12;
 _GLOBAL_CONST unsigned short posnExtraLine13;
 _GLOBAL_CONST unsigned short posnExtraLine14;
 _GLOBAL_CONST unsigned short posnExtraLine15;
 _GLOBAL_CONST unsigned short posnExtraLine16;
 _GLOBAL_CONST unsigned short posnExtraLine17;
 _GLOBAL_CONST unsigned short posnExtraLine18;
 _GLOBAL_CONST unsigned short posnExtraLine19;
 _GLOBAL_CONST unsigned short posnExtraLine20;
 _GLOBAL_CONST unsigned short posnExtraLine21;
 _GLOBAL_CONST unsigned short posnExtraLine22;
 _GLOBAL_CONST unsigned short posnExtraLine23;
 _GLOBAL_CONST unsigned short posnExtraLine24;
 _GLOBAL_CONST unsigned short posnExtraLine25;
 _GLOBAL_CONST unsigned short posnExtraLine26;
 _GLOBAL_CONST unsigned short posnExtraLine27;
 _GLOBAL_CONST unsigned short posnExtraLine28;
 _GLOBAL_CONST unsigned short posnExtraLine29;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader1;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader2;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader3;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader4;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader5;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader6;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader7;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader8;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader9;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader10;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader11;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader12;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader13;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader14;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader15;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader16;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader17;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader18;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader19;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader20;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader21;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader22;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader23;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader24;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader25;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader26;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader27;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader28;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader29;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader30;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader31;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader32;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader33;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader34;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader35;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader36;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader37;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader38;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader39;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader40;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader41;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader42;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader43;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader44;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader45;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader46;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader47;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader48;
 _GLOBAL_CONST unsigned short posnExtraSeqHeader49;
 _GLOBAL_CONST unsigned char MaxRobo;
 _GLOBAL_CONST unsigned char MaxPositions;
 _GLOBAL_CONST unsigned short ModeNothing;
 _GLOBAL_CONST unsigned short ModeReference;
 _GLOBAL_CONST unsigned short ModeManualMove;
 _GLOBAL_CONST unsigned short ModePosnTune;
 _GLOBAL_CONST unsigned short ModeMovePosn;
 _GLOBAL_CONST unsigned short ActionNothing;
 _GLOBAL_CONST unsigned short ActionMoveUp;
 _GLOBAL_CONST unsigned short ActionMoveDown;
 _GLOBAL_CONST unsigned short ActionMoveLeft;
 _GLOBAL_CONST unsigned short ActionMoveRight;
 _GLOBAL_CONST unsigned char FC302_SEQ_OK;
 _GLOBAL_CONST unsigned char FC302_SEQ_Disabled;
 _GLOBAL_CONST unsigned char FC302_SEQ_IndexError;
 _GLOBAL_CONST unsigned char FC302_SEQ_SetCANPreOperational;
 _GLOBAL_CONST unsigned char FC302_SEQ_RestartCANnode;
 _GLOBAL_CONST unsigned char FC302_SEQ_ReadParameterTable;
 _GLOBAL_CONST unsigned char FC302_SEQ_WriteParameters;
 _GLOBAL_CONST unsigned char FC302_SEQ_StoreParameters;
 _GLOBAL_CONST unsigned char FC302_SEQ_CheckParamStored;
 _GLOBAL_CONST unsigned char FC302_SEQ_StartCANnode;
 _GLOBAL_CONST unsigned char FC302_SEQ_WaitDriveOperational;
 _GLOBAL_CONST unsigned char FC302_SEQ_Referencing;
 _GLOBAL_CONST unsigned char FC302_SEQ_MotorWiringFault;
 _GLOBAL_CONST unsigned char FC302_SEQ_RefNotFound;
 _GLOBAL_CONST unsigned char FC302_SEQ_ParameterError;
 _GLOBAL_CONST unsigned char FC302_SEQ_RefSwitchFault;
 _GLOBAL_CONST unsigned char FC302_SEQ_AutoTune;
 _GLOBAL_CONST unsigned char FC302_SEQ_Jog;
 _GLOBAL_CONST unsigned char FC302_SEQ_ReleaseSwitchFault;
 _GLOBAL_CONST unsigned char FC302_SEQ_ReceiveSwitchFault;
 _GLOBAL_CONST unsigned char FC302_SEQ_RailNotAligned;
 _GLOBAL_CONST unsigned char FC302_STW_Trip;
 _GLOBAL_CONST unsigned char FC302_STW_Error;
 _GLOBAL_CONST unsigned char FC302_STW_TripLock;
 _GLOBAL_CONST unsigned char FC302_STW_Warning;
 _GLOBAL_CONST unsigned char FC302_STW_DriveOverTemp;
 _GLOBAL_CONST unsigned char FC302_STW_DriveVoltageFault;
 _GLOBAL_CONST unsigned char FC302_STW_DriveTorqueLimit;
 _GLOBAL_CONST unsigned char FC302_STW_ThermalTimeLimit;
#endif




/* Datatypes and datatypes of function blocks */
typedef struct RoboPositionNames
{	unsigned short Name[30];
	unsigned short Extra[30];
} RoboPositionNames;

typedef struct FC032_Drive_Positions_Type
{	signed long RefOffset;
	signed long MaxSpeed;
	signed long CycleCount;
	signed long PositionNow;
	signed long OperationMode;
	signed long IOStatus;
	signed long Monitor;
	signed long SeqStep;
	signed long Posn[30];
} FC032_Drive_Positions_Type;

typedef struct FC302_Position_Type
{	struct FC032_Drive_Positions_Type Lift;
	struct FC032_Drive_Positions_Type Rotate;
} FC302_Position_Type;

typedef struct FC302_LiftPermenant
{	signed long CycleCount;
} FC302_LiftPermenant;

typedef struct FC302_RotatePermenant
{	signed long CycleCount;
} FC302_RotatePermenant;

typedef struct FC302_Drive_Permanent_Typ
{	struct FC302_LiftPermenant Lift;
	struct FC302_RotatePermenant Rotate;
} FC302_Drive_Permanent_Typ;

typedef struct FC302_LiftRemanent
{	signed long PosnRef;
} FC302_LiftRemanent;

typedef struct FC302_RotateRemanent
{	signed long PosnRef;
} FC302_RotateRemanent;

typedef struct FC302_Drive_Retain_Typ
{	struct FC302_LiftRemanent Lift;
	struct FC302_RotateRemanent Rotate;
} FC302_Drive_Retain_Typ;

typedef struct FC302_CAN_Typ
{	plcbit ModuleOk;
	unsigned short NodeStatus;
	unsigned short ControlWord;
	unsigned short StatusWord;
	unsigned short TargetVelocity;
	unsigned short ControlEffort;
} FC302_CAN_Typ;

typedef struct FC302_CAN_Scan_Typ
{	plctime Start;
	plctime End;
	unsigned short LastScan;
	unsigned short MinScan;
	unsigned short MaxScan;
	plcbit StartTrig;
	plcbit EndTrig;
} FC302_CAN_Scan_Typ;

typedef struct FC302_CTW_Typ
{	plcbit ExtRefSelectionLSB;
	plcbit ExtRefSelectionMSB;
	plcbit DC_Brake;
	plcbit Coasting;
	plcbit QuickStop;
	plcbit HoldOutputFreq;
	plcbit RampStopStart;
	plcbit ResetTrip;
	plcbit Jog;
	plcbit RampSelection;
	plcbit DataValid;
	plcbit Relay01Active;
	plcbit Relay02Active;
	plcbit ParaSetUpLSB;
	plcbit ParaSetUpMSB;
	plcbit Reverse;
} FC302_CTW_Typ;

typedef struct FC302_STW_Typ
{	plcbit ControlReady;
	plcbit DriveReady;
	plcbit CoastingStop;
	plcbit Trip;
	plcbit Error;
	plcbit NotUsed;
	plcbit TripLock;
	plcbit Warning;
	plcbit SpeedReference;
	plcbit BusOperation;
	plcbit FreqLimitOk;
	plcbit DriveOverTemp;
	plcbit DriveVoltageFault;
	plcbit DriveTorqueLimit;
	plcbit ThermalTimerLimit;
	plcbit InOperation;
} FC302_STW_Typ;

typedef struct FC302_ControlIn
{	plcbit DoRef;
	unsigned short AutoTunePosn;
	plcbit AutoTuneReceive;
	plcstring sDevice[11];
	plcstring sParTblName[11];
	unsigned char Node;
	plcbit DisableDrive;
	plcbit I_RefPosn;
	plcbit I_ForwardLimitOk;
	plcbit I_ReverseLimitOk;
	plcbit I_RailOkRelease;
	plcbit I_RailOkReceive;
	plcbit JogForwards;
	plcbit JogReverse;
	plcbit EStop;
	signed long PosnReq;
	signed long MaxSpeed;
	plcbit PowerSave;
	unsigned char RailAlign;
	plcbit Run;
} FC302_ControlIn;

typedef struct FC302_ControlOut
{	signed short PosnNow;
	plcbit PosnOk;
	plcbit DriveDisabled;
	plcbit RefComplete;
	unsigned short AutoTunePosn;
	unsigned short Status;
} FC302_ControlOut;

typedef struct FC302_Parameter_Typ
{	unsigned short index;
	unsigned char subindex;
	unsigned char datalen;
	unsigned long data;
} FC302_Parameter_Typ;

typedef struct FC302_Motor_Info
{	signed short Value;
} FC302_Motor_Info;

typedef struct FC302_ParamWrite
{	unsigned short ErrorCount;
	unsigned short Index;
	unsigned char SubIndex;
} FC302_ParamWrite;

typedef struct FC302_Lift
{	unsigned short SeqStep;
	signed long Encoder;
	unsigned long PosnActRaw;
	signed long PosnAct;
	signed long PosnNow;
	float PulsePer10th_mm;
	signed long DistRemain;
	float mmPerHz;
	unsigned short RunHz;
	signed long StopDist;
	plcbit RunForwards;
	plcbit RunReverse;
	unsigned short RunFreq;
	signed long RampStart;
	signed long RampTime;
	signed long RampMax;
	struct FC302_CAN_Typ CAN;
	struct FC302_CAN_Scan_Typ Scan;
	struct FC302_CTW_Typ CTW;
	struct FC302_STW_Typ STW;
	struct FC302_ControlIn SeqIn;
	struct FC302_ControlOut SeqOut;
	struct FC302_Parameter_Typ ParaList[60];
	struct FC302_Motor_Info Motor;
	struct FC302_ParamWrite ParamWrite;
	unsigned short ParameterCount;
	plcbit ModuleOK;
} FC302_Lift;

typedef struct FC302_Rotate
{	unsigned short SeqStep;
	signed long Encoder;
	unsigned long PosnActRaw;
	signed long PosnAct;
	signed long PosnNow;
	float PulsePer100th_Deg;
	signed long DistRemain;
	float mmPerHz;
	unsigned short RunHz;
	signed long StopDist;
	unsigned short RefOffsetDeg;
	plcbit RunForwards;
	plcbit RunReverse;
	unsigned short RunFreq;
	signed long RampStart;
	signed long RampTime;
	signed long RampMax;
	struct FC302_CAN_Typ CAN;
	struct FC302_CTW_Typ CTW;
	struct FC302_STW_Typ STW;
	struct FC302_CAN_Scan_Typ Scan;
	struct FC302_ControlIn SeqIn;
	struct FC302_ControlOut SeqOut;
	struct FC302_Parameter_Typ ParaList[60];
	struct FC302_Motor_Info Motor;
	struct FC302_ParamWrite ParamWrite;
	unsigned short ParameterCount;
	plcbit ModuleOK;
} FC302_Rotate;

typedef struct FC302_Drive_Typ
{	struct FC302_Lift Lift;
	struct FC302_Rotate Rotate;
} FC302_Drive_Typ;

typedef struct FC302_WriteParam
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned char node;
	unsigned short index;
	unsigned char subindex;
	unsigned long data;
	unsigned char bytelen;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	struct CANopenSDOWrite8 CANopenSDOWrite8_0;
	/* VAR_INPUT (digital) */
	plcbit enable;
} FC302_WriteParam_typ;

typedef struct FC302_ReadSTW
{
	/* VAR_INPUT (analog) */
	unsigned short StatusWord;
	/* VAR_OUTPUT (analog) */
	struct FC302_STW_Typ STW;
} FC302_ReadSTW_typ;

typedef struct FC302_WriteCTW
{
	/* VAR_INPUT (analog) */
	struct FC302_CTW_Typ CTW;
	/* VAR_OUTPUT (analog) */
	unsigned short ControlWord;
	/* VAR (analog) */
	unsigned short LocalControlWord;
} FC302_WriteCTW_typ;

typedef struct FC302_ReadParamTbl
{
	/* VAR_INPUT (analog) */
	unsigned long adrTableName;
	unsigned long adrDestTable;
	unsigned short ParamLimit;
	/* VAR_OUTPUT (analog) */
	unsigned short ParamCount;
	unsigned short Status;
	/* VAR (analog) */
	struct DatObjInfo DatObjInfo_0;
	struct DatObjRead DatObjRead_0;
	/* VAR_INPUT (digital) */
	plcbit Enable;
} FC302_ReadParamTbl_typ;

typedef struct FC302_ReadParam
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned char node;
	unsigned short index;
	unsigned char subindex;
	/* VAR_OUTPUT (analog) */
	unsigned long data;
	unsigned short status;
	/* VAR (analog) */
	unsigned char bytelen;
	struct CANopenSDORead8 CANopenSDORead8_0;
	/* VAR_INPUT (digital) */
	plcbit enable;
} FC302_ReadParam_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void FC302_WriteParam(struct FC302_WriteParam* inst);
_BUR_PUBLIC void FC302_ReadSTW(struct FC302_ReadSTW* inst);
_BUR_PUBLIC void FC302_WriteCTW(struct FC302_WriteCTW* inst);
_BUR_PUBLIC void FC302_ReadParamTbl(struct FC302_ReadParamTbl* inst);
_BUR_PUBLIC void FC302_ReadParam(struct FC302_ReadParam* inst);


#ifdef __cplusplus
};
#endif
#endif /* _FC302_ */

