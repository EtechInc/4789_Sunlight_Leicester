(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * PROGRAM: ModSlave
 ********************************************************************
 * Implementation OF PROGRAM ModSlave
 ********************************************************************)

PROGRAM _INIT
	(* --------------------------------------------------------------------
	  Reset FUNCTION blocks AND data structure on startup (SGC)
	  --------------------------------------------------------------------- *)
    memset(ADR(ModbusTcpSlave), 0, SIZEOF(ModbusTcpSlave));
    memset(ADR(SlaveConfig), 0, SIZEOF(SlaveConfig));
    memset(ADR(logger), 0, SIZEOF(logger));

	(* --------------------------------------------------------------------
	  Create default IO mapping FOR digital AND analog area
	  --------------------------------------------------------------------- *)
	FOR idx:=0 TO SIZEOF(DO_Bool)-1 DO
		SlaveConfig.p_coils[idx] := ADR(DO_Bool[idx]);
	END_FOR;
	FOR idx:=0 TO SIZEOF(DI_Bool)-1 DO
		SlaveConfig.p_discrete_inputs[idx]	:= ADR(DI_Bool[idx]);
	END_FOR;
	FOR idx:=0 TO SIZEOF(AO_Word)/SIZEOF(AO_Word[0])-1 DO
		SlaveConfig.p_holding_registers[idx] := ADR(AO_Word[idx]);
	END_FOR;
	FOR idx:=0 TO SIZEOF(AI_Word)/SIZEOF(AI_Word[0])-1 DO
		SlaveConfig.p_input_registers[idx]	:= ADR(AI_Word[idx]);
	END_FOR;
	
	(* --------------------------------------------------------------------
	  Configure FUNCTION block instance
	  --------------------------------------------------------------------- *)
	ModbusTcpSlave.enable			:= 1; 					(* Enable function block *)
	ModbusTcpSlave.device			:= ADR('IF2');			(* Ethernet device string *)
	ModbusTcpSlave.p_cfg			:= ADR(SlaveConfig); 	(* IO configuration *)
	ModbusTcpSlave.master_timeout 	:= 5000; 				(* Disconnect master after x miliseconds when no request was sent, 0 = disabled *)

	(* The LOG information will show communication details. Enable for debugging, 
	   disable FOR production TO save system resources *)
	ModbusTcpSlave.log.data_lines 	:= 20; 					(* Number of logging lines *)
	ModbusTcpSlave.log.pData 		:= ADR(logger);			(* Pointer to logger string array *)
	StartStop := 1;
END_PROGRAM

PROGRAM _CYCLIC
	(* --------------------------------------------------------------------
	  Cyclic FUNCTION call
	  --------------------------------------------------------------------- *)
	IF(StartStop) THEN
		ModbusTcpSlave();
	END_IF

	(* --------------------------------------------------------------------
	  Reset last error information
	  --------------------------------------------------------------------- *)
	IF(reset_error) THEN
		memset(ADR(ModbusTcpSlave.last_error), 0, 2);
		reset_error := 0;
	END_IF
END_PROGRAM
