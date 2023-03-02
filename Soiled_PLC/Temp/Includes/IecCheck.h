/* Automation Studio generated header file */
/* Do not edit ! */
/* IecCheck  */

#ifndef _IECCHECK_
#define _IECCHECK_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "AsString.h"
		#include "sys_lib.h"
#endif
#ifdef _SG4
		#include "AsString.h"
		#include "sys_lib.h"
#endif
#ifdef _SGC
		#include "AsString.h"
		#include "sys_lib.h"
#endif





/* Prototyping of functions and function blocks */
_BUR_PUBLIC unsigned long CheckDivDWord(unsigned long divisor);
_BUR_PUBLIC unsigned short CheckDivWord(unsigned short divisor);
_BUR_PUBLIC unsigned char CheckDivByte(unsigned char divisor);
_BUR_PUBLIC float CheckDivReal(float divisor);
_BUR_PUBLIC double CheckDivLReal(double divisor);
_BUR_PUBLIC signed long CheckBounds(signed long index, signed long lower, signed long upper);
_BUR_PUBLIC signed long CheckRange(signed long value, signed long lower, signed long upper);
_BUR_PUBLIC signed long CheckSignedSubrange(signed long value, signed long lower, signed long upper);
_BUR_PUBLIC unsigned long CheckUnsignedSubrange(unsigned long value, unsigned long lower, unsigned long upper);
_BUR_PUBLIC unsigned long CheckReadAccess(unsigned long address);
_BUR_PUBLIC unsigned long CheckWriteAccess(unsigned long address);
_BUR_PUBLIC unsigned long MakeEntry(unsigned short number, signed long index, plcstring* text);


#ifdef __cplusplus
};
#endif
#endif /* _IECCHECK_ */

