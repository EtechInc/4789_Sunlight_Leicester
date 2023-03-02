
FUNCTION_BLOCK OPCuA_DisplayEncode_Bin (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		displayIndex : UINT;
		layoutIndex : UINT;
		layoutData : DispLayout_typ;
	END_VAR
	VAR_OUTPUT
		status : UINT;
		outputData : ARRAY[0..43] OF USINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK OPCuA_DisplayEncode_String
	VAR_INPUT
		enable : BOOL;
		displayIndex : UINT;
		layoutIndex : UINT;
		layoutData : DispLayout_typ;
	END_VAR
	VAR_OUTPUT
		status : UINT;
		outputString : STRING[110];
	END_VAR
	VAR
		buildString : STRING[110];
		myValue : STRING[16];
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK OPCuA_BagEncode_Bin (*Encode Bag data in USINT For OPCuA comms*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		bagIndex : UINT;
		bag : DispBag_typ;
		pOutputData : UDINT; (*pointer to output data*)
		outputDataSize : UDINT; (*sixe of output data*)
	END_VAR
	VAR_OUTPUT
		status : UINT;
		outputData : ARRAY[0..33] OF USINT;
	END_VAR
	VAR
		buildData : REFERENCE TO ARRAY[0..33] OF USINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK OPCuA_DisplayDecode (**Decode the OPCuA vars into display type.*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		pInputData : {REDUND_UNREPLICABLE} UDINT; (**pointer to input data*)
		pBag : {REDUND_UNREPLICABLE} UDINT; (**pointer to bag data*)
		sizeBag : UDINT; (**size of Bag structure*)
	END_VAR
	VAR_OUTPUT
		status : UINT;
	END_VAR
END_FUNCTION_BLOCK
