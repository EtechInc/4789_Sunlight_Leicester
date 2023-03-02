(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Program: DisplayBuild
 * File: DisplayBuild.typ
 * Author: Dave
 * Created: December 08, 2010
 ********************************************************************
 * Local data types of program DisplayBuild
 ********************************************************************)

TYPE
	pnlNodeData_typ : 	STRUCT 
		DsplayType : UINT; (*Display Type ie. 0=Display 1=DataEntry*)
		MainDisplay : UINT; (*Required Main Display Page eg.. 22*)
		MainColour : UINT; (*Main Display Colour*)
		Quadrant : ARRAY[0..3]OF pnlNodeValues_typ;
	END_STRUCT;
	pnlNodeValues_typ : 	STRUCT 
		BagIndex : UINT; (*zzGetNamesIndex - *)
		Command : UINT; (*Received Command ie. Start Button Pressed = 1*)
		Description : UINT; (*Station number*)
		DataEntry1 : UDINT; (*Data entry value 1*)
		DataEntry2 : UDINT; (*Data entry value 2*)
		DataEntry3 : UDINT; (*Data entry value 3*)
		DataEntry4 : UDINT; (*Data entry value 4*)
		DataEntry5 : UDINT; (*Data entry value 5*)
		DataEntry6 : UDINT; (*Data entry value 6*)
		TextColour1 : UINT; (*Text 1 foreground and background colour*)
		TextColour2 : UINT; (*Text 2 foreground and background colour*)
		TextColour3 : UINT; (*Text 3 foreground and background colour*)
		TextColour4 : UINT; (*Text 4 foreground and background colour*)
		TextColour5 : UINT; (*Text 5 foreground and background colour*)
		TextColour6 : UINT; (*Text 6 foreground and background colour*)
		Max1 : UDINT; (*Data entry limit 1*)
		Max2 : UDINT; (*Data entry limit 2*)
		Max3 : UDINT; (*Data entry limit 3*)
		Max4 : UDINT; (*Data entry limit 4*)
		Max5 : UDINT; (*Data entry limit 5*)
		Max6 : UDINT; (*Data entry limit 6*)
		StnName : STRING[5];
	END_STRUCT;
END_TYPE
