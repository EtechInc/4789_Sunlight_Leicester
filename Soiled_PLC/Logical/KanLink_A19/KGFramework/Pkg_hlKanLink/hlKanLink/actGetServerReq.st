(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Program: hlKanLink
 * File: actGetServerReq.st
 * Author: stahlhut
 * Created: April 01, 2015
 ********************************************************************
 * Implementation of program hlKanLink
 ********************************************************************) 

(* Kanlink Server/Request bearbeiten *)
ACTION actGetServerReq: 
			// Commandos unter 1000 sind für alle gleich:
			IF Kanlink.ServerData.HeaderV1Rec.Command < 1000 THEN 

				CASE Kanlink.ServerData.HeaderV1Rec.Command OF
					0:   // MaschinenInfo Senden: Darf jeder lesen
					
						Kanlink.ServerData.HeaderV1Send.Command := 1;
						Kanlink.ServerData.HeaderV1Send.dataFormat := 5;
						Kanlink.ServerData.HeaderV1Send.Length := 148;
						Kanlink.ServerData.HeaderV1Send.Tag := Kanlink.ServerData.HeaderV1Rec.Tag;
						Kanlink.ServerData.HeaderV1Send.ReqID := Kanlink.ServerData.HeaderV1Rec.ReqID;
				
						KLLib_SendData(ADR(Kanlink),ADR(Kanlink.ServerData.MetaInfoResp),SIZEOF(Kanlink.ServerData.MetaInfoResp),ADR(Kanlink.client_address));
					
					
					2:   // Response Ping: Darf jeder lesen
				
						Kanlink.ServerData.HeaderV1Send.Command := 3;
						Kanlink.ServerData.HeaderV1Send.dataFormat := 5;
						Kanlink.ServerData.HeaderV1Send.Length := 17;
						Kanlink.ServerData.HeaderV1Send.Tag := Kanlink.ServerData.HeaderV1Rec.Tag;
						Kanlink.ServerData.HeaderV1Send.ReqID := Kanlink.ServerData.HeaderV1Rec.ReqID;
					
						KLLib_SendData(ADR(Kanlink),ADR(Kanlink.ServerData.PingResp),SIZEOF(Kanlink.ServerData.PingResp),ADR(Kanlink.client_address));

				END_CASE;

			ELSE
					// >= 1000 sind spezifische Daten
				
					// Anfrage Konfiguriert?
					// Zur Anfrage Verbindung raussuchen..	
					_xIdxFound := FALSE;
					_iIdxFound := 32000;
				
					KL_BuildKey(Command := Kanlink.ServerData.HeaderV1Rec.Command,CmdNr := UINT_TO_USINT( Kanlink.ServerData.HeaderV1Rec.CmdNr AND 16#000F) ,IPAdr := Kanlink.ServerData.IPAdr, adrKey:= ADR(Kanlink.RecKey));
					FOR _i := 0 TO HLKANLINK_MAX_SERVERCONNS  DO 
		
						_ptrIndex ACCESS ADR(Kanlink.ServerListe[_i]);
						_dSrvIf ACCESS _ptrIndex.adrInterface;
						IF _ptrIndex.Adr = 0 THEN // wenn alle das Commando lesen dürfen/ Adresse und Area ausblenden
							IF Kanlink.RecKey.CmdKey = _ptrIndex.Key.CmdKey THEN // Index gefunden, beantworten: 
								_xIdxFound := TRUE;
								_iIdxFound := _i;
								EXIT;
							END_IF;						
						ELSE
							IF (Kanlink.RecKey.CmdKey = _ptrIndex.Key.CmdKey) AND (Kanlink.RecKey.IP_Key = _ptrIndex.Key.IP_Key) THEN // Index gefunden, beantworten: 
								_xIdxFound := TRUE;
								_iIdxFound := _i;
								EXIT;
							END_IF;
						END_IF;	
					END_FOR
				
					_xAdrErr := (_ptrIndex.AdrDataReq = 0) OR (_ptrIndex.AdrDataResp = 0);
				
					IF ( _xIdxFound = FALSE) OR _xAdrErr THEN // Falls keine gültige Verbindung dann Fehlerframe senden
						// Fehlerframe senden:
						Kanlink.ServerData.HeaderV1Send.Command := Kanlink.ServerData.HeaderV1Rec.Command +1;
						Kanlink.ServerData.HeaderV1Send.dataFormat := 255;
						Kanlink.ServerData.HeaderV1Send.Length := 68;
						Kanlink.ServerData.HeaderV1Send.Tag := Kanlink.ServerData.HeaderV1Rec.Tag;
						Kanlink.ServerData.HeaderV1Send.ReqID := Kanlink.ServerData.HeaderV1Rec.ReqID;
		
		
						// Error Frame: 
						Kanlink.ServerData.ErrorFrame.ErrorNumber := 2;
						strcpy(ADR(Kanlink.ServerData.ErrorFrame.ErrorText),ADR('request not supported'));
		
						//	KLLib_SendData(ADR(Kanlink),ADR(Kanlink.ServerData.ErrorFrame),SIZEOF(Kanlink.ServerData.ErrorFrame),ADR(Kanlink.client_address));
				
					ELSE
						// Empfangene Daten speichern:
						
						IF NOT( (_dSrvIf.iState <> 0 )   AND _ptrIndex.xReqManually) THEN  // falls Req bereits bearbeitet wird verwerfen
							_ptrIndex.iReqCnt := _ptrIndex.iReqCnt + 1;
							_dSrvIf.iState := 1; 
							strcpy(ADR(_ptrIndex.sClientIPAdr),ADR(Kanlink.client_address));
							// todo längenüberprüfung _ptrIndex.ReqLength
							memcpy(_ptrIndex.AdrDataReq,ADR(Kanlink.ServerData.receive_data)+PreHeaderSize+HeaderSize,_ptrIndex.ReqLength);
			
							_ptrIndex.iReqID := Kanlink.ServerData.HeaderV1Rec.ReqID;
							_dSrvIf.out.tag		:= Kanlink.ServerData.HeaderV1Rec.Tag;

							IF (_ptrIndex.CmdOpt AND KL_optOnReqCall) <> 0 THEN 
								KL_OnRecReq(adrReqData := _ptrIndex.AdrDataReq, adrRespData := _ptrIndex.AdrDataResp, adrKanlink := ADR(Kanlink),_ptrIndex.Cmd, adrUserData := IFhlKanLink.Parameter.adrUserTyp );
							END_IF;	
							IF _ptrIndex.xReqManually = 0 THEN 
		
								Kanlink.ServerData.HeaderV1Send.Command := _ptrIndex.Cmd + 1;
								Kanlink.ServerData.HeaderV1Send.dataFormat := 5;
								Kanlink.ServerData.HeaderV1Send.Length := UDINT_TO_UINT( _ptrIndex.RespLength);
								Kanlink.ServerData.HeaderV1Send.ReqID := _ptrIndex.iReqID;
								Kanlink.ServerData.HeaderV1Send.CmdNr := _ptrIndex.CmdOpt AND 16#000F;
								Kanlink.ServerData.HeaderV1Send.Tag		:= _dSrvIf.tag;
								_ptrIndex.iConnectionTimer := 0;
								KLLib_SendData(ADR(Kanlink),_ptrIndex.AdrDataResp,_ptrIndex.RespLength,ADR(_ptrIndex.sClientIPAdr));
							END_IF;	
						END_IF;	
					
					END_IF;	
					
			END_IF;		



END_ACTION