
TYPE
	Bag_typ : 	STRUCT 
		Prg : USINT; (*Program*)
		Dst : USINT; (*Destination - Only Supertrack*)
		Wgt : UINT; (*Weight*)
		Cnt : UINT; (*Count (Items)*)
		State : UINT; (*Maintenance State WAS UR1*)
		Bid : UDINT; (*Bag ID - Supertrack ID*)
		Cat : UDINT; (*Category*)
		Mis : UDINT; (*Batch ID - MIS Mis Server*)
		Cus : UDINT; (*Customer *)
		BagNo : UDINT; (*Actual Bag Number // Was UR2*)
		Timestamp : DATE_AND_TIME;
	END_STRUCT;
END_TYPE
