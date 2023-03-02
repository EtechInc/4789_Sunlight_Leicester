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

  FOR idx:=0 TO SIZEOF(EVUE_MODBUS)/SIZEOF(EVUE_MODBUS[0])-1 DO
    SlaveConfig.p_holding_registers[idx] := ADR(EVUE_MODBUS[idx]);
  END_FOR;





  (* --------------------------------------------------------------------
    Configure FUNCTION block instance
    --------------------------------------------------------------------- *)
  ModbusTcpSlave.enable			:= 1; 					(* Enable function block *)
  ModbusTcpSlave.device			:= ADR('IF3');			(* Ethernet device string *)
  ModbusTcpSlave.p_cfg			:= ADR(SlaveConfig); 	(* IO configuration *)
  ModbusTcpSlave.master_timeout 	:= 5000; 			     	(* Disconnect master after x miliseconds when no request was sent, 0 = disabled *)

  (* The LOG information will show communication details. Enable for debugging,
  disable FOR production TO save system resources *)

  ModbusTcpSlave.log.data_lines 	:= 20; 					(* Number of logging lines *)
  ModbusTcpSlave.log.pData 		:= ADR(logger);			(* Pointer to logger string array *)
  mbSlaveStep := 1;
END_PROGRAM

PROGRAM _CYCLIC

  CASE mbSlaveStep OF
    0:
      (* --------------------------------------------------------------------
        Reset FUNCTION blocks AND data structure on startup (SGC)
        --------------------------------------------------------------------- *)
      memset(ADR(ModbusTcpSlave), 0, SIZEOF(ModbusTcpSlave));
      memset(ADR(SlaveConfig), 0, SIZEOF(SlaveConfig));
      memset(ADR(logger), 0, SIZEOF(logger));

      (* --------------------------------------------------------------------
        Configure FUNCTION block instance
        --------------------------------------------------------------------- *)
      ModbusTcpSlave.enable			:= 1; 					(* Enable function block *)
      ModbusTcpSlave.device			:= ADR('IF3');			(* Ethernet device string *)
      ModbusTcpSlave.p_cfg			:= ADR(SlaveConfig); 	(* IO configuration *)
      ModbusTcpSlave.master_timeout 	:= 5000; 			     	(* Disconnect master after x miliseconds when no request was sent, 0 = disabled *)

      // Go to mbSlaveStep 1
      mbSlaveStep := 1;

    1:
      // Call MbSlave FUB
      ModbusTcpSlave();
  END_CASE

  (* --------------------------------------------------------------------
    Reset last error information
    --------------------------------------------------------------------- *)
  IF(reset_error) THEN
    memset(ADR(ModbusTcpSlave.last_error), 0, 2);
    reset_error := 0;
  END_IF
END_PROGRAM
