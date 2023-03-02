
FUNCTION_BLOCK getWaitingLongest (*FUB to Calculate which condition has been waiting the longest from array of BOOL*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		input : ARRAY[0..19] OF BOOL; (*Array of input conditions*)
	END_VAR
	VAR_OUTPUT
		waitingLongest : UINT; (*Index of array that has been TRUE for the longest*)
	END_VAR
	VAR
		n : USINT;
		waitTime : ARRAY[0..19] OF UDINT;
	END_VAR
	VAR_INPUT
		settleTime : UDINT; (*optional settle time, must be true for this many scans before goes into queue*)
	END_VAR
END_FUNCTION_BLOCK
