/* Automation Studio generated header file */
/* Do not edit ! */
/* FileMgr  */

#ifndef _FILEMGR_
#define _FILEMGR_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "FileIO.h"
		#include "DataObj.h"
		#include "AsHttp.h"
#endif
#ifdef _SG4
		#include "FileIO.h"
		#include "DataObj.h"
		#include "AsHttp.h"
#endif
#ifdef _SGC
		#include "FileIO.h"
		#include "DataObj.h"
		#include "AsHttp.h"
#endif


/* Constants */
#ifdef _REPLACE_CONST
 #define FILE_STATE_OPEN 1U
 #define FILE_STATE_CREATE 10U
 #define FILE_STATE_WRITE 20U
 #define FILE_STATE_READ 30U
 #define FILE_STATE_CLOSE 40U
 #define FILE_STATE_ERROR 99U
 #define FILE_SAVE 0U
 #define FILE_READ 1U
#else
 _GLOBAL_CONST unsigned short FILE_STATE_OPEN;
 _GLOBAL_CONST unsigned short FILE_STATE_CREATE;
 _GLOBAL_CONST unsigned short FILE_STATE_WRITE;
 _GLOBAL_CONST unsigned short FILE_STATE_READ;
 _GLOBAL_CONST unsigned short FILE_STATE_CLOSE;
 _GLOBAL_CONST unsigned short FILE_STATE_ERROR;
 _GLOBAL_CONST unsigned short FILE_SAVE;
 _GLOBAL_CONST unsigned short FILE_READ;
#endif




/* Datatypes and datatypes of function blocks */
typedef enum fileToDatObj_state
{	Fi_To_Do_INIT,
	Fi_To_Do_FILE_OPEN,
	Fi_To_Do_FILE_READ,
	Fi_To_Do_FILE_CLOSE,
	Fi_To_Do_DObj_GET_INFO,
	Fi_To_Do_DObj_DELETE,
	Fi_To_Do_DObj_CREATE,
	Fi_To_Do_ERROR,
	Fi_To_Do_DObj_WRITE
} fileToDatObj_state;

typedef enum fileToMem_state
{	Fi_To_Mem_INIT,
	Fi_To_Mem_FILE_OPEN,
	Fi_To_Mem_FILE_READ,
	Fi_To_Mem_FILE_CLOSE,
	Fi_To_Mem_ERROR
} fileToMem_state;

typedef enum fileCopyFromDev_state
{	FiCopyDev_INIT,
	FiCopyDev_DEVLINK,
	FiCopyDev_COPY,
	FiCopyDev_UNLINK,
	FiCopyDev_ERROR
} fileCopyFromDev_state;

typedef enum WriteXML_State
{	READY,
	CREATE_WRITER,
	START_DOC,
	WRITE_ROOT_ELEMENT,
	READ_DATA_STRUCTURE,
	WRITE_START_ELEMENT,
	WRITE_ELEMENT_TEXT,
	WRITE_END_ELEMENT,
	CLOSE_ALL_ELEMENTS,
	END_DOC,
	CREATE_XML_FILE,
	CLOSE_WRITER,
	FINISHED,
	ERROR
} WriteXML_State;

typedef struct fileReadWrite
{
	/* VAR_INPUT (analog) */
	unsigned long pFileDevice;
	unsigned long pFileName;
	unsigned short mode;
	unsigned long pData;
	unsigned long sizeData;
	unsigned long Offset;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	unsigned short fileState;
	struct FileOpen fileOpen;
	struct FileCreate fileCreate;
	struct FileClose fileClose;
	unsigned short error;
	struct FileWrite fileWrite;
	unsigned long ident;
	struct FileRead fileRead;
	/* VAR_INPUT (digital) */
	plcbit enable;
	plcbit appendToFile;
} fileReadWrite_typ;

typedef struct fileToDatObj
{
	/* VAR_INPUT (analog) */
	unsigned long pFileDevice;
	unsigned long pFileName;
	unsigned long pDoName;
	unsigned char MemType;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned long do_Ident;
	unsigned long pDatObjMem;
	unsigned long fiSize;
	/* VAR (analog) */
	struct FileOpen fileOpen;
	unsigned short error;
	struct FileRead fileRead;
	struct FileClose fileClose;
	enum fileToDatObj_state fileState;
	unsigned long fi_ident;
	struct DatObjInfo do_GetInfo;
	struct DatObjDelete do_Delete;
	struct DatObjCreate do_Create;
	struct DatObjWrite do_Write;
	/* VAR_INPUT (digital) */
	plcbit enable;
} fileToDatObj_typ;

typedef struct fileToMem
{
	/* VAR_INPUT (analog) */
	unsigned long pFileDevice;
	unsigned long pFileName;
	unsigned long pTempMem;
	unsigned long sizeTempMem;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned long fiSize;
	/* VAR (analog) */
	struct FileOpen fileOpen;
	unsigned short error;
	struct FileRead fileRead;
	struct FileClose fileClose;
	enum fileToMem_state fileState;
	unsigned long fi_ident;
	/* VAR_INPUT (digital) */
	plcbit enable;
} fileToMem_typ;

typedef struct FileCopyFromDev
{
	/* VAR_INPUT (analog) */
	unsigned long pFileDevice;
	unsigned long pDevLinkParameter;
	unsigned long pFileName;
	unsigned long pDest;
	unsigned long pDestDev;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	/* VAR (analog) */
	enum fileCopyFromDev_state fileState;
	unsigned short error;
	struct DevLink devLink;
	struct FileCopy fileCopy;
	struct DevUnlink devUnlink;
	unsigned long devHandle;
	/* VAR_INPUT (digital) */
	plcbit enable;
} FileCopyFromDev_typ;

typedef struct WriteXMLFromStructure
{
	/* VAR_INPUT (analog) */
	unsigned long pData;
	unsigned long sizeData;
	unsigned long pStructName;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned short LastError;
	/* VAR (analog) */
	enum WriteXML_State state;
	struct xmlCreateMemoryWriter createXMLwriter;
	unsigned long ident;
	struct xmlGetMemoryInfo xmlGetMemInfo;
	struct xmlCloseMemoryWriter xmlCloseWriter;
	unsigned short pvStatus;
	unsigned short index;
	plcstring pvName[61];
	plcstring taskName[21];
	struct xmlWriteStartElement xmlWriteElementStart;
	unsigned short openElements;
	struct xmlWriteEndElement xmlWriteEndElement;
	unsigned short noOfElements;
	unsigned long pv_dataLen;
	unsigned long pv_dataType;
	plcstring pvData[51];
	unsigned long pName;
	plcstring pvFullName[101];
	unsigned long val;
	unsigned short pvGetAdrStatus;
	unsigned long pv_Adr;
	plcstring elementVal[31];
	struct xmlWriteElementText xmlWriteElemText;
	struct xmlWriteEndDocument xmlEndDocument;
	struct xmlWriteStartDocument xmlStartDocument;
	unsigned char pv_tryCount;
	plcstring tempString[31];
	/* VAR_INPUT (digital) */
	plcbit enable;
	/* VAR (digital) */
	plcbit zzEdge00000;
	plcbit zzEdge00001;
	plcbit zzEdge00002;
} WriteXMLFromStructure_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void fileReadWrite(struct fileReadWrite* inst);
_BUR_PUBLIC void fileToDatObj(struct fileToDatObj* inst);
_BUR_PUBLIC void fileToMem(struct fileToMem* inst);
_BUR_PUBLIC void FileCopyFromDev(struct FileCopyFromDev* inst);
_BUR_PUBLIC void WriteXMLFromStructure(struct WriteXMLFromStructure* inst);


#ifdef __cplusplus
};
#endif
#endif /* _FILEMGR_ */

