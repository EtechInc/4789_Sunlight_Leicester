(********************************************************************
 * COPYRIGHT -- HP
 ********************************************************************
 * Package: CustomLogs
 * File: CustomLogs.typ
 * Author: treamsbottom
 * Created: November 06, 2014
 ********************************************************************
 * Data types of package CustomLogs
 ********************************************************************)

TYPE
	LoggerModule_typ : 	STRUCT 
		ident : UDINT;
		len : UDINT;
		memType : UDINT;
		ActIndex : UDINT;
		FormatVer : UDINT;
	END_STRUCT;
	Log_typ : 	STRUCT 
		ErrorNo : UDINT;
		Level : UDINT;
		pBinaryData : UDINT;
		lenBinaryData : UDINT;
		pAsciiString : UDINT;
	END_STRUCT;
END_TYPE
