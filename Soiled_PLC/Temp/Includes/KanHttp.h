/* Automation Studio generated header file */
/* Do not edit ! */
/* KanHttp  */

#ifndef _KANHTTP_
#define _KANHTTP_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
/* Datatypes and datatypes of function blocks */
typedef struct httpGetParameter
{
	/* VAR_INPUT (analog) */
	plcstring searchPropertyName[51];
	plcstring searchEndProperty[51];
	unsigned short searchOffset;
	plcstring searchString[5001];
	/* VAR_OUTPUT (analog) */
	plcstring outputValue[101];
	unsigned short status;
	unsigned short postionFound;
	/* VAR (analog) */
	plcstring matchString[51];
	unsigned char inputData[5000];
	unsigned short endIndex;
	unsigned short startPosition;
	unsigned short n;
	signed long compare;
	unsigned short length;
	unsigned short startoffset;
	plcstring search[51];
} httpGetParameter_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void httpGetParameter(struct httpGetParameter* inst);


#ifdef __cplusplus
};
#endif
#endif /* _KANHTTP_ */

