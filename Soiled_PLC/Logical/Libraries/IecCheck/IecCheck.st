(********************************************************************
 * COPYRIGHT -- HP
 ********************************************************************
 * Library: IecCheck
 * Author: treamsbottom
 * Created: November 13, 2013
 ********************************************************************
 * Implementation of library IecCheck
 ********************************************************************)

(* Check divisor for DINT and UDINT division *)
FUNCTION CheckDivDWord
	IF divisor=0 THEN
		CheckDivDWord:=1;
		MakeEntry(55555,divisor,'CheckDivDWord');
	ELSE
		CheckDivDWord:=divisor;
	END_IF
END_FUNCTION

(* Check divisor for INT and UINT division *)
FUNCTION CheckDivWord
	IF divisor=0 THEN
		CheckDivWord:=1;
		MakeEntry(55555,divisor,'CheckDivWord');
	ELSE
		CheckDivWord:=divisor;
	END_IF
END_FUNCTION

(* Check divisor for SINT and USINT division *)
FUNCTION CheckDivByte
	IF divisor=0 THEN
		CheckDivByte:=1;
		MakeEntry(55555,divisor,'CheckDivByte');
	ELSE
		CheckDivByte:=divisor;
	END_IF
END_FUNCTION

(* Check divisor for REAL division *)
FUNCTION CheckDivReal
	IF divisor=0 THEN
		CheckDivReal:=1;
		MakeEntry(55555,0,'CheckDivReal');
	ELSE
		CheckDivReal:=divisor;
	END_IF
END_FUNCTION

(* Check divisor for LREAL division *)
FUNCTION CheckDivLReal
	IF divisor=0 THEN
		CheckDivLReal:=1;
		MakeEntry(55555,0,'CheckDivLReal');
	ELSE
		CheckDivLReal:=divisor;
	END_IF
END_FUNCTION

(* Check range for array access *)
FUNCTION CheckBounds
	IF index < lower THEN
		CheckBounds := lower;
		MakeEntry(55555,index,'RangeCheck');
	ELSIF index > upper THEN
		CheckBounds := upper;
		MakeEntry(55555,index,'RangeCheck');
	ELSE
		CheckBounds := index;
	END_IF
END_FUNCTION

(* Check range for enumeration *)
FUNCTION CheckRange
	IF value < lower THEN
		CheckRange := lower;
		MakeEntry(55555,value,'ENUM-Check');
	ELSIF value > upper THEN
		CheckRange := upper;
		MakeEntry(55555,value,'ENUM-Check');
	ELSE
		CheckRange := value;
	END_IF
END_FUNCTION

(* Check range for subrange of signed data types *)
FUNCTION CheckSignedSubrange
	IF value < lower THEN
		CheckSignedSubrange := lower;
		MakeEntry(55555,value,'CheckSignedSubrange');
	ELSIF value > upper THEN
		CheckSignedSubrange := upper;
		MakeEntry(55555,value,'CheckSignedSubrange');
	ELSE
		CheckSignedSubrange := value;
	END_IF
END_FUNCTION

(* Check range for subrange of unsigned data types *)
FUNCTION CheckUnsignedSubrange
	IF value < lower THEN
		CheckUnsignedSubrange := lower;
		MakeEntry(55555,value,'CheckUnsignedSubrange');
	ELSIF value > upper THEN
		CheckUnsignedSubrange := upper;
		MakeEntry(55555,value,'CheckUnsignedSubrange');
	ELSE
		CheckUnsignedSubrange := value;
	END_IF
END_FUNCTION

(* Check address when reading dynamic variables *)
FUNCTION CheckReadAccess
	IF address=0 THEN
		(* TODO: Insert an appropriate code, see AutomationStudio help for further information *)
		MakeEntry(55555,address,'Read from NULL');
	END_IF

	CheckReadAccess:=0;
END_FUNCTION

(* Check address when writing dynamic variables *)
FUNCTION CheckWriteAccess
	IF address=0 THEN
		(* TODO: Insert an appropriate code, see AutomationStudio help for further information *)
		MakeEntry(55555,address,'Write to NULL');
	END_IF

	CheckWriteAccess:=0;
END_FUNCTION

(* Makes an entry (log book entry) in the error log book *)
FUNCTION MakeEntry
		status_name := ST_name(0,ADR(taskname),ADR(group));
		
		strcpy(ADR(out_text),ADR(text));
		strcat(ADR(out_text),ADR(' > in task > '));
  		strcat(ADR(out_text),ADR(taskname));
		MakeEntry := ADR(out_text);	
		ERRxfatal(number,index,ADR(out_text));	
END_FUNCTION
