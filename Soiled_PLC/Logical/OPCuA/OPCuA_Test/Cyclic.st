PROGRAM _CYCLIC

//DISPLAY 0 *****************************************************************************
	
	OPCuA_Display[CONSTANT_DISPLAY_00].Layout[0].backcolour := 16#BADA55;
	OPCuA_Display[CONSTANT_DISPLAY_00].Layout[1].backcolour := 16#BADA55;
	OPCuA_Display[CONSTANT_DISPLAY_00].Layout[2].backcolour := 16#BADA55;
	
	OPCuA_Display[CONSTANT_DISPLAY_00].Layout[0].displayID := '0';
	OPCuA_Display[CONSTANT_DISPLAY_00].Layout[1].displayID := '1';
	OPCuA_Display[CONSTANT_DISPLAY_00].Layout[2].displayID := '2';
	
	OPCuA_Display[CONSTANT_DISPLAY_00].Layout[0].wgt     := OPCuA_Display[CONSTANT_DISPLAY_00].Layout[0].wgt + 10;
	OPCuA_Display[CONSTANT_DISPLAY_00].Layout[1].wgt     := OPCuA_Display[CONSTANT_DISPLAY_00].Layout[1].wgt + 10;
	OPCuA_Display[CONSTANT_DISPLAY_00].Layout[2].wgt     := OPCuA_Display[CONSTANT_DISPLAY_00].Layout[2].wgt + 10;
	
	//Layout 00
	IF OPCuA_Display[CONSTANT_DISPLAY_00].Layout[0].wgt > 900 THEN
		OPCuA_Display[CONSTANT_DISPLAY_00].Layout[0].wgt := 0;
	END_IF
	
	// Layput 01
	IF OPCuA_Display[CONSTANT_DISPLAY_00].Layout[1].wgt > 900 THEN
		OPCuA_Display[CONSTANT_DISPLAY_00].Layout[1].wgt := 0;
	END_IF
	
	IF OPCuA_Display[CONSTANT_DISPLAY_00].Layout[1].wgt > 400 THEN
		OPCuA_Display[CONSTANT_DISPLAY_00].Layout[1].displayID := '0';
		OPCuA_Display[CONSTANT_DISPLAY_00].Layout[1].cus := 3;
		OPCuA_Display[CONSTANT_DISPLAY_00].Layout[1].prg := 1;
		OPCuA_Display[CONSTANT_DISPLAY_00].Layout[1].cat := 1;
	END_IF
		
	IF OPCuA_Display[CONSTANT_DISPLAY_00].Layout[1].wgt > 800 THEN
		OPCuA_Display[CONSTANT_DISPLAY_00].Layout[1].cus := 2;
		OPCuA_Display[CONSTANT_DISPLAY_00].Layout[1].prg := 2;
		OPCuA_Display[CONSTANT_DISPLAY_00].Layout[1].cat := 2;
	END_IF
	
	// Layout 03
	IF OPCuA_Display[CONSTANT_DISPLAY_00].Layout[2].wgt > 900 THEN
		OPCuA_Display[CONSTANT_DISPLAY_00].Layout[2].wgt := 0;
	END_IF
	
// DISPLAY 1 *****************************************************************************
	OPCuA_Display[CONSTANT_DISPLAY_01].Layout[0].backcolour := 16#BADA55;
	OPCuA_Display[CONSTANT_DISPLAY_01].Layout[1].backcolour := 16#BADA55;
	OPCuA_Display[CONSTANT_DISPLAY_01].Layout[2].backcolour := 16#BADA55;
	OPCuA_Display[CONSTANT_DISPLAY_01].Layout[3].backcolour := 16#BADA55;
	OPCuA_Display[CONSTANT_DISPLAY_01].Layout[4].backcolour := 16#BADA55;
	
	OPCuA_Display[CONSTANT_DISPLAY_01].Layout[0].displayID := '0';
	OPCuA_Display[CONSTANT_DISPLAY_01].Layout[1].displayID := '1';
	OPCuA_Display[CONSTANT_DISPLAY_01].Layout[2].displayID := '2';
	OPCuA_Display[CONSTANT_DISPLAY_01].Layout[3].displayID := '3';
	OPCuA_Display[CONSTANT_DISPLAY_01].Layout[4].displayID := '4';
	
	OPCuA_Display[CONSTANT_DISPLAY_01].Layout[0].wgt     := OPCuA_Display[CONSTANT_DISPLAY_01].Layout[0].wgt + 10;
	OPCuA_Display[CONSTANT_DISPLAY_01].Layout[1].wgt     := OPCuA_Display[CONSTANT_DISPLAY_01].Layout[1].wgt + 11;
	OPCuA_Display[CONSTANT_DISPLAY_01].Layout[2].wgt     := OPCuA_Display[CONSTANT_DISPLAY_01].Layout[2].wgt + 12;
	OPCuA_Display[CONSTANT_DISPLAY_01].Layout[3].wgt     := OPCuA_Display[CONSTANT_DISPLAY_01].Layout[3].wgt + 13;
	OPCuA_Display[CONSTANT_DISPLAY_01].Layout[4].wgt     := OPCuA_Display[CONSTANT_DISPLAY_01].Layout[4].wgt + 14;
	
	
	//LAYOUT 01
	IF OPCuA_Display[CONSTANT_DISPLAY_01].Layout[1].wgt > 900 THEN
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[1].wgt := 0;
	END_IF
	
	IF OPCuA_Display[CONSTANT_DISPLAY_01].Layout[1].wgt > 400 THEN
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[1].displayID := '0';
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[1].cus := 1;
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[1].prg := 1;
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[1].cat := 1;
	END_IF
		
	IF OPCuA_Display[CONSTANT_DISPLAY_01].Layout[1].wgt > 800 THEN
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[1].cus := 2;
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[1].prg := 2;
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[1].cat := 2;
	END_IF
	
	//LAYOUT 02
	IF OPCuA_Display[CONSTANT_DISPLAY_01].Layout[2].wgt > 900 THEN
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[2].wgt := 0;
	END_IF
	
	IF OPCuA_Display[CONSTANT_DISPLAY_01].Layout[2].wgt > 400 THEN
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[2].displayID := '0';
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[2].cus := 2;
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[2].prg := 2;
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[2].cat := 2;
	END_IF
		
	IF OPCuA_Display[CONSTANT_DISPLAY_01].Layout[2].wgt > 800 THEN
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[2].cus := 1;
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[2].prg := 1;
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[2].cat := 1;
	END_IF
	
	//LAYOUT 03
	IF OPCuA_Display[CONSTANT_DISPLAY_01].Layout[3].wgt > 900 THEN
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[3].wgt := 0;
	END_IF
	
	IF OPCuA_Display[CONSTANT_DISPLAY_01].Layout[3].wgt > 400 THEN
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[3].displayID := '0';
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[3].cus := 1;
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[3].prg := 1;
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[3].cat := 1;
	END_IF
		
	IF OPCuA_Display[CONSTANT_DISPLAY_01].Layout[3].wgt > 800 THEN
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[3].cus := 2;
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[3].prg := 2;
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[3].cat := 2;
	END_IF
	
	//LAYOUT 04
	IF OPCuA_Display[CONSTANT_DISPLAY_01].Layout[4].wgt > 900 THEN
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[4].wgt := 0;
	END_IF
	
	IF OPCuA_Display[CONSTANT_DISPLAY_01].Layout[4].wgt > 400 THEN
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[4].displayID := '0';
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[4].cus := 2;
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[4].prg := 2;
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[4].cat := 2;
	END_IF
		
	IF OPCuA_Display[CONSTANT_DISPLAY_01].Layout[4].wgt > 800 THEN
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[4].cus := 1;
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[4].prg := 1;
		OPCuA_Display[CONSTANT_DISPLAY_01].Layout[4].cat := 1;
	END_IF
	
// DISPLAY 2 *****************************************************************************
	
	OPCuA_Display[CONSTANT_DISPLAY_02].Layout[1].backcolour := 16#BADA55;
	
	OPCuA_Display[CONSTANT_DISPLAY_02].Layout[1].displayID := '2';
	
	OPCuA_Display[CONSTANT_DISPLAY_02].Layout[1].wgt     := OPCuA_Display[CONSTANT_DISPLAY_02].Layout[1].wgt + 2;
	
	// Layput 01
	IF OPCuA_Display[CONSTANT_DISPLAY_02].Layout[1].wgt > 900 THEN
		OPCuA_Display[CONSTANT_DISPLAY_02].Layout[1].wgt := 0;
	END_IF
	
	IF OPCuA_Display[CONSTANT_DISPLAY_02].Layout[1].wgt > 400 THEN
		OPCuA_Display[CONSTANT_DISPLAY_02].Layout[1].displayID := '1';
		OPCuA_Display[CONSTANT_DISPLAY_02].Layout[1].cus := 1;
		OPCuA_Display[CONSTANT_DISPLAY_02].Layout[1].prg := 1;
		OPCuA_Display[CONSTANT_DISPLAY_02].Layout[1].cat := 1;
	END_IF
		
	IF OPCuA_Display[CONSTANT_DISPLAY_02].Layout[1].wgt > 800 THEN
		OPCuA_Display[CONSTANT_DISPLAY_02].Layout[1].cus := 2;
		OPCuA_Display[CONSTANT_DISPLAY_02].Layout[1].prg := 2;
		OPCuA_Display[CONSTANT_DISPLAY_02].Layout[1].cat := 2;
	END_IF
	
	// DISPLAY 3 *****************************************************************************
	
	OPCuA_Display[3].Layout[1].backcolour := 16#BADA55;
	
	OPCuA_Display[3].Layout[1].displayID := '0';
	
	OPCuA_Display[3].Layout[1].wgt     := OPCuA_Display[3].Layout[1].wgt + 3;
	
	// Layput 01
	IF OPCuA_Display[3].Layout[1].wgt > 900 THEN
		OPCuA_Display[3].Layout[1].wgt := 0;
	END_IF
	
	IF OPCuA_Display[3].Layout[1].wgt > 400 THEN
		OPCuA_Display[3].Layout[1].displayID := '3';
		OPCuA_Display[3].Layout[1].cus := 1;
		OPCuA_Display[3].Layout[1].prg := 1;
		OPCuA_Display[3].Layout[1].cat := 1;
	END_IF
		
	IF OPCuA_Display[3].Layout[1].wgt > 800 THEN
		OPCuA_Display[3].Layout[1].cus := 2;
		OPCuA_Display[3].Layout[1].prg := 2;
		OPCuA_Display[3].Layout[1].cat := 2;
	END_IF
	
// DISPLAY 4 *****************************************************************************
	
	OPCuA_Display[4].Layout[1].backcolour := 16#BADA55;
	
	OPCuA_Display[4].Layout[1].displayID := '0';
	
	OPCuA_Display[4].Layout[1].wgt     := OPCuA_Display[4].Layout[1].wgt + 4;
	
	// Layput 01
	IF OPCuA_Display[4].Layout[1].wgt > 900 THEN
		OPCuA_Display[4].Layout[1].wgt := 0;
	END_IF
	
	IF OPCuA_Display[4].Layout[1].wgt > 400 THEN
		OPCuA_Display[4].Layout[1].displayID := '4';
		OPCuA_Display[4].Layout[1].cus := 1;
		OPCuA_Display[4].Layout[1].prg := 1;
		OPCuA_Display[4].Layout[1].cat := 1;
	END_IF
		
	IF OPCuA_Display[4].Layout[1].wgt > 800 THEN
		OPCuA_Display[4].Layout[1].cus := 2;
		OPCuA_Display[4].Layout[1].prg := 2;
		OPCuA_Display[4].Layout[1].cat := 2;
	END_IF
	
	// DISPLAY 5 *****************************************************************************
	
	OPCuA_Display[5].Layout[1].backcolour := 16#BADA55;
	
	OPCuA_Display[5].Layout[1].displayID := '0';
	
	OPCuA_Display[5].Layout[1].wgt     := OPCuA_Display[5].Layout[1].wgt + 5;
	
	// Layput 01
	IF OPCuA_Display[5].Layout[1].wgt > 900 THEN
		OPCuA_Display[5].Layout[1].wgt := 0;
	END_IF
	
	IF OPCuA_Display[5].Layout[1].wgt > 400 THEN
		OPCuA_Display[5].Layout[1].displayID := '5';
		OPCuA_Display[5].Layout[1].cus := 1;
		OPCuA_Display[5].Layout[1].prg := 1;
		OPCuA_Display[5].Layout[1].cat := 1;
	END_IF
		
	IF OPCuA_Display[5].Layout[1].wgt > 800 THEN
		OPCuA_Display[5].Layout[1].cus := 2;
		OPCuA_Display[5].Layout[1].prg := 2;
		OPCuA_Display[5].Layout[1].cat := 2;
	END_IF	
	
	// DISPLAY 6 *****************************************************************************
	
	OPCuA_Display[6].Layout[1].backcolour := 16#BADA55;
	
	OPCuA_Display[6].Layout[1].displayID := '0';
	
	OPCuA_Display[6].Layout[1].wgt     := OPCuA_Display[6].Layout[1].wgt + 6;
	
	// Layput 01
	IF OPCuA_Display[6].Layout[1].wgt > 900 THEN
		OPCuA_Display[6].Layout[1].wgt := 0;
	END_IF
	
	IF OPCuA_Display[6].Layout[1].wgt > 400 THEN
		OPCuA_Display[6].Layout[1].displayID := '5';
		OPCuA_Display[6].Layout[1].cus := 1;
		OPCuA_Display[6].Layout[1].prg := 1;
		OPCuA_Display[6].Layout[1].cat := 1;
	END_IF
		
	IF OPCuA_Display[6].Layout[1].wgt > 800 THEN
		OPCuA_Display[6].Layout[1].cus := 2;
		OPCuA_Display[6].Layout[1].prg := 2;
		OPCuA_Display[6].Layout[1].cat := 2;
	END_IF

END_PROGRAM