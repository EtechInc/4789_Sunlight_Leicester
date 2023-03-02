
ACTION _getFunctionName:
	CASE httpServer.method OF 
		httpMETHOD_DELETE,httpMETHOD_PUT:
			//wrong method-- implement error handling.
			
		httpMETHOD_GET:
			getParameterName.searchString := URI;
			getParameterName.searchOffset := LEN(serviceName);
		httpMETHOD_POST:
			getParameterName.searchString := URI;
			getParameterName.searchOffset := LEN(serviceName);
//			getParameterName.searchString := requestData;
//			getParameterName.searchOffset := 0;
	END_CASE;
	
	getParameterName.searchPropertyName := 'function=';
	getParameterName.searchEndProperty := STRING_DOLLAR ;
	getParameterName();
	
	CASE httpServer.method OF 
		httpMETHOD_DELETE,httpMETHOD_PUT:
			//wrong method-- implement error handling.
			
		httpMETHOD_GET:
			IF getParameterName.status = ERR_OK THEN
				IF getParameterName.outputValue = 'dmSetDst' THEN activeFunction := HTTP_SVR_GET_FNC_SET_BAG_DEST; 
				ELSIF getParameterName.outputValue = 'test' THEN activeFunction := HTTP_SVR_GET_FNC_TEST;
//				ELSIF getParameterName.outputValue = 'iolink' THEN activeFunction := HTTP_SVR_GET_FNC_IOLINK;
				ELSIF getParameterName.outputValue = 'restart' THEN activeFunction := HTTP_SVR_GET_FNC_RESTART_PLC;
//				ELSIF getParameterName.outputValue = 'iolinkGenFile' THEN activeFunction := HTTP_SVR_GET_FNC_IOLINK_GEN_FILE;
//				ELSIF getParameterName.outputValue = 'iolinkStatus' THEN activeFunction := HTTP_SVR_GET_FNC_IOLINK_STATUS;
				ELSIF getParameterName.outputValue = 'ABB' THEN activeFunction := HTTP_SVR_GET_FNC_ABB;
				ELSE activeFunction := HTTP_SVR_FNC_NOT_FOUND;
				END_IF;
				getParameterName.searchString := '';
			END_IF;
		httpMETHOD_POST:
			IF getParameterName.status = ERR_OK THEN
				IF getParameterName.outputValue = 'test' THEN activeFunction := HTTP_SVR_POST_FNC_TEST;
//				ELSIF getParameterName.outputValue = 'iolink' THEN activeFunction := HTTP_SVR_POST_FNC_IOLINK;
				ELSIF getParameterName.outputValue = 'ABB' THEN activeFunction := HTTP_SVR_POST_FNC_ABB;
				ELSE activeFunction := HTTP_SVR_FNC_NOT_FOUND;
				END_IF;
				getParameterName.searchString := '';
			END_IF;
	END_CASE;
	
	
END_ACTION
