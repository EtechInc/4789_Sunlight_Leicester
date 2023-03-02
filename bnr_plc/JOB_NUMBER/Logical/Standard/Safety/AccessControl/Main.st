
PROGRAM _CYCLIC

	
//	Std.SafetyOnZone[1]	;High level
//	Std.SafetyOnZone[2]	;Maintenance platform
//	Std.SafetyOnZone[3]	;Low level
//	Std.SafetyOnZone[4]	;Belt load SL's
//	Std.SafetyOnZone[5]	;SSL3
//No access on zone 0
	
	
//	SafetyZone[0].BagsInTransit :=  FALSE;  // Safe to enter when false (Switch is NO) FALSE WHEN OK..
//	SafetyZone[0].HoistsOutOfPosition := FALSE; //<-- This is used to stop the door from opening if not position FALSE IS OK -- SWITCH IS NC..
	
	FOR n := 1 TO MAX_SAFE_ZONES DO	
		SafetyZone[n].BagsInTransit :=  FALSE;  
	//	SafetyZone[n].HoistsOutOfPosition := Hoist_Safety[n].OutOfPosition; 	
	END_FOR;	
	
    
	
END_PROGRAM
