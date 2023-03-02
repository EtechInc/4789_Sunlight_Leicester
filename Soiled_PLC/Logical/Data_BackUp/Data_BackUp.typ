(********************************************************************
 * COPYRIGHT -- HP
 ********************************************************************
 * Package: Data_BackUp
 * File: Data_BackUp.typ
 * Author: treamsbottom
 * Created: March 20, 2014
 ********************************************************************
 * Data types of package Data_BackUp
 ********************************************************************)

TYPE
	enum_BackUpAreas : 
		(
		eBag,
		eC,
		eD,
		eD32,
		eReportBuffer,
		eRB_Posn,
		eRB_Perm,
		eSQL,
		eRFIDCodes
		);
	Debug_typ : 	STRUCT 
		WriteCount_MEM : UDINT;
		ReadCount_MEM : UDINT;
		WriteCount_USB : UDINT;
		ReadCount_USB : UDINT;
		WriteFail_MEM : UDINT;
		ReadFail_MEM : UDINT;
		WriteFail_USB : UDINT;
		ReadFail_USB : UDINT;
	END_STRUCT;
END_TYPE
