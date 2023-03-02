Attribute VB_Name = "StdConst"
'------------------------------
'Programmer Changable Constants
'------------------------------

Public Const D32ReturnProgIfnotPrgCode = False ' If ZZgetnames does not send Prg Return Prg number instead of name

Public Const SpecialAlsco = False     'Remove all / Set to False for Standard TrackView

Public Const OverviewOnly = False    'This is an Overview version? No Control?

Public Const MaxPC = 10              'Max PC's allowed on system (configured in the database)

Public Const MaxBags = 999          'Max Bags for 1 PLC

Public Const RoboUsed = False       'Show Robo menu?
Public Const MaxRBs = 0            'Max Number of RB Configurations

Public Const MaxPLC = 2             'Max PLC System will use 0-2 leave at 2
Public Const MinPLCCards = 1        'Start PLC Card
Public Const MaxPLCCards = 100      'Max PLC I/O Cards Last Card (Make Sure Even Number)
Public Const UsedPLC = 2            'Set to number of used PLC's - 1 0=1 1=2 2=3

Public Const Maindisp0Used = True    'Display form 0 is used?
Public Const Maindisp1Used = False   'Display form 1 is used?
Public Const Maindisp2Used = False   'Display form 0 is used?

Public Const MaxCalibration = 14         'Max Calibrations for any PLC

Public Const StationReleasedRegOffest = 0 ' D register offset for station bank- ie Bank 1 = D941 Set to 40.


Public Const MaxStations = 14          'Min Value = 1

Public Const MaxDisplayStationBanks = 2    'Number of loading banks to show in Tview menu
Public Const MaxBanks = 2                   'total number of banks
Public Const MaxStationBanks = 2    'MAX NUMBER OF BANKS IN 1 LOADING FORM

Public Const StationPurging = False 'System Has Purging
Public Const StationPartLoads = True 'Stations have part loads buttons

Public Const CustomerIsRoute = False 'True 'Customer is replaced With Route - Customer TextWords replaced with Route TextWords

Public Const MasterPLC = 0         'PLC where the database changed and other values are read and written Normally Soiled PLC 0

'Was in Advanced options
Public Const Weighing = True
Public Const ReleaseByCount = False 'This option will need to be checked if set to TRUE
Public Const Counting = False        'This option will need to be checked if set to TRUE
Public Const UseDay = False          'Use day on this system - WILL NEED WORK!

Public Const UseStorageAreas = False 'Use Storage Areas [Automaitc Line Allocation] - Set Std.AutoLineAllocation in PLC
Public Const MaxBatch = 4           'Do Not Set Above 4 as the PLC code will need changing
Public Const MaxLines = 34         'Line / Destinations
Public Const MaxUnloading = 4      'Max Unloading Programs for 1 PLC (Set to a Min of 1)

Public Const MaxRecircDepth = 7

Public Const MaxSeq = 99           'Max Sequences for 1 PLC Normally 99
Public Const ExtraSeqStart = 7900 '2nd 100 Sequences Start Register

Public Const MaxSeqStep = 99        'Max Steps any sequence has - default = 99
Public Const MaxCounters = 99       'Max Counters for 1 PLC
Public Const MaxTextWord = 999
Public Const MaxWeight = 200
Public Const MaxMisc = 9999         'Misc Value for future use saved to batch file

Public Const MaxAlarmList = 10      'Max Alarms in Alarm List for 1 PLC

Public Const MaxLong = 10           'Max digits / chrs for long ID that can be set - entry / selection boxes will need to be wider if increased.

'Storage line allocation limits - used by category form Min Normally 0 and Max Normally Last line
Public Const MinSoiledLine1 = 0             'Min Value for 1st Line Choice
Public Const MinSoiledLine2 = 0             'Min Value for 2nd Line Choice
Public Const MinSoiledLine3 = 0             'Min Value for 3rd Line Choice
Public Const MinSoiledLine4 = 0             'Min Value for 4th Line Choice
Public Const MaxSoiledLine1 = MaxLines      'Max Value for 1st Line Choice
Public Const MaxSoiledLine2 = MaxLines      'Max Value for 2nd Line Choice
Public Const MaxSoiledLine3 = MaxLines      'Max Value for 3rd Line Choice
Public Const MaxSoiledLine4 = MaxLines      'Max Value for 4th Line Choice

'Sorting Station Lines And Setpoints
Public Const StnDispCatReg = 5100 '5100   'Display 1st Station Category  Program
Public Const StnDispCusReg = 5000 ' 5000   'Display Customer's upto 5 Banks Dxx00 to Dxx94 30 chrs each
Public Const StnLine1Reg = 4000
Public Const StnLine2Reg = 4100
Public Const StnLine3Reg = 4200
Public Const StnLine4Reg = 4300
'Note D3400 to D3699 are PLC internal calibration values
Public Const StnSP1Reg = 4700
Public Const StnSP2Reg = 4800
Public Const StnSP3Reg = 4900



Public Const Seq_File = 100         'Number of Sequences in each sequence file

'For Category Database Parts that are stored in the PLC and Come from there
Public Const Program_Max_Destinations = 70
Public Const Washcode_Max_Value = 99
Public Const Drycode_Max_Value = 50

'Parts of database to transfer to the PLC "D" registers if a value is set then the
'item will be transfered to the PLC (Be carefull with register spacing)
'These apply only to the program database where normally 100 registers would be used -
'to transfer Category Values to the PLC Use the function GetDatabaseFromCategory
Public Const PLC_Transfer_WashCode = 2100        '"D2000" Register where washcodes start (Programs Only!)
Public Const PLC_Transfer_Line1 = 3000
Public Const PLC_Transfer_Line2 = 3100
Public Const PLC_Transfer_Line3 = 3200
Public Const PLC_Transfer_Line4 = 3300
Public Const PLC_Transfer_SP1 = 0       'Only SP's from the program database are sent
Public Const PLC_Transfer_SP2 = 0       'Only SP's from the program database are sent
Public Const PLC_Transfer_SP3 = 0       'Only SP's from the program database are sent
Public Const PLC_Transfer_ClnLine1 = 3000
Public Const PLC_Transfer_ClnLine2 = 3100
Public Const PLC_Transfer_ClnLine3 = 3200
Public Const PLC_Transfer_ClnLine4 = 3300
'Public Const PLC_Transfer_DryCode = 0
Public Const PLC_Transfer_Piece = 0 '2800 'Piece Weights
Public Const PLC_Transfer_Batch = 2000
Public Const PLC_Transfer_Type = 2200 'Use Piece

Public Const PLC_Transfer_PrimLine1 = 3000
Public Const PLC_Transfer_PrimLine2 = 3100
Public Const PLC_Transfer_PrimLine3 = 3200
Public Const PLC_Transfer_PrimLine4 = 3300

'PLC Station where to transfer the Registers
Public Const PLC_Stn_WashCode = 0
Public Const PLC_Stn_Line1 = 0
Public Const PLC_Stn_Line2 = 0
Public Const PLC_Stn_Line3 = 0
Public Const PLC_Stn_Line4 = 0
Public Const PLC_Stn_SP1 = 0
Public Const PLC_Stn_SP2 = 0
Public Const PLC_Stn_SP3 = 0
Public Const PLC_Stn_ClnLine1 = 1
Public Const PLC_Stn_ClnLine2 = 1
Public Const PLC_Stn_ClnLine3 = 1
Public Const PLC_Stn_ClnLine4 = 1

Public Const PLC_Stn_PrimLine1 = 2
Public Const PLC_Stn_PrimLine2 = 2
Public Const PLC_Stn_PrimLine3 = 2
Public Const PLC_Stn_PrimLine4 = 2

'Public Const PLC_Stn_DryCode = 0
Public Const PLC_Stn_Piece = 0
Public Const PLC_Stn_Batch = 0
Public Const PLC_Stn_Type = 0

'Forms PLC Station Number
Public Const PLC_Stn_maindisp0_frm = 0
Public Const PLC_Stn_maindisp1_frm = 1
Public Const PLC_Stn_maindisp2_frm = 2
'Public Const PLC_Stn_maindisp3_frm = 0

Public Const PLC_Stn_snapshot_frm = 0
Public Const PLC_Stn_Station_frm = 0
Public Const PLC_Stn_Reports = 0
Public Const PLC_Stn_Recirc_frm = 0

Public Const Maindisp0_BagColour = &HFF0000    'Blue &H00FF00  'New bag colour &H808000  'Red &HFF&
Public Const Maindisp1_BagColour = &HFFFFFF    'White &HFFFFFF
Public Const Maindisp2_BagColour = &HFF0000
Public Const Maindisp3_BagColour = &HFFFFFF

'----------------------
'Fixed System Constants
'----------------------
Public Const EditGrp = 0
Public Const EditCat = 1
Public Const EditCus = 2
Public Const EditDst = 3
Public Const EditWgt = 4
Public Const EditCnt = 5
Public Const EditBid = 6
Public Const EditStn = 7
Public Const EditDay = 8
Public Const EditPic = 9

Public Const EditAny = 10
Public Const EditRBmm = 11
Public Const EditRBdeg = 12
Public Const EditRBSpeed = 13

Public Const EditLine = 14
Public Const EditProgramName = 15
Public Const EditUr1 = 16
Public Const EditUr2 = 17

Public Const EditMachineNames = 22


'RB Types
Public Const RB_ModeManual = 1

Public Const RB_TypeNotUsed = 0
Public Const RB_TypeLift = 1
Public Const RB_TypeRotate = 0
Public Const RB_TypeAutoAlign = 4

Public Const MaxRBPosns = 29        'Max Robo Positions - 29 Std, Must Change PLC, PollList and TrackView together




'Display Option Constants
Public Const myNone = 0
Public Const myGrp = 1
Public Const myCat = 2
Public Const myCus = 3      'Also Route
Public Const myDst = 4
Public Const myGrpLong = 5
Public Const myCatLong = 6
Public Const myCusLong = 7
Public Const myWashProg = 8
Public Const myDay = 9
Public Const myBagIndex = 10
Public Const myBagID = 11
Public Const myMisID = 12

'Bag colour constants
Public Const ColourNone = 0
Public Const ColourGrp = 1
Public Const ColourCat = 2
Public Const ColourCus = 3
Public Const ColourDay = 4
Public Const ColourLot = 5

'Pop Up Display Constants
Public Const PopUpNone = 0
Public Const PopUpBag = 1
Public Const PopUpInput = 2
Public Const PopUpOutput = 3
Public Const PopUpCounter = 4
Public Const PopUpSequence = 5
Public Const PopUpStnLamp = 6
Public Const PopUpLdgProg = 7
Public Const PopUpCAN = 8
Public Const PopUpVNC = 9
Public Const PopUpPicStartStop = 10 'Small Start Stop
Public Const PopUpMachine = 11
Public Const PopUpInputNC = 12
Public Const PopUpStartStopPic = 14 'Large Start Stop
Public Const PopUpQuickUld0 = 20
Public Const PopUpQuickUld1 = 21
Public Const PopUpQuickUld2 = 22
Public Const PopUpQuickUld3 = 22
Public Const PopUpQuickUld4 = 24
Public Const PopUpQuickUld5 = 25
Public Const PopUpBcScanner = 25

'Sending Various String Texts to PLC
Public Const SendSUPDBServer = 1
Public Const SendSUPDBName = 2
Public Const SendSUPDBLogin = 3
Public Const SendSUPDBPword = 4

Public Const StartSQLServerDataRead = 101
Public Const StartReadTextwords = 102

Public Const SendTextWord = 1000

'Trackview and PLC Index conversion
Public Const ModePLCToTview = 0
Public Const ModeTviewToPLC = 1

'Form Position Constants
Public Const frmCheckPosition = 0
Public Const frmReadPosition = 1
Public Const frmSavePosition = 2

'Access Levels
Public Const accOperator = 0
Public Const accSupervisor = 1
'Public Const accManager = 2
Public Const accEngineer = 2
'Public Const accSiteEngineer = 4
Public Const accProgrammer = 3
Public Const accDesigner = 4
Public Const accSQLsa = 5

'Network Connection
Public Const rmNotConnected = 0
Public Const rmConnected = 1

Public Const White = vbWhite
Public Const Black = vbBlack
Public Const Blue = vbBlue
Public Const Red = vbRed
Public Const Yellow = vbYellow
Public Const Green = vbGreen
Public Const Grey = vbButtonFace

Public Const LightRed = &H8080FF
Public Const LightGrey = &HC0C0C0
Public Const DarkGrey = &H808080
Public Const DarkYellow = &H10FFFF
Public Const Turquoise = &H808000
Public Const LightBlue = &HFFFF00
Public Const DarkBlue = &H8000000
Public Const LightCream = &HE0FFFF
Public Const DarkCream = &H8080&
Public Const BeltGreen = &H808000
Public Const WSBlue = &HC00000
Public Const NewBagColour = &H808000
'Color Constants
Public Const vbDarkGrey = &H808080
Public Const vbLightBlue = &HFF8080
Public Const vbLightRed = &H8080FF
'New Colours
Public Const colkgBlue = &HD2A03C '210 160 60
Public Const colKgGrey = &HDBD9D4 '219 217 212

Public Const vbKeyEscape = &H1B
Public Const vbKeySpace = &H20
Public Const vbKeyLeft = &H25
Public Const vbKeyUp = &H26
Public Const vbKeyRight = &H27
Public Const vbKeyDown = &H28
Public Const TimeStampDateStart = #1/1/1970# ' Start date for B&R Date_AND_Time Datatype used in decode

Sub Config()
        
    'Configuration - Change to Suit contract
    '---------------------------------------
    
    On Error GoTo ConfigError
       
    Dim PLCStn      As Integer
    Dim DischName   As String
                    
                    
   BCScannerIPText(0, 0) = "10.8.4.151"
   BCScannerIPText(1, 0) = "10.8.4.150"
   BCScannerIPText(0, 1) = "10.8.4.153"
                    
    PLCMaxLines(0) = 19 'PLC 0 Soiled System Max Lines
    PLCMaxLines(1) = 0 'PLC 1 Clean System Max Lines
    PLCMaxLines(2) = 0 'PLC 2 Primary System Max Lines
    
    PLCStartDischarger(0) = 1
    PLCMaxUnloading(0) = 3
    PLCStartDischarger(1) = 0
    PLCMaxUnloading(1) = 0
    PLCStartDischarger(2) = 0
    PLCMaxUnloading(2) = 0
       
    'Start-up Form
    StartUpForm(0) = "none"
    StartUpForm(1) = "maindisp0"
    StartUpForm(2) = "maindisp1"
    StartUpForm(3) = "maindisp2"
    StartUpForm(4) = "spare"
    StartUpForm(5) = "special0"
    StartUpForm(6) = "special1"
    StartUpForm(7) = "special2"
    StartUpForm(8) = "special3"
    StartUpForm(9) = "special4"
    StartUpForm(10) = "special5"
    
    'PLC 0 - Normally Soiled
    PLCStn = 0
    
    'Robo Conveyors - Encoder
    '------------------------
    'Robo Type - Lift and Or Rotate etc..
'    RB_Type(1, PLCStn) = RB_TypeLift '+ RB_TypeRotate '+ RB_TypeAutoAlign
'    RB_Type(2, PLCStn) = RB_TypeLift '+ RB_TypeAutoAlign
'    RB_Type(3, PLCStn) = RB_TypeNotUsed '+ RB_TypeRotate + RB_TypeAutoAlign
'    RB_Type(4, PLCStn) = RB_TypeNotUsed '+ RB_TypeAutoAlign
    
    'Robo Sequence Number
'    RB_Seq(1, PLCStn) = 3
'    RB_Seq(2, PLCStn) = 17
'    RB_Seq(3, PLCStn) = 0
'    RB_Seq(4, PLCStn) = 0
'
       
    'Storage Lines
    For n = 1 To 6 'PLCMaxLines(PLCStn)
        '86 = Line, 262 = Destination, 608 = Soiled Line, 609 = Clean Line
        DestinationText(n, PLCStn) = TextWord(86) & Str(n)
    Next n
        
    'Unloading Programs
    For n = 1 To PLCMaxUnloading(PLCStn)
        DischName = db_uspSettingGet("SettingsNetwork", "DischargerName PLC" & Str(PLCStn), Format$(n), "Discharger" & Str(n), PCNum)
        DestinationText(10 + n, PLCStn) = DischName
        DischargerName(n, PLCStn) = DischName
        Unload_Register(n, PLCStn) = 1000 + ((n - 1) * 200)
        Unload_StartLine(n, PLCStn) = 1
        Unload_EndLine(n, PLCStn) = PLCMaxLines(PLCStn)
    Next n
       
    'Recirculation
    'DestinationText(30, PLCStn) = TextWord(284)
    'Recirculation / 2nd route
    'DestinationText(14, PLCStn) = TextWord(86) & " 1-14"
    DestinationText(14, PLCStn) = "CDC 4"
    DestinationText(15, PLCStn) = "CDC 5"
    DestinationText(16, PLCStn) = "CDC 6"
    DestinationText(17, PLCStn) = "CDC 7"
    DestinationText(18, PLCStn) = "CDC 8"
    DestinationText(19, PLCStn) = "CDC 9"
    
    'PLC 1 - Normally Clean
    PLCStn = 1
    
    
    'Robo Conveyors - Encoder
    '------------------------
    'Robo Type - Lift and Or Rotate etc..
'    RB_Type(1, PLCStn) = RB_TypeLift '+ RB_TypeRotate '+ RB_TypeAutoAlign
'    RB_Type(2, PLCStn) = RB_TypeLift '+ RB_TypeAutoAlign
'    RB_Type(3, PLCStn) = RB_TypeNotUsed '+ RB_TypeAutoAlign
'    RB_Type(4, PLCStn) = RB_TypeNotUsed '+ RB_TypeAutoAlign
'
'    'Robo Sequence Number
'    RB_Seq(1, PLCStn) = 1
'    RB_Seq(2, PLCStn) = 0
'    RB_Seq(3, PLCStn) = 0
'    RB_Seq(4, PLCStn) = 0
       
    'Storage Lines
    For n = 1 To PLCMaxLines(PLCStn)
        '86 = Line, 262 = Destination, 608 = Soiled Line, 609 = Clean Line
        DestinationText(n, PLCStn) = TextWord(86) & Str(n)
    Next n
    
    
    
    'Unloading Programs
    For n = 1 To PLCMaxUnloading(PLCStn)
        DischName = db_uspSettingGet("SettingsNetwork", "DischargerName PLC" & Str(PLCStn), Format$(n), "Discharger" & Str(n), PCNum)
        DestinationText(20 + n, PLCStn) = DischName
        DischargerName(n, PLCStn) = DischName
        'DestinationText(30, PLCStn) = TextWord(284)
        Unload_Register(n, PLCStn) = 1000 + ((n - 1) * 200)
        Unload_StartLine(n, PLCStn) = 1
        Unload_EndLine(n, PLCStn) = PLCMaxLines(PLCStn)
    Next n
       
    'Recirculation
    'DestinationText(30, PLCStn) = TextWord(284)
    
    
    'PLC 2 - Normally Primary
    PLCStn = 2
    
    
    'Robo Conveyors - Encoder
    '------------------------
    'Robo Type - Lift and Or Rotate etc..
'    RB_Type(1, PLCStn) = RB_TypeLift + RB_TypeRotate '+ RB_TypeAutoAlign
'    RB_Type(2, PLCStn) = RB_TypeNotUsed '+ RB_TypeAutoAlign
'    RB_Type(3, PLCStn) = RB_TypeLift + RB_TypeRotate '+ RB_TypeAutoAlign
'    RB_Type(4, PLCStn) = RB_TypeNotUsed '+ RB_TypeAutoAlign
'
'    'Robo Sequence Number
'    RB_Seq(1, PLCStn) = 0
'    RB_Seq(2, PLCStn) = 0
'    RB_Seq(3, PLCStn) = 0
'   RB_Seq(4, PLCStn) = 0
       
    'Storage Lines
    For n = 2 To PLCMaxLines(PLCStn)
        '86 = Line, 262 = Destination, 608 = Soiled Line, 609 = Clean Line
        'If (n < 13) Or (n > 14) Then DestinationText(n, PLCStn) = TextWord(86) & Str(n)
        DestinationText(n, PLCStn) = TextWord(86) & Str(n)
    Next n
       
    'Washextractors and Manual Discharger from Main Storage
    'DestinationText(20, PLCStn) = "PDC1..4"
       
    'Unloading Programs
    For n = 1 To PLCMaxUnloading(PLCStn)
        DischName = db_uspSettingGet("SettingsNetwork", "DischargerName PLC" & Str(PLCStn), Format$(n), "Discharger" & Str(n), PCNum)
        DestinationText(20 + n, PLCStn) = DischName
        DischargerName(n, PLCStn) = DischName
        Unload_Register(n, PLCStn) = 1000 + ((n - 1) * 200)
        Unload_StartLine(n, PLCStn) = 1
        Unload_EndLine(n, PLCStn) = PLCMaxLines(PLCStn)
    Next n
       
    'Recirculation
    'DestinationText(30, PLCStn) = TextWord(284)
    
    
    
    
    'When using as ticket printer enter the bag number to use
    'In the PLC program Set the TicketBag
    'The Ticket Pirnt from will then read the TicketBag then print and then clear the data
    TicketBagNo = 0     'Bag number where infomation for Ticket printing is held
    TicketPLC = 0       'Set PLC Number to read data from
   
Exit Sub
ConfigError:
    ErrorHandler Err, "Config", Err.Description, True
    Resume Next

End Sub
Sub ConfigLoading()
    
    '----------------
    'Loading Programs
    '----------------
    '*********STANDARD************
    For n = 0 To MaxBanks
      DisplayBank(n, 1) = n
    Next n
    '*************Multiple banks on 1 loading form**********
    'Set MaxDisplayStationBanks
    
    DisplayBank(1, 1) = 1 ' Set the banks to be in each display bank
'   DisplayBank(1, 2) = 8 ' Set the banks to be in each display bank
    
    DisplayBank(2, 1) = 2 ' Banks must be concurrent in station and bag numbers
'    DisplayBank(2, 2) = 0
    
    'DisplayBank(3, 1) = 0
    
   ' DisplayBank(4, 1) = 0
   ' DisplayBank(4, 2) = 0

    '***********************END*******************************
    PLCMaxCalStns(0) = MaxCalibration 'PLC 0 Soiled System Number Of Calibration Stations
    PLCMaxCalStns(1) = 0 'PLC 1 Clean System Number Of Calibration Stations
    PLCMaxCalStns(2) = 0 'PLC 2 Primary System Number Of Calibration Stations
    
    StationBagsStart = 201      'First Station bag Station bags should follow in order
      
            
    'The Loading_BagStart(x) should use the PLC Bag index not the maindisp bag index with also -
    'contains the PLC eg. PLC 1 bag 201 = Bag(1201) for display for the loading this would be -
    '201
    
    'The weight labels should be the same index as maindispX bags
    'Note StnInQ(x) only works with PLC 0 at present and thefore staions should all be in PLC 0
            
    PLC_StnBank(1) = 0          'PLC to Write back program
    Loading_BagStart(1) = 201   'PLC Bag Number Where station bank starts
    Loading_StartStn(1) = 1     'Bank 1 Start Station Number
    Loading_EndStn(1) = 7     'Bank 1 Last Station Number



    PLC_StnBank(2) = 0          'PLC to Write back program
    Loading_BagStart(2) = 208     'PLC Bag Number Where station bank starts
    Loading_StartStn(2) = 8    'Bank 2 Start Station Number
    Loading_EndStn(2) = 14      'Bank 2 Last Station Number
'
'
'    PLC_StnBank(3) = 0          'PLC to Write back program
'    Loading_BagStart(3) = 423     'PLC Bag Number Where station bank starts
'    Loading_StartStn(3) = 23     'Bank 3 Start Station Number
'    Loading_EndStn(3) = 28      'Bank 3 Last Station Number

'
'    PLC_StnBank(4) = 0          'PLC to Write back program
'    Loading_BagStart(4) = 0     'PLC Bag Number Where station bank starts
'    Loading_StartStn(4) = 0     'Bank 4 Start Station Number
'    Loading_EndStn(4) = 0       'Bank 4 Last Station Number

'
'    PLC_StnBank(5) = 0          'PLC to Write back program
'    Loading_BagStart(5) = 0     'PLC Bag Number Where station bank starts
'    Loading_StartStn(5) = 0    'Bank 5 Start Station Number
'    Loading_EndStn(5) = 0       'Bank 5 Last Station Number

'
'    PLC_StnBank(6) = 0          'PLC to Write back program
'    Loading_BagStart(6) = 0     'PLC Bag Number Where station bank starts
'    Loading_StartStn(6) = 0    'Bank 6 Start Station Number
'    Loading_EndStn(6) = 0       'Bank 6 Last Station Number

End Sub
