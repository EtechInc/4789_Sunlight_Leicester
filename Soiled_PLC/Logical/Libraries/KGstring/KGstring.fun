FUNCTION NetMaskToStr : UINT 
VAR
		udiZahl	:UDINT;	
		diZahl	:DINT;	
		udiLen	:UDINT;	
		udiErg	:UDINT;	
		offs	:UDINT;	
		i	:UINT;	
		uiCntDot	:UINT;	
		c	: REFERENCE TO USINT;	
	END_VAR
	VAR_INPUT
		pStrNetMask	:UDINT;	
		pStrZahl	:UDINT;	
		uiMode	:UINT;	
	END_VAR
END_FUNCTION
FUNCTION strToNetMask : UINT 
VAR
		udiMask	:UDINT;	
		udiDest	:UDINT;	
		udiLen	:UDINT;	
		usi1	:USINT;	
		usi2	:USINT;	
		usi3	:USINT;	
		usi4	:USINT;	
		i	:UINT;	
		udiMask1	: REFERENCE TO UDINT;	
		uiMAsk1	: REFERENCE TO UINT;	
		uiMask1	: REFERENCE TO UINT;	
		diMask1	: REFERENCE TO DINT;	
		pStr	: REFERENCE TO USINT;	
	END_VAR
	VAR_INPUT
		pStrZahl	:UDINT;	
		pStrNetMask	:UDINT;	
		uiMode	:UINT;	
	END_VAR
END_FUNCTION
FUNCTION udiToString : UINT 
VAR
		str10	:ARRAY [0..9] OF USINT;	
		udiLen	:UDINT;	
	END_VAR
	VAR_INPUT
		pString	:UDINT;	
		Wert	:UDINT;	
		Stellen	:UINT;	
	END_VAR
END_FUNCTION
FUNCTION setStrLen : DINT 
VAR
		sString	: REFERENCE TO STRING[80];	
		cString	: REFERENCE TO ARRAY [0..79] OF USINT;	
		i	:UINT;	
		NullFound	:BOOL;	
	END_VAR
	VAR_INPUT
		pString	:UDINT;	
		len	:UINT;	
	END_VAR
END_FUNCTION
FUNCTION uiToString : DINT 
VAR
		udiLen	:UDINT;	
		str10	:ARRAY [0..9] OF USINT;	
	END_VAR
	VAR_INPUT
		pString	:UDINT;	
		Wert	:UINT;	
		Stellen	:UINT;	
	END_VAR
END_FUNCTION
FUNCTION dtToString : DINT 
VAR
		TimeStructure	:DTStructure;	
		sYear	:STRING[5];	
		sMonth	:STRING[5];	
		sDay	:STRING[5];	
		sHour	:STRING[5];	
		sMinute	:STRING[5];	
		sSecond	:STRING[5];	
		lString	:UDINT;	
		posHH_0	:UDINT;	
	END_VAR
	VAR_INPUT
		pString	:UDINT;	
		dt1	:DATE_AND_TIME;	
		mode	:UINT;	
	END_VAR
END_FUNCTION
FUNCTION secToMMSS : UINT 
VAR
		uiMin	:UINT;	
		uiSek	:UINT;	
		strMin	:STRING[5];	
		udiLenMin	:UDINT;	
		strSek	:STRING[5];	
		udiLenSek	:UDINT;	
	END_VAR
	VAR_INPUT
		pString	:UDINT;	
		Wert	:UINT;	
	END_VAR
END_FUNCTION
FUNCTION secToHHMM : UINT 
VAR
		strMin	:STRING[10];	
		udiLenMin	:UDINT;	
		strStd	:STRING[10];	
		udiLenStd	:UDINT;	
		udiStd	:UDINT;	
		udiMin	:UDINT;	
	END_VAR
	VAR_INPUT
		pString	:UDINT;	
		Wert	:UDINT;	
	END_VAR
END_FUNCTION
FUNCTION_BLOCK dateToString
VAR
		bTimeOut	:BOOL;	
		ETtime	:TIME;	
		rtc_gettime	:RTCtime_typ;	
		String0	:STRING[10];	
		pString0	:UDINT;	
		len	:UINT;	
		zzTON00000	:TON;	
	END_VAR
	VAR_INPUT
		pString	:UDINT;	
		period	:TIME;	
	END_VAR
	VAR_OUTPUT
		status	:UINT;	
	END_VAR
END_FUNCTION_BLOCK
