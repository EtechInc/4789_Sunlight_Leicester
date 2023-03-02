/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _KGSTRING_
#define _KGSTRING_

#include <bur/plctypes.h>

#ifdef _SG4
	#include "standard.h"
	#include "runtime.h"
	#include "SYS_LIB.h"
	#include "AsTime.h"
	#include "AsString.h"
#endif

#ifdef _SG3
	#include "standard.h"
	#include "runtime.h"
	#include "SYS_LIB.h"
	#include "AsTime.h"
	#include "AsString.h"
#endif

#ifdef _SGC
	#include "standard.h"
	#include "runtime.h"
	#include "SYS_LIB.h"
	#include "AsTime.h"
	#include "AsString.h"
#endif

/* Datatypes and datatypes of function blocks */
typedef struct dateToString
{
	/* VAR_INPUT (analog) */
	unsigned long pString;
	plctime period;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	plctime ETtime;
	struct RTCtime_typ rtc_gettime;
	plcstring String0[11];
	unsigned long pString0;
	unsigned short len;
	struct TON zzTON00000;
	/* VAR (digital) */
	plcbit bTimeOut;
} dateToString_typ;



/* Prototyping of functions and function blocks */
void dateToString(struct dateToString* inst);
unsigned short NetMaskToStr(unsigned long pStrNetMask, unsigned long pStrZahl, unsigned short uiMode);
unsigned short strToNetMask(unsigned long pStrZahl, unsigned long pStrNetMask, unsigned short uiMode);
unsigned short udiToString(unsigned long pString, unsigned long Wert, unsigned short Stellen);
signed long setStrLen(unsigned long pString, unsigned short len);
signed long uiToString(unsigned long pString, unsigned short Wert, unsigned short Stellen);
signed long dtToString(unsigned long pString, plcdt dt1, unsigned short mode);
unsigned short secToMMSS(unsigned long pString, unsigned short Wert);
unsigned short secToHHMM(unsigned long pString, unsigned long Wert);


__asm__(".section \".plc\"");

__asm__(".previous");


#endif /* _KGSTRING_ */

