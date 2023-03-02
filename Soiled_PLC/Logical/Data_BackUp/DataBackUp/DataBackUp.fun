(********************************************************************
 * COPYRIGHT -- HP
 ********************************************************************
 * Library: DataBackUp
 * File: DataBackUp.fun
 * Author: treamsbottom
 * Created: March 20, 2014
 ********************************************************************
 * Functions and function blocks of library DataBackUp
 ********************************************************************)

FUNCTION_BLOCK DataBackUp (**Save/Read Memory to system memory*) (*$GROUP=User,$GROUPICON=LD_advControl.png*)
	VAR_INPUT
		Enable : BOOL;
		DataAction : enum_BackUpState; (**Enum Read or Write Action*)
		pFileName : UDINT; (**Pointer to file name string*)
		DataLength : UDINT; (**Length of data to read/write*)
		MemType : USINT; (**Memory area to read/write*)
		pData : UDINT; (**Pointer to memory area to be written/read to*)
	END_VAR
	VAR_OUTPUT
		Status : UINT;
		CurrentDatFile : DatFile_typ;
	END_VAR
	VAR
		eDataBackup : enum_DataBackup;
		CreateDataFile : DatObjCreate;
		GetFileInfo : DatObjInfo;
		WriteData : DatObjWrite;
		ReadData : DatObjRead;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK CopyToFileDevice (**Write to File. Create if it doesn;t exist*) (*$GROUP=User*)
	VAR_INPUT
		Enable : BOOL;
		pDevice : UDINT; (**Pointer to file device*)
		pFile : UDINT; (**Pointer to file name string*)
		fiLen : UDINT; (**Length of data to be written*)
		pData : UDINT; (**Pointer to data to be written*)
	END_VAR
	VAR_OUTPUT
		Status : UINT;
	END_VAR
	VAR
		WriteAction : enum_FileWriteAction;
		OpenFile : FileOpen;
		CreateFile : FileCreate;
		fiIdent : UDINT;
		WriteFile : FileWrite;
		CloseFile : FileClose;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK ReadFromFileDevice (**Open & Read file from File device*) (*$GROUP=User*)
	VAR_INPUT
		Enable : BOOL;
		pDevice : UDINT;
		pFile : UDINT;
		pDest : UDINT;
		fiLen : UDINT;
	END_VAR
	VAR_OUTPUT
		Status : UINT;
	END_VAR
	VAR
		fiIdent : UDINT;
		WriteAction : enum_FileWriteAction;
		OpenFile : FileOpen;
		CloseFile : FileClose;
		ReadFile : FileRead;
	END_VAR
END_FUNCTION_BLOCK
