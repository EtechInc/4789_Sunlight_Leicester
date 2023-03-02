(********************************************************************
 * COPYRIGHT -- Bernecker + Rainer
 ********************************************************************
 * Program: Client
 * File: Client.st
 * Author: Bernecker + Rainer
 * Created: June 02, 2008
 ********************************************************************
 * Implementation of program Client
 ********************************************************************)

PROGRAM _CYCLIC
  Client.server_address := eVueServerIP;
  Client.server_portnumber := 4004;

  CASE Client.sStep OF 
		
    0:	(* Open UDP Port *)
      Client.UdpOpen_0.enable := 1;
      Client.UdpOpen_0.pIfAddr := 0;	(* Listen on all TCP/IP Interfaces*)
      Client.UdpOpen_0.port := 4914;	(* Port to listen*)
      Client.UdpOpen_0.options := 0;
      Client.UdpOpen_0;	(* Call the Function*)
			
      IF Client.UdpOpen_0.status = 0 THEN  (* UdpOpen successful*)
        Client.sStep := 1;	
      ELSIF Client.UdpOpen_0.status = ERR_FUB_BUSY THEN  (* UdpOpen not finished -> redo *)			
        (* Busy *)	
      ELSE  (* Goto Error Step *)
        Client.sStep := 1;
      END_IF
			
    1:	(* Send Data to the Server *)
      Client.UdpSend_0.enable := 1;
      Client.UdpSend_0.ident := Client.UdpOpen_0.ident;	(* Connection Ident from AsUDP.UDP_Open *)
      Client.UdpSend_0.pHost := ADR(Client.server_address);	
      Client.UdpSend_0.port := Client.server_portnumber;
      Client.UdpSend_0.pData := ADR(commArray1);
      Client.UdpSend_0.datalen := 8002;
      Client.UdpSend_0.flags := 0;
      Client.UdpSend_0;	(* Call the Function*)
			
      IF Client.UdpSend_0.status = 0 THEN  (* Data sent *)
        Client.sStep := 2;					   
      ELSIF Client.UdpSend_0.status = ERR_FUB_BUSY THEN  (* UdpSend not finished -> redo *)						
        (* Busy *)
      ELSE  (* Goto Error Step *)
        Client.sStep := 10;
      END_IF
			
    2:	(* Send Data to the Server *)
      Client.UdpSend_0.enable := 1;
      Client.UdpSend_0.ident := Client.UdpOpen_0.ident;	(* Connection Ident from AsUDP.UDP_Open *)
      Client.UdpSend_0.pHost := ADR(Client.server_address);	
      Client.UdpSend_0.port := Client.server_portnumber;
      Client.UdpSend_0.pData := ADR(commArray2);
      Client.UdpSend_0.datalen := 8002;
      Client.UdpSend_0.flags := 0;
      Client.UdpSend_0;	(* Call the Function*)
			
      IF Client.UdpSend_0.status = 0 THEN  (* Data sent *)
        Client.sStep := 3;					   
      ELSIF Client.UdpSend_0.status = ERR_FUB_BUSY THEN  (* UdpSend not finished -> redo *)						
        (* Busy *)
      ELSE  (* Goto Error Step *)
        Client.sStep := 10;
      END_IF
      
    3:	(* Send Data to the Server *)
      Client.UdpSend_0.enable := 1;
      Client.UdpSend_0.ident := Client.UdpOpen_0.ident;	(* Connection Ident from AsUDP.UDP_Open *)
      Client.UdpSend_0.pHost := ADR(Client.server_address);	
      Client.UdpSend_0.port := Client.server_portnumber;
      Client.UdpSend_0.pData := ADR(commArray3);
      Client.UdpSend_0.datalen := 8002;
      Client.UdpSend_0.flags := 0;
      Client.UdpSend_0;	(* Call the Function*)
			
      IF Client.UdpSend_0.status = 0 THEN  (* Data sent *)
        Client.sStep := 4;					   
      ELSIF Client.UdpSend_0.status = ERR_FUB_BUSY THEN  (* UdpSend not finished -> redo *)						
        (* Busy *)
      ELSE  (* Goto Error Step *)
        Client.sStep := 10;
      END_IF
      
    4:	(* Send Data to the Server *)			
      Client.UdpSend_0.enable := 1;
      Client.UdpSend_0.ident := Client.UdpOpen_0.ident;	(* Connection Ident from AsUDP.UDP_Open *)
      Client.UdpSend_0.pHost := ADR(Client.server_address);	
      Client.UdpSend_0.port := Client.server_portnumber;		
      Client.UdpSend_0.pData := ADR(commArray4);
      Client.UdpSend_0.datalen := 8002;
      Client.UdpSend_0.flags := 0;
      Client.UdpSend_0;	(* SCall the Function*)
			
      IF Client.UdpSend_0.status = 0 THEN  (* Data sent *)
        Client.sStep := 5;					   
      ELSIF Client.UdpSend_0.status = ERR_FUB_BUSY THEN  (* UdpSend not finished -> redo *)						
        (* Busy *)
      ELSE  (* Goto Error Step *)
        Client.sStep := 10;
      END_IF
			
    5: (* Close connection *)
      Client.UdpClose_0.enable := 1;
      Client.UdpClose_0.ident := Client.UdpOpen_0.ident;  (* Connection Ident from AsUDP.UDP_Open *)
      Client.UdpClose_0;  (* Call the Function*)
	
      IF Client.UdpClose_0.status = 0 THEN  (* Close successful -> Reopen the interface *)
        Client.sStep := 0;
      ELSIF Client.UdpClose_0.status = ERR_FUB_BUSY THEN  (* UdpClose not finished -> redo *)	
        (* Busy *)
      ELSE  (* Goto Error Step *)
        Client.sStep := 10;
      END_IF
		
    10: (* Here some error Handling has to be implemented *)
      Client.sStep := 0;		
  END_CASE

END_PROGRAM
