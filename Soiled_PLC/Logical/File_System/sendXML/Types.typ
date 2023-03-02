
TYPE
	xml_typ : 	STRUCT 
		Write : xml_writer_typ;
	END_STRUCT;
	xml_writer_typ : 	STRUCT 
		State : USINT; (**State of the writer...*)
		Functions : xml_write_fub_typ;
	END_STRUCT;
	xml_write_fub_typ : 	STRUCT 
		CreateMemWriter : xmlCreateMemoryWriter;
	END_STRUCT;
	testData_typ : 	STRUCT 
		BatchID : USINT;
		ElementArray : ARRAY[0..9]OF USINT;
		Structure : test2;
	END_STRUCT;
	test2 : 	STRUCT 
		StrElement : USINT;
		stElement2 : USINT;
	END_STRUCT;
END_TYPE
