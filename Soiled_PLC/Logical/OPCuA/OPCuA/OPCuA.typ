
TYPE
	OPCuA_Display_typ : 	STRUCT 
		Layout : ARRAY[0..MAX_LAYOUTS]OF DisplayLayoutEncoded_Typ;
	END_STRUCT;
	DispLayout_typ : 	STRUCT 
		bag : UINT;
		displayID : STRING[5];
		backcolour : UINT;
		bagData : DispBag_typ;
	END_STRUCT;
	Display_typ : 	STRUCT 
		Layout : ARRAY[0..MAX_LAYOUTS]OF DispLayout_typ;
	END_STRUCT;
	DispBag_typ : 	STRUCT  (*//Declare bag twice as the libary does not have access to global vars*)
		Prg : USINT; (*Program*)
		Dst : USINT; (*Destination - Only Supertrack*)
		Wgt : UINT; (*Weight*)
		Cnt : UINT; (*Count (Items)*)
		Ur1 : UINT; (*User 1*)
		Bid : UDINT; (*Bag ID - Supertrack ID*)
		Cat : UDINT; (*Category*)
		Mis : UDINT; (*Batch ID - MIS Mis Server*)
		Cus : UDINT; (*Customer *)
		Ur2 : UDINT; (*User 2*)
		Timestamp : DATE_AND_TIME;
	END_STRUCT;
	DisplayLayoutEncoded_Typ : 	STRUCT 
		data : ARRAY[0..43]OF USINT;
	END_STRUCT;
	EncodedBag_typ : 	STRUCT 
		data : ARRAY[0..33]OF USINT;
	END_STRUCT;
END_TYPE
