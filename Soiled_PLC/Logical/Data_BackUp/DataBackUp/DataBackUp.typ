(********************************************************************
 * COPYRIGHT -- HP
 ********************************************************************
 * Library: DataBackUp
 * File: DataBackUp.typ
 * Author: treamsbottom
 * Created: March 20, 2014
 ********************************************************************
 * Data types of library DataBackUp
 ********************************************************************)

TYPE
	enum_DataBackup : 
		(
		eData_DoNothing,
		eData_Create,
		eData_Info,
		eData_Write,
		eData_Delete,
		eData_Read
		);
	DatFile_typ : 	STRUCT 
		ident : UDINT;
		pDatObjMem : UDINT;
		len : UDINT;
		MemType : USINT;
		Option : UDINT;
		ChangeDate : DATE_AND_TIME;
		State : enum_BackUpState;
	END_STRUCT;
	enum_BackUpState : 
		(
		eNull,
		eWrite,
		eRead,
		eCopyToUSB,
		eReadFromUSB,
		eDebug
		);
	Backup_typ : 	STRUCT 
		DataLength : UDINT;
		MemTyp : USINT;
		pData : UDINT;
		pFileName : UDINT;
		ident : UDINT;
	END_STRUCT;
	enum_FileWriteAction : 
		(
		eOpenFile,
		eCreateFile,
		eWriteToFile,
		eCloseFile,
		eReadFromFile
		);
END_TYPE
