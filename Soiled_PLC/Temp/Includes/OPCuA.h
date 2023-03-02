/* Automation Studio generated header file */
/* Do not edit ! */
/* OPCuA  */

#ifndef _OPCUA_
#define _OPCUA_
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
 #define MAX_LAYOUTS 9U
 #define MAX_DISPLAYS 8U
#else
 _GLOBAL_CONST unsigned char MAX_LAYOUTS;
 _GLOBAL_CONST unsigned char MAX_DISPLAYS;
#endif




/* Datatypes and datatypes of function blocks */
typedef struct DisplayLayoutEncoded_Typ
{	unsigned char data[44];
} DisplayLayoutEncoded_Typ;

typedef struct OPCuA_Display_typ
{	struct DisplayLayoutEncoded_Typ Layout[10];
} OPCuA_Display_typ;

typedef struct DispBag_typ
{	unsigned char Prg;
	unsigned char Dst;
	unsigned short Wgt;
	unsigned short Cnt;
	unsigned short Ur1;
	unsigned long Bid;
	unsigned long Cat;
	unsigned long Mis;
	unsigned long Cus;
	unsigned long Ur2;
	plcdt Timestamp;
} DispBag_typ;

typedef struct DispLayout_typ
{	unsigned short bag;
	plcstring displayID[6];
	unsigned short backcolour;
	struct DispBag_typ bagData;
} DispLayout_typ;

typedef struct Display_typ
{	struct DispLayout_typ Layout[10];
} Display_typ;

typedef struct EncodedBag_typ
{	unsigned char data[34];
} EncodedBag_typ;

typedef struct OPCuA_DisplayEncode_Bin
{
	/* VAR_INPUT (analog) */
	unsigned short displayIndex;
	unsigned short layoutIndex;
	struct DispLayout_typ layoutData;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned char outputData[44];
	/* VAR_INPUT (digital) */
	plcbit enable;
} OPCuA_DisplayEncode_Bin_typ;

typedef struct OPCuA_DisplayEncode_String
{
	/* VAR_INPUT (analog) */
	unsigned short displayIndex;
	unsigned short layoutIndex;
	struct DispLayout_typ layoutData;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	plcstring outputString[111];
	/* VAR (analog) */
	plcstring buildString[111];
	plcstring myValue[17];
	/* VAR_INPUT (digital) */
	plcbit enable;
} OPCuA_DisplayEncode_String_typ;

typedef struct OPCuA_BagEncode_Bin
{
	/* VAR_INPUT (analog) */
	unsigned short bagIndex;
	struct DispBag_typ bag;
	unsigned long pOutputData;
	unsigned long outputDataSize;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned char outputData[34];
	/* VAR (analog) */
	unsigned char (*buildData)[34];
	/* VAR_INPUT (digital) */
	plcbit enable;
} OPCuA_BagEncode_Bin_typ;

typedef struct OPCuA_DisplayDecode
{
	/* VAR_INPUT (analog) */
	unsigned long pInputData;
	unsigned long pBag;
	unsigned long sizeBag;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR_INPUT (digital) */
	plcbit enable;
} OPCuA_DisplayDecode_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void OPCuA_DisplayEncode_Bin(struct OPCuA_DisplayEncode_Bin* inst);
_BUR_PUBLIC void OPCuA_DisplayEncode_String(struct OPCuA_DisplayEncode_String* inst);
_BUR_PUBLIC void OPCuA_BagEncode_Bin(struct OPCuA_BagEncode_Bin* inst);
_BUR_PUBLIC void OPCuA_DisplayDecode(struct OPCuA_DisplayDecode* inst);


#ifdef __cplusplus
};
#endif
#endif /* _OPCUA_ */

