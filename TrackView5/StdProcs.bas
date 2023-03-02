Attribute VB_Name = "StdProcs"
    Dim NewCus() As Long
    Dim NewCat() As Long
Private Sub PLCSnapShotDemo()
    
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG", "PLCSnapShotDemo", False

    On Error GoTo PLCSnapShotDemoError
    
    Dim F, n As Integer
    Dim InputString As String
    Dim File As String
      
    
    Dim Grp     As Integer
    Dim Dst     As Integer
    Dim Wgt     As Integer
    Dim Cnt     As Integer
    Dim Ur1     As Integer
    Dim Bid     As Long
    Dim Cat     As Long
    Dim MIS     As Long
    Dim Cus     As Long
    Dim Ur2     As Long
      
    
    File = DataPath & "Saved_1.PLC"
    F = FreeFile
        
    Open File For Input Shared As F
    
    For n = 1 To MaxBags
        Input #F, Grp
        Input #F, Dst
        Input #F, Wgt
        Input #F, Cnt
        Input #F, Ur1
        Input #F, Bid
        Input #F, Cat
        Input #F, MIS
        Input #F, Cus
        Input #F, Ur2
        
        BagGrp(n, PLCStn) = Grp
        BagDst(n, PLCStn) = Dst
        BagWgt(n, PLCStn) = Wgt
        BagCnt(n, PLCStn) = Cnt
        BagUr1(n, PLCStn) = Ur1
        BagBid(n, PLCStn) = Bid
        BagCat(n, PLCStn) = Cat
        BagMis(n, PLCStn) = MIS
        BagCus(n, PLCStn) = Cus
        BagUr2(n, PLCStn) = Ur2
                 
    Next n
    
    
    For n = 1 To MaxSeq
        Input #F, Seq
        SequenceStep(n, PLCStn) = Seq
    Next n
    
    
    For n = 1 To MaxCounters
        Input #F, Cnt
        CounterValue(n, PLCStn) = Cnt
    Next n
            
    Close #F
    
    
    
Exit Sub

PLCSnapShotDemoError:
    ErrorHandler Err, "TrackVIEW PLCSnapShotDemo", Err.Description, False
    Close #F
    
    
End Sub
Sub Main()
                    
    '-------------------
    'TrackView Version 5
    '-------------------
    
    Dim n As Integer
    
    On Error GoTo Main_Error:
        'Check if already running...
    If App.PrevInstance Then
        rc = MsgBox("Application is already running", vbCritical, App.Title)
        Exit Sub
    End If
    ProjectLoaded = False
    PLCWriteBusy = False
    
    
    '---------------------------------------------------------
    'Set Each PLC Type m68k(Big Endian) or i386(Little Endian)
    '---------------------------------------------------------
    For n = 0 To MaxPLC
        PLCType(n) = i386 'm68k
    Next n
    'PLCType(1) = m68k
    CommsSetDeviceBytes 'Set PLC Communication Byte Sizes
    
    
    '---------------------------------------------------
    'Check Master PC Avaliable and set application paths
    '---------------------------------------------------
        
    'Settings from the Windows Registry (GetSetting and SaveSetting functions)
    Call SaveSetting("DJControls", "ServiceDB", "Display", 0) 'Remove ServiceDB.exe
    
    PCNum = Val(GetSetting("TrackView", "Config", "PCNum", 0))
    PCNetBiosName = GetCompName
    
    
    AccessLevel = GetSetting("TrackView", "Config", "AccessLevel", 0)
    Dim lockSetting As String
    lockSetting = GetSetting("TrackView", "LockSettings", "Lock", "Unlocked")
    If UCase(lockSetting) = UCase("Locked") And AccessLevel > accSupervisor Then AccessLevel = accSupervisor
    
    Demo = GetSetting("TrackView", "Config", "Demo", 0)
    
    
    DataPath = App.path & "\Data\"
    
    LogPath = App.path & "\Data\Logs\"
    LogFileExt = "tvw"
       
    'Set Database names etc..
    dbMainCustom
       
    SQLServerFound = False
    CheckConnectionToMaster
    
    Do Until SQLServerFound
         If Not GetInputState = 0 Then DoEvents
    Loop
    
    Call db_uspGetSettingsCache(PCNum)
    
    MasterPC = db_uspSettingGet("SettingsLocal", "Config", "MasterPC", 0, PCNum)
    PCName = db_uspSettingGet("SettingsLocal", "Config", "PCName", "PC" & Str(PCNum), PCNum)
    
       
    '-----------------------------
    'Record the start of TrackView
    '-----------------------------
    ErrorHandler 0, "TrackView Started", "", False
    
    'dbListBackups
    '-----------------------------
    'Run TCP/IP Driver if required
    '-----------------------------
    Dim Driver As Boolean
    Driver = db_uspSettingGet("SettingsLocal", "Common", "Run TCP/IP Driver", False, PCNum)
    If Driver Then X = Shell(App.path & "\TCP_IP_Driver.exe", vbNormalNoFocus)
    
    
    '-----------------------------
    'Remove old Logs / Error Files
    '-----------------------------
    'DeleteErrorFiles 30
    
    
    
    '-------------------
    'Read System Options
    '-------------------
        
    'PLC System Names
    For n = 0 To MaxPLC
        PLCName(n) = db_uspSettingGet("SettingsNetwork", "Config", "PLCName" & Str(n), "PLC " & Str(n), PCNum)
    Next n
           
    'MIS Options
    '-----------
    MISPath = db_uspSettingGet("SettingsNetwork", "MIS", "MISPath", "C:\", PCNum)
    MISFileName = db_uspSettingGet("SettingsNetwork", "MIS", "MISFileName", "MIS.TXT", PCNum)
    MISUse = db_uspSettingGet("SettingsNetwork", "MIS", "MISUse", False, PCNum)
    
    'Loading Program
    LoadingProgramsMenu = db_uspSettingGet("SettingsNetwork", "Stations", "UseLoadingProgram", 1, PCNum)
    
    'Recirculation
    Recirculation(0) = db_uspSettingGet("SettingsNetwork", "Config", "Recirculation0", False, PCNum)
    RecircOngoing(0) = db_uspSettingGet("SettingsNetwork", "Config", "RecircOngoing0", 0, PCNum)
    RecircOffgoing(0) = db_uspSettingGet("SettingsNetwork", "Config", "RecircOffgoing0", 0, PCNum)
    AutomaticRecirculation(0) = db_uspSettingGet("SettingsNetwork", "Config", "AutomaticRecirculation0", False, PCNum)
    Recirculation(1) = db_uspSettingGet("SettingsNetwork", "Config", "Recirculation1", False, PCNum)
    RecircOngoing(1) = db_uspSettingGet("SettingsNetwork", "Config", "RecircOngoing1", 0, PCNum)
    RecircOffgoing(1) = db_uspSettingGet("SettingsNetwork", "Config", "RecircOffgoing1", 0, PCNum)
    AutomaticRecirculation(1) = db_uspSettingGet("SettingsNetwork", "Config", "AutomaticRecirculation1", False, PCNum)
           
    'Reporting and Printing
    ReportsPLC = db_uspSettingGet("SettingsLocal", "Config", "Reports_PLC", 0, PCNum)
    Reporting = db_uspSettingGet("SettingsNetwork", "Config", "Reporting", False, PCNum)
    Reports_Station = db_uspSettingGet("SettingsLocal", "Config", "Reports_Station", False, PCNum)
    Printer_Station = db_uspSettingGet("SettingsLocal", "Config", "Printer_Station", False, PCNum)
    PrintTickets = db_uspSettingGet("SettingsLocal", "Config", "Ticket_Printer", 0, PCNum)
    ReportsPrinter = db_uspSettingGet("SettingsLocal", "Printers", "Reports", 0, PCNum)
    TicketPrinter = db_uspSettingGet("SettingsLocal", "Printers", "Ticket", 0, PCNum)
    
    'Error Handling
    TrapErrors = db_uspSettingGet("SettingsNetwork", "Common", "Trap Errors", 0, PCNum)
    DebugToErrorFile = db_uspSettingGet("SettingsNetwork", "Common", "Debug", 0, PCNum)
      
    
    'Operator Access Level Options
    OperatorEdit = db_uspSettingGet("SettingsNetwork", "Common", "OperatorEditBags", 0, PCNum)
    OperatorLoading = db_uspSettingGet("SettingsNetwork", "Common", "OperatorLoading", 0, PCNum)
    OperatorUnloading = db_uspSettingGet("SettingsNetwork", "Common", "OperatorUnloading", 0, PCNum)
    
    'Read Current Language
    CurrentLanguage = db_uspSettingGet("SettingsLocal", "Language", "Current", "English", PCNum)
        
    'Run another program menu
    RunAnother = db_uspSettingGet("SettingsLocal", "RunAnotherProgram", "Use", "0", PCNum)
    If RunAnother Then
        RunAnotherGroupName = db_uspSettingGet("SettingsLocal", "RunAnotherProgram", "Path", "", PCNum)
        RunAnotherProgMenuText = db_uspSettingGet("SettingsLocal", "RunAnotherProgram", "MenuText", "Run Prog Not Set!", PCNum)
    End If
    
    'Maintenance Package
    MaintenanceUsed = db_uspSettingGet("SettingsNetwork", "Common", "Use Maintenance Package", 0, PCNum)
    
    'Read Database Settings (Program, Category and Customer database options)
    dbSettingNames
    For n = 0 To MaxDbSettings
        If dbSettingName(n) <> "" Then
            dbSettingValue(n) = db_uspSettingGet("SettingsNetwork", "dbOptions", dbSettingName(n), 0, PCNum)
            'Debug.Print dbSettingName(n) & "  " & dbSettingValue(n)
        End If
    Next n
    
    'Location of VNC Viewer
    VNCPath = db_uspSettingGet("SettingsNetwork", "VNCViewer", "Path", "", PCNum)
    
    'Save Customer is Route for reports.exe to see
    db_uspSettingSave "SettingsNetwork", "Reports", "CustomerIsRoute", CustomerIsRoute, PCNum
    
    'Read Loading Program / Sorting Station Config
    Call ConfigLoading
    
    'Start the communications
    Load Comms_frm
    Comms_frm.Visible = False
    
    'Read Databases
    dbMain
          
    'Get the progrmmer configuration - After dbMain so language has been done
    Call Config
    
    'Use SQL Server amd Other config
    Call MISSQLMain
    
    'Show the MDI form
    Load MDIMaindisp_frm
    'Config the MDI form
    MenuBarLoad
    
    
    
    MDIMaindisp_frm.Show
    Call SetMDIcaption
    
    'Show the start-up KG logo
    Kannegiesser_frm.Show 'vbModal
            
    'Load Ticket printing form
    If PrintTickets Then
        Load TicketPrint
        'TicketPrint.Show
        'TicketPrint.ZOrder vbBringToFront
        TicketPrint.Visible = False
    End If
    
    'Load bags from the Saved_1.plc file
    If Demo Then PLCSnapShotDemo
        
    SendTimeDateToPLC
        
Exit Sub

Main_Error:
    
    ErrorHandler Err, "Main start up", Err.Description, True
    Resume Next
    
End Sub
Public Sub ReplaceCustomerWithRouteText()
    TextWord(2) = TextWord(888) 'Customers / Routes
    TextWord(17) = TextWord(884) 'Customer Codes / Route Codes
    TextWord(33) = TextWord(882) 'Customer / Route
    TextWord(396) = TextWord(885) 'Customer Database / Route Database
    TextWord(452) = TextWord(887) 'Customer Report / Route Report
    TextWord(472) = TextWord(881) 'Colour = Customer / Route = Customer
    TextWord(480) = TextWord(880) 'All Customers / All Routes
    TextWord(526) = TextWord(883) 'Customer Choices / Route Choices
    TextWord(558) = TextWord(889) 'No Customer / No Route
    TextWord(634) = TextWord(886) 'Customer Long ID / Route Long ID
    
End Sub

Public Sub CenterForm(FormName As Form)
    
    FormName.Left = (MDIMaindisp_frm.Width - FormName.Width) / 2
    FormName.Top = (MDIMaindisp_frm.Height - FormName.Height) / 2

End Sub





Public Sub DisableForms(Optional ExceptForm As String)
    
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG", "DisableForms" & " ExceptForm=" & ExceptForm, False
    
    Dim OpenForm As Form
    With MDIMaindisp_frm
        For Each OpenForm In Forms
            If OpenForm.Name <> ExceptForm And OpenForm.Name <> "MDIMaindisp_frm" And OpenForm.Name <> "Comms_frm" Then
                OpenForm.Enabled = False
            End If
        Next OpenForm
    End With

End Sub
Public Sub EnableForms(Optional ExceptForm As String)
        
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG", "EnableForms" & " ExceptForm=" & ExceptForm, False
        
    Dim OpenForm As Form
    With MDIMaindisp_frm
        For Each OpenForm In Forms
            If OpenForm.Name <> ExceptForm And OpenForm.Name <> "MDIMaindisp_frm" And OpenForm.Name <> "Comms_frm" Then
                OpenForm.Enabled = True
            End If
        Next OpenForm
    End With

End Sub
Public Sub CloseAllOpenForms(Optional ExceptForm As String)
    
    Dim OpenForm As Form
    With MDIMaindisp_frm
        For Each OpenForm In Forms
            If OpenForm.Name <> ExceptForm And OpenForm.Name <> "MDIMaindisp_frm" And OpenForm.Name <> "Comms_frm" And OpenForm.Name <> "Kannegiesser_frm" And OpenForm.Name <> "Fault_frm" Then
               ' Unload OpenForm
            End If
        Next OpenForm
    End With

End Sub
Public Function CheckFormOpen(Form_Name As String, Optional Caption As String)
       
    Dim OpenForm As Form
    CheckFormOpen = False
    With MDIMaindisp_frm
        For Each OpenForm In Forms
            If (OpenForm.Name = Form_Name) And _
                ((Caption = "") Or (OpenForm.Caption = Caption)) Then
                CheckFormOpen = True
            End If
        Next OpenForm
    End With

End Function
Public Sub DebugOpenForms()
       
    Dim OpenForm As Form
    With MDIMaindisp_frm
        For Each OpenForm In Forms
            ErrorHandler 0, "DEBUG **** FORM OPEN ****", OpenForm.Caption, False
        Next OpenForm
    End With

End Sub
Public Function MDI_OpenForms()
    
    MDI_OpenForms = 0
    With MDIMaindisp_frm
        For Each OpenForm In Forms
            MDI_OpenForms = MDI_OpenForms + 1
        Next OpenForm
    End With

End Function
Public Sub DisplayForm(Form_Name As Form, Optional Caption As String)
    
    On Error GoTo DisplayFormError
    
    
    
    If MDI_OpenForms >= 10 Then CloseAllOpenForms
    If DebugToErrorFile Then DebugOpenForms
    Form_Name.Show
    Form_Name.ZOrder vbBringToFront
    If Caption <> "" Then Form_Name.Caption = Caption
    
Exit Sub
DisplayFormError:

    ErrorHandler Err, "StdProcs DisplayForm", Err.Description, False
End Sub
Public Function CheckAsciiNumber(KeyAscii As Integer)
    
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG", "CheckAsciiNumber" & Str(KeyAscii), False
    'Used in text boxes where only numbers are valid
    If KeyAscii >= 48 And KeyAscii <= 57 Then   '0 to 9
        CheckAsciiNumber = KeyAscii
    ElseIf KeyAscii = 13 Then                   'CR (Enter)
        CheckAsciiNumber = KeyAscii
    ElseIf KeyAscii = 8 Then                    'BS (Back Space)
        CheckAsciiNumber = KeyAscii
    Else
        CheckAsciiNumber = 0
    End If

End Function

Public Function CheckValidNumber(Text As String, KeyAscii As Integer, Min As Integer, Max As Long, Optional IncludeZero As Boolean, Optional FinalCheck As Boolean)
    
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG", "CheckAsciiNumber" & Text & " Min=" & Str(Min) & " Max=" & Str(Max), False
    If IncludeZero And Val(Text & Chr(KeyAscii)) = 0 Then
        CheckValidNumber = KeyAscii
    ElseIf ((Val(Text & Chr(KeyAscii)) < Min) Or (Val(Text & Chr(KeyAscii)) > Max)) Then
        CheckValidNumber = 0
    Else
        CheckValidNumber = KeyAscii
    End If
        
End Function
Public Sub DataBaseToPLC(PLCStn As Integer, Register As Integer, GrpOption As String, Max As Integer)
    
    'This subroutine writes parts of the Program / Category database to the PLC
    '"CatArray" is the dimension that needs to be sent to the PLC ie 3 = WashCodes
    'Register is the start location of the "D" registers written too
    'It can cope with any category ammount
    
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG", "DataBaseToPLC" & " Register=" & Str(Register) & " CatArray=" & Str(CatArray), False
    
    On Error GoTo DataBaseToPLCError
    
    Dim m           As Integer
    Dim BlockSize   As Integer
    Dim MakeData    As Integer
    
    Dim GrpNum      As Long
    Dim GrpID       As Integer
    
    If PLCConnected(PLCStn) Then
    
                  
        BlockSize = 100
        m = 1
        Do
            If (Max - m) + 1 < 100 Then BlockSize = (Max - m) + 1
            For MakeData = 0 To BlockSize - 1
                Call dbGetID(EditGrp, MakeData + m, GrpID)
                Select Case GrpOption
                    Case "GrpSLine1"
                        Data(MakeData) = GrpSLine1(GrpID)
                    Case "GrpSLine2"
                        Data(MakeData) = GrpSLine2(GrpID)
                    Case "GrpSLine3"
                        Data(MakeData) = GrpSLine3(GrpID)
                    Case "GrpSLine4"
                        Data(MakeData) = GrpSLine4(GrpID)
                    Case "GrpCLine1"
                        Data(MakeData) = GrpCLine1(GrpID)
                    Case "GrpCLine2"
                        Data(MakeData) = GrpCLine2(GrpID)
                    Case "GrpCLine3"
                        Data(MakeData) = GrpCLine3(GrpID)
                    Case "GrpCLine4"
                        Data(MakeData) = GrpCLine4(GrpID)
                    Case "GrpSP1"
                        Data(MakeData) = GrpSP1(GrpID) * 10
                    Case "GrpSP2"
                        Data(MakeData) = GrpSP2(GrpID) * 10
                    Case "GrpSP3"
                        Data(MakeData) = GrpSP3(GrpID) * 10
                    Case "GrpWash"
                        Data(MakeData) = GrpWash(GrpID)
                    Case "GrpBatch"
                        Data(MakeData) = GrpBatch(GrpID)
                    'Case "CatPiece"
                        'Data(MakeData) = CatPiece(MakeData + m)
                    Case "GrpPLine1"
                        Data(MakeData) = GrpPLine1(GrpID)
                    Case "GrpPLine2"
                        Data(MakeData) = GrpPLine2(GrpID)
                    Case "GrpPLine3"
                        Data(MakeData) = GrpPLine3(GrpID)
                    Case "GrpPLine4"
                        Data(MakeData) = GrpPLine4(GrpID)
                    Case "GrpType"
                        Data(MakeData) = GrpType(GrpID)
                    Case Else
                        MsgBox "DataBaseToPLC", vbOKOnly, "Code Needs Adding for - " & GrpOption
                        Exit Sub
                End Select
            Next MakeData
            
            Comms_frm.WritePLC PLCStn, "D", Register + m, BlockSize, Data(), False, "DataBaseToPLC"
            'Debug.Print "Start = " & Register + m; "Amount = " & BlockSize
            m = m + BlockSize
        Loop Until m >= Max
            
    End If
     
Exit Sub
DataBaseToPLCError:
    ErrorHandler Err, "StsProcs DataBaseToPLC", Err.Description, False
    
End Sub


Public Sub DisplayTrans(CheckChr As String, Answer As String)
    
    'Conversion of ANSI to Char set for the IEE displays ie. French chrs é
    
    'Version 2.00 18/02/2011 D.J. Revised for B&R Power Panel displays - seem to be able to display most special chrs
    
    Debug.Print "CheckChr = " & CheckChr & "  Chr = " & Chr(Val("&H" & CheckChr))
    
    Answer = CheckChr 'If not diferent then keep the same
    
    If Val("&H" & CheckChr) > 127 Then Answer = "20"
    
    'Valid Chrs Above (127 h79) for B&R Displays
    If CheckChr = "C0" Then Answer = "C0" '
    If CheckChr = "C1" Then Answer = "C1" '
    If CheckChr = "C2" Then Answer = "C2" '
    If CheckChr = "C3" Then Answer = "C3" '
    If CheckChr = "C4" Then Answer = "C4" '
    If CheckChr = "C5" Then Answer = "C5" '
    If CheckChr = "C6" Then Answer = "C6" '
    If CheckChr = "C7" Then Answer = "C7" '
    If CheckChr = "C8" Then Answer = "C8" '?
    If CheckChr = "C9" Then Answer = "C9" '?
    If CheckChr = "CA" Then Answer = "CA" '
    If CheckChr = "CB" Then Answer = "CB" '
    If CheckChr = "CC" Then Answer = "CC" '
    If CheckChr = "CD" Then Answer = "CD"
    If CheckChr = "CE" Then Answer = "CE" '
    If CheckChr = "CF" Then Answer = "CF" '
    If CheckChr = "D0" Then Answer = "D0" '?
    If CheckChr = "D1" Then Answer = "D1" '
    If CheckChr = "D2" Then Answer = "D2" '
    If CheckChr = "D3" Then Answer = "D3" '
    If CheckChr = "D4" Then Answer = "D4" '
    If CheckChr = "D5" Then Answer = "D5" '
    If CheckChr = "D6" Then Answer = "D6" '
    If CheckChr = "D7" Then Answer = "D7" '
    If CheckChr = "D8" Then Answer = "D8" '
    If CheckChr = "D9" Then Answer = "D9" '
    If CheckChr = "DA" Then Answer = "DA" '
    If CheckChr = "DB" Then Answer = "DB" '
    If CheckChr = "DC" Then Answer = "DC" '
    If CheckChr = "DD" Then Answer = "DD" '
    If CheckChr = "DE" Then Answer = "DE" '
    If CheckChr = "DF" Then Answer = "DF" '
    If CheckChr = "E0" Then Answer = "E0" '
    If CheckChr = "E1" Then Answer = "E1" '
    If CheckChr = "E2" Then Answer = "E2" '
    If CheckChr = "E3" Then Answer = "E3" '
    If CheckChr = "E4" Then Answer = "E4" '
    If CheckChr = "E5" Then Answer = "E5" '
    If CheckChr = "E6" Then Answer = "E6" '
    If CheckChr = "E7" Then Answer = "E7" '
    If CheckChr = "E8" Then Answer = "E8" '
    If CheckChr = "E9" Then Answer = "E9" '
    If CheckChr = "EA" Then Answer = "EA" '
    If CheckChr = "EB" Then Answer = "EB" '
    If CheckChr = "EC" Then Answer = "EC" '
    If CheckChr = "ED" Then Answer = "ED" '
    If CheckChr = "EE" Then Answer = "EE" '
    If CheckChr = "EF" Then Answer = "EF" '
    If CheckChr = "F0" Then Answer = "F0" '
    If CheckChr = "F1" Then Answer = "F1" '
    If CheckChr = "F2" Then Answer = "F2" '
    If CheckChr = "F3" Then Answer = "F3" '
    If CheckChr = "F4" Then Answer = "F4" '
    If CheckChr = "F5" Then Answer = "F5" '
    If CheckChr = "F6" Then Answer = "F6" '
    If CheckChr = "F7" Then Answer = "F7" '
    If CheckChr = "F8" Then Answer = "F8" '
    If CheckChr = "F9" Then Answer = "F9" '
    If CheckChr = "FA" Then Answer = "FA" '
    If CheckChr = "FB" Then Answer = "FB" '
    If CheckChr = "FC" Then Answer = "FC" '
    If CheckChr = "FD" Then Answer = "FD" '
    If CheckChr = "FE" Then Answer = "FE" '
    If CheckChr = "FF" Then Answer = "FF" '
    
    
    
        

End Sub
Public Sub DisplayWrite(MaxLength As Integer, PLC As Integer, PLCRegister As Integer, _
                        Text As String, Owner As String)
                        
    On Error GoTo DisplayWriteError
    
    Dim HexString   As String
    Dim Answer1     As String
    Dim Answer2     As String
    Dim n           As Integer
        
    HexString = Space(MaxLength) 'Spaces
    Mid$(HexString, 1, (Len(Text))) = Text
        
    For n = 1 To (MaxLength / 2)
        'DisplayTrans - Swaps chrs that are not supported by the display
        Call DisplayTrans(Hex$(Asc(Mid$(HexString, (n * 2) - 1, 1))), Answer1)
        Call DisplayTrans(Hex$(Asc(Mid$(HexString, (n * 2) - 0, 1))), Answer2)
        Data(n - 1) = Val("&H" & Answer2 & Answer1)
    Next n
    
    Comms_frm.WritePLC PLC, "D", PLCRegister, (MaxLength / 2), Data(), False, Owner
    
Exit Sub
DisplayWriteError:
    ErrorHandler Err, "StdProcs DisplayWrite", Err.Description, False
End Sub
Public Sub DisplayWrite32(MaxLength As Integer, PLCStn As Integer, PLCRegister As Integer, _
                        Text As String, Owner As String)
                        
    'Version 1.00 19/11/2010 D.J. First Issue
    'Version 2.00 11/12/2010 D.J. Swapped spaces for Chr(0) in Hex String
                        
    On Error GoTo DisplayWrite32Error
    
    Dim HexString   As String
    Dim Answer1     As String
    Dim Answer2     As String
    Dim Answer3     As String
    Dim Answer4     As String
    Dim n           As Integer
    Dim ChrPosn     As Integer
        
    'HexString = Space(MaxLength) 'Spaces
    'Mid$(HexString, 1, (Len(Text))) = Text
    HexString = Text
    Do
        HexString = HexString + Chr(0)
    Loop Until Len(HexString) >= MaxLength
    
    ChrPosn = 1
    For n = 1 To (MaxLength / 4)
        'DisplayTrans - Swaps chrs that are not supported by the display
        Call DisplayTrans(Hex$(Asc(Mid$(HexString, ChrPosn + 0, 1))), Answer1)
        Call DisplayTrans(Hex$(Asc(Mid$(HexString, ChrPosn + 1, 1))), Answer2)
        Call DisplayTrans(Hex$(Asc(Mid$(HexString, ChrPosn + 2, 1))), Answer3)
        Call DisplayTrans(Hex$(Asc(Mid$(HexString, ChrPosn + 3, 1))), Answer4)
        Data32(n - 1) = Val("&H" & Answer4 & Answer3 & Answer2 & Answer1)
        ChrPosn = (ChrPosn + 4)
    Next n
    
    Call WriteD32(PLCStn, PLCRegister, (MaxLength / 4), Data32(), False, "DisplayWrite32")
    
Exit Sub
DisplayWrite32Error:
    ErrorHandler Err, "StdProcs DisplayWrite32", Err.Description, False
End Sub

Public Sub PopulateMachineNamesCombo(Combo As ComboBox, Optional Text0 As String)
    
    With Combo
        'Add Names to Machine Names Selection Combo
        .Clear
        For n = 1 To McnDbSize
            If McnName(n) <> "" Then
                .AddItem McnName(n)
                .ItemData(.NewIndex) = McnNum(n)
            End If
        Next n
        If Text0 <> "" Then
            .AddItem Text0, 0
            .ItemData(.NewIndex) = 0
            .Text = Text0
        End If
    End With

End Sub

Public Sub PopulateDeliveryDueDateCombo(Combo As ComboBox)
    
    With Combo
        'Add Names to Machine Names Selection Combo
        .Clear
        
        For n = -7 To 13
            .AddItem Format$(Date + n, "dd.mm.yyyy")
            .ItemData(.NewIndex) = Weekday(Date + n, vbMonday)
        Next n
        
    End With

End Sub
Public Sub PopulateBagColourCombo(Combo As ComboBox)
    
    With Combo
        'Add Names to Bag Colour Selection Combo
        .Clear
        For n = 0 To 1
            .AddItem TextWord(750 + n)
            .ItemData(.NewIndex) = n
        Next n
    End With

End Sub
Public Sub PopulateCustomerCombo(Combo As ComboBox, Optional Text0 As String)
    
    With Combo
        'Add Names to Customer Selection Combo
        .Clear
        For n = 1 To CusDbSize
            If CusName(n) <> "" Then
                .AddItem CusName(n)
                .ItemData(.NewIndex) = CusNum(n)
                Debug.Print CusName(n) & " " & CusNum(n)
            End If
        Next n
        If Text0 <> "" Then
            .AddItem Text0, 0
            .ItemData(.NewIndex) = 0
            .Text = Text0
        End If
    End With

End Sub
Public Sub PopulateCategoryCombo(Combo As ComboBox, Optional Text0 As String)
    
    With Combo
        'Add Names to Customer Selection Combo
        .Clear
        For n = 1 To CatDbSize
            If CatName(n) <> "" Then
                .AddItem CatName(n)
                .ItemData(.NewIndex) = CatNum(n)
            End If
        Next n
        If Text0 <> "" Then
            .AddItem Text0, 0
            .ItemData(.NewIndex) = 0
            .Text = Text0
        End If
    End With

End Sub
Public Sub PopulateGroupCombo(Combo As ComboBox, Optional Text0 As String)
    
    With Combo
        'Add Names to Programs Selection Combo
        .Clear
        For n = 1 To GrpDbSize
            If GrpName(n) <> "" Then
                .AddItem GrpName(n)
                .ItemData(.NewIndex) = GrpNum(n)
            End If
        Next n
        If Text0 <> "" Then
            .AddItem Text0, 0
            .ItemData(.NewIndex) = 0
            .Text = Text0
        End If
    End With

End Sub
Public Sub PopulateDestCombo(Combo As ComboBox, PLCStn As Integer)
    
    With Combo
        'Add Destination Names to Destination Selection Combo
        .Clear
        For n = 1 To MaxDestinations
            If DestinationText(n, PLCStn) <> "" Then
                .AddItem Format(n) & " - " & DestinationText(n, PLCStn)
                .ItemData(.NewIndex) = n
            End If
        Next n
        .AddItem "0", 0
        .ItemData(.NewIndex) = 0
        .Text = Text0
    End With

End Sub

Public Sub PopulateCustomerList(List As ListBox, Optional Text0 As String, Optional Filter As String)
    
    With List
        'Add Names to Customer Selection Combo
        .Clear
        For n = 1 To CusDbSize
            If CusName(n) <> "" And Left$(UCase(CusName(n)), Len(Filter)) = UCase(Filter) Then
                .AddItem CusName(n)
                .ItemData(.NewIndex) = CusNum(n)
            End If
        Next n
        If Text0 <> "" Then
            .AddItem Text0, 0
            .ItemData(.NewIndex) = 0
            .Text = Text0
        End If
    End With

End Sub

Public Sub PopulateProgramList(List As ListBox, Optional Text0 As String, Optional Filter As String)
    
    With List
        'Add Names to Program Selection Combo
        .Clear
        For n = 1 To GrpDbSize
            If GrpName(n) <> "" And Left$(UCase(GrpName(n)), Len(Filter)) = UCase(Filter) Then
                .AddItem GrpName(n)
                .ItemData(.NewIndex) = GrpNum(n)
            End If
        Next n
        If Text0 <> "" Then
            .AddItem Text0, 0
            .ItemData(.NewIndex) = 0
            .Text = Text0
        End If
    End With

End Sub
Public Sub SendAllStationPLC(Bank As Integer)
    
    On Error GoTo SendAllStationPLCError
    
    
    Dim Amount  As Integer
    Dim PLCStn  As Integer
    Dim PLCReg  As Integer
    Dim CatNum  As Long
    Dim CatID   As Integer
    Dim CusNum  As Long
    Dim CusID   As Integer
    Dim GrpNum  As Long
    Dim GrpID   As Integer
    
    Dim StnNum  As Integer
    Dim BagNum  As Integer
           
    Dim DisplayData As String
           
    PLCStn = PLC_StnBank(Bank)  'PLC to Write back program
    
    'Write All Data to PLC
    '---------------------
    
    If PLCConnected(PLCStn) Then
        Dim Local_EndStn As Integer
        Dim Local_StartStn As Integer
        Dim Local_Displays As Integer
        Dim Local_BagStart As Integer

        Local_EndStn = Loading_EndStn(Bank)
        Local_StartStn = Loading_StartStn(Bank)
        'Local_Displays = Loading_Displays(Bank)
        Local_BagStart = Loading_BagStart(Bank)
                           
                      
        'Alpha Numeric Displays
'        If Local_Displays Then
'
'            BagNum = Local_BagStart
'
'            'Customer for Bank
'            CusNum = BagCus(BagNum, PLCStn)
'            Call dbGetID(EditCus, CusNum, CusID)
'
'            DisplayData = CusName(CusID)
'
'            DisplayWrite 30, PLCStn, StnDispCusReg + ((Bank - 1) * 20), DisplayData, "SendStationPLC"
'
'            For StnNum = Local_StartStn To Local_EndStn
'
'                CatNum = BagCat(BagNum, PLCStn)
'                Call dbGetID(EditCat, CatNum, CatID)
'
'                If dbCatUsed Then
'                    GrpNum = CatGroup(CatID)
'                Else
'                    GrpNum = BagGrp(BagNum, PLCStn)
'                End If
'                Call dbGetID(EditGrp, GrpNum, GrpID)
'
'                'DisplayData = GrpName(GrpID)
'                DisplayData = CatName(CatID)
'
'                DisplayWrite 30, PLCStn, StnDispCatReg + ((StnNum - 1) * 20), DisplayData, "SendStationPLC"
'
'                'DisplayData = GrpLong(GrpID)
'                'DisplayData = CatLong(CatID)
'                DisplayData = Format$(CatSP2(CatID)) & "kg"
'
'                DisplayWrite 10, PLCStn, StnDispCatReg + ((StnNum - 1) * 20) + 15, DisplayData, "SendStationPLC"
'
'
'                BagNum = BagNum + 1 'Next Bag
'
'            Next StnNum
'
'            'Debug.Print Format$(CatNum, "0000") & " " & CatName(CatID)
'            'Debug.Print Format$(CusNum, "0000") & " " & CusName(CusID)
'
'        End If
              
                   
        'Send 1st Line Choice
        If StnLine1Reg > 0 Then
            BagNum = Local_BagStart
            n = 0
            For StnNum = Local_StartStn To Local_EndStn
                
                CatNum = BagCat(BagNum, PLCStn)         'Read the Category Number of the station bag
                Call dbGetID(EditCat, CatNum, CatID)    'Read the Category Array position of the Cat Number
                
                If dbCatUsed Then
                    GrpNum = CatGroup(CatID)             'Read the Program allocated to the Category
                Else
                    GrpNum = BagGrp(BagNum, PLCStn)
                End If
                Call dbGetID(EditGrp, GrpNum, GrpID)    'Read the Program Array Position if the Prog Number
                               
                Data(n) = GrpSLine1(GrpID)              'Add to the WritePLC data
                       
                BagNum = BagNum + 1                     'Next Station Bag
                n = n + 1
                
            Next StnNum
            PLCReg = (StnLine1Reg + Local_StartStn)
            Comms_frm.WritePLC PLCStn, "D", PLCReg, n, Data(), False, "SendAllStationPLC"
        End If
        
        'Send 2nd Line Choice
        If StnLine2Reg > 0 Then
            BagNum = Local_BagStart
            n = 0
            For StnNum = Local_StartStn To Local_EndStn
                
                CatNum = BagCat(BagNum, PLCStn)         'Read the Category Number of the station bag
                Call dbGetID(EditCat, CatNum, CatID)    'Read the Category Array position of the Cat Number
                
                If dbCatUsed Then
                    GrpNum = CatGroup(CatID)             'Read the Program allocated to the Category
                Else
                    GrpNum = BagGrp(BagNum, PLCStn)
                End If
                Call dbGetID(EditGrp, GrpNum, GrpID)    'Read the Program Array Position if the Prog Number
                
                Data(n) = GrpSLine2(GrpID)              'Add to the WritePLC data
                       
                BagNum = BagNum + 1                     'Next Station Bag
                n = n + 1
                
            Next StnNum
            PLCReg = (StnLine2Reg + Local_StartStn)
            Comms_frm.WritePLC PLCStn, "D", PLCReg, n, Data(), False, "SendAllStationPLC"
        End If
                  
        'Send 3rd Line Choice
        If StnLine3Reg > 0 Then
            BagNum = Local_BagStart
            n = 0
            For StnNum = Local_StartStn To Local_EndStn
                
                CatNum = BagCat(BagNum, PLCStn)         'Read the Category Number of the station bag
                Call dbGetID(EditCat, CatNum, CatID)    'Read the Category Array position of the Cat Number
                
                If dbCatUsed Then
                    GrpNum = CatGroup(CatID)             'Read the Program allocated to the Category
                Else
                    GrpNum = BagGrp(BagNum, PLCStn)
                End If
                Call dbGetID(EditGrp, GrpNum, GrpID)    'Read the Program Array Position if the Prog Number
                
                Data(n) = GrpSLine3(GrpID)              'Add to the WritePLC data
                       
                BagNum = BagNum + 1                     'Next Station Bag
                n = n + 1
                
            Next StnNum
            PLCReg = (StnLine3Reg + Local_StartStn)
            Comms_frm.WritePLC PLCStn, "D", PLCReg, n, Data(), False, "SendAllStationPLC"
        End If
        
        'Send 4th Line Choice
        If StnLine4Reg > 0 Then
            BagNum = Local_BagStart
            n = 0
            For StnNum = Local_StartStn To Local_EndStn
                
                CatNum = BagCat(BagNum, PLCStn)         'Read the Category Number of the station bag
                Call dbGetID(EditCat, CatNum, CatID)    'Read the Category Array position of the Cat Number
                
                If dbCatUsed Then
                    GrpNum = CatGroup(CatID)             'Read the Program allocated to the Category
                Else
                    GrpNum = BagGrp(BagNum, PLCStn)
                End If
                Call dbGetID(EditGrp, GrpNum, GrpID)    'Read the Program Array Position if the Prog Number
                
                Data(n) = GrpSLine4(GrpID)              'Add to the WritePLC data
                       
                BagNum = BagNum + 1                     'Next Station Bag
                n = n + 1
                
            Next StnNum
            PLCReg = (StnLine4Reg + Local_StartStn)
            Comms_frm.WritePLC PLCStn, "D", PLCReg, n, Data(), False, "SendAllStationPLC"
        End If
                  
        'Send SP1
        If StnSP1Reg > 0 Then
            BagNum = Local_BagStart
            n = 0
            For StnNum = Local_StartStn To Local_EndStn
                
                CatNum = BagCat(BagNum, PLCStn)         'Read the Category Number of the station bag
                Call dbGetID(EditCat, CatNum, CatID)    'Read the Category Array position of the Cat Number
                
                If dbCatUsed Then
                    GrpNum = CatGroup(CatID)             'Read the Program allocated to the Category
                Else
                    GrpNum = BagGrp(BagNum, PLCStn)
                End If
                Call dbGetID(EditGrp, GrpNum, GrpID)    'Read the Program Array Position if the Prog Number
                
                If dbSettingValue(CatDbUseSetpoints) Then
                    Data(n) = CatSP1(CatID) * 10        'Add to the WritePLC data
                Else
                    Data(n) = GrpSP1(GrpID) * 10        'Add to the WritePLC data
                End If
                                   
                BagNum = BagNum + 1                     'Next Station Bag
                n = n + 1
                
            Next StnNum
            PLCReg = (StnSP1Reg + Local_StartStn)
            Comms_frm.WritePLC PLCStn, "D", PLCReg, n, Data(), False, "SendAllStationPLC"
        End If
                  
        'Send SP2
        If StnSP2Reg > 0 Then
            BagNum = Local_BagStart
            n = 0
            For StnNum = Local_StartStn To Local_EndStn
                
                CatNum = BagCat(BagNum, PLCStn)         'Read the Category Number of the station bag
                Call dbGetID(EditCat, CatNum, CatID)    'Read the Category Array position of the Cat Number
                
                If dbCatUsed Then
                    GrpNum = CatGroup(CatID)             'Read the Program allocated to the Category
                Else
                    GrpNum = BagGrp(BagNum, PLCStn)
                End If
                Call dbGetID(EditGrp, GrpNum, GrpID)    'Read the Program Array Position if the Prog Number
                
                If dbSettingValue(CatDbUseSetpoints) Then
                    Data(n) = CatSP2(CatID) * 10        'Add to the WritePLC data
                Else
                    Data(n) = GrpSP2(GrpID) * 10        'Add to the WritePLC data
                End If
                       
                BagNum = BagNum + 1                     'Next Station Bag
                n = n + 1
                
            Next StnNum
            PLCReg = (StnSP2Reg + Local_StartStn)
            Comms_frm.WritePLC PLCStn, "D", PLCReg, n, Data(), False, "SendAllStationPLC"
        End If
        
        'Send SP3
        If StnSP3Reg > 0 Then
            BagNum = Local_BagStart
            n = 0
            For StnNum = Local_StartStn To Local_EndStn
                
                CatNum = BagCat(BagNum, PLCStn)         'Read the Category Number of the station bag
                Call dbGetID(EditCat, CatNum, CatID)    'Read the Category Array position of the Cat Number
                
                If dbCatUsed Then
                    GrpNum = CatGroup(CatID)             'Read the Program allocated to the Category
                Else
                    GrpNum = BagGrp(BagNum, PLCStn)
                End If
                Call dbGetID(EditGrp, GrpNum, GrpID)    'Read the Program Array Position if the Prog Number
                
                If dbSettingValue(CatDbUseSetpoints) Then
                    Data(n) = CatSP3(CatID) * 10        'Add to the WritePLC data
                Else
                    Data(n) = GrpSP3(GrpID) * 10        'Add to the WritePLC data
                End If
                       
                BagNum = BagNum + 1                     'Next Station Bag
                n = n + 1
                
            Next StnNum
            PLCReg = (StnSP3Reg + Local_StartStn)
            Comms_frm.WritePLC PLCStn, "D", PLCReg, n, Data(), False, "SendAllStationPLC"
        End If
              
        
        
    End If
    
Exit Sub
SendAllStationPLCError:
    ErrorHandler 0, "SendAllStationPLC", Err.Description, False
    Resume Next
End Sub
Public Sub SendStationPLC(PLCStn As Integer, Stn As Integer, CatNum As Long, CusNum As Long)
    
    On Error GoTo SendStationPLCError
    
    
    Dim m       As Integer
    Dim n       As Integer
    Dim StnBank As Integer
    Dim Amount  As Integer
            
    Dim DisplayData As String
    Dim ValidPLCStn As Boolean
            
    Dim CatID   As Integer
    Dim CusID   As Integer
    Dim Grp     As Long
    Dim GrpID   As Integer
    
    Call dbGetID(EditCat, CatNum, CatID)
    Call dbGetID(EditCus, CusNum, CusID)
    
    If dbCatUsed Then
        Grp = CatGroup(CatID)
    Else
        Grp = CatNum
    End If
    Call dbGetID(EditGrp, Grp, GrpID)
               
    If Stn >= Loading_StartStn(1) And Loading_StartStn(1) > 0 Then StnBank = 1
    If Stn >= Loading_StartStn(2) And Loading_StartStn(2) > 0 Then StnBank = 2
    If Stn >= Loading_StartStn(3) And Loading_StartStn(3) > 0 Then StnBank = 3
    If Stn >= Loading_StartStn(4) And Loading_StartStn(4) > 0 Then StnBank = 4
        
    ValidPLCStn = (PLCStn = PLC_StnBank(StnBank))
       
    If ValidPLCStn Then
       
        
        
'        'Alpha Numeric Displays
'        If Loading_Displays(StnBank) Then
'            'Send Required Data to the Display
'
'            'DisplayData = GrpName(GrpID)
'            DisplayData = CatName(CatID)
'
'            DisplayWrite 30, PLCStn, StnDispCatReg + ((Stn - 1) * 20), DisplayData, "SendStationPLC"
'
'            'DisplayData = GrpLong(GrpID)
'            'DisplayData = CatLong(CatID)
'            DisplayData = Format$(CatSP2(CatID)) & "kg"
'
'            DisplayWrite 10, PLCStn, StnDispCatReg + ((Stn - 1) * 20) + 15, DisplayData, "SendStationPLC"
'
'        End If
                          
        'Line 1st Choice
        If StnLine1Reg > 0 Then
            Data(0) = GrpSLine1(GrpID)
            Comms_frm.WritePLC PLCStn, "D", StnLine1Reg + Stn, 1, Data(), False, "SendStationPLC"
        End If
        'Line 2nd Choice
        If StnLine2Reg > 0 Then
            Data(0) = GrpSLine2(GrpID)
            Comms_frm.WritePLC PLCStn, "D", StnLine2Reg + Stn, 1, Data(), False, "SendStationPLC"
        End If
        'Line 3rd Choice
        If StnLine3Reg > 0 Then
            Data(0) = GrpSLine3(GrpID)
            Comms_frm.WritePLC PLCStn, "D", StnLine3Reg + Stn, 1, Data(), False, "SendStationPLC"
        End If
        'Line 4th Choice
        If StnLine4Reg > 0 Then
            Data(0) = GrpSLine4(GrpID)
            Comms_frm.WritePLC PLCStn, "D", StnLine4Reg + Stn, 1, Data(), False, "SendStationPLC"
        End If
        'SP1
        If StnSP1Reg > 0 Then
            If dbSettingValue(CatDbUseSetpoints) Then
                Data(0) = CatSP1(CatID) * 10
            Else
                Data(0) = GrpSP1(GrpID) * 10
            End If
            Comms_frm.WritePLC PLCStn, "D", StnSP1Reg + Stn, 1, Data(), False, "SendStationPLC"
        End If
        'SP2
        If StnSP2Reg > 0 Then
            If dbSettingValue(CatDbUseSetpoints) Then
                Data(0) = CatSP2(CatID) * 10
            Else
                Data(0) = GrpSP2(GrpID) * 10
            End If
            Comms_frm.WritePLC PLCStn, "D", StnSP2Reg + Stn, 1, Data(), False, "SendStationPLC"
        End If
        'SP3
        If StnSP3Reg > 0 Then
            If dbSettingValue(CatDbUseSetpoints) Then
                Data(0) = CatSP3(CatID) * 10
            Else
                Data(0) = GrpSP3(GrpID) * 10
            End If
            Comms_frm.WritePLC PLCStn, "D", StnSP3Reg + Stn, 1, Data(), False, "SendStationPLC"
        End If
        
        
            
    Else
        'Do Nothing
    End If
    
Exit Sub
SendStationPLCError:
    ErrorHandler 0, "SendStationPLC", Err.Description, False
    Resume Next
End Sub
Public Sub HighlightTextBox(Box As TextBox)

    With Box
        .SelStart = 0
        .SelLength = Len(.Text)
    End With
    
End Sub

Public Function BoxKeyPress(txtBox As TextBox, KeyAscii As Integer, Edit As Integer, Optional Max As Long, Optional Min As Long)
    
    Dim Text            As String
    Dim Limit           As Long
    Dim CompareString   As String
    Dim StringLength    As Integer
    Dim AnyChr          As Boolean
    Dim BackSpace       As Boolean
    Dim DecimalPlaces   As Integer
    Dim DecimalPosition As Integer
    Dim DecimalPoint    As Boolean
    
    BackSpace = (KeyAscii = 8)
    DecimalPoint = (KeyAscii = 46)
    
    With txtBox
    Text = .Text
    
    'Set default compare values
    DecimalPlaces = 0
    StringLength = 255
    Limit = 32767
    CompareString = Numeric
    AnyChr = False
        
    
    Select Case Edit
        Case EditAny
            Limit = Max
        Case EditProgramName
            CompareString = AlphaNumeric
            StringLength = dbMaxNameChar
        Case EditGrp
            If (dbSettingValue(GrpDbLongEntry) = "0") Then
                Limit = MaxGrp
            Else
                'Add code when using Long
                Select Case dbSettingValue(GrpDbLongCharAllow)
                    Case "0" 'Numeric Only
                        CompareString = Numeric
                    Case "1" 'Alpha Only
                        CompareString = Alpha
                    Case "2" 'AlphaNumeric
                        CompareString = AlphaNumeric
                End Select
                StringLength = Val(dbSettingValue(GrpDbLongIDMax))
            End If
        Case EditCat
            If (dbSettingValue(CatDbLongEntry) = "0") Then
                Limit = MaxCat
            Else
                'Add code when using Long
                Select Case dbSettingValue(CatDbLongCharAllow)
                    Case "0" 'Numeric Only
                        CompareString = Numeric
                    Case "1" 'Alpha Only
                        CompareString = Alpha
                    Case "2" 'AlphaNumeric
                        CompareString = AlphaNumeric
                End Select
                StringLength = Val(dbSettingValue(CatDbLongIDMax))
            End If
        Case EditCus
            If (dbSettingValue(CusDbLongEntry) = "0") Then
                Limit = MaxCus
            Else
                'Add code when using Long
                Select Case dbSettingValue(CusDbLongCharAllow)
                    Case "0" 'Numeric Only
                        CompareString = Numeric
                    Case "1" 'Alpha Only
                        CompareString = Alpha
                    Case "2" 'AlphaNumeric
                        CompareString = AlphaNumeric
                End Select
                StringLength = Val(dbSettingValue(CusDbLongIDMax))
            End If
            
        Case EditWgt
            Limit = MaxWeight
        Case EditCnt
            Limit = 9999
        Case EditDst
            Limit = MaxDestinations
        Case EditBid
            Limit = MaxBatch
        Case EditStn
            Limit = MaxStations
        Case EditDay
            Limit = 7
        Case EditRBmm
            Limit = 99999
            CompareString = NumericDecimals
            If Right$(.Text, 2) = "mm" Then
                DecimalPlaces = 3
            Else
                DecimalPlaces = 1
            End If
        Case EditRBdeg
            Limit = Max
            CompareString = NumericDecimals
            If Right$(.Text, 1) = "°" Then
                DecimalPlaces = 3
            Else
                DecimalPlaces = 2
            End If
            
                
        Case EditLine
            Limit = MaxLines
            CompareString = Numeric
              
            
    End Select
    
    If Not BackSpace And Not AnyChr And (InStr(CompareString, Chr(KeyAscii)) = 0) Then KeyAscii = 0
           
    'Workout what the text will be when the new chr is entered
    Dim TxtLen As Integer
    Dim TxtNow As String
    Dim TxtNew As String
    Dim SelStart As Integer
    Dim SelLength As Integer
    Dim LeftTxt As String
    Dim RightTxt As String
    
    
    TxtLen = Len(.Text)
    TxtNow = .Text
    SelStart = .SelStart
    SelLength = .SelLength
    
    '2nd Decimal Point - Decimal Point Pressed and already in the text box
    If DecimalPoint And (InStr(TxtNow, ".") > 0) Then KeyAscii = 0
    
    LeftTxt = Left$(TxtNow, SelStart)
    RightTxt = Right$(TxtNow, TxtLen - (SelStart + SelLength))
    
    TxtNew = LeftTxt & Chr(KeyAscii) & RightTxt
     
    'Check Decimal Point In Correct Poistion
    Dim DecPlace As Integer
    DecimalPosition = InStr(TxtNew, ".")
    If Not BackSpace And (DecimalPosition > 0) Then
        DecimalText = Right$(TxtNew, Len(TxtNew) - DecimalPosition)
        If (Len(DecimalText) > DecimalPlaces) Then
            KeyAscii = 0
        End If
    End If
    
    If Val(TxtNew) > Limit Then KeyAscii = 0
    If Val(TxtNew) < Min Then KeyAscii = 0
    If Len(TxtNew) > StringLength Then KeyAscii = 0
      
    BoxKeyPress = KeyAscii
      
End With
      
End Function
Public Function cmbKeyPress(cmbBox As ComboBox, KeyAscii As Integer, Edit As Integer, Optional Max As Long, Optional Min As Long)
    
    Dim Text            As String
    Dim Limit           As Long
    Dim CompareString   As String
    Dim StringLength    As Integer
    Dim AnyChr          As Boolean
    Dim BackSpace       As Boolean
    Dim DecimalPlaces   As Integer
    Dim DecimalPosition As Integer
    Dim DecimalPoint    As Boolean
    
    BackSpace = (KeyAscii = 8)
    DecimalPoint = (KeyAscii = 46)
    
    With cmbBox
    Text = .Text
    
    'Set default compare values
    DecimalPlaces = 0
    StringLength = 255
    Limit = 32767
    CompareString = Numeric
    AnyChr = False
        
    
    Select Case Edit
        Case EditAny
            Limit = Max
        Case EditProgramName
            CompareString = AlphaNumeric
            StringLength = dbMaxNameChar
        Case EditGrp
            If (dbSettingValue(GrpDbLongEntry) = "0") Then
                Limit = MaxGrp
            Else
                'Add code when using Long
                Select Case dbSettingValue(GrpDbLongCharAllow)
                    Case "0" 'Numeric Only
                        CompareString = Numeric
                    Case "1" 'Alpha Only
                        CompareString = Alpha
                    Case "2" 'AlphaNumeric
                        CompareString = AlphaNumeric
                End Select
                StringLength = Val(dbSettingValue(GrpDbLongIDMax))
            End If
        Case EditCat
            If (dbSettingValue(CatDbLongEntry) = "0") Then
                Limit = MaxCat
            Else
                'Add code when using Long
                Select Case dbSettingValue(CatDbLongCharAllow)
                    Case "0" 'Numeric Only
                        CompareString = Numeric
                    Case "1" 'Alpha Only
                        CompareString = Alpha
                    Case "2" 'AlphaNumeric
                        CompareString = AlphaNumeric
                End Select
                StringLength = Val(dbSettingValue(CatDbLongIDMax))
            End If
        Case EditCus
            If (dbSettingValue(CusDbLongEntry) = "0") Then
                Limit = MaxCus
            Else
                'Add code when using Long
                Select Case dbSettingValue(CusDbLongCharAllow)
                    Case "0" 'Numeric Only
                        CompareString = Numeric
                    Case "1" 'Alpha Only
                        CompareString = Alpha
                    Case "2" 'AlphaNumeric
                        CompareString = AlphaNumeric
                End Select
                StringLength = Val(dbSettingValue(CusDbLongIDMax))
            End If
            
        Case EditWgt
            Limit = MaxWeight
        Case EditCnt
            Limit = 9999
        Case EditDst
            Limit = MaxDestinations
        Case EditBid
            Limit = MaxBatch
        Case EditStn
            Limit = MaxStations
        Case EditDay
            Limit = 7
        Case EditRBmm
            Limit = 99999
            CompareString = NumericDecimals
            DecimalPlaces = 1
        Case EditRBdeg
            Limit = Max
            CompareString = NumericDecimals
            DecimalPlaces = 2
          
        Case EditLine
            Limit = MaxLines
            CompareString = Numeric
            
    End Select
    
    If Not BackSpace And Not AnyChr And (InStr(CompareString, Chr(KeyAscii)) = 0) Then KeyAscii = 0
           
    'Workout what the text will be when the new chr is entered
    Dim TxtLen As Integer
    Dim TxtNow As String
    Dim TxtNew As String
    Dim SelStart As Integer
    Dim SelLength As Integer
    Dim LeftTxt As String
    Dim RightTxt As String
    
    
    TxtLen = Len(.Text)
    TxtNow = .Text
    SelStart = .SelStart
    SelLength = .SelLength
    
    '2nd Decimal Point - Decimal Point Pressed and already in the text box
    If DecimalPoint And (InStr(TxtNow, ".") > 0) Then KeyAscii = 0
    
    LeftTxt = Left$(TxtNow, SelStart)
    RightTxt = Right$(TxtNow, TxtLen - (SelStart + SelLength))
    
    TxtNew = LeftTxt & Chr(KeyAscii) & RightTxt
     
    'Check Decimal Point In Correct Poistion
    Dim DecPlace As Integer
    DecimalPosition = InStr(TxtNew, ".")
    If Not BackSpace And (DecimalPosition > 0) Then
        DecPlace = ((TxtLen - DecimalPosition) - 1)
        If (DecPlace > DecimalPlaces) Then
            KeyAscii = 0
        End If
    End If
    
    If Val(TxtNew) > Limit Then KeyAscii = 0
    If Val(TxtNew) < Min Then KeyAscii = 0
    If Not BackSpace And Len(TxtNew) > StringLength Then KeyAscii = 0
      
    cmbKeyPress = KeyAscii
      
End With
      
End Function
Public Function BoxCheckBackSpace(txtBox As TextBox, KeyCode As Integer)
    
       
    With txtBox
    
        Select Case KeyCode
                                  
            Case vbKeyBack
                If .SelStart > 0 And .SelLength = 0 Then
                    .SelStart = .SelStart - 1
                    KeyCode = vbKeyDelete
                End If
            Case Else
                'Do Nothing
                
        End Select
        
        BoxCheckBackSpace = KeyCode
    
    End With
    
End Function


Public Function CmbGetNum(cmb As ComboBox, Edit As Integer)

    On Error Resume Next
    
    Dim Num As Long
    Dim ID As Integer
    
    With cmb
        
               
        Num = .ItemData(.ListIndex)
        
        Select Case Edit
            Case EditGrp
                If (dbSettingValue(GrpDbLongEntry) <> "0") Then
                    Call dbGetID(EditGrp, Num, ID)
                    CmbGetNum = GrpLong(ID)
                Else
                    CmbGetNum = Format$(Num)
                End If
            Case EditCat
                If (dbSettingValue(CatDbLongEntry) <> "0") Then
                    Call dbGetID(EditCat, Num, ID)
                    CmbGetNum = CatLong(ID)
                Else
                    CmbGetNum = Format$(Num)
                End If
            Case EditCus
                If (dbSettingValue(CusDbLongEntry) <> "0") Then
                    Call dbGetID(EditCus, Num, ID)
                    CmbGetNum = CusLong(ID)
                Else
                    CmbGetNum = Format$(Num)
                End If
            Case Else
                MsgBox "Incorrect use of CmbGetNum", vbCritical, "Function Error"
        End Select
    
    End With
    
End Function



Public Sub CheckFormPosition(FormName As Form)
    If FormName.Left < 0 Then FormName.Left = 100
    If FormName.Top < 0 Then FormName.Top = 100
    If FormName.Left + FormName.Width > Screen.Width Then FormName.Left = 100
    If FormName.Top + FormName.Height > Screen.Height Then FormName.Top = 100
End Sub



Private Sub SoundPlay(Name As String)
    
    Dim lRetVal As Long
    
    'lRetVal = sndPlaySound(AliasName, SND_ALIAS + SND_ASYNC + SND_NOWAIT)
    lRetVal = sndPlaySound(Name, SND_ASYNC + SND_NOWAIT)
    
End Sub


Public Sub FileSaveSetting(FileName As String, Folder As String, _
                            SettingID As String, Value As Variant, Optional FilePath As String)

    On Error GoTo SaveSettingError
    
    Dim File As String
    Dim F As Integer
    Dim n As Integer
    Dim Found As Boolean
    Dim InputFolder() As String
    Dim InputSettingID() As String
    Dim InputValue() As String
    Dim Store As String
    Dim Length As Integer
           
    If FilePath = "" Then
        File = App.path & "\Data\" & FileName & ".dat"
    Else
        File = FilePath & "Data\" & FileName & ".dat"
    End If
        
    F = FreeFile
    n = 1
    Found = False
    
    Open File For Input Shared As F
    
    'Open the complete file and search for the entry if it already exists
    'then overwrite the existing setting
    
    Do Until EOF(F)
        
        ReDim Preserve InputFolder(n)
        ReDim Preserve InputSettingID(n)
        ReDim Preserve InputValue(n)
        
        Input #F, InputFolder(n)
        Input #F, InputSettingID(n)
        Input #F, InputValue(n)
                                        
        If LCase(InputFolder(n)) = LCase(Folder) And _
           LCase(InputSettingID(n)) = LCase(SettingID) Then
           InputFolder(n) = Folder
           InputSettingID(n) = SettingID
           InputValue(n) = Format$(Value)
           Found = True
        End If
        Length = n
        n = n + 1
    Loop
NewFile:
    Close #F
   
    
    'If the setting wasn't found then add to the end of the file
    If Found = False Then
        ReDim Preserve InputFolder(n)
        ReDim Preserve InputSettingID(n)
        ReDim Preserve InputValue(n)
        InputFolder(n) = Folder
        InputSettingID(n) = SettingID
        InputValue(n) = Format$(Value)
        Length = Length + 1
    End If
        
    'Build the array back into the file
    For n = 1 To Length
        If n > 1 Then Store = Store & Chr$(13) & Chr$(10)
        Store = Store & InputFolder(n) & "," & InputSettingID(n) & "," & _
        InputValue(n)
    Next n
       
    'Open the file and write the settings
    Open File For Output Shared As F
    Print #F, Store
    Close #F
    
    If AccessLevel = accDesigner Then ErrorHandler 0, "SaveSetting", "Folder=" & Folder & " SettingID=" & SettingID & " Value=" & Format$(Value), False, 0, "sav"
    
Exit Sub

SaveSettingError:
    'If file not found then create file
    If Err = 52 Or Err = 53 Then
        Open File For Append As #F
        Close #F
        Resume NewFile
    Else
        ErrorHandler Err, "TrackView DllProcs SaveSetting", Err.Description, False
        Err.Clear
    End If

End Sub
Public Function FileGetSetting(FileName As String, Folder As String, _
                            SettingID As String, Default As Variant, Optional FilePath As String)
    
    On Error GoTo GetSettingError
    
    Dim File As String
    Dim F As Integer
    Dim Found As Boolean
    Dim InputFolder As String
    Dim InputSettingID As String
    Dim InputValue As String
    Dim Store As String
    Dim Length As Integer
           
    If FilePath = "" Then
        File = App.path & "\Data\" & FileName & ".dat"
    Else
        File = FilePath & "\Data\" & FileName & ".dat"
    End If
        
    F = FreeFile
    Found = False
    
    Open File For Input Shared As F
    
    'Open the complete file and search for the entry if it already exists
    'then overwrite the existing setting
    
    Do Until EOF(F)
        
        Input #F, InputFolder
        Input #F, InputSettingID
        Input #F, InputValue
                                        
        If LCase(InputFolder) = LCase(Folder) And _
           LCase(InputSettingID) = LCase(SettingID) Then
           FileGetSetting = InputValue
           Found = True
        End If
    Loop

    Close #F
   
    If Found = False Then FileGetSetting = Default
    
    If AccessLevel = accDesigner Then ErrorHandler 0, "GetSetting", "SettingID=" & SettingID & " Value=" & FileGetSetting, False, 0, "get"
    
Exit Function

GetSettingError:
    
    FileGetSetting = Default
    If Err = 52 Or Err = 53 Then
        Exit Function
    Else
        ErrorHandler Err, "TrackView GetSetting", Err.Description, False
        Err.Clear
    End If

End Function

Public Sub DeleteErrorFiles(AfterDays As Integer)
    
    On Error GoTo DeleteErrorFiles:
    
    'Delete any error files after ? days and any invalid file names
    Dim DataFileName
    Dim FileDate As String
    
    DataFileName = Dir(LogPath & "*.*", vbDirectory)
        
    Do While DataFileName <> ""
        
        If DataFileName <> "." And DataFileName <> ".." Then
        
            FileDate = Mid$(DataFileName, 5, 2) & "/" & Mid$(DataFileName, 3, 2) & "/" & Mid$(DataFileName, 1, 2)
        
            If Val(DateDiff("d", FileDate, Now)) > AfterDays Then
                Kill LogPath & DataFileName
            End If
        
        End If
        
        DataFileName = Dir
    
    Loop

Exit Sub

DeleteErrorFiles:
    '53 = File not found 70 = Permission Denied 75 = File/Path access error
        
    'If Err = 53 Or Err = 70 Or Err = 75 Then
        Resume Next
    'Else
    '    ErrorHandler Err, "SM StdProcs DeleteErrorFiles", Err.Description, False
    '    Err.Clear
    'End If
    
End Sub
Public Sub ErrorHandler(Err As Long, SubName As String, ErrorDetails As String, _
                        Display As Boolean, Optional ImportanceLevel As Integer, Optional extn As String, Optional WriteLocalFile As Boolean = False)
    
    'Store errors to file (one file for each day)
    On Error GoTo ErrorHandlerError
       
    If Err <> ErrorLast Or Err = 0 Then
        
        Dim n               As Integer
        Dim F               As Integer
        Dim File            As String
        Dim ErrorDate       As String
        Dim ErrorTime       As String
        Dim ErrorString     As String
        Dim ErrorCritical   As String
    
        
        If extn = "" Then extn = LogFileExt
        
        If Not WriteLocalFile Then
            db_uspPCError_Write PCNum, Err, SubName, ErrorDetails, ImportanceLevel, extn
        Else ' Write to file if not to SQL
        
            ErrorDate = Format$(Now, "yymmdd")
            ErrorTime = Format$(Now, "HH:MM:SS")
            
            File = LogPath & ErrorDate & "." & extn
            F = FreeFile
            
            Open File For Append Shared As F
            ErrorString = (ErrorTime & "," & " Error= " & Format$(Err) & "," & "  " & SubName & "  " & ErrorDetails)
            ErrorCritical = String(Len(ErrorString), "-")
            For n = 0 To ImportanceLevel
                If ImportanceLevel <> 0 Then Print #F, ErrorCritical
            Next n
            Print #F, ErrorString
            For n = 0 To ImportanceLevel
                If ImportanceLevel <> 0 Then Print #F, ErrorCritical
            Next n
            Print #F, ""
            Close F
                
            ErrorLast = Err
        End If
        
    End If
        
    'Displays Error
    If Display = True Then
        MsgBox "Error " & Format$(Err) & " " & SubName, vbOKOnly + vbCritical, "Error " & ErrorDetails
    End If
'**** NO Longer valid ODBC to access is not used *****
    '[Microsoft][ODBC Microsoft Access Driver] Not enough space on temporary disk.
'    If Err = -2147024882 Then
'        MsgBox "Error " & Format$(Err) & " " & SubName, vbOKOnly + vbCritical, "Error " & ErrorDetails
'    End If
'
Exit Sub
ErrorHandlerError:
    Resume Next
End Sub
Public Sub Sound_Ir_Begin()
    SoundPlay App.path & "\Sounds\Ir_begin.wav"
End Sub
Public Sub Sound_Ir_End()
    SoundPlay App.path & "\Sounds\Ir_end.wav"
End Sub
Public Sub Sound_Notify()
    SoundPlay App.path & "\Sounds\Notify.wav"
End Sub
Public Sub Sound_Reminder()
    SoundPlay App.path & "\Sounds\Reminder.wav"
End Sub
Public Sub Sound_Ir_Interrupt()
    SoundPlay App.path & "\Sounds\Ir_inter.wav"
End Sub
Public Sub Sound_User1()
    SoundPlay App.path & "\Sounds\User1.wav"
End Sub


Public Sub CopyFiles(SourcePath As String, DestinationPath As String, Pattern As String)
        
    On Error GoTo CopyFilesError
        
    Dim FileName As String
    Dim CopyFile As Boolean
    If SourcePath <> DestinationPath Then
        
        FileName = Dir(SourcePath & Pattern)
    
        Do While FileName <> ""
            FileCopy SourcePath & FileName, DestinationPath & FileName
            ErrorHandler 0, "CopyFiles", "From " & SourcePath & FileName & " To " & DestinationPath & FileName, False
            FileName = Dir
        Loop
    
    End If
    
Exit Sub

CopyFilesError:
    ErrorHandler Err, "CopyFiles", Err.Description, False
    ErrorHandler 0, "CopyFiles", "From " & SourcePath & FileName & " To " & DestinationPath & FileName, False
    Resume Next
End Sub
Public Sub CopyFilesX(SourcePath As String, DestinationPath As String, Optional IgnoreFile1 As String, Optional IgnoreFile2 As String, Optional IgnoreFile3 As String, Optional IgnoreFile4 As String)
    
    'This routine copies all the "Data" folder to the local drive
    
    On Error GoTo CopyFilesError
        
    Dim FileName As String
    Dim CopyFile As Boolean
    If SourcePath <> DestinationPath Then
        
        FileName = Dir(SourcePath & "*.*")
    
        Do While FileName <> ""
            CopyFile = True
            If InStr(1, FileName, IgnoreFile1) > 0 And IgnoreFile1 <> "" Then CopyFile = False
            If InStr(1, FileName, IgnoreFile2) > 0 And IgnoreFile2 <> "" Then CopyFile = False
            If InStr(1, FileName, IgnoreFile3) > 0 And IgnoreFile3 <> "" Then CopyFile = False
            If InStr(1, FileName, IgnoreFile4) > 0 And IgnoreFile4 <> "" Then CopyFile = False
            If CopyFile Then
                FileCopy SourcePath & FileName, DestinationPath & FileName
                ErrorHandler 0, "TrackView DllProcs CopyFiles", "From " & SourcePath & FileName & " To " & DestinationPath & FileName, False
            End If
            FileName = Dir
        Loop
    
    End If
    
Exit Sub

CopyFilesError:
    ErrorHandler Err, "TrackView DllProcs CopyFiles See below for name", Err.Description, False
    ErrorHandler 0, "TrackView DllProcs CopyFiles", "From " & SourcePath & FileName & " To " & DestinationPath & FileName, False
    Resume Next
End Sub



Public Sub WriteRBPosn(PLCStn As Integer, RBIndex As Integer, WriteData As Variant, Optional ShowWait As Boolean, Optional Owner As String)
    
    Dim i As Integer
    Dim X As Integer
    Dim DataLong As Long
    
    Dim RBAmount As Integer
    RBAmount = (DeviceBytes(DeviceRBPosn) / 4) '32 bit Data 4 Bytes
    
    X = 0
    For i = 0 To (RBAmount - 1)
        DataLong = WriteData(i)
        Call ConvertLongToInt(DataLong, Data(X + 1), Data(X))
        X = X + 2
    Next i
    
    Comms_frm.WritePLC PLCStn, "RB_Posn", RBIndex, 1, Data(), ShowWait, "WriteRBPosn " & Owner
    
End Sub
Public Sub WriteD32(PLCStn As Integer, Start As Integer, Amount As Integer, WriteData As Variant, Optional ShowWait As Boolean, Optional Owner As String)
    
    Dim i As Integer
    Dim X As Integer
    Dim DataLong As Long
        
    X = 0
    For i = 0 To (Amount - 1)
        DataLong = WriteData(i)
        Call ConvertLongToInt(DataLong, Data(X + 1), Data(X))
        X = X + 2
    Next i
    
    'Write PLC is 16 bit
    Comms_frm.WritePLC PLCStn, "D32", Start, Amount, Data(), ShowWait, "WriteD32 " & Owner
    
End Sub
Public Sub WriteBag(PLCStn As Integer, BagIndex As Integer, Grp As Integer, Dst As Integer, Wgt As Integer, _
                    Cnt As Integer, Ur1 As Integer, Bid As Long, Cat As Long, MIS As Long, Cus As Long, Ur2 As Long, TimeStamp As Long, _
                    Optional ShowWait As Boolean, Optional Owner As String)
    
    Dim GrpDst      As Integer  'Category and Destination
    Dim DataL       As Integer
    Dim DataH       As Integer
        
    
    
    'Write to PLC the Bag ID
    Call ConvertByteToInt(Dst, Grp, GrpDst)
    Data(0) = GrpDst
    Data(1) = Wgt
    Data(2) = Cnt
    Data(3) = Ur1
    Call ConvertLongToInt(Bid, DataH, DataL)
    Data(4) = DataL
    Data(5) = DataH
    Call ConvertLongToInt(Cat, DataH, DataL)
    Data(6) = DataL
    Data(7) = DataH
    Call ConvertLongToInt(MIS, DataH, DataL)
    Data(8) = DataL
    Data(9) = DataH
    Call ConvertLongToInt(Cus, DataH, DataL)
    Data(10) = DataL
    Data(11) = DataH
    Call ConvertLongToInt(Ur2, DataH, DataL)
    Data(12) = DataL
    Data(13) = DataH
    Call ConvertLongToInt(TimeStamp, DataH, DataL)
    Data(14) = DataL
    Data(15) = DataH
            
            
    Comms_frm.WritePLC PLCStn, "Bag", BagIndex, 1, Data(), ShowWait, "WriteBag " & Owner

    
       
    
End Sub


Public Sub FormPosition(FormName As Form, Optional Action As Integer)
    
    Select Case Action
        Case frmCheckPosition
            If FormName.Left < 0 Then FormName.Left = 100
            If FormName.Top < 0 Then FormName.Top = 100
            If FormName.Left + FormName.Width > Screen.Width Then FormName.Left = 100
            If FormName.Top + FormName.Height > Screen.Height Then FormName.Top = 100
        Case frmReadPosition
            FormName.Top = db_uspSettingGet("SettingsLocal", FormName.Name, "Top", 100, PCNum)
            FormName.Left = db_uspSettingGet("SettingsLocal", FormName.Name, "Left", 100, PCNum)
        Case frmSavePosition
            If FormName.Top < (Screen.Height - FormName.Height) And FormName.Left < (Screen.Width - FormName.Width) Then
                db_uspSettingSave "SettingsLocal", FormName.Name, "Top", FormName.Top, PCNum
                db_uspSettingSave "SettingsLocal", FormName.Name, "Left", FormName.Left, PCNum
            End If
            
    End Select
    
End Sub

Public Sub PLCIndexEncodeDecode(Mode As Integer, TviewIndex As Integer, Index As Integer, PLCStn As Integer)
    
    'Convert between TrackView Index and PLC Index - eg PLC 1 Bag 100 might be TrackView bag index 1100.
    'Mainly used for Bags so bags from different PLC's can be on the same form.
    
    'Version 1.00 25/09/2009 D.J. First Issue
    
    Const PLCOffset = 1000
    Dim PLCString As String
    
    Select Case Mode
        
        Case ModePLCToTview
                
                TviewIndex = ((PLCStn * PLCOffset) + Index)
                   
        Case ModeTviewToPLC
        
                PLCString = Format$(TviewIndex, "0000")
                
                PLCStn = Val(Left$(PLCString, 1))
                Index = Val(Right$(PLCString, 3))
                
                'Keep Values in range
                If PLCStn > MaxPLC Then PLCStn = 0
                If Index >= PLCOffset Then Index = 0
                
    End Select
    
    
End Sub
Public Function GetDatabaseFromCategory(PLCStn As Integer, RequestCat As Long, ReplyCat As Long, PLCReplyStart As Integer)
        
    'Get Program and other values for a given Category from the Program and/or Cataegory databases
        
    Dim CatID           As Integer
    Dim Grp             As Long
    Dim GrpID           As Integer
    Dim n               As Integer
    Dim ReplyLength     As Integer
    
    ReplyLength = 19
    
    If (RequestCat <> ReplyCat) Then
    If (RequestCat = 0) Then
            For n = 0 To (ReplyLength - 1)
                Data32(n) = 0
            Next n
        Else
            If dbCatUsed Then
                Call dbGetID(EditCat, RequestCat, CatID)
                Grp = CatGroup(CatID)
            Else
                Grp = RequestCat
            End If
            
            Call dbGetID(EditGrp, Grp, GrpID)
            
            Data32(0) = RequestCat
            Data32(1) = Grp
            
            'Setpoints from either Category or Program database
            If dbSettingValue(CatDbUseSetpoints) And dbCatUsed Then
                Data32(2) = CatSP1(CatID) * 10
                Data32(3) = CatSP2(CatID) * 10
                Data32(4) = CatSP3(CatID) * 10
            Else
                Data32(2) = GrpSP1(GrpID) * 10
                Data32(3) = GrpSP2(GrpID) * 10
                Data32(4) = GrpSP3(GrpID) * 10
            End If
            
            'Soiled storage Line or Area allacations
            Data32(5) = GrpSLine1(GrpID)
            Data32(6) = GrpSLine2(GrpID)
            Data32(7) = GrpSLine3(GrpID)
            Data32(8) = GrpSLine4(GrpID)
            
            'Washcode from Cateogry or Program database
            If dbSettingValue(CatDbUseWashCodes) And dbCatUsed Then
                Data32(9) = CatWash(CatID)
            Else
                Data32(9) = GrpWash(GrpID)
            End If
            
            'Piece weight from Category
            If dbSettingValue(CatDbUsePieceWeight) And dbCatUsed Then
                Data32(10) = CatPiece(CatID)
            Else
                Data32(10) = GrpPiece(GrpID)
            End If
            
            'Category Type
            If dbCatUsed Then
                Data32(11) = CatType(CatID)
            Else
                Data32(11) = 0
            End If
            
            'Program Type
            Data32(12) = GrpType(GrpID)
            'Spare
            Data32(13) = 0
            Data32(14) = 0
            
            'Clean storage Line or Area allocations
            Data32(15) = GrpCLine1(GrpID)
            Data32(16) = GrpCLine2(GrpID)
            Data32(17) = GrpCLine3(GrpID)
            Data32(18) = GrpCLine4(GrpID)
        
        End If
        
        WriteD32 PLCStn, PLCReplyStart, ReplyLength, Data32(), False, "GetDatabaseFromCategory"
    
    End If
    
End Function
Public Function GetLongAndName(PLCStn As Integer, OwnerID As Long, ID As Long, ReplyID As Long, ProgramNum As Long, CategoryNum As Long, CustomerNum As Long)
    
    'Version 1.00 19/11/2010 D.J. First Issue
    'Version 2.00 15/10/2011 D.J. Program now from Category Database
     
    On Error GoTo GetLongAndNameError
     
    Dim DisplayData As String
    Dim GrpID       As Integer
    Dim CatID       As Integer
    Dim CusID       As Integer
    Dim PicID        As Integer
    
    Dim myBag       As Integer
    Dim myUr1       As Long
    Dim myUr2       As Long
    
    Dim myUr1ID     As Integer
    Dim myUr2ID     As Integer
    Dim WriteGrpText As Boolean
    
    If (ID <> ReplyID) Then
               
        Call dbGetID(EditCat, CategoryNum, CatID)
        Call dbGetID(EditCus, CustomerNum, CusID)
        If dbCatUsed Then
            Call dbGetID(EditGrp, CLng(CatGroup(CatID)), GrpID)
        Else
            Call dbGetID(EditGrp, ProgramNum, GrpID)
        End If
               
        WriteGrpText = False
        If D32ReturnProgIfnotPrgCode Then
            If (ProgramNum = 0) Then
                DisplayData = CatGroup(CatID)
                DisplayWrite32 8, PLCStn, 531, DisplayData, "GetLongAndName"
                DisplayData = "ProgCodeReturned"
                DisplayWrite32 32, PLCStn, 533, DisplayData, "GetLongAndName"
            Else
                WriteGrpText = True
            End If
        Else
            WriteGrpText = True
        End If
        
        If WriteGrpText Then
            DisplayData = GrpLong(GrpID)
            DisplayWrite32 8, PLCStn, 531, DisplayData, "GetLongAndName"
        
            DisplayData = GrpName(GrpID)
            DisplayWrite32 32, PLCStn, 533, DisplayData, "GetLongAndName"
        End If
        
        DisplayData = CatLong(CatID)
        DisplayWrite32 8, PLCStn, 541, DisplayData, "GetLongAndName"
        
        DisplayData = CatName(CatID)
        DisplayWrite32 32, PLCStn, 543, DisplayData, "GetLongAndName"
        
        
        DisplayData = CusLong(CusID)
        DisplayWrite32 8, PLCStn, 551, DisplayData, "GetLongAndName"
        
        DisplayData = CusName(CusID)
        DisplayWrite32 32, PLCStn, 553, DisplayData, "GetLongAndName"
'
'        Call dbGetID(EditPic, CategoryNum, PicID)
'        DisplayData = CatPicFilePath(PicID)
'        DisplayWrite32 32, PLCStn, 563, DisplayData, "GetLongAndName"
        
        
        
        'Write back the comms ID
        Data32(0) = ID
        Call WriteD32(PLCStn, 203, 1, Data32(), False, "GetLongAndName")
        
    End If

Exit Function
GetLongAndNameError:
    ErrorHandler Err, "StdProcs GetLongAndName", Err.Description, False

End Function
Public Sub RoboPositionNames(PLCStn As Integer, _
                                TviewRobo As Integer, _
                                TviewPosnRead As Integer, _
                                PLCReplyRobo As Integer, _
                                PLCReplyPosn As Integer, _
                                PLCReplyNameIndex As Integer, _
                                PLCReplyExtraIndex As Integer)
                                
                                
    Dim FrmOpen As Boolean
    Dim myString As String
        
    On Error GoTo RoboPositionNames
        
    If (PLCReplyRobo > 0) And (PLCReplyPosn > 0) And (PLCReplyPosn <> TviewPosnRead) Then
        'Begin the position text with "Position n"
        myString = TextWord(815) & " " & Format$(PLCReplyPosn)
        'If the reply index is within range then add the text
        If ((PLCReplyNameIndex > 0) And (PLCReplyNameIndex <= 99)) Then
            myString = myString & " " & TextWord(900 + PLCReplyNameIndex)
        End If
        'If extra index is between 1 and 99 then add directly (normally a line number)
        If ((PLCReplyExtraIndex > 0) And (PLCReplyExtraIndex <= 99)) Then
            myString = myString & " " & Format$(PLCReplyExtraIndex)
        End If
        
        If ((PLCReplyExtraIndex > 101) And (PLCReplyExtraIndex <= (100 + MaxSeq))) Then
            myString = myString & " " & SequenceAlm(PLCReplyExtraIndex - 100, PLCStn)
        End If
        
        RB_PosnName(PLCReplyRobo, PLCStn, PLCReplyPosn) = myString
        
        'Reply to PLC
        Data(0) = PLCReplyPosn
        Call Comms_frm.WritePLC(PLCStn, "D", 91, 1, Data(), False, "RoboPositionNames")
               
    End If
                    
Exit Sub
RoboPositionNames:
    ErrorHandler Err, "StdProcs RoboPositionNames", Err.Description, False
    Resume Next
End Sub

Public Sub WeighingCalibrationValues(PLCStn As Integer, _
                                    RequestStn As Long, _
                                    ReplyStn As Long, _
                                    ReplyZero As Long, _
                                    ReplyHigh As Long, _
                                    ReplyTest As Long, _
                                    ReplyRaw As Long, _
                                    ReplyKg As Long)
    
    
    'Save station data
    If (ReplyStn > 0) And (ReplyStn <= MaxCalibration) Then
        WeighReplyZero(ReplyStn, PLCStn) = ReplyZero
        WeighReplyHigh(ReplyStn, PLCStn) = ReplyHigh
        WeighReplyTest(ReplyStn, PLCStn) = ReplyTest
        WeighReplyRaw(ReplyStn, PLCStn) = ReplyRaw
        WeighReplyKg(ReplyStn, PLCStn) = ReplyKg
    
       
        'SQL Server Calibration History
        If ReplyStn = StoreCalStation Then
            StoreCalReadCount = StoreCalReadCount + 1 'Inc the comms read count
            If StoreCalReadCount >= 2 And StoreCalAction <> "" Then
                Call db_uspCalibrationHistoryWrite(ReplyStn, CLng(PLCStn), StoreCalAction, WeighReplyZero(ReplyStn, PLCStn), _
                                            WeighReplyHigh(ReplyStn, PLCStn), WeighReplyTest(ReplyStn, PLCStn), _
                                            WeighReplyRaw(ReplyStn, PLCStn), WeighReplyKg(ReplyStn, PLCStn))
                'Cancel Calibration Write
                StoreCalStation = 0
                StoreCalReadCount = 0
            End If
        End If
        
    End If
    
    'Request next station from the PLC - Only when Station_frm is open
    If (StnCalDataCurrent > 0) Then
        If (ReplyStn = RequestStn) Then
            If (StnCalDataExpress = 0) Or Not StnCalDataAlternate Then
                StnCalDataCurrent = StnCalDataCurrent + 1
                If StnCalDataCurrent > MaxCalibration Then
                    StnCalDataCurrent = 1
                End If
                StnCalDataRequest = StnCalDataCurrent
            Else
                StnCalDataRequest = StnCalDataExpress
            End If
            StnCalDataAlternate = Not StnCalDataAlternate
            Debug.Print "StnCalDataAlternate = " & StnCalDataAlternate
            Debug.Print "StnCalDataCurrent   = " & StnCalDataCurrent
            Debug.Print "StnCalDataRequest   = " & StnCalDataRequest
            
            Data32(0) = StnCalDataRequest
            Call WriteD32(PLCStn, 230, 1, Data32())
                
        End If
    End If
    
End Sub
Public Sub SendStringPLC(PLCStn As Integer, ID As Integer)
    
    
    
    Dim DisplayData As String
           
    Select Case ID
        
        'TrackView Reply to PLC
        '----------------------
        Case SendSUPDBServer
            DisplayData = SQLServerPath
            DisplayWrite32 64, PLCStn, 571, DisplayData, "SendStringPLC " & Str(ID)
            Data32(0) = ID
            Call WriteD32(PLCStn, 570, 1, Data32())
            
        Case SendSUPDBName
            DisplayData = SQLServerDbName
            DisplayWrite32 64, PLCStn, 571, DisplayData, "SendStringPLC " & Str(ID)
            Data32(0) = ID
            Call WriteD32(PLCStn, 570, 1, Data32())
            
        Case SendSUPDBLogin
            DisplayData = "SUP"
            DisplayWrite32 64, PLCStn, 571, DisplayData, "SendStringPLC " & Str(ID)
            Data32(0) = ID
            Call WriteD32(PLCStn, 570, 1, Data32())
            
        Case SendSUPDBPword
            DisplayData = "1234"
            DisplayWrite32 64, PLCStn, 571, DisplayData, "SendStringPLC " & Str(ID)
            Data32(0) = ID
            Call WriteD32(PLCStn, 570, 1, Data32())
                     
        Case SendTextWord To SendTextWord + UBound(TextWord)
            DisplayData = TextWord(ID - SendTextWord)
            DisplayWrite32 64, PLCStn, 571, DisplayData, "SendStringPLC " & Str(ID)
            Data32(0) = ID
            Call WriteD32(PLCStn, 570, 1, Data32())
        
        'TrackView Instructions to PLC
        '-----------------------------
        Case StartSQLServerDataRead
            Data32(0) = ID
            Call WriteD32(PLCStn, 570, 1, Data32())
            
        Case StartReadTextwords
            Data32(0) = ID
            Call WriteD32(PLCStn, 570, 1, Data32())
        
    End Select
    

End Sub
Public Sub LoadStartForm()
        'Start-Up form?
        Dim StartUpIndex As Integer
        Dim StartFormName As String
        StartUpIndex = db_uspSettingGet("SettingsLocal", "Config", "StartUp", 0, PCNum)
        
        StartFormName = StartUpForm(StartUpIndex)
        
        Select Case StartFormName
            Case " ", "none"
                'Do Nothing
            Case "maindisp0"
                DisplayForm maindisp0_frm, TextWord(169) 'Soiled
            Case "maindisp1"
                DisplayForm maindisp1_frm, TextWord(169) 'Clean
            Case "maindisp2"
                DisplayForm maindisp2_frm, TextWord(611) 'Primary
            Case "special0"
                'DisplayForm special0_frm
            Case "special1"
                'DisplayForm special1_frm
            Case "special2"
                'DisplayForm special2_frm
            Case "special3"
                'DisplayForm special3_frm
            Case "special4"
                'DisplayForm special4_frm
            Case "special5"
                'DisplayForm special5_frm
        End Select
        
End Sub
 Public Sub GetImagesFromFTP(FTPPath As String)
    On Error Resume Next

 Dim fso As New FileSystemObject
 Dim fil As File
 Dim Index As Integer
 
 MDIMaindisp_frm.ImageList1.ListImages.Clear
 MDIMaindisp_frm.ImageList1.ListImages.Add 1, "null", MDIMaindisp_frm.Image1 ' Picture1.Image
 
 Index = 0
For Each fil In fso.GetFolder(FTPPath).Files
    
    If (fil.Type = "Bitmap image" Or fil.Type = "GIF File" Or fil.Type = "GIF image") And _
            (fil.Attributes <> 35) And (Len(fil.Name) <= 32) Then ' Not Read only
            Set Picture = LoadPicture(fil)
            If (Picture.Height <= 6085) And (Picture.Width <= 14817) Then 'Check pic is bitmap and smaller than 230*560 pixels// 26.4 units to 1 pixel
                MDIMaindisp_frm.ImageList1.ListImages.Add , fil.Name, Picture 'LoadPicture(fil)
                Index = Index + 1
            End If
    End If
Next

End Sub
Public Sub SendFTPPathNotify()

 Data(0) = 1
 Comms_frm.WritePLC 0, "D", 358, 1, Data(), False, "FTPPath"

End Sub

Public Sub LoadNewCustomer(NewCustomer As Long, Bank As Integer)
    On Error GoTo LoadNewCustomerError
    
    Dim Status As Integer
    Dim Index               As Integer
    Dim mySQL           As String
    Dim LastNum         As Long
    Dim Mode As Integer
    Mode = Val(db_uspSettingGet("SettingsNetwork", "CusChangeOption", "New Customer Behaviour ", "1", 0))
    
    dbConnect
       
    Dim dbCmd As ADODB.Command

    
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspLoadingProgramGetFromCusNum"
                
    dbCmd.Parameters.Item("@CusNum") = NewCustomer
    dbCmd.Parameters.Item("@Status") = Status
                
    Call dbCmd.Execute
       
    Status = dbCmd.Parameters.Item("@Status")

    Select Case Status
           
           Case 1 ' Loading Program found and Returned
                ReDim NewCat(100) As Long
                ReDim NewCus(100) As Long

                'Process the results
                mySQL = "Select * from Results Order By SettingIndex"
                Set rs = dbCmd.Execute(mySQL)
                     
            
            
                Do While Not rs.EOF
                    'Get the Index.
                    If Not IsNull(rs.Fields("SettingIndex")) Then Index = rs.Fields("SettingIndex")
                    'Find out if Cat or Cus Num
                    If rs.Fields("SettingID") = "Cus" Then
                        If Not IsNull(rs.Fields("SettingValue")) Then NewCus(Index) = rs.Fields("SettingValue")
                    End If
                    If rs.Fields("SettingID") = "Cat" Then
                       If Not IsNull(rs.Fields("SettingValue")) Then NewCat(Index) = rs.Fields("SettingValue")
                    End If
TryNext:
            
                    rs.MoveNext
            
                Loop
                
                rs.Close

                'Set the customer number based on the options
                'opt_CusChange(0).ToolTipText = "The customer number stored in the loading program is returned. If this is 0 the customer number used to request the change is returned as the customer"
                'opt_CusChange(1).ToolTipText = "The customer number used to request the change is returned for all customer fields."
                'opt_CusChange(2).ToolTipText = "The customer number used to request the change is checked to see if it is 'pool' if it is pool. The pool customer number is returned, if it is not pool the request number is returned."
             
                Dim CusID As Integer
                Dim poolCus As Long
                
                
                dbGetID EditCus, NewCustomer, CusID
                If CusPool(CusID) Then
                    poolCus = Val(db_uspSettingGet("SettingsNetwork", "CustomerDB", "PoolCustomer", "0", PCNum))
                Else
                    poolCus = 0
                End If
                
                For n = 1 To UBound(NewCus())
                  
                    Select Case Mode
                        Case 0 ' Return from loading program, if the cust number is 0 retrun the requesting number.
                            If NewCus(n) = 0 Then NewCus(n) = NewCustomer
                        Case 1 ' Always return the requesting customer
                            NewCus(n) = NewCustomer
                        Case 2 ' Check if the customer is pool and return the pool customer if valid, else return
                        If poolCus > 0 Then
                            NewCus(n) = poolCus
                        Else
                            NewCus(n) = NewCustomer
                        End If
                     End Select
                Next n
                
                SendNewLoadingProgToPLC (Bank)
                
                
                
                Data(0) = 1
           Case 2, 3
                Data(0) = Status
           Case Else
                Data(0) = 98 ' Error!!
            
    End Select
    Data(1) = 0 ' Clear bytes 3-4 of 32 bit reg to stop errors.
    Comms_frm.WritePLC 0, "D32", 90 + Bank, 2, Data(), False, "WriteD32 Automatic Cust Change"
    dbDisconnect

Exit Sub
LoadNewCustomerError:
    ErrorHandler Err, "TrackView LoadNewCustomer", Err.Description, False
    Resume Next
End Sub
Public Sub SendNewLoadingProgToPLC(Bank As Integer)
    Dim m           As Integer
    Dim BagIndex    As Integer
            
    Dim CatIndex    As Integer
    Dim Stns        As Integer
        
    Dim Grp         As Integer
    Dim Dst         As Integer
    Dim Wgt         As Integer
    Dim Cnt         As Integer
    Dim Ur1         As Integer
    Dim Bid         As Long
    Dim Cat         As Long
    Dim MIS         As Long
    Dim Cus         As Long
    Dim Ur2         As Long
    
    Dim Day         As Integer
    
    Dim Acc         As Date
    Dim ID          As Integer
      
    Dim Dummy       As Long
    Dim DummyTime   As String
    Dim PLCStn As Integer
    Dim TimeStamp As Long
    
    On Error GoTo SendNewLoadingProgToPLCError
    
    PLCStn = 0
            
    'All Station bag data
    
    Dim Local_EndStn As Integer
    Dim Local_StartStn As Integer
    Dim Local_BagStart As Integer
            
'    If ((Bank = 1) Or (Bank = 2)) Then
'        Local_EndStn = Loading_EndStn(2)
'        Local_StartStn = Loading_StartStn(1)
'        Local_BagStart = Loading_BagStart(1)
'    Else
        Local_EndStn = Loading_EndStn(Bank)
        Local_StartStn = Loading_StartStn(Bank)
        Local_BagStart = Loading_BagStart(Bank)
'    End If
    CatIndex = Local_StartStn
    Stns = Local_EndStn - Local_StartStn + 1
    
      
    m = 0
    For BagIndex = Local_BagStart To Local_BagStart + (Stns - 1)
                                                       
        'Set Customer and Day as the new selected values
        'Call dbGetIDFromLongID(EditCus, txtCus(CatIndex).Text, ID)
        
        
        
        Cus = NewCus(CatIndex) 'CusNum(ID)
        
        
        
        
        If dbCatUsed Then
            'Call dbGetIDFromLongID(EditCat, txtCat(CatIndex).Text, ID)
            Call dbGetID(EditCat, NewCat(CatIndex), ID)
            Cat = CatNum(ID)
            Grp = CatGroup(ID)
        Else
            'Call dbGetIDFromLongID(EditGrp, txtCat(CatIndex).Text, ID)
            Grp = NewCat(CatIndex)
            Cat = NewCat(CatIndex)
        End If
        Dst = 0 'BagDst(BagIndex, PLCStn) 'Clear any manual destinations
        Wgt = BagWgt(BagIndex, PLCStn)
        Cnt = BagCnt(BagIndex, PLCStn)
        Bid = BagBid(BagIndex, PLCStn)
        MIS = BagMis(BagIndex, PLCStn)
        
       
                    
        'Set local Bag vars so display writes.
        BagGrp(BagIndex, PLCStn) = Grp
        BagCat(BagIndex, PLCStn) = Cat
        BagCus(BagIndex, PLCStn) = Cus
                                             
        If Demo Then
            BagUr1(BagIndex, PLCStn) = Ur1
            BagUr2(BagIndex, PLCStn) = Ur2
        End If
        
        TimeStamp = BagTimestamp(BagIndex, PLCStn)
                                             
        'Call WriteBag(PLCStn, BagIndex, CInt(TestGrp), Dst, Wgt, Cnt, Ur1, Bid, TestCat, MIS, Cus, Ur2, False, "Loading")
        Call WriteBag(PLCStn, BagIndex, Grp, Dst, Wgt, Cnt, Ur1, Bid, Cat, MIS, Cus, Ur2, TimeStamp, False, "Loading")
                       
        CatIndex = CatIndex + 1
         
    Next BagIndex
       
    SendAllStationPLC Bank
       
Exit Sub
SendNewLoadingProgToPLCError:
    ErrorHandler 0, "SendNewLoadingProgToPLCError", Err.Description, "False"
    Resume Next
End Sub

Public Sub CheckFaults()
    
    On Error GoTo CheckFaultsError

    Dim PLC As Integer
    Dim MsgNum As Integer
    Dim AlarmIndex As Integer
    Dim UniqueID As String
    Dim SearchPos As Integer
    Dim Found As Boolean

    
    ReDim Alarm_ActiveList(0)
    For SearchPos = 0 To (MaxAlarmList * 3)
        ActiveAlarmIDList(SearchPos).InList = False
   Next
   
   
    For n = 1 To MaxAlarmList
        For PLC = 0 To MaxPLC
            If AlarmRaw(n, PLC).Name <> 0 Then
                With AlarmRaw(n, PLC)
                    'Generate a unqiue number for the alarm based on plc, Alarm name and number
                    UniqueID = PLC & .Number & .Name & .Extra
                    .UniqueID = Val(UniqueID)
                    Found = False
                    For SearchPos = 0 To (MaxAlarmList * 3)
                        If .UniqueID = ActiveAlarmIDList(SearchPos).ID Then
                            ActiveAlarmIDList(SearchPos).InList = True
                            Found = True
                            .TimeStamp = ActiveAlarmIDList(SearchPos).TimeStamp
                            Exit For
                        End If
                    Next
                    If Not Found Then
                        .TimeStamp = Format$(Now, "dd/mm/yy hh:mm:ss")
                        For SearchPos = 0 To (MaxAlarmList * 3)
                        If ActiveAlarmIDList(SearchPos).ID = 0 And ActiveAlarmIDList(SearchPos).InList = False Then
                            ActiveAlarmIDList(SearchPos).InList = True
                            ActiveAlarmIDList(SearchPos).ID = .UniqueID
                            ActiveAlarmIDList(SearchPos).TimeStamp = .TimeStamp
                            Exit For
                        End If
                    Next
                      
                         
                    End If
                End With
                'Add Alarm to list
                
                AlarmIndex = UBound(Alarm_ActiveList) + 1
                ReDim Preserve Alarm_ActiveList(AlarmIndex)
                'See if its a sequence alarm or a general alarm
                With Alarm_ActiveList(AlarmIndex)
                    .PLC = PLC
                    .Seq = AlarmRaw(n, PLC).Number
                    .UniqueID = AlarmRaw(n, PLC).UniqueID
                    .TimeStamp = AlarmRaw(n, PLC).TimeStamp
                    If .Seq > 0 And .Seq <= MaxSeq Then
                        .SeqName = SequenceAlm(.Seq, PLC) & " - "
                    ElseIf .Seq > 200 And .Seq < (200 + MaxUnloading) Then
                        .SeqName = DischargerName(.Seq - 200, PLC) & " - "
                    Else
                        .SeqName = ""
                    End If

                    MsgNum = AlarmRaw(n, PLC).Name
                    If (MsgNum > 0) And (MsgNum <= UBound(Alarm_Text)) Then
                        If AlarmRaw(n, PLC).Extra > 0 Then
                           .Extra = Str(AlarmRaw(n, PLC).Extra)
                        End If
                        .Text = Alarm_Text(MsgNum)
                    End If
                    
                
                End With
            End If
        Next PLC
    Next n

    AlarmActive = UBound(Alarm_ActiveList) > 0
    'Clear all unfound alarms
    For SearchPos = 0 To (MaxAlarmList * 3)
       If ActiveAlarmIDList(SearchPos).InList = False Then
            ActiveAlarmIDList(SearchPos).ID = 0
            ActiveAlarmIDList(SearchPos).TimeStamp = ""
       End If
    Next
   
         
         

Exit Sub
CheckFaultsError:
    ErrorHandler Err, "CheckFaults", Err.Description, False
End Sub

Public Sub SendTimeDateToPLC()
    Dim n As Integer
    If MasterPC Then
        Data32(0) = DateDiff("s", TimeStampDateStart, Now)
        For n = 0 To MaxPLC
            Call WriteD32(n, 79, 1, Data32(), False, "Set PLC Time")
        Next n
    End If
End Sub
Public Function getBagNumFromStation(Stn As Integer)

Dim n As Integer

For n = 1 To MaxStations
    If (Stn >= Loading_StartStn(n)) And (Stn <= Loading_EndStn(n)) Then
        getBagNumFromStation = Loading_BagStart(n) + (Stn - Loading_StartStn(n))
        Exit Function
    End If
Next n
'return 0 if not found
getBagNumFromStation = 0
End Function
Public Function BuildBackupData(PLCStn As Integer)
    On Error GoTo BuildBackupData_Error

    Dim n As Integer
    Dim OutputString As String
    OutputString = ""
    
    For n = 1 To MaxBags
        OutputString = OutputString & Format$(BagGrp(n, PLCStn)) & ","
        OutputString = OutputString & Format$(BagDst(n, PLCStn)) & ","
        OutputString = OutputString & Format$(BagWgt(n, PLCStn)) & ","
        OutputString = OutputString & Format$(BagCnt(n, PLCStn)) & ","
        OutputString = OutputString & Format$(BagUr1(n, PLCStn)) & ","
        OutputString = OutputString & Format$(BagBid(n, PLCStn)) & ","
        OutputString = OutputString & Format$(BagCat(n, PLCStn)) & ","
        OutputString = OutputString & Format$(BagMis(n, PLCStn)) & ","
        OutputString = OutputString & Format$(BagCus(n, PLCStn)) & ","
        OutputString = OutputString & Format$(BagUr2(n, PLCStn)) & ","
        OutputString = OutputString & Format$(BagTimestamp(n, PLCStn))
        OutputString = OutputString & Chr(13) & Chr(10)
    Next n
 
    For n = 1 To MaxSeq
        OutputString = OutputString & Format$(SequenceStep(n, PLCStn))
        OutputString = OutputString & Chr(13) & Chr(10)
    Next n
    
    For n = 1 To MaxCounters
        OutputString = OutputString & Format$(CounterValue(n, PLCStn))
        OutputString = OutputString & Chr(13) & Chr(10)
    Next n
      
    For n = 0 To 99
        OutputString = OutputString & Format$(StnCalib_Low(n, PLCStn))
        OutputString = OutputString & Chr(13) & Chr(10)
    Next n
    
    For n = 0 To 99
        OutputString = OutputString & Format$(StnCalib_High(n, PLCStn))
        OutputString = OutputString & Chr(13) & Chr(10)
    Next n
    
    For n = 0 To 99
        OutputString = OutputString & Format$(StnCalib_Set(n, PLCStn))
        OutputString = OutputString & Chr(13) & Chr(10)
    Next n
    
    'RB Positions.
    For n = 1 To MaxRBs
        OutputString = OutputString & Format$(RB_Posn(n, PLCStn).Lift.RefOffset)
        OutputString = OutputString & Chr(13) & Chr(10)
        
        OutputString = OutputString & Format$(RB_Posn(n, PLCStn).Lift.MaxSpeed)
        OutputString = OutputString & Chr(13) & Chr(10)
        
        OutputString = OutputString & Format$(RB_Posn(n, PLCStn).Lift.CycleCount)
        OutputString = OutputString & Chr(13) & Chr(10)

        For i = 0 To MaxRBPosns
            OutputString = OutputString & Format$(RB_Posn(n, PLCStn).Lift.Posn(i))
            OutputString = OutputString & Chr(13) & Chr(10)
        Next i
       
        'Rotate
        OutputString = OutputString & Format$(RB_Posn(n, PLCStn).Rotate.RefOffset)
        OutputString = OutputString & Chr(13) & Chr(10)
        
        OutputString = OutputString & Format$(RB_Posn(n, PLCStn).Rotate.MaxSpeed)
        OutputString = OutputString & Chr(13) & Chr(10)
        
        OutputString = OutputString & Format$(RB_Posn(n, PLCStn).Rotate.CycleCount)
        OutputString = OutputString & Chr(13) & Chr(10)

        For i = 0 To MaxRBPosns
            OutputString = OutputString & Format$(RB_Posn(n, PLCStn).Rotate.Posn(i))
            OutputString = OutputString & Chr(13) & Chr(10)
        Next i
    Next n
 
 
    'Start Stop buttons
    For n = 0 To 300
        If Start_Stop(n, PLCStn) Then Value = 1 Else Value = 0
        OutputString = OutputString & Format$(Value)
        OutputString = OutputString & Chr(13) & Chr(10)
    Next n
    
    'Storage Areas
    OutputString = OutputString & Format$(StorageAreaMax(PLCStn))
    OutputString = OutputString & Chr(13) & Chr(10)
    
    For n = 0 To 20
        OutputString = OutputString & Format$(StorageAreaFrom(n, PLCStn))
        OutputString = OutputString & Chr(13) & Chr(10)
    Next n
        
    For n = 0 To 20
        OutputString = OutputString & Format$(StorageAreaTo(n, PLCStn))
        OutputString = OutputString & Chr(13) & Chr(10)
    Next n
    
    'Back up Active
    If Backup_Active(PLCStn) Then Value = 1 Else Value = 0
    OutputString = OutputString & Format$(Value)
    OutputString = OutputString & Chr(13) & Chr(10)
    
    For Discharger = 1 To PLCMaxUnloading(PLCStn)
        For n = 1 To 160
            Select Case n
            'Unloading Programs...
                Case 1
                    OutputString = OutputString & Format$(Unload_CurrentStep(Discharger, PLCStn))
                    OutputString = OutputString & Chr(13) & Chr(10)
                Case 2
                    OutputString = OutputString & Format$(Unload_QtyCompleted(Discharger, PLCStn))
                    OutputString = OutputString & Chr(13) & Chr(10)
                Case 3
                    'Each PLC can have recirculation detect 1st discharger
                    If Discharger = 1 Then
                        OutputString = OutputString & Format$(AutoRecirc(PLCStn))
                        OutputString = OutputString & Chr(13) & Chr(10)
                    End If
                Case 4
                    If Discharger = 1 Then
                        OutputString = OutputString & Format$(RecircDepth(PLCStn))
                        OutputString = OutputString & Chr(13) & Chr(10)
                    End If
                Case 5
                    If Discharger = 1 Then
                        OutputString = OutputString & Format$(OnManualLine(PLCStn))
                        OutputString = OutputString & Chr(13) & Chr(10)
                    End If
                Case 6
                    If Discharger = 1 Then
                        OutputString = OutputString & Format$(OnManualBags(PLCStn))
                        OutputString = OutputString & Chr(13) & Chr(10)
                    End If
                Case 7
                    OutputString = OutputString & Format$(Unload_ManualLine(Discharger, PLCStn))
                    OutputString = OutputString & Chr(13) & Chr(10)
                Case 8
                    OutputString = OutputString & Format$(Unload_ManualBags(Discharger, PLCStn))
                    OutputString = OutputString & Chr(13) & Chr(10)
                Case 9
                    
                Case 10
                    OutputString = OutputString & Format$(Unload_SkipIncomplete(Discharger, PLCStn))
                    OutputString = OutputString & Chr(13) & Chr(10)
                Case 11
                    OutputString = OutputString & Format$(Unload_StopAtEndCycle(Discharger, PLCStn))
                    OutputString = OutputString & Chr(13) & Chr(10)
                Case 14
                    OutputString = OutputString & Format$(Unload_NoBag(Discharger, PLCStn))
                    OutputString = OutputString & Chr(13) & Chr(10)
                    
                Case 15
                    OutputString = OutputString & Format$(Unload_ProgramEnd(Discharger, PLCStn))
                    OutputString = OutputString & Chr(13) & Chr(10)
                Case 16
                    If Discharger = 1 Then
                        OutputString = OutputString & Format$(OffManualLine(PLCStn))
                        OutputString = OutputString & Chr(13) & Chr(10)
                    End If
                Case 17
                    If Discharger = 1 Then
                        OutputString = OutputString & Format$(OffManualBags(PLCStn))
                        OutputString = OutputString & Chr(13) & Chr(10)
                    End If
                Case 18
                    OutputString = OutputString & Format$(Unload_StartStop(Discharger, PLCStn))
                    OutputString = OutputString & Chr(13) & Chr(10)
                Case 20
                    OutputString = OutputString & Format$(Unload_ExperssLine(Discharger, PLCStn))
                    OutputString = OutputString & Chr(13) & Chr(10)
                Case 21
                    OutputString = OutputString & Format$(Unload_CustomerMode(Discharger, PLCStn))
                    OutputString = OutputString & Chr(13) & Chr(10)
                Case 31 To 40
'                    OutputString = OutputString & Format$(CustomerExceptionList(n - 30, Discharger, PLCStn))
'                    OutputString = OutputString & Chr(13) & Chr(10)
                Case 41 To 60
                    OutputString = OutputString & Format$(Unload_Qty(n - 40, Discharger, PLCStn))
                    OutputString = OutputString & Chr(13) & Chr(10)
                Case 61 To 80
                    OutputString = OutputString & Format$(Unload_Line(n - 60, Discharger, PLCStn))
                    OutputString = OutputString & Chr(13) & Chr(10)
                Case 81 To 100
                    OutputString = OutputString & Format$(Unload_Batch(n - 80, Discharger, PLCStn))
                    OutputString = OutputString & Chr(13) & Chr(10)
                Case 101 To 120
                    OutputString = OutputString & Format$(Unload_Grp1(n - 100, Discharger, PLCStn))
                    OutputString = OutputString & Chr(13) & Chr(10)
                Case 121 To 140
                    OutputString = OutputString & Format$(Unload_Grp2(n - 120, Discharger, PLCStn))
                    OutputString = OutputString & Chr(13) & Chr(10)
                Case 141 To 160
                    OutputString = OutputString & Format$(Unload_Grp3(n - 140, Discharger, PLCStn))
                    OutputString = OutputString & Chr(13) & Chr(10)
            End Select
        Next n
    Next Discharger
    
    'Unloading Customers
    For n = 0 To PLCMaxUnloading(PLCStn)
        OutputString = OutputString & Format$(Unload_Cust(n, PLCStn))
        OutputString = OutputString & Chr(13) & Chr(10)
    Next n
    
        
    For n = 0 To PLCMaxUnloading(PLCStn)
        OutputString = OutputString & Format$(Unload_CustAuto(n, PLCStn))
        OutputString = OutputString & Chr(13) & Chr(10)
    Next n
    'Customer FIFO List
    
    For n = 0 To 95
        OutputString = OutputString & Format$(CustomerList(n, PLCStn))
        OutputString = OutputString & Chr(13) & Chr(10)
    Next n
    
    Debug.Print Len(OutputString)
    
    BuildBackupData = OutputString

Exit Function
BuildBackupData_Error:
ErrorHandler Err, "BuildBackupData", Err.Description, False
End Function
Public Sub BackupDataRead(PLCStn As Integer, Owner As String)
    'Write PLC data to the PLC.
    Dim Data As String
    Dim F As Integer
    Dim File As String
    Dim path As String
    On Error GoTo BackupDataRead_Error
    
    Data = BuildBackupData(PLCStn)
    path = DataPath & "Snapshot"
    'Write Data to local file incase we cannot connect to SQL Server.
    'Check if the Dir Exists
    If Dir(path, vbDirectory) = vbNullString Then
        'Create the Directory
        MkDir (path)
    End If
    
    File = path & "\" & PLCStn & "_" & Owner & "_" & Format$(Now, "HHMMSS_ddmmyyyy")
    F = FreeFile
        
    Open File For Output Shared As F
        Print #F, Data
    Close #F
    
    db_uspPLCBackup_Write PLCStn, Owner, Data, DateDiff("s", TimeStampDateStart, Now)

    'Delete the file if we successfully write to SQL
    Kill File
Exit Sub
BackupDataRead_Error:
    Resume Next
End Sub
Public Function GetLoadingBankFromBagNum(BagNo As Integer)
'    Dim n As Integer
'    For n = 1 To MaxStations
'        If Loading_BagStart(n) = 0 Then
'            GetLoadingBankFromBagNum = 0
'            Exit For
'        ElseIf (bagNo >= Loading_BagStart(n)) And (bagNo <= (Loading_BagStart(n) + (Loading_EndStn(n) - Loading_StartStn(n)))) Then
'           GetLoadingBankFromBagNum = n
'            Exit For
'        End If
'    Next n
''All odd stations are bank 1 in the plc
If BagNo Mod 2 > 0 Then
    GetLoadingBankFromBagNum = 1
Else
    GetLoadingBankFromBagNum = 2
End If

End Function
Public Sub LoadPLCs(cmbPLC As ComboBox, Optional StartPLC As Integer = 99)
    Dim PLC As Integer
        
    For PLC = 0 To UsedPLC
        cmbPLC.AddItem " " & Format$(PLC, "#0") & " -  " & PLCName(PLC)
        cmbPLC.ItemData(cmbPLC.NewIndex) = PLC
    Next PLC
    If StartPLC <> 99 Then
        cmbPLC.ListIndex = StartPLC
    Else
        cmbPLC.ListIndex = StartUpIndex
    End If
End Sub
