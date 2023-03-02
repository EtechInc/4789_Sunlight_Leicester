
PROGRAM _INIT
 

	
END_PROGRAM

PROGRAM _CYCLIC

	MTBasicsPWM_0.DutyCycle		:= 50;
	MTBasicsPWM_0.Period		:= 2;
	MTBasicsPWM_0.Enable		:= TRUE;
	MTBasicsPWM_0();
	
	CASE Std.PLCStn OF
		0:
			start := 230;
		1: 	
			start := 240;
	
		ELSE	
			start := 10;
	END_CASE;	
	
	
	
	FOR i := start TO start + 8 DO
	
		OpcUa.VC[i].Write.Heartbeat	:= MTBasicsPWM_0.Out;
	
	
		OpcUa.VC[i].Read.StatusInfo;
		OpcUa.VC[i].Read.ActPosition;
		OpcUa.VC[i].Read.PositionNo;
		OpcUa.VC[i].Read.ReceiveBag;
		OpcUa.VC[i].Read.ReleaseBag;
		OpcUa.VC[i].Read.Heartbeat;
		OpcUa.VC[i].Read.ReadyToReceive;

	END_FOR;
	

	
	
	
	(* Establish a connection to the client *)
	
	
(*	ReadHeartbeat;
	
	
	CASE Connect_to_OpcUaServer_step OF
		
		WAIT:
		
			IF Connect_OpcUa THEN
			
				Connect_to_OpcUaServer_step := CONNECT_TO_OPCUA;
			END_IF;
				
				
		CONNECT_TO_OPCUA:
			
			SessionConnectInfo_0.SecurityMsgMode := UASecurityMsgMode_None; 
			SessionConnectInfo_0.SecurityPolicy := UASecurityPolicy_None; 
			SessionConnectInfo_0.TransportProfile := UATP_UATcp; 
			SessionConnectInfo_0.UserIdentityToken.UserIdentityTokenType := UAUITT_Anonymous; 
			SessionConnectInfo_0.SessionTimeout := T#10m; 
			SessionConnectInfo_0.MonitorConnection := T#10s;
				
			UA_Connect_0.ServerEndpointUrl := 'opc.tcp://10.44.10.244:4840';
			UA_Connect_0.Timeout := T#10s;
			UA_Connect_0.Execute := TRUE;
			UA_Connect_0.SessionConnectInfo := SessionConnectInfo_0;
				

			IF (UA_Connect_0.Done = 1) THEN 
				UA_Connect_0.Execute := FALSE;
				Connect_OpcUa := FALSE; 
				ConnectionHdl := UA_Connect_0.ConnectionHdl; 
				Connect_to_OpcUaServer_step := GET_NAMESPACE;
			END_IF;
	
			IF (UA_Connect_0.Error = 1) THEN 
				ConnectionHdl := 0;
				UA_Connect_0.Execute := FALSE;
				Connect_to_OpcUaServer_step := ERROR_OPCUA;
			END_IF;
		
			
		GET_NAMESPACE:
		
			UA_GetNamespaceIndex_0.ConnectionHdl := ConnectionHdl;
			UA_GetNamespaceIndex_0.NamespaceUri := 'urn:B&R/pv/';
			UA_GetNamespaceIndex_0.Timeout := T#5s;
			UA_GetNamespaceIndex_0.Execute := TRUE;

				
			IF (UA_GetNamespaceIndex_0.Done = 1) THEN 
				NamespaceIndex := UA_GetNamespaceIndex_0.NamespaceIndex; 
				UA_GetNamespaceIndex_0.Execute := FALSE;
				Connect_to_OpcUaServer_step := GET_NODE_HANDLE;
			END_IF;
			
			IF (UA_GetNamespaceIndex_0.Error = 1) THEN 
				NamespaceIndex := 0;
				UA_GetNamespaceIndex_0.Execute := FALSE;
				Connect_to_OpcUaServer_step := ERROR_OPCUA;
			END_IF; 

		
		
		GET_NODE_HANDLE:
		
			UANodeID_0[0].NamespaceIndex := NamespaceIndex;
			UANodeID_0[0].Identifier := '::Test_OpcUa_Client:WriteHeartbeat';
			UANodeID_0[0].IdentifierType := UAIdentifierType_String;		
					
			
			UA_NodeGetHandleList_0.ConnectionHdl := ConnectionHdl;
			UA_NodeGetHandleList_0.NodeIDCount := 1;
			UA_NodeGetHandleList_0.NodeIDs := UANodeID_0;
			UA_NodeGetHandleList_0.Timeout := T#10s;
			UA_NodeGetHandleList_0.Execute := TRUE;

			IF (UA_NodeGetHandleList_0.Done = 1) THEN 
				NodeHdls := UA_NodeGetHandleList_0.NodeHdls; 
				UA_NodeGetHandleList_0.Execute := FALSE;
				Connect_to_OpcUaServer_step := READ_LIST;
			END_IF;
			
			IF (UA_NodeGetHandleList_0.Error = 1) THEN 
				NodeHdls[0] := 0;

				UA_NodeGetHandleList_0.Execute := FALSE;
				Connect_to_OpcUaServer_step := ERROR_OPCUA;
			END_IF;
		
		READ_LIST:
			
			UANodeAdditionalInfo_0[0].AttributeId := UAAI_Value;
			UANodeAdditionalInfo_0[0].IndexRangeCount := 0;
					
			Variable_Rd0[0] := '::ServerTask:ReadHeartbeat';
			
			
			IF NOT UA_ReadList_0.Done THEN
				
				UA_ReadList_0
					(
					Execute := TRUE,
					ConnectionHdl := ConnectionHdl,
					NodeHdlCount := 1,
					NodeHdls := NodeHdls,
					NodeAddInfo := UANodeAdditionalInfo_0,
					Timeout := T#10s,
				Variables := Variable_Rd0);

				IF (UA_ReadList_0.Busy = 0) THEN 
					UA_ReadList_0.Execute := FALSE; 
				
					IF (UA_ReadList_0.Done = 1) THEN 
						TimestampHeart := UA_ReadList_0.TimeStamps[0];

					END_IF;
					IF (UA_ReadList_0.Error = 1) THEN 
						TimestampHeart := 0;
						Connect_to_OpcUaServer_step := ERROR_OPCUA;
					END_IF;
				END_IF;
			
			ELSIF StopReading THEN	
				Connect_to_OpcUaServer_step := RELEASE_NODE;
				UA_ReadList_0.Execute := FALSE;
				
			ELSE 
				UA_ReadList_0
					(
					Execute := FALSE,
					ConnectionHdl := ConnectionHdl,
					NodeHdlCount := 1,
					NodeHdls := NodeHdls,
					NodeAddInfo := UANodeAdditionalInfo_0,
					Timeout := T#10s,
				Variables := Variable_Rd0);
			END_IF;
	
			
		RELEASE_NODE:
		
			UA_NodeReleaseHandleList_0.ConnectionHdl := ConnectionHdl;
			UA_NodeReleaseHandleList_0.NodeHdlCount := 1;
			UA_NodeReleaseHandleList_0.NodeHdls := NodeHdls;
			UA_NodeReleaseHandleList_0.Timeout := T#10s;
			UA_NodeReleaseHandleList_0.Execute := TRUE;
			StopReading := FALSE;

				
			IF (UA_NodeReleaseHandleList_0.Done = 1) THEN 
				NodeHdls[0] := 0;
 
				UA_NodeReleaseHandleList_0.Execute := FALSE;
				Connect_to_OpcUaServer_step := DISCONNECT_OPCUA;
			END_IF;
			
			IF (UA_NodeReleaseHandleList_0.Error = 1) THEN 
				NodeHdls[0] := 0; 
				
				UA_NodeReleaseHandleList_0.Execute := FALSE;
				Connect_to_OpcUaServer_step := ERROR_OPCUA;
			END_IF;
		
		DISCONNECT_OPCUA:
		
			UA_Disconnect_0.ConnectionHdl := ConnectionHdl;
			UA_Disconnect_0.Timeout := T#10s;
			UA_Disconnect_0.Execute := TRUE;

			IF (UA_Disconnect_0.Done = 1) THEN 
				ConnectionHdl := 0;
				UA_Disconnect_0.Execute := FALSE;
				Connect_to_OpcUaServer_step := WAIT;	
			END_IF;
			
			IF (UA_Disconnect_0.Error = 1) THEN  
				ConnectionHdl := 0;
				UA_Disconnect_0.Execute := FALSE;
				Connect_to_OpcUaServer_step := ERROR_OPCUA;
			END_IF;

			
		
		ERROR_OPCUA:
		
			
		
	END_CASE;
		
	
	UA_Connect_0;
	UA_GetNamespaceIndex_0;
	UA_NodeGetHandleList_0;
	UA_NodeReleaseHandleList_0;
	UA_Disconnect_0;				*)
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

