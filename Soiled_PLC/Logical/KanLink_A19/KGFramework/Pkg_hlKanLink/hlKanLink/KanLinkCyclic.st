(********************************************************************
 * COPYRIGHT -- Herbert Kannegiesser GmbH
 ********************************************************************
 * Program: KanLink
 * File: KanLinkCyclic.st
 * Author: stahlhut
 * Created: December 23, 2011
 ********************************************************************
 * Implementation of program WetLink
 ********************************************************************)

(* 

	Falls ohne Framework gearbeitet werden soll in den Eigenschaften der Task hlKanLink (Config. View Cpu.sw)
	im Tab. Compiler im Feld "Additional build options:" -D HLKANLINK_AUTONOM  eintragen
	Dazu das Package KanLinkAutonom importieren

*)
 


PROGRAM _CYCLIC
 
// Struktur für Visualisierung füllen

IFhlKL_Visu.out.iCycleTime := Kanlink._iCycleTime;
IFhlKL_Visu.out.step := Kanlink.Step;
IFhlKL_Visu.out.udNetId := Kanlink.udNetID;
IFhlKL_Visu.out.udpOpenStatus := Kanlink.udp.open.status;
IFhlKL_Visu.out.udpRecStatus := Kanlink.udp.rec.status;
IFhlKL_Visu.out.udpSendStatus := Kanlink.udp.send.status;
_wClt := LIMIT(0,IFhlKL_Visu.in.iCltNr,HLKANLINK_MAX_CLIENTCONNS);
_wSrv := LIMIT(0,IFhlKL_Visu.in.iServerNr,HLKANLINK_MAX_SERVERCONNS);
IFhlKL_Visu.out.client := Kanlink.ClientListe[_wClt];
IFhlKL_Visu.out.server := Kanlink.ServerListe[_wSrv];

// Commando von der Visu verarbeiten
// Commando nur setzen wenn CmdResp = 0
// aufrufer muss nach ausführung cmdNr wieder auf 0 setzen!
IF IFhlKL_Visu.in.cmdNr <> IFhlKL_Visu.out.cmdResp THEN 
	CASE IFhlKL_Visu.in.cmdNr OF
		0: IFhlKL_Visu.out.cmdResp := 0;
		1: // Neustart 
			IFhlKL_Visu.out.cmdResp := 1;
			Kanlink.Step := 1;
		2: // Neustart mit lastId = 1
			Kanlink._uiLastId := 1;
			IFhlKL_Visu.out.cmdResp := 1;
			Kanlink.Step := 2;
		ELSE 
			// unbekanntes Commando
			IFhlKL_Visu.out.cmdResp := 16#7FFF;
	
	END_CASE;
END_IF;

#ifndef HLKANLINK_AUTONOM // Logging nur mit kg-Framework

	// ===========================
	// Logging
	// ===========================
	
	IF _xRBReady THEN
		
		CASE _wLogStep OF
			
			0:
				_ReadRB(wPtrRead := _wPtrRBread, wPtrStart := _wPtrRBstart, wPtrWrite := _wPtrRBwrite);
			
				IF _ReadRB.wStatus = ERR_OK THEN
					
					CASE _LogEntry.wErrorNo OF
						
						0:
							_kgArLogWrite.text := 'OK';
							
						HLKANLINK_MSG_NO_STRUCDEF:

							_kgArLogWrite.text := 'Create Strucdefinition failed : {##AttrVar1} / {##AttrVar2}';
							_kgArLogWrite.var1 := _LogEntry.lAttr1;
						
						ELSE
							
							_kgArLogWrite.text := UINT_TO_STRING(_LogEntry.wErrorNo);
							_kgArLogWrite.text := CONCAT(_kgArLogWrite.text, ' : {##AttrVar1} / {##AttrVar2}');
							_kgArLogWrite.var1 := _LogEntry.lAttr1;
							_kgArLogWrite.var2 := _LogEntry.lAttr2;
			
					END_CASE
					
					_wLogStep := 1;
					
				END_IF

			1:
				_kgArLogWrite();
				
				IF _kgArLogWrite.status <> ERR_FUB_BUSY THEN
					
					_wLogStep := 0;
					
				END_IF
				
		END_CASE
		
	END_IF
	
	IF _wDebIdx >= 0 AND _wDebIdx <= _HLKANLINK_MAX_IDX_DEFSTRUC THEN
	
		IF _lPtrStrucDef[_wDebIdx] > 0 THEN

			_sDebString ACCESS _lPtrStrucDef[_wDebIdx] + _wDebOffset;
			
		END_IF
		
	END_IF

#endif



	// =======================================================================
	
	IF _xInitOK THEN
	
		IF _xSaveConfig THEN
			KL_SaveConfDO_0(adrName :=ADR('KL_Conf') , adrDaten := ADR(IFhlKanLink.Parameter), len := SIZEOF( IFhlKanLink.Parameter));
			IF KL_SaveConfDO_0.status <> ERR_FUB_BUSY THEN // fertig
				_xSaveConfig := FALSE;
			END_IF;
		END_IF;
	
		IF EDGEPOS(IFhlKanLink.in.xRun ) THEN
			IF Kanlink.Step = 0 THEN
				Kanlink.Step := 1;
			END_IF;
		END_IF;
		IF EDGENEG(IFhlKanLink.in.xRun) THEN // stoppen
			IF Kanlink.Step <> 0 THEN 
				Kanlink.Step := 20;
			END_IF;	
		END_IF;	
		
		IF IFhlKanLink.in.xRestart THEN 
			Kanlink.Step := 1;
			IFhlKanLink.in.xRestart := 0;
		END_IF;	
		
		IFhlKanLink.xError := (Kanlink.Step = 200);
	
		CASE Kanlink.Step OF 
			
			0: //nix tun
			
			100: // Error nr in Logger eintragen
			
				Kanlink.Step := 200;
			
			200: // Auf User warten	
			 
			1: // init
				
				Kanlink.KLLib_Init_0(enable := 1, adrServer := ADR(Kanlink),adrInterface := ADR(IFhlKanLink));
				IF Kanlink.KLLib_Init_0.status = ERR_OK THEN 
					Kanlink.Step := 10;
				ELSIF Kanlink.KLLib_Init_0.status <> ERR_FUB_BUSY THEN // fehler 
					WL_ErrorNr := 10; 
					Kanlink.Step := 100;
					
					IF _xRBReady THEN
					
						_LogEntryIn.wErrorNo := 10;
						_InsertRB(wPtrStart := _wPtrRBstart, wPtrRead := _wPtrRBread, wPtrWrite := _wPtrRBwrite);
						
					END_IF
					
				END_IF;		
			
			10: // Kanlink Run		
					
			20: // Kanlink schliessen
				
				Kanlink.udp.close.enable := 1;
				Kanlink.udp.close.ident := Kanlink._uiLastId;
				Kanlink.udp.close;
				IF Kanlink.udp.close.status = 0 THEN
					Kanlink.Step := 0;
				ELSIF Kanlink.udp.close.status = ERR_FUB_BUSY THEN
					
				ELSE
					Kanlink.Step := 100;
				END_IF;		

		END_CASE;
		
		
		// hier beenden wenn zyklus nicht erlaubt
		IF  Kanlink.Step <> 10 THEN
			RETURN;
		END_IF; 
		
	
		Kanlink;
		

		// falls Kanlink nix zu tun hat, hier beenden
		IF Kanlink.xReturn THEN 
			RETURN;
		END_IF;	
				
		
		// ------------------------------------------------------------------
		// Falls ein Request eines Clients aufgelaufen ist 

		IF Kanlink._xGetServerReq THEN  // Req eines Clients angenommen, bearbeiten
		

			actGetServerReq;			

			Kanlink._xGetServerReq := FALSE;
			Kanlink.udp.rec.enable := 1;
		
			RETURN;  // Daten sind versendet. Also Ende. 
					
		END_IF;
	
		// ------------------------------------------------------------------------------
		// falls Response von einem Request kommt:
	
		IF Kanlink._xGetClientResp THEN // Response auf ClientReq angekommen
			actResponse;
					
		END_IF; 	
		
		// ------------------------------------------------------------------------------
		// Überprüfen ob per Hand bearbeitete Requests versendet werden müssen..
		
		IF  Kanlink.udp.send.enable = 0 THEN 
			_xServerFound := 0;
			
			FOR _i:=0 TO HLKANLINK_MAX_SERVERCONNS  DO 
				_ptrIndex ACCESS ADR(Kanlink.ServerListe[_iLastServerIdx]);
				_dSrvIf ACCESS _ptrIndex.adrInterface;
				IF (_ptrIndex.xReqManually AND (_dSrvIf.iState = 2)) THEN 
					_xServerFound := 1;
					
					_iLastServerIdx := _iLastServerIdx + 1; // testen
					IF _iLastCltIdx > HLKANLINK_MAX_SERVERCONNS THEN 
						_iLastServerIdx := 0;
					END_IF;			
					EXIT;						
					END_IF;
					_iLastServerIdx := _iLastServerIdx + 1; // testen
					IF _iLastServerIdx > HLKANLINK_MAX_SERVERCONNS THEN 
					_iLastServerIdx := 0;
				END_IF;			
			
			END_FOR;
			
			IF _xServerFound THEN 
				Kanlink.ServerData.HeaderV1Send.Command := _ptrIndex.Cmd + 1;
				Kanlink.ServerData.HeaderV1Send.dataFormat := 5;
				Kanlink.ServerData.HeaderV1Send.Length := UDINT_TO_UINT( _ptrIndex.RespLength);
				Kanlink.ServerData.HeaderV1Send.ReqID := _ptrIndex.iReqID;
				Kanlink.ServerData.HeaderV1Send.CmdNr := _ptrIndex.CmdOpt AND 16#000F;
				_ptrIndex.iConnectionTimer := 0;
				KLLib_SendData(ADR(Kanlink),_ptrIndex.AdrDataResp,_ptrIndex.RespLength,ADR(_ptrIndex.sClientIPAdr));
				_dSrvIf.iState := 0;	
				RETURN;
			END_IF;
		END_IF;	
		
	
		IF Kanlink._xSendClient THEN  // hier den Clienten bearbeiten
	
			_xCltFound := FALSE;
		
			FOR _i:=0 TO HLKANLINK_MAX_CLIENTCONNS  DO 
				_dClient ACCESS ADR(Kanlink.ClientListe[_iLastCltIdx]);
				IF _dClient.adrInterface <> 0 THEN 
					_dCltIf ACCESS _dClient.adrInterface; 
				ELSE 
					_dCltIf ACCESS ADR(_ifDummy);
				END_IF;	
					// gefunden wenn kein ReqPend, Commando <> 0 todo gültige Adresse etc...
				IF _dClient.iCycleTime = 0 THEN 
					_xSendNow := (_dCltIf.iState = 1) OR (_dCltIf.iState = 4) ; // falls angetickt oder timeout 
				ELSE 
					_xSendNow := (_dClient.iCycleWait > _dClient.iCycleTime);	
				END_IF;		
				IF 	(NOT _dClient.xReqPending) AND (_dClient.Cmd <> 0) AND  _dClient.xActiv AND (_xSendNow)   THEN 
		  			_xCltFound := TRUE;
					_iLastCltIdx := _iLastCltIdx + 1; // testen
					IF _iLastCltIdx > HLKANLINK_MAX_CLIENTCONNS THEN 
			  			_iLastCltIdx := 0;
					END_IF;			
					EXIT;						
				END_IF;
		
				_iLastCltIdx := _iLastCltIdx + 1; // testen
				IF _iLastCltIdx > HLKANLINK_MAX_CLIENTCONNS THEN 
		  			_iLastCltIdx := 0;
				END_IF;			
		
			END_FOR;
			
		
			IF NOT _xCltFound THEN
				Kanlink._xSendClient := FALSE;
				RETURN;
							   
			ELSE 			
			
				// Client gefunden 
				_dClient.iCnt := _dClient.iCnt + 1 ; 
				_dClient.iReqId := _dClient.iReqId +1;
				_dClient.TimeOutLeft := _dClient.TimeOut;
		
				IF _dCltIf.iState = 1 THEN // falls über state dann "schnellwiederholung" aktivieren	
					_dClient.iTimeOutCnt := 0; // scharf machen für den nächsten versuch	
				END_IF;		
				_dCltIf.iState := 2; 	
					
				Kanlink.ServerData.HeaderV1Send.Command := _dClient.Cmd;
				Kanlink.ServerData.HeaderV1Send.CmdNr := _dClient.CmdOpt AND 16#000F;
			
				Kanlink.ServerData.HeaderV1Send.dataFormat := 5;
				Kanlink.ServerData.HeaderV1Send.Length := UDINT_TO_UINT( _dClient.ReqLength);
				Kanlink.ServerData.HeaderV1Send.ReqID := _dClient.iReqId;
				Kanlink.ServerData.HeaderV1Send.Tag		:= _dCltIf.tag;
		
				KLLib_SendData(ADR(Kanlink),_dClient.AdrDataReq,_dClient.ReqLength,ADR(_dClient.sClientAdr));
		
			
				_dClient.xReqPending := TRUE;
				_dClient.iCycleWait := 0;
			
				Kanlink._xSendClient := FALSE;
				
				RETURN;
				
			END_IF;	
			
		END_IF;	// sendClient

#ifndef  HLKANLINK_AUTONOM  // wird MIT Framework gearbeitet 
	ELSIF IFmnParam.Out.xParamOK AND IFmnEth.Out.xDataValid THEN

		Kanlink.ServerData.MetaInfoResp.KanLink_Hostname := IFmnEth.Out.IP.sHostname;
		Kanlink.ServerData.MetaInfoResp.Machine_type := WSTRING_TO_STRING(IFmnParam.Out.HeaderVersion.utfMachineType);
		Kanlink.ServerData.MetaInfoResp.DataModelTimeStamp := IFmnParam.Out.HeaderVersion.dtTimestamp;
		Kanlink.ServerData.MetaInfoResp.DataModelVersion := IFmnParam.Out.HeaderVersion.wVersion;
		
		Kanlink.ServerData.PingResp.KanLink_Hostname := IFmnEth.Out.IP.sHostname;
		
		_xInitOK := TRUE;
		
	END_IF
#else  // falls OHNE Framework gearbeitet wird
	ELSIF TRUE THEN
		_xInitOK := TRUE;
	END_IF
#endif


	
 



END_PROGRAM


PROGRAM _EXIT


	Kanlink.udp.close.enable	:= TRUE; 
	Kanlink.udp.close.ident		:= Kanlink.udp.open.ident; 
	Kanlink.udp.close; 


END_PROGRAM


