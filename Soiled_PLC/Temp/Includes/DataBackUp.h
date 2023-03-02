/* Automation Studio generated header file */
/* Do not edit ! */
/* DataBackUp  */

#ifndef _DATABACKUP_
#define _DATABACKUP_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "DataObj.h"
#endif
#ifdef _SG4
		#include "DataObj.h"
#endif
#ifdef _SGC
		#include "DataObj.h"
#endif


/* Datatypes and datatypes of function blocks */
typedef enum enum_DataBackup
{	eData_DoNothing,
	eData_Create,
	eData_Info,
	eData_Write,
	eData_Delete,
	eData_Read
} enum_DataBackup;

typedef enum enum_BackUpState
{	eNull,
	eWrite,
	eRead,
	eCopyToUSB,
	eReadFromUSB,
	eDebug
} enum_BackUpState;

typedef enum enum_FileWriteAction
{	eOpenFile,
	eCreateFile,
	eWriteToFile,
	eCloseFile,
	eReadFromFile
} enum_FileWriteAction;

typedef struct DatFile_typ
{	unsigned long ident;
	unsigned long pDatObjMem;
	unsigned long len;
	unsigned char MemType;
	unsigned long Option;
	plcdt ChangeDate;
	enum enum_BackUpState State;
} DatFile_typ;

typedef struct Backup_typ
{	unsigned long DataLength;
	unsigned char MemTyp;
	unsigned long pData;
	unsigned long pFileName;
	unsigned long ident;
} Backup_typ;

typedef struct DataBackUp
{
	/* VAR_INPUT (analog) */
	enum enum_BackUpState DataAction;
	unsigned long pFileName;
	unsigned long DataLength;
	unsigned char MemType;
	unsigned long pData;
	/* VAR_OUTPUT (analog) */
	unsigned short Status;
	struct DatFile_typ CurrentDatFile;
	/* VAR (analog) */
	enum enum_DataBackup eDataBackup;
	struct DatObjCreate CreateDataFile;
	struct DatObjInfo GetFileInfo;
	struct DatObjWrite WriteData;
	struct DatObjRead ReadData;
	/* VAR_INPUT (digital) */
	plcbit Enable;
} DataBackUp_typ;

typedef struct CopyToFileDevice
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned long pFile;
	unsigned long fiLen;
	unsigned long pData;
	/* VAR_OUTPUT (analog) */
	unsigned short Status;
	/* VAR (analog) */
	enum enum_FileWriteAction WriteAction;
	struct FileOpen OpenFile;
	struct FileCreate CreateFile;
	unsigned long fiIdent;
	struct FileWrite WriteFile;
	struct FileClose CloseFile;
	/* VAR_INPUT (digital) */
	plcbit Enable;
} CopyToFileDevice_typ;

typedef struct ReadFromFileDevice
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned long pFile;
	unsigned long pDest;
	unsigned long fiLen;
	/* VAR_OUTPUT (analog) */
	unsigned short Status;
	/* VAR (analog) */
	unsigned long fiIdent;
	enum enum_FileWriteAction WriteAction;
	struct FileOpen OpenFile;
	struct FileClose CloseFile;
	struct FileRead ReadFile;
	/* VAR_INPUT (digital) */
	plcbit Enable;
} ReadFromFileDevice_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void DataBackUp(struct DataBackUp* inst);
_BUR_PUBLIC void CopyToFileDevice(struct CopyToFileDevice* inst);
_BUR_PUBLIC void ReadFromFileDevice(struct ReadFromFileDevice* inst);


#ifdef __cplusplus
};
#endif
#endif /* _DATABACKUP_ */

