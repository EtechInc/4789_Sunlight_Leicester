/* Automation Studio generated header file */
/* Do not edit ! */
/* DispLib  */

#ifndef _DISPLIB_
#define _DISPLIB_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
/* Datatypes and datatypes of function blocks */
typedef struct IP_Replace
{
	/* VAR_INPUT (analog) */
	unsigned long pIP_New;
	unsigned long pIP_Now;
	/* VAR_OUTPUT (analog) */
	plcstring IP_Replace[17];
	unsigned short status;
	/* VAR (analog) */
	unsigned short ethStatus;
	unsigned long Node;
	unsigned long IP_Hex;
	unsigned long IP_Build;
	unsigned long IP_HexReplace;
	unsigned long IP_HexNew;
} IP_Replace_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void IP_Replace(struct IP_Replace* inst);


#ifdef __cplusplus
};
#endif
#endif /* _DISPLIB_ */

