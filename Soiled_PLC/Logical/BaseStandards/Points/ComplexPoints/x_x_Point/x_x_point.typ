
TYPE
	destCheck_typ : 	STRUCT 
		Dests : ARRAY[0..MAX_LINES_OUT]OF USINT; (**bag destinations which can be sent to this line.. 0 is valid.*)
	END_STRUCT;
END_TYPE
