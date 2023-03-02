
PROGRAM _CYCLIC

	
//	Std.SafetyOnZone[1]	;SPC1
//	Std.SafetyOnZone[2]	;SVC1
//	Std.SafetyOnZone[3]	;SVC2/3

//No access on zone 0
	
	
	SafetyZone[0].BagsInTransit :=  FALSE;  // Safe to enter when false (Switch is NO) FALSE WHEN OK..
	SafetyZone[0].HoistsOutOfPosition := FALSE; //<-- This is used to stop the door from opening if not position FALSE IS OK -- SWITCH IS NC..
	
	SafetyZone[1].BagsInTransit :=  FALSE;  
	SafetyZone[1].HoistsOutOfPosition := FALSE; 	
//	
	SafetyZone[2].BagsInTransit :=  FALSE;  
	SafetyZone[2].HoistsOutOfPosition := Hoist_Safety[1].OutOfPosition;// OR Hoist_Safety[7].OutOfPosition; 	
//	
	SafetyZone[3].BagsInTransit :=  FALSE;  
	SafetyZone[3].HoistsOutOfPosition := FALSE;///Hoist_Safety[1].OutOfPosition OR Hoist_Safety[2].OutOfPosition OR Hoist_Safety[3].OutOfPosition; 	
	
			
	 
END_PROGRAM
