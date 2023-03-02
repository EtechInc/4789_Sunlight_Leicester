/* Automation Studio generated header file */
/* Do not edit ! */
/* SUP  */

#ifndef _SUP_
#define _SUP_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
/* Datatypes and datatypes of function blocks */
typedef struct getWaitingLongest
{
	/* VAR_INPUT (analog) */
	unsigned long settleTime;
	/* VAR_OUTPUT (analog) */
	unsigned short waitingLongest;
	/* VAR (analog) */
	unsigned char n;
	unsigned long waitTime[20];
	/* VAR_INPUT (digital) */
	plcbit input[20];
} getWaitingLongest_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void getWaitingLongest(struct getWaitingLongest* inst);


#ifdef __cplusplus
};
#endif
#endif /* _SUP_ */

