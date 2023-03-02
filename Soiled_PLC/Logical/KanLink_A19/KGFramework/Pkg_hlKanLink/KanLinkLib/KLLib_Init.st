(********************************************************************
 * COPYRIGHT -- Herbert Kannegiesser GmbH
 ********************************************************************
 * Library: KanLinkLib
 * File: KL_Init.st
 * Author: stahlhut
 * Created: January 12, 2012
 ********************************************************************
 * Implementation of library KanLinkLib
 ********************************************************************) 

(* TODO: Add your comment here *)
FUNCTION_BLOCK KLLib_Init
 
	IF (adrServer = 0) OR (adrInterface = 0 )  THEN // fehler 
		status := 1;
		enable := 0;
		RETURN;
	END_IF;	
	IF enable = 0 THEN 
		status := ERR_FUB_ENABLE_FALSE;
		RETURN;
	END_IF;
	
	
	IF (status = ERR_FUB_BUSY	) AND (enable = 0) THEN 
		status := ERR_FUB_ENABLE_FALSE;
		_bStep := 100;
	END_IF;	
		
	
	
	CASE _bStep OF 
		0: // nix tun
			status := ERR_FUB_BUSY;
			_bStep := 10;
		10:
			_dServer ACCESS adrServer; 
			_dServer.adrSelf := adrServer;
			_dIf ACCESS adrInterface;
			_dServer.adrInterface := adrInterface;

			
			
			IF _dServer.iPort = 0 THEN 
				_dServer.iPort := 23500; // standardport benutzen
			END_IF;		
			RTInfo_0.enable := TRUE;
			RTInfo_0;	
			
			_dServer._iCycleTime := UDINT_TO_UINT( RTInfo_0.cycle_time / 1000);

			_bStep := 20;
		20:
			GetEthPort_0.enable := 1; 
			GetEthPort_0.adrIF := ADR(_dServer.sIF);	
			GetEthPort_0;
			IF GetEthPort_0.status = ERR_OK THEN
				_bStep := 30;
			ELSIF GetEthPort_0.status <> ERR_FUB_BUSY THEN // fehler aufgetreten
				status := 2;
				_bStep := 100;
			END_IF;
		30: 
			CfgGetIPAddr_0.enable  := 1;
			CfgGetIPAddr_0.pDevice := ADR(_dServer.sIF);
			CfgGetIPAddr_0.pIPAddr := ADR(_dServer.sNetID);
			CfgGetIPAddr_0.Len := 16;
			CfgGetIPAddr_0;	
			IF  (CfgGetIPAddr_0.status = ERR_OK) THEN 
				_bStep := 40;
				ethInetAton(ADR(_dServer.sNetID),ADR(_dServer.udNetID));
				
			ELSIF CfgGetIPAddr_0.status <> ERR_FUB_BUSY THEN // fehler aufgetreten
				status := 3;
				_bStep := 100;
			END_IF;
		
		40:
			FOR _i := 0 TO HLKANLINK_MAX_SERVERCONNS DO 
				_dServer.ServerListe[_i].adrInterface := ADR(_dIf.Server[_i]);
				KLLib_ReadServerPara(ADR(_dServer.ServerListe[_i]), ADR( _dIf.Parameter.Server[_i]),ADR(_dServer));
			END_FOR;
			//			memset(ADR(_dServer.ClientListe),0,SIZEOF(_dServer.ClientListe));
			FOR _i := 0 TO HLKANLINK_MAX_CLIENTCONNS DO  
				KLLib_ReadClientPara(ADR(_dServer.ClientListe[_i]),ADR(_dIf.Parameter.Client[_i]),ADR(_dServer));
				_dServer.ClientListe[_i].xActiv := (_dServer.ClientListe[_i].Cmd <> 0);
				_dServer.ClientListe[_i].TimeOut := 140;
				_dServer.ClientListe[_i].adrInterface := ADR(_dIf.Client[_i]);
			END_FOR;		
			_bStep := 50;
		50: 
			
			
			_dServer.udp.open.enable := 1;
			_dServer.udp.open.pIfAddr := ADR(_dServer.sNetID);	(* Übergeben des Interface funzt nicht *)
			_dServer.udp.open.port := _dServer.iPort;	(* Port to listen*)
			_dServer.udp.open.options := 0;
			_dServer.udp.open;	(* Call the Function*)
		 
			IF _dServer.udp.open.status = 0 THEN  (* UdpOpen successful*)
				_dServer._uiLastId := _dServer.udp.open.ident;
				_bStep := 90;
			ELSIF _dServer.udp.open.status = ERR_FUB_BUSY THEN  (* UdpOpen not finished -> redo *)			
				
			ELSIF _dServer.udp.open.status = udpERR_ALREADY_EXIST THEN // erst schliessen
				_dServer.udp.close.enable := 1;
				_dServer.udp.close.ident := _dServer._uiLastId;
				_dServer.udp.close;
				IF _dServer.udp.close.status = 0 THEN
					//
				ELSIF _dServer.udp.close.status = ERR_FUB_BUSY THEN
					
				ELSE
					status := 5001;
					_bStep := 100;	// unbekannter close fehler aufgetreten
				END_IF;	
				
			ELSE	
				status := 5002;
				_bStep := 100; // unbekannter open fehler aufgetreten
			END_IF
			
			
		
		
		90:  // fertig
			status := ERR_OK;
			enable := 0;
			_bStep := 0;
			
		100: // fehler aufgetreten
			enable := 0;
			_bStep := 0;
			
	END_CASE;
			

END_FUNCTION_BLOCK
