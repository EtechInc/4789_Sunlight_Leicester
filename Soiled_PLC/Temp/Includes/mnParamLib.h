/* Automation Studio generated header file */
/* Do not edit ! */
/* mnParamLib  */

#ifndef _MNPARAMLIB_
#define _MNPARAMLIB_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "AsTime.h"
#endif
#ifdef _SG4
		#include "AsTime.h"
#endif
#ifdef _SGC
		#include "AsTime.h"
#endif


/* Constants */
#ifdef _REPLACE_CONST
 #define MNPARAM_MAXIDX_LOGICSTRUCT 250U
 #define MNPARAM_MAXIDX_CONTAINER 20U
 #define MNPARAM_MAXIDX_PARAMNUM 500U
 #define MNPARAM_MAXIDX_PARAMSTRING 200U
 #define MNPARAM_MAXIDX_CSVNUM 10000U
 #define MNPARAM_MAXIDX_CSVSTRING 500U
 #define MNPARAM_CSV_FILEEND 255U
 #define MNPARAM_CSV_COMMENT 254U
 #define MNPARAM_CSV_HEADER_VERSION 253U
 #define MNPARAM_CSV_HEADER_MACHINENO 252U
 #define MNPARAM_CSV_HEADER_TIMESTAMP 251U
 #define MNPARAM_CSV_LANGUAGEDEF 248U
 #define MNPARAM_CSV_LAN_HELPTEXT 210U
 #define MNPARAM_CSV_LAN_TEXT 200U
 #define MNPARAM_CSV_DEF_CONTAINER 140U
 #define MNPARAM_CSV_DEF_LOGSTRUC 130U
 #define MNPARAM_CSV_DEF_STRING 120U
 #define MNPARAM_CSV_DEF_REAL 111U
 #define MNPARAM_CSV_DEF_NUM 110U
 #define MNPARAM_CSV_IP 90U
 #define MNPARAM_CSV_CP 81U
 #define MNPARAM_CSV_TOC 80U
 #define MNPARAM_CSV_DAT_STRING 20U
 #define MNPARAM_CSV_DAT_REAL 11U
 #define MNPARAM_CSV_DAT_NUM 10U
#else
 _GLOBAL_CONST unsigned short MNPARAM_MAXIDX_LOGICSTRUCT;
 _GLOBAL_CONST unsigned short MNPARAM_MAXIDX_CONTAINER;
 _GLOBAL_CONST unsigned short MNPARAM_MAXIDX_PARAMNUM;
 _GLOBAL_CONST unsigned short MNPARAM_MAXIDX_PARAMSTRING;
 _GLOBAL_CONST unsigned short MNPARAM_MAXIDX_CSVNUM;
 _GLOBAL_CONST unsigned short MNPARAM_MAXIDX_CSVSTRING;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_FILEEND;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_COMMENT;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_HEADER_VERSION;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_HEADER_MACHINENO;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_HEADER_TIMESTAMP;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_LANGUAGEDEF;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_LAN_HELPTEXT;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_LAN_TEXT;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_DEF_CONTAINER;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_DEF_LOGSTRUC;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_DEF_STRING;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_DEF_REAL;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_DEF_NUM;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_IP;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_CP;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_TOC;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_DAT_STRING;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_DAT_REAL;
 _GLOBAL_CONST unsigned short MNPARAM_CSV_DAT_NUM;
#endif




/* Datatypes and datatypes of function blocks */
typedef struct mnParam_HeaderDoRow_typ
{	unsigned long lActEndPos;
} mnParam_HeaderDoRow_typ;

typedef struct mnParam_HeaderVersionRow_typ
{	unsigned short wVersion;
	unsigned short wReserve;
	plcdt dtTimestamp;
	plcwstring utfMachineType[12];
	plcwstring utfMachineSubType[12];
} mnParam_HeaderVersionRow_typ;

typedef struct mnParam_HeaderTimeRow_typ
{	plcdt dtTimestamp;
} mnParam_HeaderTimeRow_typ;

typedef struct mnParam_HeaderMachineNoRow_typ
{	plcwstring utfMachineNo[16];
} mnParam_HeaderMachineNoRow_typ;

typedef struct mnParam_ContainerHeader_typ
{	plcbit xWriteProtected;
	unsigned char bReserve[3];
} mnParam_ContainerHeader_typ;

typedef struct mnParam_CProw_typ
{	plcstring sCategory[12];
	plcwstring utfCategoryName[32];
	plcdt dtTimeStamp;
	unsigned short wProgramNo;
	unsigned short wLoadrate;
	float rSoilfactor;
	unsigned short wColFor;
	unsigned short wColBack;
} mnParam_CProw_typ;

typedef struct mnParam_LCIDrow_typ
{	unsigned short LCID;
	plcwstring utfName[32];
} mnParam_LCIDrow_typ;

typedef struct mnParam_HelpTxtRow_typ
{	unsigned short LCID;
	unsigned short FunctionID;
	unsigned short TextNo;
	plcwstring utfHelpText[256];
} mnParam_HelpTxtRow_typ;

typedef struct mnParam_TxtRow_typ
{	unsigned short LCID;
	unsigned short FunctionID;
	unsigned short TextNo;
	plcwstring utfText[64];
} mnParam_TxtRow_typ;

typedef struct mnParam_ContainerRow_typ
{	signed char siContainerID;
	unsigned char bDirectParam;
	plcstring sNameDataObj[12];
	plcstring sNameCsv[32];
	unsigned short wMinBound;
	unsigned short wDimension;
	plcstring sStrucRoot[32];
	signed long lCountNum;
	signed long lCountString;
} mnParam_ContainerRow_typ;

typedef struct mnParam_LogicalStructRow_typ
{	unsigned short wLogStrucNo;
	unsigned short wMinBound;
	unsigned short wDimension;
	signed char siWriteAccess;
	signed char siVisibleAccess;
	signed short iReferenz;
	unsigned short wRefVisible;
	unsigned short wRefText;
	unsigned char bFormatArray;
	unsigned char bReserve;
	plcwstring utfMachineSubType[12];
	plcwstring utfLogStrucName[32];
} mnParam_LogicalStructRow_typ;

typedef struct mnParam_ParamNumRow_typ
{	unsigned short wIdxNumPar;
	unsigned short wFunction_ID;
	unsigned short wParNo;
	signed char siWriteAccess;
	signed char siVisibleAccess;
	plcstring sAdresse[64];
	unsigned short wUnitID;
	unsigned short wMinBound;
	unsigned short wDimension;
	unsigned short wReferenz;
	signed long diMinValue;
	signed long diMaxValue;
	signed long diDefValue;
	plcwstring utfMachineSubType[12];
	unsigned short wITIdx;
	unsigned char bRowType;
	unsigned char bInputType;
	unsigned short wRefVisible;
	unsigned short wRefVisibleType;
	unsigned short wRefText;
} mnParam_ParamNumRow_typ;

typedef struct mnParam_ParamStringRow_typ
{	unsigned short wIdxStringPar;
	unsigned short wFunction_ID;
	unsigned short wParNo;
	unsigned char bLenght;
	signed char siWriteAccess;
	signed char siVisibleAccess;
	unsigned char bReserve;
	plcstring sAdresse[64];
	unsigned short wMinBound;
	unsigned short wDimension;
	unsigned short wReferenz;
	plcwstring utfDefValue[32];
	plcwstring utfMachineSubType[12];
	unsigned short wRefVisible;
	unsigned short wRefVisibleType;
	unsigned short wRefText;
} mnParam_ParamStringRow_typ;

typedef struct mnParam_CsvNumRow_typ
{	unsigned short wIdxNumPar;
	plcbit xChanged;
	unsigned char bRowType;
	signed long diValue;
	unsigned short wArrIdx1;
	unsigned short wArrIdx2;
	unsigned short wArrIdx3;
	unsigned short wArrIdx4;
	plcwstring utfMachineSubType[12];
} mnParam_CsvNumRow_typ;

typedef struct mnParam_CsvStringRow_typ
{	unsigned short wIdxStringPar;
	plcbit xChanged;
	unsigned char bReserve;
	plcwstring utfValue[32];
	unsigned short wArrIdx1;
	unsigned short wArrIdx2;
	unsigned short wArrIdx3;
	unsigned short wArrIdx4;
	plcwstring utfMachineSubType[12];
} mnParam_CsvStringRow_typ;

typedef struct mnParam_CsvIPRow_typ
{	plcwstring utfIP_Adress[16];
	plcwstring utfGateway[16];
} mnParam_CsvIPRow_typ;

typedef struct mnParam_CsvContent_typ
{	signed char iContainerID;
	plcbit xExist;
	unsigned short wInstance;
	plcdt dtTimestamp;
} mnParam_CsvContent_typ;

typedef struct mnParam_ContainerDynHeader_typ
{	struct mnParam_HeaderDoRow_typ Do;
	struct mnParam_HeaderVersionRow_typ Version;
	struct mnParam_HeaderTimeRow_typ Time;
} mnParam_ContainerDynHeader_typ;

typedef struct mnParam_ContainerDyn_typ
{	struct mnParam_ContainerDynHeader_typ Header;
	struct mnParam_ContainerRow_typ Container[21];
} mnParam_ContainerDyn_typ;

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct mnParam_LogicalStructDyn_typ
{	struct mnParam_ContainerDynHeader_typ Header;
	struct mnParam_LogicalStructRow_typ LogicalStruct[250];
} mnParam_LogicalStructDyn_typ;
#else
/* Data type mnParam_LogicalStructDyn_typ not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct mnParam_ParamNumDyn_typ
{	struct mnParam_ContainerDynHeader_typ Header;
	struct mnParam_ParamNumRow_typ ParamNum[500];
} mnParam_ParamNumDyn_typ;
#else
/* Data type mnParam_ParamNumDyn_typ not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct mnParam_ParamStringDyn_typ
{	struct mnParam_ContainerDynHeader_typ Header;
	struct mnParam_ParamStringRow_typ ParamString[200];
} mnParam_ParamStringDyn_typ;
#else
/* Data type mnParam_ParamStringDyn_typ not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct mnParam_CsvDynHeader_typ
{	struct mnParam_HeaderDoRow_typ Do;
	struct mnParam_HeaderVersionRow_typ Version;
	struct mnParam_HeaderTimeRow_typ Time;
	struct mnParam_HeaderMachineNoRow_typ MachineNo;
	struct mnParam_ContainerHeader_typ Container;
} mnParam_CsvDynHeader_typ;

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct mnParam_CsvNumDyn_typ
{	struct mnParam_CsvDynHeader_typ Header;
	struct mnParam_CsvNumRow_typ CsvNum[10000];
} mnParam_CsvNumDyn_typ;
#else
/* Data type mnParam_CsvNumDyn_typ not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct mnParam_CsvStringDyn_typ
{	struct mnParam_CsvDynHeader_typ Header;
	struct mnParam_CsvStringRow_typ CsvString[500];
} mnParam_CsvStringDyn_typ;
#else
/* Data type mnParam_CsvStringDyn_typ not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct mnParam_BinarySearchInNumeric
{
	/* VAR_INPUT (analog) */
	struct mnParam_CsvNumRow_typ CsvStructNum;
	unsigned long lpList;
	unsigned long lMaxRow;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned long lFoundRow;
	/* VAR (analog) */
	struct mnParam_CsvNumDyn_typ* _CsvStructNumDyn;
	unsigned long _lMin;
	unsigned long _lMax;
	unsigned long _lMid;
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_BinarySearchInNumeric_typ;

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct mnParam_CountLines
{
	/* VAR_INPUT (analog) */
	unsigned short MaxLines;
	unsigned long pAdresses;
	unsigned long pLens;
	unsigned long pFile;
	unsigned long FileSize;
	/* VAR_OUTPUT (analog) */
	unsigned short CntLines;
	unsigned short status;
	/* VAR (analog) */
	unsigned long (*_plAdresses)[20000];
	unsigned short (*_pwLens)[20000];
	unsigned long _p;
	unsigned short* _pChar;
	unsigned long _lDif;
	/* VAR_INPUT (digital) */
	plcbit enable;
	/* VAR (digital) */
	plcbit _xNewLine;
} mnParam_CountLines_typ;
#else
/* Data type mnParam_CountLines not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct mnParam_atodatetime
{
	/* VAR_INPUT (analog) */
	unsigned long pStr;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	plcdt dtTimeStamp;
	/* VAR (analog) */
	unsigned short _wPositionInTime;
	struct DTStructure _DateTime;
	plcstring _sSubString[8];
	plcstring _sStr[24];
} mnParam_atodatetime_typ;

typedef struct mnParam_GetNextSubstring
{
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned long Length;
	unsigned long pUtfCsvSubstring;
	/* VAR_IN_OUT (analog and digital) */
	unsigned long* pUtfCsvString;
	/* VAR (analog) */
	unsigned long _lLen;
	unsigned long _lAdrTab;
	plcwstring _utfSubString[256];
	/* VAR_INPUT (digital) */
	plcbit enable;
	/* VAR_OUTPUT (digital) */
	plcbit EndOfLine;
} mnParam_GetNextSubstring_typ;

typedef struct mnParam_GetCsvDat
{
	/* VAR_INPUT (analog) */
	plcwstring utfCsvString[300];
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short RowType;
	struct mnParam_HeaderVersionRow_typ HeaderVersion;
	struct mnParam_HeaderMachineNoRow_typ HeaderMachineNo;
	struct mnParam_HeaderTimeRow_typ HeaderTime;
	struct mnParam_ContainerRow_typ ContainerRow;
	struct mnParam_LogicalStructRow_typ LogicalStructRow;
	struct mnParam_ParamNumRow_typ ParamNumRow;
	struct mnParam_ParamStringRow_typ ParamStringRow;
	struct mnParam_CsvNumRow_typ CsvNumRow;
	struct mnParam_CsvStringRow_typ CsvStringRow;
	struct mnParam_CsvIPRow_typ CsvIPRow;
	struct mnParam_LCIDrow_typ CsvLCIDrow;
	struct mnParam_CProw_typ CsvCProw;
	struct mnParam_TxtRow_typ csvTextRow;
	struct mnParam_HelpTxtRow_typ csvHelpTextRow;
	/* VAR (analog) */
	plcwstring _utfRowType[16];
	signed long _diRowType;
	plcstring _sRowType[16];
	plcwstring _utfSubString[256];
	plcstring _sSubString[64];
	signed long _diVersion;
	struct mnParam_atodatetime _atodt;
	struct mnParam_GetNextSubstring _GetNextSubstring;
	unsigned long _pUtfCsvString;
	signed long _diNum;
	plcwstring _utfDataObj[12];
	float _rValue;
	signed long* _pdiValue;
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_GetCsvDat_typ;

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct mnParam_GetContainerOfParamNum
{
	/* VAR_INPUT (analog) */
	unsigned long pLogicStructs;
	unsigned short wMaxIdxLogicStructs;
	unsigned long pParamNum;
	/* VAR_OUTPUT (analog) */
	unsigned short wMinBound[4];
	unsigned short wDimension[4];
	unsigned short status;
	unsigned short wCountArray;
	signed short iContainer;
	/* VAR (analog) */
	struct mnParam_LogicalStructRow_typ (*_LS)[250];
	struct mnParam_ParamNumRow_typ* _PN;
	signed short _iIdxLS;
	unsigned char _bMaxCycle;
	unsigned short _i;
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_GetContainerOfParamNum_typ;
#else
/* Data type mnParam_GetContainerOfParamNum not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct mnParam_WritePVNum
{
	/* VAR_INPUT (analog) */
	unsigned long pAdress;
	signed long diValue;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	unsigned long _lPVadress;
	unsigned long _lPVlen;
	unsigned long _lPVdataType;
	unsigned long _lDataLen;
	unsigned short _wDataDimension;
	plcbit* _pBool;
	signed char* _pSint;
	signed short* _pInt;
	signed long* _pDint;
	unsigned char* _pUsint;
	unsigned short* _pUint;
	unsigned long* _pUdint;
	plcdt* _pDT;
	plctime* _pT;
	float* _pReal;
} mnParam_WritePVNum_typ;

typedef struct mnParam_WritePVrNum
{
	/* VAR_INPUT (analog) */
	unsigned long pAdress;
	float rValue;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	unsigned long _lPVadress;
	unsigned long _lPVlen;
	unsigned long _lPVdataType;
	unsigned long _lDataLen;
	unsigned short _wDataDimension;
	float* _pReal;
} mnParam_WritePVrNum_typ;

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct mnParam_GetContainerOfParamStrin
{
	/* VAR_INPUT (analog) */
	unsigned long pLogicStructs;
	unsigned short wMaxIdxLogicStructs;
	unsigned long pParamString;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short wMinBound[4];
	unsigned short wDimension[4];
	unsigned short wCountArray;
	signed short iContainer;
	/* VAR (analog) */
	struct mnParam_LogicalStructRow_typ (*_LS)[250];
	struct mnParam_ParamStringRow_typ* _PS;
	unsigned char _bMaxCycle;
	signed short _iIdxLS;
	unsigned short _i;
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_GetContainerOfParamStrin_typ;
#else
/* Data type mnParam_GetContainerOfParamStrin not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct mnParam_WritePVString
{
	/* VAR_INPUT (analog) */
	unsigned long pAdress;
	unsigned long p_utfValue;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	unsigned long _lPVadress;
	unsigned long _lPVlen;
	unsigned long _lPVdataType;
	unsigned long _lDataLen;
	unsigned short _wDataDimension;
	unsigned short _utfValue[32];
} mnParam_WritePVString_typ;

typedef struct mnParam_BinarySearchInString
{
	/* VAR_INPUT (analog) */
	unsigned long lpList;
	unsigned long lMaxRow;
	struct mnParam_CsvStringRow_typ CsvStructString;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned long lFoundRow;
	/* VAR (analog) */
	struct mnParam_CsvStringDyn_typ* _CsvStructStringDyn;
	unsigned long _lMin;
	unsigned long _lMax;
	unsigned long _lMid;
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_BinarySearchInString_typ;

typedef struct mnParam_WriteCSV255_Mem
{
	/* VAR_INPUT (analog) */
	unsigned long pMem;
	unsigned long lMaxSize;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR_IN_OUT (analog and digital) */
	unsigned long* lSize;
	/* VAR (analog) */
	unsigned short (*_pUtfString)[5];
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_WriteCSV255_Mem_typ;

typedef struct mnParam_WriteBOM_Mem
{
	/* VAR_INPUT (analog) */
	unsigned long pMem;
	unsigned long lMaxSize;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR_IN_OUT (analog and digital) */
	unsigned long* lSize;
	/* VAR (analog) */
	unsigned short* _pUtfString;
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_WriteBOM_Mem_typ;

typedef struct mnParam_WriteCSV254_Mem
{
	/* VAR_INPUT (analog) */
	unsigned long pMem;
	unsigned long lMaxSize;
	plcstring sComment[64];
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR_IN_OUT (analog and digital) */
	unsigned long* lSize;
	/* VAR (analog) */
	unsigned short (*_pUtfString)[4];
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_WriteCSV254_Mem_typ;

typedef struct mnParam_WriteNewline_Mem
{
	/* VAR_INPUT (analog) */
	unsigned long pMem;
	unsigned long lMaxSize;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR_IN_OUT (analog and digital) */
	unsigned long* lSize;
	/* VAR (analog) */
	unsigned short (*_pUtfString)[2];
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_WriteNewline_Mem_typ;

typedef struct mnParam_datetimetoa
{
	/* VAR_INPUT (analog) */
	plcdt dtTimestamp;
	/* VAR_OUTPUT (analog) */
	plcstring sDateTime[20];
	/* VAR (analog) */
	struct DTStructure _dtStruc;
	plcstring _s2dig[3];
	unsigned char (*_b2dig)[2];
} mnParam_datetimetoa_typ;

typedef struct mnParam_datetoa
{
	/* VAR_INPUT (analog) */
	plcdt dtTimestamp;
	/* VAR_OUTPUT (analog) */
	plcstring sDate[12];
	/* VAR (analog) */
	struct DTStructure _dtStruc;
	plcstring _s2dig[3];
	unsigned char (*_b2dig)[2];
} mnParam_datetoa_typ;

typedef struct mnParam_WriteCSV253_Mem
{
	/* VAR_INPUT (analog) */
	unsigned long pMem;
	unsigned long lMaxSize;
	struct mnParam_HeaderVersionRow_typ VersionRow;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR_IN_OUT (analog and digital) */
	unsigned long* lSize;
	/* VAR (analog) */
	unsigned short (*_pUtfString)[12];
	plcstring _sVersion[6];
	unsigned long _lLen;
	struct mnParam_datetimetoa _dttoa;
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_WriteCSV253_Mem_typ;

typedef struct mnParam_WriteCSV252_Mem
{
	/* VAR_INPUT (analog) */
	unsigned long pMem;
	unsigned long lMaxSize;
	struct mnParam_HeaderMachineNoRow_typ MachineNoRow;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR_IN_OUT (analog and digital) */
	unsigned long* lSize;
	/* VAR (analog) */
	unsigned short (*_pUtfString)[12];
	unsigned long _lLen;
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_WriteCSV252_Mem_typ;

typedef struct mnParam_WriteCSV251_Mem
{
	/* VAR_INPUT (analog) */
	unsigned long pMem;
	unsigned long lMaxSize;
	struct mnParam_HeaderTimeRow_typ TimeRow;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR_IN_OUT (analog and digital) */
	unsigned long* lSize;
	/* VAR (analog) */
	unsigned short (*_pUtfString)[12];
	struct mnParam_datetimetoa _dttoa;
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_WriteCSV251_Mem_typ;

typedef struct mnParam_WriteCSV10_Mem
{
	/* VAR_INPUT (analog) */
	unsigned long pMem;
	unsigned long lMaxSize;
	struct mnParam_CsvNumRow_typ NumRow;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR_IN_OUT (analog and digital) */
	unsigned long* lSize;
	/* VAR (analog) */
	unsigned short (*_pUtfString)[12];
	plcstring _sNumeric[12];
	unsigned long _lLen;
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_WriteCSV10_Mem_typ;

typedef struct mnParam_WriteCSV20_Mem
{
	/* VAR_INPUT (analog) */
	unsigned long pMem;
	unsigned long lMaxSize;
	struct mnParam_CsvStringRow_typ StringRow;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR_IN_OUT (analog and digital) */
	unsigned long* lSize;
	/* VAR (analog) */
	unsigned short (*_pUtfString)[12];
	plcstring _sNumeric[12];
	unsigned long _lLen;
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_WriteCSV20_Mem_typ;

typedef struct mnParam_WriteCSV80_Mem
{
	/* VAR_INPUT (analog) */
	unsigned long pMem;
	unsigned long lMaxSize;
	struct mnParam_CsvContent_typ ContentRow;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR_IN_OUT (analog and digital) */
	unsigned long* lSize;
	/* VAR (analog) */
	unsigned short (*_pUtfString)[16];
	plcstring _sValue[12];
	unsigned long _lLen;
	struct mnParam_datetimetoa _dttoa;
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_WriteCSV80_Mem_typ;

typedef struct mnParam_WriteCSV81_Mem
{
	/* VAR_INPUT (analog) */
	unsigned long pMem;
	unsigned long lMaxSize;
	struct mnParam_CProw_typ CPRow;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR_IN_OUT (analog and digital) */
	unsigned long* lSize;
	/* VAR (analog) */
	unsigned short (*_pUtfString)[16];
	plcstring _sValue[24];
	unsigned long _lLen;
	struct mnParam_datetimetoa _dttoa;
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_WriteCSV81_Mem_typ;

typedef struct mnParam_WriteCSV90_Mem
{
	/* VAR_INPUT (analog) */
	unsigned long pMem;
	unsigned long lMaxSize;
	struct mnParam_CsvIPRow_typ IPRow;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR_IN_OUT (analog and digital) */
	unsigned long* lSize;
	/* VAR (analog) */
	unsigned short (*_pUtfString)[16];
	unsigned long _lLen;
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_WriteCSV90_Mem_typ;

typedef struct mnParam_WriteCSV11_Mem
{
	/* VAR_INPUT (analog) */
	unsigned long pMem;
	unsigned long lMaxSize;
	struct mnParam_CsvNumRow_typ NumRow;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR_IN_OUT (analog and digital) */
	unsigned long* lSize;
	/* VAR (analog) */
	unsigned short (*_pUtfString)[12];
	plcstring _sNumeric[32];
	unsigned long _lLen;
	signed long* _pdiValue;
	float _rValue;
	/* VAR_INPUT (digital) */
	plcbit enable;
} mnParam_WriteCSV11_Mem_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void mnParam_BinarySearchInNumeric(struct mnParam_BinarySearchInNumeric* inst);
_BUR_PUBLIC void mnParam_CountLines(struct mnParam_CountLines* inst);
_BUR_PUBLIC void mnParam_GetCsvDat(struct mnParam_GetCsvDat* inst);
_BUR_PUBLIC void mnParam_atodatetime(struct mnParam_atodatetime* inst);
_BUR_PUBLIC void mnParam_GetNextSubstring(struct mnParam_GetNextSubstring* inst);
_BUR_PUBLIC void mnParam_GetContainerOfParamNum(struct mnParam_GetContainerOfParamNum* inst);
_BUR_PUBLIC void mnParam_WritePVNum(struct mnParam_WritePVNum* inst);
_BUR_PUBLIC void mnParam_WritePVrNum(struct mnParam_WritePVrNum* inst);
_BUR_PUBLIC void mnParam_GetContainerOfParamStrin(struct mnParam_GetContainerOfParamStrin* inst);
_BUR_PUBLIC void mnParam_WritePVString(struct mnParam_WritePVString* inst);
_BUR_PUBLIC void mnParam_BinarySearchInString(struct mnParam_BinarySearchInString* inst);
_BUR_PUBLIC void mnParam_WriteCSV255_Mem(struct mnParam_WriteCSV255_Mem* inst);
_BUR_PUBLIC void mnParam_WriteBOM_Mem(struct mnParam_WriteBOM_Mem* inst);
_BUR_PUBLIC void mnParam_WriteCSV254_Mem(struct mnParam_WriteCSV254_Mem* inst);
_BUR_PUBLIC void mnParam_WriteNewline_Mem(struct mnParam_WriteNewline_Mem* inst);
_BUR_PUBLIC void mnParam_datetimetoa(struct mnParam_datetimetoa* inst);
_BUR_PUBLIC void mnParam_datetoa(struct mnParam_datetoa* inst);
_BUR_PUBLIC void mnParam_WriteCSV253_Mem(struct mnParam_WriteCSV253_Mem* inst);
_BUR_PUBLIC void mnParam_WriteCSV252_Mem(struct mnParam_WriteCSV252_Mem* inst);
_BUR_PUBLIC void mnParam_WriteCSV251_Mem(struct mnParam_WriteCSV251_Mem* inst);
_BUR_PUBLIC void mnParam_WriteCSV10_Mem(struct mnParam_WriteCSV10_Mem* inst);
_BUR_PUBLIC void mnParam_WriteCSV20_Mem(struct mnParam_WriteCSV20_Mem* inst);
_BUR_PUBLIC void mnParam_WriteCSV80_Mem(struct mnParam_WriteCSV80_Mem* inst);
_BUR_PUBLIC void mnParam_WriteCSV81_Mem(struct mnParam_WriteCSV81_Mem* inst);
_BUR_PUBLIC void mnParam_WriteCSV90_Mem(struct mnParam_WriteCSV90_Mem* inst);
_BUR_PUBLIC void mnParam_WriteCSV11_Mem(struct mnParam_WriteCSV11_Mem* inst);
_BUR_PUBLIC unsigned short GetArrayPV(unsigned long pPV, unsigned long pStructRoot, unsigned long pPVFilled, unsigned short idx1, unsigned short idx2, unsigned short idx3, unsigned short idx4);


#ifdef __cplusplus
};
#endif
#endif /* _MNPARAMLIB_ */

