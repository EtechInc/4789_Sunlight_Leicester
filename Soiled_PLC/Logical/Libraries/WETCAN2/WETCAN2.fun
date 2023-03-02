
FUNCTION_BLOCK _GetNumberOfCan1Tels
	VAR_INPUT
		pPV : UDINT;
		uiObjNr : UINT;
	END_VAR
	VAR_OUTPUT
		iNumberOfCan1Tels : INT;
		iStatus : INT;
	END_VAR
	VAR
		LocalPV : ARRAY[0..31] OF USINT;
		byteTemp : USINT;
		szOsVersion : STRING[80];
		TARGETInfo_1 : TARGETInfo;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK _SetCAN2COBTypeToCAN2Type
	VAR_INPUT
		p_InitCAN2PV : UDINT;
	END_VAR
	VAR_OUTPUT
		pCAN2Data : UDINT;
		iStatus : INT;
	END_VAR
	VAR
		LocalCAN2Data : _CAN2;
		Local_InitCAN2PV : _InitCAN2PV;
		LocByte4Str : ARRAY[0..11] OF USINT;
		udShr16 : UDINT;
		uiShl8 : UINT;
		LocalCOB_Typ_421bis439 : COB_ID421bis439;
		LocalCOB_Typ_120 : COB_ID120;
		LocalCOB_Typ_121 : COB_ID121;
		LocalCOB_Typ_201 : COB_ID201;
		LocalCOB_Typ_301 : COB_ID301bis304;
		LocalCOB_Typ_231 : COB_ID231;
		LocalCOB_Typ_221 : COB_ID221;
		LocalCOB_Typ_401bis419 : COB_ID401bis419;
		LocalCOB_Typ_306 : COB_ID306;
		LocalCOB_Typ_351 : COB_ID351bis354;
		LocalCOB_Typ_361bis369 : COB_ID361bis369;
		LocalCOB_Typ_371bis379 : COB_ID371bis379;
		LocalCOB_Typ_316 : COB_ID316;
		LocalCOB_Typ_311 : COB_ID311bis314;
		LocalCOB_Typ_211 : COB_ID211;
		LocalCOB_Typ_122 : COB_ID122;
		LocalCOB_Typ_209 : COB_ID209;
		LocalCOB_Typ_219 : COB_ID219;
		TARGETInfo_0 : TARGETInfo;
		szOSVersion : STRING[80];
		LocalCOB_Typ_251 : COB_ID251_253_255_257;
		LocalCOB_Typ_252 : COB_ID252_254_256_258;
		LocalCOB_Typ_480 : COB_ID480;
		LocalCOB_Typ_481 : COB_ID481;
		usTemp : USINT;
		LocalCOB_Typ_123 : COB_ID123;
		usT1By5Temp : USINT;
		LocalCOB_Typ_441bis459 : COB_ID441bis459;
		usTempBy2 : USINT;
		usTempBy3 : USINT;
		LocalCOB_Typ_307 : COB_ID307;
		LocalCOB_Typ_317 : COB_ID317;
		LocalCOB_Typ_261 : COB_ID261;
		LocalCOB_Typ_262 : COB_ID262;
		LocalCOB_Typ_354 : COB_ID351bis354;
		LocalCOB_Typ_352 : COB_ID351bis354;
		LocalCOB_Typ_353 : COB_ID351bis354;
		pLocByte4Str : REFERENCE TO ARRAY[0..11] OF USINT;
		LocalCOB_Typ_110 : COB_ID110;
		LocalCOB_Typ_111 : COB_ID111;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK _SetCAN2TypeToCAN1Type
	VAR_INPUT
		pCAN2Data : UDINT;
		iTelegramIndex : UINT;
	END_VAR
	VAR_OUTPUT
		pCAN1Data : UDINT;
		iStatus : INT;
	END_VAR
	VAR
		LocalCAN2UniData : _CAN2;
		LocalCAN1Data : _CAN1;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK _GetCANIDFromObjNr
	VAR_INPUT
		udObjNr : UDINT;
	END_VAR
	VAR_OUTPUT
		udCANID : UDINT;
		iStatus : INT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK _GetPVSize
	VAR_INPUT
		uiObjNr : UINT;
	END_VAR
	VAR_OUTPUT
		iCobLength : SINT;
		iStatus : INT;
	END_VAR
	VAR
		COBTyp_120 : COB_ID120;
		COBTyp_121 : COB_ID121;
		COBTyp_122 : COB_ID122;
		COB_Typ_201 : COB_ID201;
		COB_Typ_211 : COB_ID211;
		COB_Typ_221 : COB_ID221;
		COB_Typ_231 : COB_ID231;
		COB_Typ_301 : COB_ID301bis304;
		COB_Typ_311 : COB_ID311bis314;
		COB_Typ_306 : COB_ID306;
		COB_Typ_316 : COB_ID316;
		COB_Typ_401bis419 : COB_ID401bis419;
		COB_Typ_421bis439 : COB_ID421bis439;
		COB_Typ_351 : COB_ID351bis354;
		COB_Typ_361bis369 : COB_ID361bis369;
		COB_Typ_371bis379 : COB_ID371bis379;
		COB_Typ_209 : COB_ID209;
		COB_Typ_219 : COB_ID219;
		COBTyp_251 : COB_ID251_253_255_257;
		COBTyp_252 : COB_ID252_254_256_258;
		COBTyp_480 : COB_ID480;
		COBTyp_481 : COB_ID481;
		COBTyp_123 : COB_ID123;
		COB_Typ_441bis459 : COB_ID441bis459;
		COB_Typ_307 : COB_ID307;
		COB_Typ_317 : COB_ID317;
		COB_Typ_261 : COB_ID261;
		COB_Typ_262 : COB_ID262;
		COB_Typ_110 : COB_ID110;
		COB_Typ_111 : COB_ID111;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK _SetCAN1TypeToByteArray
	VAR_INPUT
		a_usInByteArray : ARRAY[0..49] OF USINT;
		udCanID : UDINT;
		CAN1Data : _CAN1;
	END_VAR
	VAR_OUTPUT
		bDataValid : BOOL;
		a_usOutByteArray : ARRAY[0..49] OF USINT;
		uiStatus : UINT;
	END_VAR
	VAR
		uiShr8 : UINT;
		TARGETInfo_0 : TARGETInfo;
		szOSVersion : STRING[80];
		usTemp : USINT;
		uiTemp : UINT;
		bAKZ : BOOL;
		usTemp2 : USINT;
		uiTemp211 : UINT;
		usTemp211 : USINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK _Seti386CAN2TypeToCAN1Type
	VAR_INPUT
		pCAN2Data : UDINT;
		iTelegramIndex : INT;
	END_VAR
	VAR_OUTPUT
		pCAN1Data : UDINT;
	END_VAR
	VAR
		LocalCAN1Data : _CAN1;
		LocalCAN2UniData : _CAN2;
		uiShiftUPPERWord : UINT;
		uiShiftLOWERWord : UINT;
		pLocalCAN2UniData : REFERENCE TO _CAN2;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK _ConvertDataToi386
	VAR_INPUT
		uiObjNr : UINT;
		ByteArrayMotorola : ARRAY[0..49] OF USINT;
	END_VAR
	VAR_OUTPUT
		ByteArrayi386 : ARRAY[0..49] OF USINT;
	END_VAR
	VAR
		usTempByte : USINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK CAN2RW
	VAR_INPUT
		pCAN2Init_ident : UDINT;
		enable : BOOL;
	END_VAR
	VAR_OUTPUT
		uiStatus : UINT;
	END_VAR
	VAR
		p_InitCAN2Protocol : UDINT;
		Local_InitCAN2Protocol : _InitCAN2Protocol;
		iLoopIdx : INT;
		Local_InitCAN2PV : _InitCAN2PV;
		DatObjRead_fromDOWrite : DatObjRead;
		DatObjWrite_toDOWrite : DatObjWrite;
		DatObjRead_fromDORead : DatObjRead;
		DatObjWrite_toDORead : DatObjWrite;
		tActTime : TIME;
		tDiffTime : UDINT;
		DatObjRead_fromInitDO : DatObjRead;
		LocalCAN2Write : _CAN2Write;
		_SetCAN2TypeToCAN1Type_0 : _SetCAN2TypeToCAN1Type;
		CANquwr_1 : CANquwr;
		_GetCANIDFromObjNr_0 : _GetCANIDFromObjNr;
		uiStatusEvVar : UINT;
		_SetCAN2COBTypeToCAN2Type_0 : _SetCAN2COBTypeToCAN2Type;
		LocalCAN2Read : _CAN2Read;
		uiLocalEvVar : UINT;
		CANrd_0 : CANrd;
		LocalCAN1Data : _CAN1;
		_GetPVSize_0 : _GetPVSize;
		LocalCAN2Copy : _CAN2;
		_SetCAN1TypeToByteArray_0 : _SetCAN1TypeToByteArray;
		iIdx : INT;
		bOverwritePV : BOOL;
		LocalCAN2ReadBak : _CAN2Read;
		TARGETInfo_0 : TARGETInfo;
		bIntel : BOOL;
		bMotorola : BOOL;
		pOSVersion : STRING[80];
		_Seti386CAN2TypeToCAN1Type_0 : _Seti386CAN2TypeToCAN1Type;
		_ConvertDataToi386_1 : _ConvertDataToi386;
		ab_ByteArrayi386Temp : ARRAY[0..49] OF USINT;
		iResIdx : INT;
		iTelsSendIdx : INT;
		iTempNumberOfTels : INT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK CAN2Init
	VAR_INPUT
		enable : BOOL;
		usUniqueIDCAN2Init : USINT;
		szCANInterface : STRING[80];
		pInitCAN2PV : UDINT;
		uiNumberOfCAN2COBs : UINT;
		doMemType : USINT;
	END_VAR
	VAR_OUTPUT
		uiStatus : UINT;
		pCAN2Init_ident : UDINT;
		CANopen_0 : CANopen;
	END_VAR
	VAR
		DatObjCreate_InitDO : DatObjCreate;
		p_InitCAN2Protocol : UDINT;
		DO_StartAdr : UDINT;
		DO_StatInfo : UINT;
		DO_Len : UDINT;
		DO_Memtype : USINT;
		DO_Option : UDINT;
		DO_ID : UDINT;
		zzDatObjInfo00000 : DatObjInfo;
		DO_ChangeDat : DATE_AND_TIME;
		iLoopIdx : INT;
		Local_InitCAN2Protocol : _InitCAN2Protocol;
		DatObjWrite_InitDO : DatObjWrite;
		pStartAdrDO : UDINT;
		ErrAdrNotInUse : UDINT;
		CANqueue_0 : CANqueue;
		Local_InitCAN2PV : _InitCAN2PV;
		DatObjCreate_WriteDO : DatObjCreate;
		pStartAdrDOCAN2Write : UDINT;
		DO_IDCAN2Write : UDINT;
		DatObjWrite_WriteDO : DatObjWrite;
		_SetCAN2COBTypeToCAN2Type_0 : _SetCAN2COBTypeToCAN2Type;
		zzDatObjInfo00001 : DatObjInfo;
		CAN2Write : _CAN2Write;
		pStartAdrDOCAN2Read : UDINT;
		DatObjCreate_ReadDO : DatObjCreate;
		DatObjWrite_ReadDO : DatObjWrite;
		CAN2Read : _CAN2Read;
		DO_IDCAN2Read : UDINT;
		zzDatObjInfo00002 : DatObjInfo;
		LocalInitCAN2PV : InitCAN2PV;
		iLoopIdxTemp : INT;
		_GetNumberOfCan1Tels_0 : _GetNumberOfCan1Tels;
		szInitDO : STRING[80];
		szInitDOInstanceNumber : STRING[80];
		usInitDOInstanceNumber : USINT;
		szCAN2WriteDO : STRING[80];
		szCAN2ReadDO : STRING[80];
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK _version
	VAR
		szVersion : STRING[80];
		uiBuild : UINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION _swapUINT : UINT (* Internal use only - V3.2.0 *)
	VAR
		usHIGHERBYTE : USINT;
		usLOWERBYTE : USINT;
	END_VAR
	VAR_INPUT
		uiIn : UINT;
	END_VAR
END_FUNCTION
