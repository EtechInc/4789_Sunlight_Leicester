
FUNCTION LDG_GetBagFromStation : UINT (**Get the bag number from the station number*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		StationBagsStart : UINT;
		StationNum : UINT;
	END_VAR
END_FUNCTION

FUNCTION LDG_GetStationFromBag : UINT (**Get the station number from bag*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		StationBagsStart : UINT; (**Bag number that the stations start at*)
		BagNum : UINT; (** Bag number for station to calculate*)
	END_VAR
END_FUNCTION
