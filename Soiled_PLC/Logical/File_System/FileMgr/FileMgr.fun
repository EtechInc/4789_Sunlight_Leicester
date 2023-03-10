
FUNCTION_BLOCK fileReadWrite (**Read or Write to file*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		pFileDevice : UDINT;
		pFileName : UDINT;
		mode : UINT;
		pData : UDINT; (*point to data to read or write to*)
		sizeData : UDINT; (*size of data to read or write to*)
		Offset : UDINT; (*offset of data to be read or written*)
		appendToFile : BOOL;
	END_VAR
	VAR_OUTPUT
		status : UINT;
	END_VAR
	VAR
		fileState : UINT;
		fileOpen : FileOpen;
		fileCreate : FileCreate;
		fileClose : FileClose;
		error : UINT;
		fileWrite : FileWrite;
		ident : UDINT;
		fileRead : FileRead;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fileToDatObj (**read from a file into a data object. The data object will be deleted and created the same size as file*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL; (** Enable*)
		pFileDevice : UDINT; (*pointer to file device*)
		pFileName : UDINT; (*pointer to the file name*)
		pDoName : UDINT; (*pointer to the name of the dataObject to be written to*)
		MemType : USINT;
	END_VAR
	VAR_OUTPUT
		status : UINT;
		do_Ident : UDINT; (*pointer to the ident to the data Object*)
		pDatObjMem : UDINT; (*Pointer to the memory area of the data object written to*)
		fiSize : UDINT;
	END_VAR
	VAR
		fileOpen : FileOpen;
		error : UINT;
		fileRead : FileRead;
		fileClose : FileClose;
		fileState : fileToDatObj_state;
		fi_ident : UDINT;
		do_GetInfo : DatObjInfo;
		do_Delete : DatObjDelete;
		do_Create : DatObjCreate;
		do_Write : DatObjWrite;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fileToMem (**OpenFileInto memory*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL; (** Enable*)
		pFileDevice : UDINT; (*pointer to file device*)
		pFileName : UDINT; (*pointer to the file name*)
		pTempMem : UDINT; (**point to the memory area created by TMP_alloc*)
		sizeTempMem : UDINT; (**Size of the temporary memory allocated by TMP_alloc*)
	END_VAR
	VAR_OUTPUT
		status : UINT;
		fiSize : UDINT;
	END_VAR
	VAR
		fileOpen : FileOpen;
		error : UINT;
		fileRead : FileRead;
		fileClose : FileClose;
		fileState : fileToMem_state;
		fi_ident : UDINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FileCopyFromDev (**Copy file from devlink link file device*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		pFileDevice : UDINT;
		pDevLinkParameter : UDINT;
		pFileName : UDINT;
		pDest : UDINT;
		pDestDev : UDINT;
	END_VAR
	VAR_OUTPUT
		status : UINT;
	END_VAR
	VAR
		fileState : fileCopyFromDev_state;
		error : UINT;
		devLink : DevLink;
		fileCopy : FileCopy;
		devUnlink : DevUnlink;
		devHandle : UDINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK WriteXMLFromStructure (*Convert Data structure to XML *) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		pData : UDINT; (*pointer to data area to copy the xml fle*)
		sizeData : UDINT; (*Size of the data area to copy the xml file*)
		pStructName : UDINT;
	END_VAR
	VAR_OUTPUT
		status : UINT;
		LastError : UINT;
	END_VAR
	VAR
		state : WriteXML_State;
		createXMLwriter : xmlCreateMemoryWriter;
		ident : UDINT;
		xmlGetMemInfo : xmlGetMemoryInfo;
		zzEdge00000 : BOOL;
		xmlCloseWriter : xmlCloseMemoryWriter;
		pvStatus : UINT;
		index : UINT;
		pvName : STRING[60];
		taskName : STRING[20];
		xmlWriteElementStart : xmlWriteStartElement;
		openElements : UINT; (*Number of elements to close.*)
		xmlWriteEndElement : xmlWriteEndElement;
		noOfElements : UINT;
		pv_dataLen : UDINT;
		pv_dataType : UDINT;
		pvData : STRING[50];
		pName : UDINT;
		zzEdge00001 : BOOL;
		pvFullName : STRING[100];
		val : UDINT;
		pvGetAdrStatus : UINT;
		pv_Adr : UDINT;
		elementVal : STRING[30];
		xmlWriteElemText : xmlWriteElementText;
		xmlEndDocument : xmlWriteEndDocument;
		xmlStartDocument : xmlWriteStartDocument;
		zzEdge00002 : BOOL;
		pv_tryCount : USINT;
		tempString : STRING[30];
	END_VAR
END_FUNCTION_BLOCK
