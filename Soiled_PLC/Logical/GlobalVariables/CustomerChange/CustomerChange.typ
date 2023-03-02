(********************************************************************
 * COPYRIGHT -- HP
 ********************************************************************
 * Package: CustomerChange
 * File: CustomerChange.typ
 * Author: treamsbottom
 * Created: November 26, 2014
 ********************************************************************
 * Data types of package CustomerChange
 ********************************************************************)

TYPE
	CustChangeDisp_Typ : 	STRUCT 
		Message : STRING[32];
		MessageText_Colour : UINT;
		InputLock : UINT;
		InputText_Colour : UINT;
		New_CustomerNo : UDINT;
	END_STRUCT;
END_TYPE
