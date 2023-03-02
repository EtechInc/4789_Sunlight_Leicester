
FUNCTION_BLOCK ABB_PackData (**Pack the controlword and unpack the status word into ABB Structure *) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		pData : UDINT;
	END_VAR
	VAR
		abb : REFERENCE TO ABB_EPL_typ;
	END_VAR
END_FUNCTION_BLOCK
