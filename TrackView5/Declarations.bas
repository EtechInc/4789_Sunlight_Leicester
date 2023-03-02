Attribute VB_Name = "StdDecs"
Public Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long

Public Declare Function IsWindowVisible Lib "user32" (ByVal hWnd As Long) As Long 'app is visible
Public Declare Function IsIconic Lib "user32" (ByVal hWnd As Long) As Long 'app is minimised
Public Declare Function IsZoomed Lib "user32" (ByVal hWnd As Long) As Long 'app is maximized
Public Declare Function ShowWindow Lib "user32" (ByVal hWnd As Long, ByVal nCmdShow As Long) As Long
Public Declare Function SetForegroundWindow Lib "user32" (ByVal hWnd As Long) As Long

Public Const SW_SHOWNORMAL = 1
Public Const SW_SHOWMAXIMIZED = 3
'General System
Public txtDebugRX As String

Public PLCTime(MaxPLC) As Long

Public Type Backup_typ
    ID As Long
    TimeDate As String
    Name As String
End Type
Public Backup_files() As Backup_typ

Public BCScannerIPText(10, MaxPLC) As String
Public PurgeOptions(0 To 4, MaxPLC) As Integer
Public DisplayBank(MaxDisplayStationBanks, MaxStationBanks)
Public PurgeOn(MaxPLC) As Integer
Public PurgeStn(0 To 32, MaxPLC) As Boolean 'MaxStations changed to stop out of range errors as 32 bit reg
Public PrimaryLoadingIndex As Integer
Public PLCIpAddress() As String

Public Backup_Active(MaxPLC) As Boolean

Public PCErrorMessages() As String

Public BrowserPath As String

Public PLCName(MaxPLC) As String 'PLC Names

Public SettingsCache() As SettingCache_typ
Public DebugCounters As DebugCounter_typ

Public Alarm_Text() As AlarmText_typ
Public Alarm_ActiveList() As Alarm_typ
Public AlarmActive As Boolean
'Alarms

Public ActiveAlarmIDList(MaxAlarmList * 3) As ActiveAlarmIDList_Typ
Public AlarmRaw(MaxAlarmList, MaxPLC) As AlarmRaw_typ

Public Type ActiveAlarmIDList_Typ
    ID As Long
    InList As Boolean
    TimeStamp As String
End Type
 
Public Type AlarmRaw_typ
    Number As Integer
    Name As Integer
    Extra As Integer
    UniqueID As Long
    TimeStamp As String
End Type

Public Type AlarmText_typ
    ID As Integer
    Name As String
    Detail As String
    Remedy As String
    Note As String
End Type

Public Type Alarm_typ
    TimeStamp As String
    UniqueID As Long
    ID As Integer
    PLC As Integer
    Seq As Integer
    SeqName As String
    Extra As String
    Text As AlarmText_typ
End Type


Public Type DebugCounter_typ
    SQLConnections As Long
    SQLDiconnections As Long
    SQLReadSettingCache As Long
    SQLErrorWriteCount As Long
End Type


Public Type SettingCache_typ
    SettingGroup As String
    SettingID As String
    SettingValue As String
End Type






'Bag ID
Public PLCBagID(MaxPLC) As Long
Public EditBagID(MaxPLC) As Long

'Bag Declerations

Public BagGrp(MaxBags, MaxPLC)  As Integer
Public BagDst(MaxBags, MaxPLC)  As Integer
Public BagWgt(MaxBags, MaxPLC)  As Integer
Public BagCnt(MaxBags, MaxPLC)  As Integer
Public BagUr1(MaxBags, MaxPLC)  As Integer
Public BagBid(MaxBags, MaxPLC)  As Long
Public BagCat(MaxBags, MaxPLC)  As Long
Public BagMis(MaxBags, MaxPLC)  As Long
Public BagCus(MaxBags, MaxPLC)  As Long
Public BagUr2(MaxBags, MaxPLC)  As Long
Public BagTimestamp(MaxBags, MaxPLC)  As Long

Public BagDay(MaxBags, MaxPLC)  As Integer

Public ImageLib As ImageList

'Machine Status MCN
Public Type MCN_Type
    MACHINE_NO      As Long     'UDINT
    DATA_VALID      As Integer  'USINT
    MACHINE_STATUS  As Integer  'USINT
    MSG_TYPE        As Integer  'USINT
    SPARE_FREI_1    As Integer  'USINT
    MSG_NR          As Integer  'UINT
    SPARE_FREI_2    As Integer  'UINT
End Type

Public Mcn(100, MaxPLC) As MCN_Type

Public MasterPC         As Boolean

Public PCNetBiosName    As String
Public PCName           As String
Public PCNum            As Integer

'RB (Robo) Posining must match PLC
Public RBMonitorIndex(MaxPLC) As Integer

Public Type RB_Posns
    RefOffset           As Long
    MaxSpeed            As Long
    CycleCount          As Long
    PositionNow         As Long
    OperationMode       As Long
    IOStatus            As Long
    Monitor             As Long
    SeqStep             As Long
    Posn(MaxRBPosns)    As Long
End Type

Public Type RB_LiftRotate
    Lift                As RB_Posns
    Rotate              As RB_Posns
End Type

Public RB_Posn(MaxRBs, MaxPLC) As RB_LiftRotate
Public RB_Type(MaxRBs, MaxPLC) As Integer
Public RB_Seq(MaxRBs, MaxPLC) As Integer
Public RB_PosnName(MaxRBs, MaxPLC, MaxRBPosns) As String


'Storage Area
Public StorageAreaMax(MaxPLC)                   As Integer
Public StorageAreaName(20, MaxPLC)              As String
Public StorageAreaFrom(20, MaxPLC)              As Integer
Public StorageAreaTo(20, MaxPLC)                As Integer

'PLC I/O
Public ForceFormIndex                           As Integer
Public ForceOpen(4)                             As Boolean
Public PLCCard(MaxPLC)                          As Integer
Public PLCx(MaxPLCCards + 1, 16, MaxPLC)         As Boolean
Public PLCy(MaxPLCCards + 1, 16, MaxPLC)         As Boolean
Public PLCInputDesc(MaxPLCCards, 16, MaxPLC)     As String
Public PLCOutputDesc(MaxPLCCards, 16, MaxPLC)    As String
Public ForceAllowed(MaxPLC)                     As Boolean

Public PLCIOStatus(200, MaxPLC)                 As Boolean
Public PLCStnStatus(112, MaxPLC)                As Boolean
Public PLCCardUsed(200, MaxPLC)                 As Boolean

Public ShowAllIO                                As Boolean



'TCP/IP Driver Visible
Public TCPIPDriverShow          As Boolean
Public TCPIPDriverHide          As Boolean

'System Running Time
Public SysRunHoursK(MaxPLC)     As Integer
Public SysRunHours(MaxPLC)      As Integer
Public SysRunMinutes(MaxPLC)    As Integer
Public SysRunSeconds(MaxPLC)    As Integer


Public TrapErrors       As Boolean      'Use Error Handler
Public DebugToErrorFile As Boolean
Public Demo             As Boolean

Public MasterPath       As String
Public DataPath         As String
Public ReportsPath      As String

Public LogPath          As String
Public LogFileExt       As String

Public MiscCode         As Integer

Public HelpFile         As String

Public Message          As String
Public MessageFlash     As Boolean

Public CurrentLanguage  As String
Public ProjectLoaded    As Boolean

Public ReportsPLC       As Integer
Public Reporting        As Boolean
Public Reports_Station  As Boolean
Public Printer_Station  As Boolean
Public PrintTickets     As Boolean
Public ReportsPrinter   As Integer
Public TicketPrinter    As Integer
Public TicketBagNo      As Integer
Public TicketPLC        As Integer
Public RePrint          As Integer

Public MaintenanceUsed  As Boolean

'Start-up Form
Public StartUpForm(10)  As String

'Run Another Program Options
Public RunAnother       As Boolean
Public RunAnotherGroupName   As String
Public RunAnotherProgMenuText As String

'Access Options
Public AccessLevel      As Integer      'Current Access Level
Public PCSupervisor     As Integer      'PC With Current Supervisor Access
Public PCEngineer       As Integer      'PC With Current Engineer Access
Public PCDatabase       As Integer      'PC With Current Database Access

'Sequences
Public SequenceStep(MaxSeq, MaxPLC)         As Integer
Public SequenceAlm(MaxSeq, MaxPLC)          As String
Public SequenceName(MaxSeq, MaxPLC)         As String
Public SequenceDescription(MaxSeq, MaxSeqStep, MaxPLC) As String

'Main displays
Public n                                            As Integer  'General loop number
Public BagMoveLast                                  As Integer
Public BagMoveNow                                   As Integer
Public CounterValue(MaxCounters, MaxPLC)            As Integer
Public Indication(80, MaxPLC)                       As Boolean
Public CANLive(32, MaxPLC)                          As Boolean

Public CurrentSeq               As Integer  'Current Sequence Step
Public CurrentSeqPLC            As Integer
Public CurrentCnt               As Integer
Public CurrentCntPLC            As Integer

Public TextWord(MaxTextWord)    As String
Public Alarm(3)                 As Integer
Public Edited                   As Integer
Public Changed                  As Boolean
Public CustomerList(99, MaxPLC) As Long
Public CustomerFIFO_PLC         As Integer


'Reports
Public ReportID(MaxPLC)         As Long

Public RptRdy(MaxPLC)           As Long
Public RptCus(MaxPLC)           As Long
Public RptCat(MaxPLC)           As Long
Public RptWgt(MaxPLC)           As Long
Public RptCnt(MaxPLC)           As Long
Public RptStn(MaxPLC)           As Long
Public RptMcn(MaxPLC)           As Long
Public RptGrp(MaxPLC)           As Long
Public RptBid(MaxPLC)           As Long
Public RptDst(MaxPLC)           As Long
Public RptDay(MaxPLC)           As Long
Public RptSQL(MaxPLC)           As Long
Public RptID(MaxPLC)            As Long
Public RptAct(MaxPLC)           As Long
Public RptUr1(MaxPLC)           As Long
Public RptUr2(MaxPLC)           As Long
Public RptRkg(MaxPLC)           As Long

Public ReportReplyID(MaxPLC)    As Long

'Features
Public OperatorEdit         As Boolean
Public OperatorLoading      As Boolean
Public OperatorUnloading    As Boolean

'Recirculation
Public PLCMaxLines(MaxPLC)      As Integer
Public Recirculation(MaxPLC)    As Integer
Public OnManualLine(MaxPLC)     As Integer
Public OnManualBags(MaxPLC)     As Integer
Public OffManualLine(MaxPLC)    As Integer
Public OffManualBags(MaxPLC)    As Integer
Public OffManualDest(MaxPLC)    As Integer
Public RecircDepth(MaxPLC)      As Integer
Public AutoRecirc(MaxPLC)       As Integer      'If automatic recirculation is enabled
Public AutomaticRecirculation(MaxPLC)   As Integer    'If System is allowed automatic recirculation
Public RecircOngoing(MaxPLC)    As Boolean
Public RecircOffgoing(MaxPLC)   As Boolean


'Bag Editing
Public MoveStorage              As Boolean
Public EditStorage              As Boolean
Public Edit_Bag(9)              As Integer  'Values sent to PLC

'Destinations
Public PLCMaxDestinations(MaxPLC)                       As Integer
Public DestinationText(MaxDestinations, MaxPLC) As String

'Unloading / Dischragers
Public UnloadingIndex                           As Integer
Public UnloadingPLC                             As Integer
Public PLCMaxUnloading(MaxPLC)                  As Integer
Public PLCStartDischarger(MaxPLC)               As Integer
Public DischargerName(MaxUnloading, MaxPLC)     As String
Public ULD_File(MaxUnloading, MaxPLC)           As String
Public PLC_Disch(20, MaxPLC)                    As Integer
Public Unload_Register(MaxUnloading, MaxPLC)    As Integer
Public Unload_StartLine(MaxUnloading, MaxPLC)   As Integer
Public Unload_EndLine(MaxUnloading, MaxPLC)     As Integer


Public Unload_CurrentStep(MaxUnloading, MaxPLC)       As Integer
Public Unload_QtyCompleted(MaxUnloading, MaxPLC)      As Integer

Public Unload_SkipIncomplete(MaxUnloading, MaxPLC)    As Integer
Public Unload_StopAtEndCycle(MaxUnloading, MaxPLC)    As Integer
Public Unload_StartStop(MaxUnloading, MaxPLC)         As Integer
Public Unload_ProgramEnd(MaxUnloading, MaxPLC)        As Integer
Public Unload_NoBag(MaxUnloading, MaxPLC)             As Integer
Public Unload_CustomerMode(MaxUnloading, MaxPLC)      As Integer
Public Unload_Qty(20, 1 To MaxUnloading, MaxPLC)      As Integer
Public Unload_Batch(20, 1 To MaxUnloading, MaxPLC)    As Integer
Public Unload_Line(20, 1 To MaxUnloading, MaxPLC)     As Integer
Public Unload_Grp1(20, 1 To MaxUnloading, MaxPLC)     As Integer
Public Unload_Grp2(20, 1 To MaxUnloading, MaxPLC)     As Integer
Public Unload_Grp3(20, 1 To MaxUnloading, MaxPLC)     As Integer
Public Unload_Grp4(20, 1 To MaxUnloading, MaxPLC)     As Integer
Public Unload_Cust(MaxUnloading, MaxPLC)              As Long
Public Unload_CustAuto(MaxUnloading, MaxPLC)          As Long
Public Unload_ExperssLine(MaxUnloading, MaxPLC)       As Integer
Public Unload_ManualLine(MaxUnloading, MaxPLC)        As Integer
Public Unload_ManualBags(MaxUnloading, MaxPLC)        As Integer

'Sorting stations
Public LoadingProgramsMenu As Boolean
Public ThisStation          As Integer
Public PurgeBank            As Integer
Public StationBagsStart     As Integer
Public ManualRelease(100, MaxPLC)       As Integer
Public PLC_StnBank(MaxBanks)         As Integer  'Each bank can be allocated which PLC is sends the data
Public Loading_BagStart(MaxBanks)    As Integer  'PLC Start register for each bank
Public Loading_StartStn(MaxBanks)    As Integer  'Station Number Start
Public Loading_EndStn(MaxBanks)      As Integer  'Station Number End
'Public Loading_Displays(MaxBanks)    As Boolean  'Alpha Numeric Displays?
'Public Loading_Counting(MaxBanks)    As Boolean  'Counting Station
Public StnWriteCat(MaxStations)         As Integer 'Category for PLC write
Public StnWriteCus(MaxStations)         As Integer 'Customer for PLC write

'Line selections and Display buttons
Public Start_Stop(300, MaxPLC)              As Boolean  'Start/Stop Buttons Was Mbit
Public CAN_Data(20)                         As Integer
Public StnInQ(100)                          As Integer  'Was MaxStations

'Weighing set points
Public StnCalib_Low(100, MaxPLC) As Long
Public StnCalib_High(100, MaxPLC) As Long
Public StnCalib_Set(100, MaxPLC) As Long
Public Type StnCalib_typ
    PLC As Integer
    Station As Integer
    Low As Long
    High As Long
    Set As Long
End Type

Public RestoreCalibValue() As StnCalib_typ



'Weighing
Public PLCMaxCalStns(MaxPLC)                As Integer
Public WeighReplyStn                        As Long
Public WeighReplyZero(MaxCalibration, MaxPLC)  As Long
Public WeighReplyHigh(MaxCalibration, MaxPLC)  As Long
Public WeighReplyTest(MaxCalibration, MaxPLC)  As Long
Public WeighReplyRaw(MaxCalibration, MaxPLC)   As Long
Public WeighReplyKg(MaxCalibration, MaxPLC)    As Long

Public StnCalDataAlternate                  As Boolean
Public StnCalDataCurrent                    As Integer
Public StnCalDataExpress                    As Integer
Public StnCalDataRequest                    As Integer

Public StoreCalReadCount                    As Integer
Public StoreCalStation                      As Integer
Public StoreCalAction                       As String

'Display
Public ColourOption1                        As Integer
Public ColourOption2                        As Integer
Public DisplayOption1                       As Integer
Public DisplayOption2                       As Integer

'Constansts for playing sounds
Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal _
                 lpszSoundName As String, ByVal uFlags As Long) As Long
Public Const SND_ALIAS = &H10000    'name is in WIN.INI or the registry
Public Const SND_ASYNC = &H1        'play asynchronously
Public Const SND_SYNC = &H0         'play synchronously (default)
Public Const SND_NOWAIT = &H2000    'don't wait if the driver is busy
Public Const SND_LOOP = &H8         'loop around the sound until the next sndPlaySound


'Write PLC variables
Public WriteString As String
Public HexString As String
Public WriteStn As String
Public WriteCmd As String
Public WriteDevice As String
Public WriteStart As String
Public WriteLength As String
Public WriteData As String
Public BinString As String
Public CheckSum As String

'Easisort Pulsing
Public ES_PulseConfig(0 To 4) As Integer

