
TYPE
	Pointer_typ : 	STRUCT 
		Rail_Counter : ARRAY[0..MAX_RAILS]OF UDINT;
		Rail_State : ARRAY[0..MAX_RAILS]OF UDINT;
		Rail_RatchetPosition : ARRAY[0..MAX_RAILS]OF UDINT;
	END_STRUCT;
END_TYPE
