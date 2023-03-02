
(* *Get the bag number from the station number *)
FUNCTION LDG_GetBagFromStation
	
	LDG_GetBagFromStation := StationBagsStart + StationNum - 1;
	
END_FUNCTION
