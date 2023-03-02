(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Package: TrackView
 * File: TrackView.typ
 * Author: Administrator
 * Created: March 02, 2009
 ********************************************************************
 * Data types of package TrackView
 ********************************************************************)

TYPE
	zzGetNamesTyp : 	STRUCT 
		BagNumber : UINT;
		Prg : UDINT;
		PrgLong : STRING[8];
		PrgName : STRING[32];
		Cat : UDINT;
		CatLong : STRING[8];
		CatName : STRING[32];
		Cus : UDINT;
		CusLong : STRING[8];
		CusName : STRING[32];
		ImagePath : STRING[32];
		Description : STRING[10];
	END_STRUCT;
END_TYPE
