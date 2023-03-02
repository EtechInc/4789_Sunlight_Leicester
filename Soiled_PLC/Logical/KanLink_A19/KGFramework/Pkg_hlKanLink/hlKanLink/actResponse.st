(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Program: hlKanLink
 * File: actResponse.st
 * Author: stahlhut
 * Created: April 01, 2015
 ********************************************************************
 * Implementation of program hlKanLink
 ********************************************************************) 

(* Response eines Servers bearbeiten *)
ACTION actResponse: 

			KL_BuildKey(Command := Kanlink.ServerData.HeaderV1Rec.Command,CmdNr := UINT_TO_USINT( Kanlink.ServerData.HeaderV1Rec.CmdNr AND 16#000F) ,IPAdr := Kanlink.ServerData.IPAdr, adrKey:= ADR(Kanlink.RecKey));
		
			_xIdxFound := FALSE;
			FOR _i := 0 TO HLKANLINK_MAX_CLIENTCONNS DO 
				_dClient ACCESS ADR(Kanlink.ClientListe[_i]);
					
				IF (Kanlink.RecKey.CmdKey = _dClient.Key.CmdKey) AND (Kanlink.RecKey.IP_Key = _dClient.Key.IP_Key) THEN // Index gefunden, beantworten: 
					_xIdxFound := TRUE;
					EXIT;
				END_IF;						
			END_FOR
			
			_xAdrOK := _dClient.AdrDataResp <> 0 ;
		
			IF _xIdxFound AND _xAdrOK THEN 
				_dClient.xReqPending := FALSE;
				IF _dClient.iTimeOutCnt > 0 THEN 
					_dClient.iTimeOutCnt := _dClient.iTimeOutCnt - 1;
				END_IF;
				IF _dClient.adrInterface <> 0 THEN 	
					_dCltIf ACCESS _dClient.adrInterface; 
					_dCltIf.iState := 3; 	
				END_IF;
			
				memcpy(_dClient.AdrDataResp,ADR(Kanlink.ServerData.receive_data) + PreHeaderSize+HeaderSize,_dClient.RespLength);
				_dCltIf.out.recTag := Kanlink.ServerData.HeaderV1Rec.Tag; 
			
		  	END_IF;		 			
			
			_iCltRespCnt := _iCltRespCnt + 1; 
			Kanlink._xGetClientResp := FALSE;
			
			Kanlink._xSendClient := TRUE; // Daten einsortiert, nix weiter zutun also Clients bearbeiten
			Kanlink.udp.rec.enable := 1;
			



END_ACTION