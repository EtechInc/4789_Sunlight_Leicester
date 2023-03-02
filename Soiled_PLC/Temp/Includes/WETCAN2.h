/* Automation Studio generated header file */
/* Do not edit ! */
/* WETCAN2 3.06.2 */

#ifndef _WETCAN2_
#define _WETCAN2_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _WETCAN2_VERSION
#define _WETCAN2_VERSION 3.06.2
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "runtime.h"
		#include "DataObj.h"
		#include "AsTime.h"
		#include "AsString.h"
		#include "CAN_Lib.h"
		#include "brsystem.h"
#endif
#ifdef _SG4
		#include "runtime.h"
		#include "DataObj.h"
		#include "AsTime.h"
		#include "AsString.h"
		#include "CAN_Lib.h"
		#include "brsystem.h"
#endif
#ifdef _SGC
		#include "runtime.h"
		#include "DataObj.h"
		#include "AsTime.h"
		#include "AsString.h"
		#include "CAN_Lib.h"
		#include "brsystem.h"
#endif


/* Constants */
#ifdef _REPLACE_CONST
 #define WC2_COMM_DIRECTION_READ 0U
 #define WC2_COMM_DIRECTION_WRITE 1U
 #define WC2_MODE_RW_CYCLIC 0
 #define WC2_MODE_RW_EVENTCONTROLLED 1
#else
 _GLOBAL_CONST unsigned char WC2_COMM_DIRECTION_READ;
 _GLOBAL_CONST unsigned char WC2_COMM_DIRECTION_WRITE;
 _GLOBAL_CONST signed short WC2_MODE_RW_CYCLIC;
 _GLOBAL_CONST signed short WC2_MODE_RW_EVENTCONTROLLED;
#endif




/* Datatypes and datatypes of function blocks */
typedef struct COB_ID120
{	plcbit bBereit;
	plcbit bContainerUeberBeladetrichter;
	plcbit bProgrammOderKategorie;
	unsigned short uiProgrammKategorie;
	plcbit bPostennummer;
	unsigned long udPostennummer;
	unsigned char usFehlernummer;
	plcbit bAuftragskennzeichen;
	plcstring szAuftragskennzeichen[13];
	unsigned long udKundennummer;
	unsigned short uiGewicht;
	plcbit bNotAusHF;
	plcbit bDatenuebernahmeLift;
	plcbit bSchiebeVorposition;
	unsigned char usEinlaufInSpeibahnNr;
	unsigned char usAuslaufAusSpeibahnNr;
	unsigned char usReserve1;
	unsigned char usReserve2;
	unsigned char a_usCustomize[7];
} COB_ID120;

typedef struct COB_ID121
{	plcbit bBereit;
	plcbit bSackOeffnen;
	plcbit bSackLeerWeiter;
	plcbit bFreigLiftBeschickungSpeibahn;
	plcbit bNotAusPT;
	unsigned char usReserve1;
	unsigned char usReserve2;
	unsigned char usReserve3;
	unsigned char usReserve4;
	unsigned char usReserve5;
	unsigned char usReserve6;
	unsigned char usReserve7;
	plcbit bSchiebesignalPT;
	unsigned char a_usCustomize[7];
} COB_ID121;

typedef struct COB_ID122
{	plcbit bBereit;
	plcbit bProgKat;
	unsigned short uiProgKat;
	unsigned long udKundennummer;
	unsigned short uiGewicht;
	plcbit bPostennummer;
	unsigned long udPostennummer;
	plcbit bAuftrKennz;
	plcstring szAuftragskennzeichen[13];
	plcbit bPostenAufBelband;
	plcbit bPostendatenGueltig;
	plcbit bNotAusSackbeladung;
	unsigned char usFehlerNr;
	unsigned char usZaehler;
	unsigned char usReserve1;
	unsigned char usReserve2;
	unsigned char a_usCustomize[7];
} COB_ID122;

typedef struct COB_ID123
{	plcbit bBereit;
	plcbit bDatenBereitstellen;
	plcbit bBeladesignal;
	plcbit bNotAusPT;
	unsigned char usReserve1;
	unsigned char usReserve2;
	unsigned char usReserve3;
	unsigned char usReserve4;
	unsigned char usReserve5;
	unsigned char usReserve6;
	unsigned char usReserve7;
	unsigned char a_usCustomize[7];
} COB_ID123;

typedef struct COB_ID201
{	plcbit bBereit;
	plcbit bVorsignal;
	plcbit bEntladesignal;
	plcbit bKeineRueckgewinnung;
	plcbit bProgrammOderKategorie;
	unsigned short uiProgrammKategorie;
	unsigned long udPostennummer;
	unsigned long udKundennummer;
	unsigned short uiGewicht;
	plcbit bNotAusWM;
	plcbit bFreigabeDesinfektion;
	plcbit bTankIstLeer;
	plcbit bFreigabeSpuelen;
	plcbit bEndeDesinfektion;
	unsigned char usReserve1;
	unsigned char a_usCustomize[7];
} COB_ID201;

typedef struct COB_ID209
{	plcbit bBereit;
	plcbit bVorsignal;
	plcbit bEntladesignal;
	plcbit bKeineRueckgewinnung;
	plcbit bProgrammOderKategorie;
	unsigned short uiProgrammKategorie;
	unsigned long udPostennummer;
	unsigned long udKundennummer;
	unsigned short uiGewicht;
	plcbit bNotAusWetShuttle;
	unsigned char usReserve1;
	unsigned char usReserve2;
	unsigned char a_usCustomize[7];
} COB_ID209;

typedef struct COB_ID211
{	plcbit bBereit;
	plcbit bBeladebereit;
	plcbit bSchiebeimpSpbPreXOR_WETShuttle;
	plcbit bSchiebeimpulsErsteEntwaess;
	plcbit bSchiebeimpulsZweiteEntwaess;
	plcbit bAblassvZwangsoeffnErsteEnt;
	plcbit bAblassvZwangsoeffnZweiteEnt;
	plcbit bFehlerBelgewErtsteEntwaess;
	plcbit bFehlerBelgewZweiteEntwaess;
	unsigned char usFehlerErsteEntwaess;
	unsigned char usFehlerZweiteEntwaess;
	unsigned char usFehlerWetShuttle;
	plcbit bNotAusEntwaessWetShuttle;
	plcbit bStartDesinfektion;
	plcbit bStartSpuelen;
	plcbit bEndeSpuelen;
	plcbit bReserve1;
	plcbit bReserve2;
	plcbit bReserve3;
	plcbit bReserve4;
	plcbit bReserve5;
	plcbit bReserve6;
	plcbit bReserve7;
	plcbit bReserve8;
	plcbit bReserve9;
	plcbit bReserve10;
	unsigned char a_usCustomize[7];
	plcbit bSicherheitstuerPTPP;
	plcbit bStartbefehlAnPT;
} COB_ID211;

typedef struct COB_ID219
{	plcbit bBereitEntwWetShuttle;
	plcbit bBereitEntw;
	plcbit bBeladebereit;
	plcbit bSchiebeimpuls;
	plcbit bHANDWetShuttleEntladen;
	plcbit bFehlerBeladegewicht;
	unsigned char usFehlerEntw;
	unsigned char usFehlerWetShuttle;
	plcbit bNotAusEntw;
	unsigned char usReserve1;
	unsigned char usReserve2;
	unsigned char usReserve3;
	unsigned char usReserve4;
	unsigned char usReserve5;
	unsigned char usReserve6;
	unsigned char a_usCustomize[7];
} COB_ID219;

typedef struct COB_ID221
{	plcbit bBereit;
	plcbit bPostendatenGueltig;
	plcbit bUnglPostenKeineDPBelAmTrockner;
	plcbit bTrocknerprogOderKategorie;
	unsigned short uiTrocknerprogKategorie;
	unsigned long udPostennummer;
	unsigned long udKundennummer;
	unsigned short uiGewicht;
	plcbit bNotAusWM;
	unsigned char usReserve1;
	unsigned char usReserve2;
	unsigned char a_usCustomize[7];
} COB_ID221;

typedef struct COB_ID231
{	plcbit bBereit;
	unsigned char usBeladungTrockner;
	unsigned char usEntladungTrockner;
	unsigned char usTransferZBvorTrockner;
	unsigned char usTransferZBvorHFB;
	unsigned char usFehlernummer;
	plcbit bNotAusVerbundEinzeltr;
	unsigned char usReserve1;
	unsigned char usReserve2;
	unsigned char a_usCustomize[7];
} COB_ID231;

typedef struct COB_ID251_253_255_257
{	plcbit bBereit;
	plcbit bNotAusVerbund;
	plcbit bProgKat;
	unsigned short uiProgKat;
	unsigned long udPostennummer;
	unsigned long udKundennummer;
	unsigned short uiGewicht;
	unsigned char usZiel;
	plcbit bBeladeende;
	unsigned char usReserve1;
	plcbit bSperreBereich;
	unsigned char a_usCustomize[7];
	plcbit bBeladestart;
} COB_ID251_253_255_257;

typedef struct COB_ID252_254_256_258
{	plcbit bBereit;
	plcbit bNotAusSackbeladung;
	plcbit bSackBereit;
	unsigned char usReserve1;
	unsigned char usReserve2;
	unsigned char usReserve3;
	unsigned char usReserve4;
	unsigned char usReserve5;
	unsigned char usReserve6;
	unsigned char usReserve7;
	unsigned char a_usCustomize[7];
	plcbit bSperreBereich;
} COB_ID252_254_256_258;

typedef struct COB_ID261
{	plcbit bBereit;
	plcbit bBeladungBeendet;
	plcbit bBeladungAktiv;
	plcbit bSaugboxBelegt;
	plcbit bNotHaltSaugbox;
	unsigned short uiMeldung;
	unsigned short uiGewicht;
} COB_ID261;

typedef struct COB_ID262
{	plcbit bBereit;
	plcbit bSackBereit;
	plcbit bEntladefreigabe;
	plcbit bNotHaltSackspeicher;
} COB_ID262;

typedef struct COB_ID301bis304
{	plcbit bBereit;
	plcbit bEntwaesserungEntlaedt;
	plcbit bPostenInEntwaesserung;
	plcbit bEntladestoerungAnPresse;
	plcbit bSperreFahrbandVonZentrifuge;
	plcbit bProgrammOderKategorie;
	unsigned short uiProgrammKategorie;
	unsigned long udPostennummer;
	unsigned long udKundennummer;
	unsigned short uiGewicht;
	plcbit bBandlaufEntladeband;
	plcbit bVorsignalEntladung;
	plcbit bNotAusEntwaesserung;
	unsigned char usReserve1;
	unsigned char a_usCustomize[7];
	plcbit bLichtschrankeBandende;
	plcbit bEntladeueberwachung;
} COB_ID301bis304;

typedef struct COB_ID306
{	plcbit bBereit;
	plcbit bAeroEntlaedt;
	plcbit bPostenInAero;
	plcbit bSperreFahrbandVonAero;
	plcbit bProgrammOderKategorie;
	unsigned short uiProgrammKategorie;
	unsigned long udPostennummer;
	unsigned long udKundennummer;
	unsigned short uiGewicht;
	plcbit bNotAusAero;
	unsigned char usReserve1;
	unsigned char usReserve2;
	unsigned char a_usCustomize[7];
	plcbit bUebergabestoerung;
} COB_ID306;

typedef struct COB_ID110
{	unsigned long udPostennummer;
	unsigned long udKundennummer;
	unsigned short uiProgrammKategorie;
	unsigned short uiGewicht;
	plcbit bBereit;
	plcbit bEntladesignal;
	plcbit bEntladebereit;
	plcbit bUebergabestoerung;
	plcbit bNotAusEntsander;
	plcbit bProgrammOderKategorie;
	unsigned char Alignm1;
	unsigned char Alignm2;
	unsigned char a_usCustomize[7];
} COB_ID110;

typedef struct COB_ID111
{	plcbit bBereit;
	plcbit bEntladefreigabe;
	plcbit bUebernahmestoerung;
	plcbit bNotAusBeladeband;
	unsigned char a_usCustomize[7];
} COB_ID111;

typedef struct COB_ID307
{	plcbit bBereit;
	plcbit bEntladesignal;
	plcbit bPostenAufBand;
	plcbit bEntladestoerungBand;
	plcbit bKundenwechsel;
	plcbit bBandlaufEntladeband;
	plcbit bProgrammKategorie;
	plcbit bNotAusVerbund;
	unsigned long udPostennummer;
	unsigned short uiGewicht;
	unsigned short uiProgrammKategorie;
	unsigned long udKundennummer;
	unsigned char a_usCustomize[7];
} COB_ID307;

typedef struct COB_ID311bis314
{	plcbit bBereit;
	plcbit bBeladebereit;
	plcbit bUebernahmestoerungVerbETAero;
	plcbit bEntladelichtschrZentrifuge;
	plcbit bNotAusETVerbAero;
	unsigned char usReserve1;
	unsigned char usReserve2;
	unsigned char usReserve3;
	unsigned char usReserve4;
	unsigned char usReserve5;
	unsigned char usReserve6;
	unsigned char usReserve7;
	unsigned char a_usCustomize[7];
	plcbit bSchutzgitterOffen;
	plcbit bStartPresse;
} COB_ID311bis314;

typedef struct COB_ID316
{	plcbit bBereit;
	plcbit bBeladebereit;
	plcbit bUebernahmestoerungVerbET;
	plcbit bNotAusVerbET;
	unsigned char usReserve1;
	unsigned char usReserve2;
	unsigned char usReserve3;
	unsigned char usReserve4;
	unsigned char usReserve5;
	unsigned char usReserve6;
	unsigned char usReserve7;
	unsigned char a_usCustomize[7];
} COB_ID316;

typedef struct COB_ID317
{	plcbit bBereit;
	plcbit bBeladebereit;
	plcbit bBeladeunterbrechung;
	plcbit bUebernahmestoerung;
	plcbit bQuittierungKundenwechsel;
	plcbit bNotAusAero;
	unsigned char a_usCustomize[7];
} COB_ID317;

typedef struct COB_ID351bis354
{	plcbit bBereit;
	plcbit bAktPosFehler;
	plcbit bAktPosWarnung;
	plcbit bAktPosGesperrt;
	unsigned char usAktPos;
	plcbit bProgrammOderKategorie;
	unsigned short uiProgrammKategorie;
	unsigned long udPostennummer;
	unsigned long udKundennummer;
	unsigned short uiGewicht;
	unsigned char usReserve1;
	unsigned char a_usCustomize[7];
	plcbit bIdxPostenspeicher_1;
	plcbit bIdxPostenspeicher_2;
	plcbit bIdxPostenspeicher_4;
	plcbit bNotAusAero;
} COB_ID351bis354;

typedef struct COB_ID361bis369
{	unsigned char usStation;
	plcbit bProgrammOderKategorie;
	unsigned short uiProgrammKategorie;
	unsigned long udPostennummer;
	unsigned long udKundennummer;
	unsigned short uiGewicht;
	unsigned char usReserve1;
	unsigned char a_usCustomize[7];
	plcbit bBereit;
} COB_ID361bis369;

typedef struct COB_ID371bis379
{	plcbit bDruckstatus;
	unsigned char usDruckerfehler;
	unsigned char usStation;
	unsigned char usReserve1;
	unsigned char usReserve2;
	unsigned char usReserve3;
	unsigned char usReserve4;
	unsigned char usReserve5;
	unsigned char a_usCustomize[7];
	plcbit bBereit;
} COB_ID371bis379;

typedef struct COB_ID401bis419
{	plcbit bBereit;
	plcbit bBeladeanforderung;
	plcbit bEntladefreigabe;
	plcbit bAnsteuerungSpeicherband;
	plcbit bProgrammOderKategorie;
	unsigned short uiProgrammKategorie;
	unsigned long udPostennummer;
	unsigned long udKundennummer;
	unsigned short uiGewicht;
	plcbit bNotAusVerbST;
	plcbit bVorsignal;
	plcbit bKippsperre;
	unsigned char usReserve1;
	unsigned char usReserve2;
	plcbit bFreigabeFlusen;
	unsigned char a_usCustomize[7];
} COB_ID401bis419;

typedef struct COB_ID421bis439
{	plcbit bBereit;
	plcbit bBeladebereit;
	plcbit bBelaedt;
	plcbit bEntladebereit;
	plcbit bEntlade;
	plcbit bTrocknet;
	plcbit bHauptgeblaese;
	plcbit bFlusenabsaugung;
	plcbit bAbkuehlung;
	plcbit bLichtschrSpeicherbandHinten;
	plcbit bLichtschrSpeicherbandVorne;
	plcbit bTemperatureinheit;
	unsigned short uiAbluftTemp;
	plcbit bEIN;
	plcbit bStoerung;
	unsigned short uiRestzeit;
	plcbit bProgrammOderKategorie;
	unsigned short uiProgrammKategorie;
	unsigned long udPostennummer;
	unsigned long udKundennummer;
	unsigned short uiGewicht;
	plcbit bNotAusTrockner;
	plcbit bHand;
	unsigned short uiIRTemp;
	unsigned char usReserve1;
	unsigned char a_usCustomize[7];
} COB_ID421bis439;

typedef struct COB_ID441bis459
{	unsigned short uiTrocknerrestzeit;
	unsigned char usReserve1;
	unsigned char usReserve2;
	unsigned char usReserve3;
	unsigned char usReserve4;
	unsigned char usReserve5;
	plcbit bVorsignalFlusen;
	plcbit bSaugbeladungAktiv;
	plcbit bAnforderungFlusen;
	unsigned char a_usCustomize[7];
} COB_ID441bis459;

typedef struct COB_ID480
{	plcbit bBereit;
	plcbit bNotAusAero;
	plcbit bBeladebereit;
	plcbit bBeladungAktiv;
	plcbit bStoerung;
	plcbit bBeladeanfHalbauto;
	plcbit bBeladepause;
	plcbit bBeladeabbruch;
	plcbit bFreigabeBeladung;
	plcbit bDurchschleusenStart;
	plcbit bProgKat;
	unsigned short uiProgKat;
	unsigned long udPostennummer;
	unsigned long udKundennummer;
	unsigned short uiGewicht;
	unsigned char usReserve1;
	plcbit bReserve1;
	plcbit bReserve2;
	plcbit bReserve3;
	plcbit bReserve4;
	plcbit bReserve5;
	plcbit bReserve6;
	plcbit bReserve7;
	plcbit bReserve8;
	plcbit bReserve9;
	unsigned char a_usCustomize[7];
} COB_ID480;

typedef struct COB_ID481
{	plcbit bBereit;
	plcbit bNotAusAnlagenStrg;
	plcbit bBeladeanfAuto;
	plcbit bStoerung;
	plcbit bAnlagenstrgHalbauto;
	plcbit bAnlagenstrgAuto;
	plcbit bPauseAktiv;
	plcbit bDurchschleusen;
	plcbit bFreigabeDurchschl;
	plcbit bProgKat;
	unsigned short uiProgKat;
	unsigned short uiGewicht;
	unsigned long udKundennummer;
	unsigned long udPostennummer;
	unsigned char usReserve1;
	plcbit bReserve1;
	plcbit bReserve2;
	plcbit bReserve3;
	plcbit bReserve4;
	plcbit bReserve5;
	plcbit bReserve6;
	plcbit bReserve7;
	plcbit bReserve8;
	plcbit bReserve9;
	plcbit bReserve10;
	unsigned char a_usCustomize[7];
} COB_ID481;

typedef struct InitCAN2PV
{	unsigned long pPVData;
	unsigned short uiCANID;
	unsigned char usCommDirection;
	unsigned long pEvVar;
	signed short iMode;
} InitCAN2PV;

typedef struct _CAN1
{	unsigned char T_By0;
	unsigned char T_By1;
	unsigned short T_By2_By3;
	unsigned short T_By4_By5;
	unsigned short T_By6_By7;
} _CAN1;

typedef struct _CAN2
{	unsigned char T1_By0;
	unsigned char T1_By1;
	unsigned short T1_By2_By3;
	unsigned short T1_By4_By5;
	unsigned short T1_By6_By7;
	unsigned char T2_By0;
	unsigned char T2_By1;
	unsigned short T2_By2_By3;
	unsigned short T2_By4_By5;
	unsigned short T2_By6_By7;
	unsigned char T3_By0;
	unsigned char T3_By1;
	unsigned short T3_By2_By3;
	unsigned short T3_By4_By5;
	unsigned short T3_By6_By7;
	unsigned char T4_By0;
	unsigned char T4_By1;
	unsigned short T4_By2_By3;
	unsigned short T4_By4_By5;
	unsigned short T4_By6_By7;
	unsigned char T5_By0;
	unsigned char T5_By1;
	unsigned short T5_By2_By3;
	unsigned short T5_By4_By5;
	unsigned short T5_By6_By7;
} _CAN2;

typedef struct _CAN2Read
{	unsigned short uiObjNr;
	unsigned char ab_ByteArray[50];
	signed short iNumberReceivedTels;
	signed short iNumberOfTels;
} _CAN2Read;

typedef struct _CAN2Write
{	struct _CAN2 CAN2;
	plcbit bBusy;
	signed short iNumberOfTels;
	signed short iTelsSent;
	unsigned short uiCOB_ident;
	plctime tTimeLastTelSent;
} _CAN2Write;

typedef struct _CANAccess
{	unsigned long CANMulQueue_q_ident;
	unsigned long CANMulOpen_us_ident;
	unsigned long CANopen_us_ident;
} _CANAccess;

typedef struct _DOAccess
{	unsigned long DO_us_ident;
} _DOAccess;

typedef struct _InitCAN2PV
{	unsigned long pPVData;
	unsigned short uiObjNr;
	unsigned char usCommDirection;
	unsigned long udCAN_q_ident;
	unsigned long pEvVar;
	unsigned short uiCOB_ident;
	plcbit bRunning;
	signed short iMode;
} _InitCAN2PV;

typedef struct _InitCAN2Protocol
{	struct _DOAccess AccessInitDO;
	unsigned short CAN2DObCount;
	struct _CANAccess CANAccess;
	struct _DOAccess DoAccessCAN2Write;
	signed short iMode;
	struct _DOAccess DOAccessCAN2Read;
} _InitCAN2Protocol;

typedef struct _GetNumberOfCan1Tels
{
	/* VAR_INPUT (analog) */
	unsigned long pPV;
	unsigned short uiObjNr;
	/* VAR_OUTPUT (analog) */
	signed short iNumberOfCan1Tels;
	signed short iStatus;
	/* VAR (analog) */
	unsigned char LocalPV[32];
	unsigned char byteTemp;
	plcstring szOsVersion[81];
	struct TARGETInfo TARGETInfo_1;
} _GetNumberOfCan1Tels_typ;

typedef struct _SetCAN2COBTypeToCAN2Type
{
	/* VAR_INPUT (analog) */
	unsigned long p_InitCAN2PV;
	/* VAR_OUTPUT (analog) */
	unsigned long pCAN2Data;
	signed short iStatus;
	/* VAR (analog) */
	struct _CAN2 LocalCAN2Data;
	struct _InitCAN2PV Local_InitCAN2PV;
	unsigned char LocByte4Str[12];
	unsigned long udShr16;
	unsigned short uiShl8;
	struct COB_ID421bis439 LocalCOB_Typ_421bis439;
	struct COB_ID120 LocalCOB_Typ_120;
	struct COB_ID121 LocalCOB_Typ_121;
	struct COB_ID201 LocalCOB_Typ_201;
	struct COB_ID301bis304 LocalCOB_Typ_301;
	struct COB_ID231 LocalCOB_Typ_231;
	struct COB_ID221 LocalCOB_Typ_221;
	struct COB_ID401bis419 LocalCOB_Typ_401bis419;
	struct COB_ID306 LocalCOB_Typ_306;
	struct COB_ID351bis354 LocalCOB_Typ_351;
	struct COB_ID361bis369 LocalCOB_Typ_361bis369;
	struct COB_ID371bis379 LocalCOB_Typ_371bis379;
	struct COB_ID316 LocalCOB_Typ_316;
	struct COB_ID311bis314 LocalCOB_Typ_311;
	struct COB_ID211 LocalCOB_Typ_211;
	struct COB_ID122 LocalCOB_Typ_122;
	struct COB_ID209 LocalCOB_Typ_209;
	struct COB_ID219 LocalCOB_Typ_219;
	struct TARGETInfo TARGETInfo_0;
	plcstring szOSVersion[81];
	struct COB_ID251_253_255_257 LocalCOB_Typ_251;
	struct COB_ID252_254_256_258 LocalCOB_Typ_252;
	struct COB_ID480 LocalCOB_Typ_480;
	struct COB_ID481 LocalCOB_Typ_481;
	unsigned char usTemp;
	struct COB_ID123 LocalCOB_Typ_123;
	unsigned char usT1By5Temp;
	struct COB_ID441bis459 LocalCOB_Typ_441bis459;
	unsigned char usTempBy2;
	unsigned char usTempBy3;
	struct COB_ID307 LocalCOB_Typ_307;
	struct COB_ID317 LocalCOB_Typ_317;
	struct COB_ID261 LocalCOB_Typ_261;
	struct COB_ID262 LocalCOB_Typ_262;
	struct COB_ID351bis354 LocalCOB_Typ_354;
	struct COB_ID351bis354 LocalCOB_Typ_352;
	struct COB_ID351bis354 LocalCOB_Typ_353;
	unsigned char (*pLocByte4Str)[12];
	struct COB_ID110 LocalCOB_Typ_110;
	struct COB_ID111 LocalCOB_Typ_111;
} _SetCAN2COBTypeToCAN2Type_typ;

typedef struct _SetCAN2TypeToCAN1Type
{
	/* VAR_INPUT (analog) */
	unsigned long pCAN2Data;
	unsigned short iTelegramIndex;
	/* VAR_OUTPUT (analog) */
	unsigned long pCAN1Data;
	signed short iStatus;
	/* VAR (analog) */
	struct _CAN2 LocalCAN2UniData;
	struct _CAN1 LocalCAN1Data;
} _SetCAN2TypeToCAN1Type_typ;

typedef struct _GetCANIDFromObjNr
{
	/* VAR_INPUT (analog) */
	unsigned long udObjNr;
	/* VAR_OUTPUT (analog) */
	unsigned long udCANID;
	signed short iStatus;
} _GetCANIDFromObjNr_typ;

typedef struct _GetPVSize
{
	/* VAR_INPUT (analog) */
	unsigned short uiObjNr;
	/* VAR_OUTPUT (analog) */
	signed char iCobLength;
	signed short iStatus;
	/* VAR (analog) */
	struct COB_ID120 COBTyp_120;
	struct COB_ID121 COBTyp_121;
	struct COB_ID122 COBTyp_122;
	struct COB_ID201 COB_Typ_201;
	struct COB_ID211 COB_Typ_211;
	struct COB_ID221 COB_Typ_221;
	struct COB_ID231 COB_Typ_231;
	struct COB_ID301bis304 COB_Typ_301;
	struct COB_ID311bis314 COB_Typ_311;
	struct COB_ID306 COB_Typ_306;
	struct COB_ID316 COB_Typ_316;
	struct COB_ID401bis419 COB_Typ_401bis419;
	struct COB_ID421bis439 COB_Typ_421bis439;
	struct COB_ID351bis354 COB_Typ_351;
	struct COB_ID361bis369 COB_Typ_361bis369;
	struct COB_ID371bis379 COB_Typ_371bis379;
	struct COB_ID209 COB_Typ_209;
	struct COB_ID219 COB_Typ_219;
	struct COB_ID251_253_255_257 COBTyp_251;
	struct COB_ID252_254_256_258 COBTyp_252;
	struct COB_ID480 COBTyp_480;
	struct COB_ID481 COBTyp_481;
	struct COB_ID123 COBTyp_123;
	struct COB_ID441bis459 COB_Typ_441bis459;
	struct COB_ID307 COB_Typ_307;
	struct COB_ID317 COB_Typ_317;
	struct COB_ID261 COB_Typ_261;
	struct COB_ID262 COB_Typ_262;
	struct COB_ID110 COB_Typ_110;
	struct COB_ID111 COB_Typ_111;
} _GetPVSize_typ;

typedef struct _SetCAN1TypeToByteArray
{
	/* VAR_INPUT (analog) */
	unsigned char a_usInByteArray[50];
	unsigned long udCanID;
	struct _CAN1 CAN1Data;
	/* VAR_OUTPUT (analog) */
	unsigned char a_usOutByteArray[50];
	unsigned short uiStatus;
	/* VAR (analog) */
	unsigned short uiShr8;
	struct TARGETInfo TARGETInfo_0;
	plcstring szOSVersion[81];
	unsigned char usTemp;
	unsigned short uiTemp;
	unsigned char usTemp2;
	unsigned short uiTemp211;
	unsigned char usTemp211;
	/* VAR_OUTPUT (digital) */
	plcbit bDataValid;
	/* VAR (digital) */
	plcbit bAKZ;
} _SetCAN1TypeToByteArray_typ;

typedef struct _Seti386CAN2TypeToCAN1Type
{
	/* VAR_INPUT (analog) */
	unsigned long pCAN2Data;
	signed short iTelegramIndex;
	/* VAR_OUTPUT (analog) */
	unsigned long pCAN1Data;
	/* VAR (analog) */
	struct _CAN1 LocalCAN1Data;
	struct _CAN2 LocalCAN2UniData;
	unsigned short uiShiftUPPERWord;
	unsigned short uiShiftLOWERWord;
	struct _CAN2* pLocalCAN2UniData;
} _Seti386CAN2TypeToCAN1Type_typ;

typedef struct _ConvertDataToi386
{
	/* VAR_INPUT (analog) */
	unsigned short uiObjNr;
	unsigned char ByteArrayMotorola[50];
	/* VAR_OUTPUT (analog) */
	unsigned char ByteArrayi386[50];
	/* VAR (analog) */
	unsigned char usTempByte;
} _ConvertDataToi386_typ;

typedef struct CAN2RW
{
	/* VAR_INPUT (analog) */
	unsigned long pCAN2Init_ident;
	/* VAR_OUTPUT (analog) */
	unsigned short uiStatus;
	/* VAR (analog) */
	unsigned long p_InitCAN2Protocol;
	struct _InitCAN2Protocol Local_InitCAN2Protocol;
	signed short iLoopIdx;
	struct _InitCAN2PV Local_InitCAN2PV;
	struct DatObjRead DatObjRead_fromDOWrite;
	struct DatObjWrite DatObjWrite_toDOWrite;
	struct DatObjRead DatObjRead_fromDORead;
	struct DatObjWrite DatObjWrite_toDORead;
	plctime tActTime;
	unsigned long tDiffTime;
	struct DatObjRead DatObjRead_fromInitDO;
	struct _CAN2Write LocalCAN2Write;
	struct _SetCAN2TypeToCAN1Type _SetCAN2TypeToCAN1Type_0;
	struct CANquwr CANquwr_1;
	struct _GetCANIDFromObjNr _GetCANIDFromObjNr_0;
	unsigned short uiStatusEvVar;
	struct _SetCAN2COBTypeToCAN2Type _SetCAN2COBTypeToCAN2Type_0;
	struct _CAN2Read LocalCAN2Read;
	unsigned short uiLocalEvVar;
	struct CANrd CANrd_0;
	struct _CAN1 LocalCAN1Data;
	struct _GetPVSize _GetPVSize_0;
	struct _CAN2 LocalCAN2Copy;
	struct _SetCAN1TypeToByteArray _SetCAN1TypeToByteArray_0;
	signed short iIdx;
	struct _CAN2Read LocalCAN2ReadBak;
	struct TARGETInfo TARGETInfo_0;
	plcstring pOSVersion[81];
	struct _Seti386CAN2TypeToCAN1Type _Seti386CAN2TypeToCAN1Type_0;
	struct _ConvertDataToi386 _ConvertDataToi386_1;
	unsigned char ab_ByteArrayi386Temp[50];
	signed short iResIdx;
	signed short iTelsSendIdx;
	signed short iTempNumberOfTels;
	/* VAR_INPUT (digital) */
	plcbit enable;
	/* VAR (digital) */
	plcbit bOverwritePV;
	plcbit bIntel;
	plcbit bMotorola;
} CAN2RW_typ;

typedef struct CAN2Init
{
	/* VAR_INPUT (analog) */
	unsigned char usUniqueIDCAN2Init;
	plcstring szCANInterface[81];
	unsigned long pInitCAN2PV;
	unsigned short uiNumberOfCAN2COBs;
	unsigned char doMemType;
	/* VAR_OUTPUT (analog) */
	unsigned short uiStatus;
	unsigned long pCAN2Init_ident;
	struct CANopen CANopen_0;
	/* VAR (analog) */
	struct DatObjCreate DatObjCreate_InitDO;
	unsigned long p_InitCAN2Protocol;
	unsigned long DO_StartAdr;
	unsigned short DO_StatInfo;
	unsigned long DO_Len;
	unsigned char DO_Memtype;
	unsigned long DO_Option;
	unsigned long DO_ID;
	struct DatObjInfo zzDatObjInfo00000;
	plcdt DO_ChangeDat;
	signed short iLoopIdx;
	struct _InitCAN2Protocol Local_InitCAN2Protocol;
	struct DatObjWrite DatObjWrite_InitDO;
	unsigned long pStartAdrDO;
	unsigned long ErrAdrNotInUse;
	struct CANqueue CANqueue_0;
	struct _InitCAN2PV Local_InitCAN2PV;
	struct DatObjCreate DatObjCreate_WriteDO;
	unsigned long pStartAdrDOCAN2Write;
	unsigned long DO_IDCAN2Write;
	struct DatObjWrite DatObjWrite_WriteDO;
	struct _SetCAN2COBTypeToCAN2Type _SetCAN2COBTypeToCAN2Type_0;
	struct DatObjInfo zzDatObjInfo00001;
	struct _CAN2Write CAN2Write;
	unsigned long pStartAdrDOCAN2Read;
	struct DatObjCreate DatObjCreate_ReadDO;
	struct DatObjWrite DatObjWrite_ReadDO;
	struct _CAN2Read CAN2Read;
	unsigned long DO_IDCAN2Read;
	struct DatObjInfo zzDatObjInfo00002;
	struct InitCAN2PV LocalInitCAN2PV;
	signed short iLoopIdxTemp;
	struct _GetNumberOfCan1Tels _GetNumberOfCan1Tels_0;
	plcstring szInitDO[81];
	plcstring szInitDOInstanceNumber[81];
	unsigned char usInitDOInstanceNumber;
	plcstring szCAN2WriteDO[81];
	plcstring szCAN2ReadDO[81];
	/* VAR_INPUT (digital) */
	plcbit enable;
} CAN2Init_typ;

typedef struct _version
{
	/* VAR (analog) */
	plcstring szVersion[81];
	unsigned short uiBuild;
} _version_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void _GetNumberOfCan1Tels(struct _GetNumberOfCan1Tels* inst);
_BUR_PUBLIC void _SetCAN2COBTypeToCAN2Type(struct _SetCAN2COBTypeToCAN2Type* inst);
_BUR_PUBLIC void _SetCAN2TypeToCAN1Type(struct _SetCAN2TypeToCAN1Type* inst);
_BUR_PUBLIC void _GetCANIDFromObjNr(struct _GetCANIDFromObjNr* inst);
_BUR_PUBLIC void _GetPVSize(struct _GetPVSize* inst);
_BUR_PUBLIC void _SetCAN1TypeToByteArray(struct _SetCAN1TypeToByteArray* inst);
_BUR_PUBLIC void _Seti386CAN2TypeToCAN1Type(struct _Seti386CAN2TypeToCAN1Type* inst);
_BUR_PUBLIC void _ConvertDataToi386(struct _ConvertDataToi386* inst);
_BUR_PUBLIC void CAN2RW(struct CAN2RW* inst);
_BUR_PUBLIC void CAN2Init(struct CAN2Init* inst);
_BUR_PUBLIC void _version(struct _version* inst);
_BUR_PUBLIC unsigned short _swapUINT(unsigned short uiIn);


#ifdef __cplusplus
};
#endif
#endif /* _WETCAN2_ */

