(********************************************************************
 * COPYRIGHT -- Herbert Kannegiesser GmbH
 ********************************************************************
 * Library: WetLinkLib
 * File: WLLib_SendData.st
 * Author: stahlhut
 * Created: January 07, 2012
 * changed April 2015
 ********************************************************************
 * 
 ********************************************************************) 




FUNCTION KLLib_SendData
	IF Srv.udp.send.enable = TRUE THEN //Sendung noch unterwegs, abbrechen
 		KLLib_SendData := 1;
		RETURN;
	END_IF;
	
	Srv.ServerData.PreHeaderSend.Magic := MagicNr;
	Srv.ServerData.PreHeaderSend.HeaderVersion := 16#0100;
	Srv._offset := 0;
	memcpy(ADR(Srv.ServerData.send_data),ADR(Srv.ServerData.PreHeaderSend),PreHeaderSize);
	Srv._offset := PreHeaderSize;
	
	memcpy(ADR(Srv.ServerData.send_data)+Srv._offset,ADR(Srv.ServerData.HeaderV1Send),HeaderSize);
	Srv._offset := Srv._offset+ HeaderSize;
	memcpy(ADR(Srv.ServerData.send_data)+Srv._offset,SendAdr,SendLen);
	Srv._SendLen := Srv._offset + Srv.ServerData.HeaderV1Send.Length;

	
	// Telegramm jetzt senden
	Srv.udp.send.enable := 1;
	Srv.udp.send.ident 	:= Srv.udp.open.ident;	(* Client Ident from AsUDP.UDP_Open *)
	Srv.udp.send.pHost 	:= pDestination;	(* IP Address of the Client *)
	Srv.udp.send.port 	:= Srv.iPort;
	Srv.udp.send.pData 	:= ADR(Srv.ServerData.send_data);	(* Which data to send *)
	Srv.udp.send.datalen :=  Srv._SendLen; //
	Srv.udp.send.flags 	:= 0;
	Srv.udp.send ;	(* Call the Function*)
	
	
		
END_FUNCTION
