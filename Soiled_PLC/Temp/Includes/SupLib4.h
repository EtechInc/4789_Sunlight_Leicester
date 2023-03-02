/* Automation Studio generated header file */
/* Do not edit ! */
/* SupLib4 1.00.0 */

#ifndef _SUPLIB4_
#define _SUPLIB4_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _SupLib4_VERSION
#define _SupLib4_VERSION 1.00.0
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
/* Datatypes and datatypes of function blocks */
typedef struct stUINT_ASC
{
	/* VAR_INPUT (analog) */
	unsigned short Input;
	/* VAR_OUTPUT (analog) */
	unsigned char Output[4];
	/* VAR (analog) */
	unsigned short Value[4];
	unsigned short n;
	/* VAR_INPUT (digital) */
	plcbit Enable;
} stUINT_ASC_typ;

typedef struct DIS4
{
	/* VAR_INPUT (analog) */
	unsigned short RegisterIN;
	/* VAR_OUTPUT (analog) */
	unsigned short Out1s;
	unsigned short Out10s;
	unsigned short Out100s;
	unsigned short Out1000s;
	/* VAR (analog) */
	unsigned short a;
	unsigned short b;
	unsigned short c;
	unsigned short d;
	unsigned short remain;
	/* VAR_INPUT (digital) */
	plcbit Enable;
} DIS4_typ;

typedef struct stUNI5
{
	/* VAR_INPUT (analog) */
	unsigned char DataIN[5];
	/* VAR_OUTPUT (analog) */
	unsigned short DataOUT;
	/* VAR (analog) */
	unsigned long Data;
	/* VAR_INPUT (digital) */
	plcbit Enable;
} stUNI5_typ;

typedef struct stASC_UINT
{
	/* VAR_INPUT (analog) */
	unsigned char Input[4];
	/* VAR_OUTPUT (analog) */
	unsigned short Output;
	/* VAR (analog) */
	unsigned short Internal;
	/* VAR_INPUT (digital) */
	plcbit Enable;
} stASC_UINT_typ;

typedef struct BIN_TO_BCD
{
	/* VAR_INPUT (analog) */
	unsigned long RegisterIN;
	/* VAR_OUTPUT (analog) */
	unsigned long RegisterOUT;
	/* VAR (analog) */
	unsigned long remain;
	unsigned long f;
	unsigned long e;
	unsigned long d;
	unsigned long c;
	unsigned long b;
	unsigned long a;
	/* VAR_INPUT (digital) */
	plcbit Enable;
} BIN_TO_BCD_typ;

typedef struct BCD_BIN_OUTPUT
{
	/* VAR_INPUT (analog) */
	unsigned long RegisterIN;
	/* VAR (analog) */
	unsigned long BCDCode;
	struct BIN_TO_BCD zzBIN_TO_BCD00000;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	plcbit BIN;
	/* VAR_OUTPUT (digital) */
	plcbit Output1;
	plcbit Output2;
	plcbit Output4;
	plcbit Output8;
	plcbit Output10;
	plcbit Output20;
	plcbit Output40;
	plcbit Output80;
	plcbit Output100;
	plcbit Output200;
	plcbit Output400;
	plcbit Output800;
	plcbit Output1000;
	plcbit Output2000;
	plcbit Output4000;
	plcbit Output8000;
	plcbit Output10000;
	plcbit Output20000;
	plcbit Output40000;
	plcbit Output80000;
	plcbit Output100000;
	plcbit Output200000;
	plcbit Output400000;
	plcbit Output800000;
} BCD_BIN_OUTPUT_typ;

typedef struct stUNI4
{
	/* VAR_INPUT (analog) */
	unsigned char DataIN[4];
	/* VAR_OUTPUT (analog) */
	unsigned short DataOUT;
	/* VAR_INPUT (digital) */
	plcbit Enable;
} stUNI4_typ;

typedef struct BIT_ENCODE
{
	/* VAR_OUTPUT (analog) */
	unsigned short Output;
	/* VAR_INPUT (digital) */
	plcbit Input[16];
} BIT_ENCODE_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void stUINT_ASC(struct stUINT_ASC* inst);
_BUR_PUBLIC void DIS4(struct DIS4* inst);
_BUR_PUBLIC void stUNI5(struct stUNI5* inst);
_BUR_PUBLIC void stASC_UINT(struct stASC_UINT* inst);
_BUR_PUBLIC void BCD_BIN_OUTPUT(struct BCD_BIN_OUTPUT* inst);
_BUR_PUBLIC void BIN_TO_BCD(struct BIN_TO_BCD* inst);
_BUR_PUBLIC void stUNI4(struct stUNI4* inst);
_BUR_PUBLIC void BIT_ENCODE(struct BIT_ENCODE* inst);


#ifdef __cplusplus
};
#endif
#endif /* _SUPLIB4_ */

