(********************************************************************
 * COPYRIGHT -- HP
 ********************************************************************
 * Library: zzSQL_Lib
 * File: zzSQL_Lib.typ
 * Author: treamsbottom
 * Created: May 04, 2012
 ********************************************************************
 * Data types of library zzSQL_Lib
 ********************************************************************)

TYPE
	zzSQLGetNameTyp : 	STRUCT 
		BagNumber : UINT;
		Prg : UDINT;
		PrgLong : STRING[8];
		PrgName : STRING[32];
		Cat : UDINT;
		CatLong : STRING[8];
		CatName : STRING[32];
		Cus : UDINT;
		CusLong : STRING[8];
		CusName : STRING[32];
	END_STRUCT;
	SQL_Enum : 
		(
		eError,
		eConnect,
		eReadData,
		eDisconnect,
		eExecute,
		eGetData,
		eColumnCount,
		eGetAffectedRow,
		eIdle
		);
	SQLRequest_typ : 	STRUCT 
		SQLType : USINT; (**Read Only - Write*)
		SQL_usp : USINT; (**Where in index is SQL usp cmd*)
		RequestID : UDINT; (**ID Used to return Results*)
		Complete : BOOL; (**Reponse when Complete*)
		NoOfParams : USINT; (**Number of Parameters*)
		Parameters : ARRAY[0..19]OF SQL_Parameter;
		Request : BOOL;
		OutputData : ARRAY[0..Dec_SqlOutputTypArrayLen]OF SQL_Output;
		Fail : BOOL;
	END_STRUCT;
	SQL_Typ : 	STRUCT 
		Login : SQLLogin_typ;
	END_STRUCT;
	SQLLogin_typ : 	STRUCT 
		Path : STRING[64];
		DBName : STRING[64];
		User : STRING[64];
		Password : STRING[64];
	END_STRUCT;
	SQL_Parameter : 	STRUCT 
		Type : USINT; (**Input = 0 or Output = 1*)
		Param_String : STRING[32];
	END_STRUCT;
	SQL_Output :STRING[32];
END_TYPE
