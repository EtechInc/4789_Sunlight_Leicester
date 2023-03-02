
TYPE
	ABB_Settings_typ : 	STRUCT 
		Slow : INT;
		Fast : INT;
		Acc : INT; (*This is passed back as a whole number to make decoding easier. This in milli seconds and must be /1000 and cast to REAL.*)
		Dec : INT; (*This is passed back as a whole number to make decoding easier. This in milli seconds and must be /1000 and cast to REAL.*)
		MaxCurrent : DINT;
	END_STRUCT;
	ABB_EPL_Struct : 	STRUCT 
		Settings : ARRAY[1..MAX_DRIVES]OF ABB_Settings_typ;
		Drives : ARRAY[1..MAX_DRIVES]OF ABB_EPL_typ;
		httpRequest : STRING[5000];
		httpResponse : ARRAY[0..4999]OF USINT;
		callBackUpWrite : BOOL;
	END_STRUCT;
	ABB_EPL_typ : 	STRUCT 
		Comm : ABB_EPL_Comm_typ;
		Cmd : ABB_EPL_cmd_typ;
		Status : ABB_EPL_status_typ;
		Parameters : ABB_EPL_Param_typ;
		Config : EPL_Config;
	END_STRUCT;
	ABB_EPL_Comm_typ : 	STRUCT 
		ControlWord : UINT;
		StatusWord : UINT;
		TargetVelocity : INT; (*RPM*)
		ActVelocity : INT; (*RPM*)
		ModuleOk : BOOL;
		State : ABB_EPL_Comm_State_enum;
		ActCurrent : DINT;
		ActTorque : DINT;
		ErrorCode : UINT;
	END_STRUCT;
	ABB_Motor_Size_enum : 
		(
		ABB_MOTOR_0_25KW,
		ABB_MOTOR_0_37KW_0_91A_1374,
		ABB_MOTOR_0_37KW_0_97A_1342,
		ABB_MOTOR_0_37KW_1_14A_1380,
		ABB_MOTOR_0_75KW,
		ABB_MOTOR_1_5KW,
		ABB_MOTOR_2_2KW_4_75A_1450,
		ABB_MOTOR_3KW,
		ABB_MOTOR_CUSTOM
		);
	ABB_EPL_cmd_typ : 	STRUCT 
		TargetVelocity : INT; (*RPM*)
		Run : BOOL;
		Reset : BOOL;
		QuickStop : BOOL;
		MotorSize : ABB_Motor_Size_enum;
		Dec_seconds : REAL; (*Decleration Time Seconds*)
		Acc_seconds : REAL; (*Acceleration Time Seconds*)
		Direction : ABB_DIRECTION_Enum;
		Node : USINT; (*Powerlink Node Address*)
		BrakeFitted : BOOL; (*Does the motor have a brake fitted*)
	END_STRUCT;
	ABB_EPL_status_typ : 	STRUCT 
		ReadyToSwitchOn : BOOL;
		ReadyToRun : BOOL;
		Tripped : BOOL;
		DriveEnabled : BOOL;
		QuickstopActive : BOOL;
		SwitchOnInhibit : BOOL;
		Warning : BOOL;
		AtSpeed : BOOL; (**Drive is running at target velocity*)
		ActCurrent : DINT; (*Amps*)
		ActTorque : DINT; (*% of nominal motor torque*)
		ThermalTrip : BOOL;
		OnRemote : BOOL; (**Powerlink control is active*)
		Running : BOOL;
	END_STRUCT;
	ABB_EPL_Comm_State_enum : 
		(
		ABB_DISCONNECTED,
		ABB_QUICK_STOP,
		ABB_CONFIG,
		ABB_SWITCH_ON_INHIBITED,
		ABB_NOT_READY_TO_SWITCH_ON,
		ABB_READY_TO_SWITCH_ON,
		ABB_READY_TO_RUN,
		ABB_RUNNING,
		ABB_TRIPPED,
		ABB_OFF_REMOTE, (**Drive not on remote control*)
		ABB_STO,
		ABB_RAMP_DOWN
		);
	ABB_EPL_Param_typ : 	STRUCT 
		Read : ABB_EPL_Param_Read_typ;
		Write : ABB_EPL_Param_Write_typ;
	END_STRUCT;
	ABB_EPL_Param_Read_typ : 	STRUCT 
		ActCurrent_0107 : DINT; (*Amps*)
		ActTorque_0110 : DINT; (*% of nominal motor torque*)
	END_STRUCT;
	ABB_EPL_Param_Write_typ : 	STRUCT 
		Ramp_AccTime1_2872 : DINT;
		Ramp_DecTime1_2873 : DINT;
		Motor_NominalCurrent_9906 : DINT; (*1=1A*)
		Motor_NominalSpeed_9909 : DINT; (*Nominal Speed RPM*)
		Motor_NominalPower_9910 : DINT;
		QuickStopTime_2323 : DINT; (*Time in seconds for emergency stop*)
	END_STRUCT;
	ABB_DIRECTION_Enum : 
		(
		ABB_DIRECTION_FWD,
		ABB_DIRECTION_REV
		);
	EPL_Config : 	STRUCT 
		function : EplSDOWrite;
		currentParam : USINT;
		New_Member : USINT;
		params : ARRAY[0..MAX_PARAMS]OF EPL_SDO;
	END_STRUCT;
	EPL_SDO : 	STRUCT 
		index : UINT;
		subIndex : USINT;
		data : DINT;
		datalen : UDINT;
		status : UINT;
		errorInfo : UDINT;
	END_STRUCT;
END_TYPE
