Attribute VB_Name = "MDIMenu"
Const MaxMenu = 15
Public MenuBarHighlightIndex    As Integer
Public MenuHighlightIndex       As Integer
Public MenuDispHighlightIndex   As Integer
Public MenuDispHighlightOption  As Integer
Public MenuBarIndex             As Integer

'MDI Menu
Public Const mnuView = 0
Public Const mnuDisp = 1
Public Const mnuLoad = 2
Public Const mnuUnlo = 3
Public Const mnuSetu = 4
Public Const mnuDiag = 5
Public Const mnuProg = 6
Public Const mnuWind = 7
Public Const mnuHelp = 8
Public Const mnuExit = 9
Public Const mnuTvie = 10

'View Menu
Const mnuSoil = 0
Const mnuClea = 1
Const mnuPrim = 2
Const mnuOver = 3
Const mnuRepo = 4
Const mnuMain = 5
Const mnuOthe = 6


'Setup Menu
Const mnuMBag = 0
Const mnuEBag = 1
Const mnuCatG = 2
Const mnuCats = 3
Const mnuCust = 4
Const mnuImage = 5
Const mnuReci = 6
Const mnuStor = 7
Const mnuRobo = 8
Const mnuCali = 9
Const mnuEsCo = 10



'Diag. Menu
Const mnuAlar = 0
Const mnuHist = 1
Const mnuSequ = 2
Const mnuCoun = 3
Const mnuIOut = 4
Const mnuStat = 5
Const mnuMSta = 6
Const mnuComm = 7
Const mnuSnap = 8

'Programmer Menu
Const mnuOpti = 0
Const mnuAdOp = 1
Const mnuDbOp = 2
Const mnuSqOp = 3
Const mnuMISo = 4
Const mnuMiOp = 5
Const mnuVnOp = 6
Const mnuUlOp = 7
Const mnuTask = 8
Const mnuCtrl = 9
Const mnuExpl = 10
Const mnuW7Co = 11
Const mnuBackUp = 12
Const mnuDebug = 13

'Help Menu
Const mnuManu = 0
Const mnuCont = 1
Const mnuNetw = 2
Const mnuAbou = 3

'Exit Menu
Const mnuShut = 0
Const mnuRest = 1
Const mnuClos = 2

'Display Options Menu
Public Const mnuDisplay1 = 0
Public Const mnuDisplay2 = 1
Public Const mnuColour1 = 2
Public Const mnuColour2 = 3

Const mnuDisplay1Size = 13
Const mnuDisplay2Size = 10
Const mnuColour1Size = 5
Const mnuColour2Size = 5

Sub MenuBarLoad()
    
    
    
    On Error GoTo MenuBarLoadError
    
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG", "MenuBarLoad", False
    
    Dim myCurrentLeft   As Long
    Dim myCurrentWidth  As Long
    Dim myMenuText(10)  As String
    
    MenuBarHighlightIndex = -1
    
    myCurrentLeft = 300 'Starting Left Position
    
    myMenuText(mnuView) = TextWord(71)    'View
    myMenuText(mnuDisp) = TextWord(5)     'Display Options
    myMenuText(mnuLoad) = TextWord(572)   'Loading
    myMenuText(mnuUnlo) = TextWord(10)    'Unloading
    myMenuText(mnuSetu) = TextWord(14)    'Setup
    myMenuText(mnuDiag) = "Diags."        'Diagnostics
    myMenuText(mnuProg) = "Programmer"    'Programmer
    myMenuText(mnuWind) = TextWord(537)   'Window
    myMenuText(mnuHelp) = TextWord(603)   'Help
    myMenuText(mnuExit) = TextWord(309)   'Exit
    myMenuText(mnuTvie) = App.Title & " V" & App.Major & "." & App.Minor & "." & App.Revision & " - " & Comms_frm.sck_PLC_Read(0).LocalIP
    
    
    
    With MDIMaindisp_frm
        
        .imgMnu.Visible = False
        
        'Visible menus
        For myMnuIndex = 0 To 10
            .lblMenu(myMnuIndex).Visible = True
        Next myMnuIndex
               
        'Loading Menu Visible / Enabled?
        .lblMenu(mnuLoad).Enabled = OperatorLoading Or (AccessLevel <> accOperator)
        .lblMenu(mnuLoad).Visible = LoadingProgramsMenu
        
                
        'Unloading Menu Visible / Enabled?
        .lblMenu(mnuUnlo).Visible = False
        
        'Programmer Menu
        .lblMenu(mnuProg).Visible = (AccessLevel >= accProgrammer)
        
        For PLCStn = 0 To UsedPLC
            If PLCMaxUnloading(PLCStn) > 0 Then
                .lblMenu(mnuUnlo).Visible = True
            End If
        Next PLCStn
        
        For myMnuIndex = 0 To 10
                    
            .lblFindSize.Caption = myMenuText(myMnuIndex)
            myCurrentWidth = (.lblFindSize.Width + 300)
            .lblMenu(myMnuIndex).Caption = myMenuText(myMnuIndex)
            .lblMenu(myMnuIndex).Width = myCurrentWidth
            .lblMenu(myMnuIndex).Left = myCurrentLeft
            
            If .lblMenu(myMnuIndex).Visible Then
                myCurrentLeft = myCurrentLeft + myCurrentWidth + 300
            End If
            
        Next myMnuIndex
        .lblMenu(mnuUnlo).Enabled = OperatorUnloading Or (AccessLevel <> accOperator)
        
        
        
        .lblMenu(mnuExit).Enabled = True
        .lblMenu(mnuTvie).Enabled = False
        
    End With
    
    
    
Exit Sub

MenuBarLoadError:

End Sub
Sub MenuBarHighlight(Index As Integer)
    With MDIMaindisp_frm
        If (Index <> 100) Then
            If (MenuBarHighlightIndex <> Index) Then
                .imgMnu.Left = .lblMenu(Index).Left - 150
                .imgMnu.Top = .lblMenu(Index).Top - 130
                .imgMnu.Width = .lblMenu(Index).Width + 300
                .imgMnu.Visible = True
                If Menufrm.Visible Or MenuDisplay_frm.Visible Then
                    Call MenuConfig(Index)
                End If
            End If
        Else
            If .Visible Then
                .imgMnu.Visible = False
                'Menufrm.Visible = False
                'MenuDisplay_frm.Visible = False
            End If
        End If
        MenuBarHighlightIndex = Index
    End With
    
End Sub
Public Sub MenuHighlight(Index As Integer)
    
    With Menufrm
        If (Index <> 100) Then
            If (MenuHighlightIndex <> Index) Then
                .imgMenu.Top = .picMenu(Index).Top
                .imgMenu.Visible = True
            End If
        Else
            'If Not .Visible Then
                .imgMenu.Visible = False
            'End If
        End If
        MenuHighlightIndex = Index
    End With
    
End Sub
Public Sub DispMenuHighlight(Index As Integer, HighlightOption As Integer)
    
    With MenuDisplay_frm
        If (Index <> 100) Then
            If (MenuDispHighlightIndex <> Index) Or (MenuDispHighlightOption <> HighlightOption) Then
                Select Case HighlightOption
                    Case mnuDisplay1
                        .imgMenu.Top = .picDisplay1(Index).Top
                    Case mnuDisplay2
                        .imgMenu.Top = .picDisplay2(Index).Top
                    Case mnuColour1
                        .imgMenu.Top = .picColour1(Index).Top
                    Case mnuColour2
                        .imgMenu.Top = .picColour2(Index).Top
                End Select
                .imgMenu.Visible = True
            End If
        Else
            'If Not .Visible Then
                .imgMenu.Visible = False
            'End If
        End If
        MenuDispHighlightIndex = Index
        MenuDispHighlightOption = HighlightOption
    End With
    
End Sub
Public Sub MenuPosition(Index As Integer)
    
    On Error GoTo MenuPositionError
        
    
    Dim TextMaxWidth As Integer
    
    TextMaxWidth = 1740 'Min Width that can display correctly
    
    MenuHighlightIndex = -1
    
    With Menufrm
        
        .Hide
        '.Visible = False
        
        .picIconHolder.Top = 0
        .picIconHolder.Left = 0
        .picIconHolder.Width = 540
                     
        myCurrentTop = 15
              
        For mymenu = 0 To MaxMenu
            
            .lblMenu(mymenu).AutoSize = True
            
            .picMenu(mymenu).Top = myCurrentTop
            .lblMenu(mymenu).Top = myCurrentTop + 135
            .linMenu(mymenu).Y1 = myCurrentTop + 540 + 60
            .linMenu(mymenu).Y2 = .linMenu(mymenu).Y1
                
            If .lblMenu(mymenu).Width > TextMaxWidth And .lblMenu(mymenu).Visible Then
                TextMaxWidth = .lblMenu(mymenu).Width
            End If
            
            If .lblMenu(mymenu).Visible Then
                myCurrentTop = myCurrentTop + .picMenu(mymenu).Height + 30
            End If
            
            If .linMenu(mymenu).Visible Then
                myCurrentTop = myCurrentTop + 120
            End If
            
        Next mymenu
                        
        TextMaxWidth = TextMaxWidth + 75
                        
        .picIconHolder.Height = myCurrentTop
        
        .imgMenu.Left = .picIconHolder.Width + 15
        .imgMenu.Width = (TextMaxWidth + 300)
        .imgMenu.Visible = False
        For mymenu = 0 To MaxMenu
               
            .lblMenu(mymenu).AutoSize = False
            .lblMenu(mymenu).Width = TextMaxWidth
            .linMenu(mymenu).X1 = .imgMenu.Left
            .linMenu(mymenu).X2 = (.imgMenu.Left + .imgMenu.Width)
        Next mymenu
               
        .picMenuHolder.Width = .lblMenu(0).Left + TextMaxWidth + 120
        .picShadow.Width = .picMenuHolder.Width
        
        .picMenuHolder.Height = myCurrentTop + 30
        .picShadow.Height = .picMenuHolder.Height
               
        .picShadow.Left = 30
        .picShadow.Top = 30
               
        .Left = MDIMaindisp_frm.lblMenu(Index).Left - 75
        .Top = 0 ' MDIMaindisp_frm.picMenu.Height + 335 '600
        .Height = .picShadow.Top + .picShadow.Height
        .Width = .picShadow.Left + .picShadow.Width
        '.Visible = True
        .Show
    End With

Exit Sub
MenuPositionError:
    
    ErrorHandler Err, "MDIMenu MenuPositionMenu", Err.Description, False
    Resume Next
    
End Sub
Public Sub DisplayMenuPosition()
    
    On Error GoTo DisplayMenuPositionError
        
    Dim TextMaxWidth As Integer
    
    TextMaxWidth = 0
    
    MenuHighlightIndex = -1
    
    With MenuDisplay_frm
        
        .Hide
        '.Visible = False
        
        .picIconHolder.Top = 0
        .picIconHolder.Left = 0
        .picIconHolder.Width = 540
                     
        myCurrentTop = 15
              
        'Display Option 1st Menu
        For mymenu = 0 To mnuDisplay1Size
            
            .lblDisplay1(mymenu).AutoSize = True
            
            .picDisplay1(mymenu).Top = myCurrentTop
            .lblDisplay1(mymenu).Top = myCurrentTop + 60
                        
            '.picDisplay1(myMenu).Visible = .lblDisplay1(myMenu).Visible
                        
            If .lblDisplay1(mymenu).Width > TextMaxWidth And .lblDisplay1(mymenu).Visible Then
                TextMaxWidth = .lblDisplay1(mymenu).Width
            End If
            
            If .lblDisplay1(mymenu).Visible Then
                myCurrentTop = myCurrentTop + .picDisplay1(mymenu).Height + 30
            End If
                       
        Next mymenu
                       
        'Seperation Line
        .linMenu(0).Y1 = myCurrentTop + 60
        .linMenu(0).Y2 = .linMenu(0).Y1
        myCurrentTop = myCurrentTop + 120
        
        'Display Option 2nd Menu
        For mymenu = 0 To mnuDisplay2Size
            
            .lblDisplay2(mymenu).AutoSize = True
            
            .picDisplay2(mymenu).Top = myCurrentTop
            .lblDisplay2(mymenu).Top = myCurrentTop + 60
                            
            If .lblDisplay2(mymenu).Width > TextMaxWidth And .lblDisplay2(mymenu).Visible Then
                TextMaxWidth = .lblDisplay2(mymenu).Width
            End If
            
            If .lblDisplay2(mymenu).Visible Then
                myCurrentTop = myCurrentTop + .picDisplay2(mymenu).Height + 30
            End If
                       
        Next mymenu
                   
        'Seperation Line
        .linMenu(1).Y1 = myCurrentTop + 60
        .linMenu(1).Y2 = .linMenu(1).Y1
        myCurrentTop = myCurrentTop + 120
                   
        'Colour Option 1st Menu
        For mymenu = 0 To mnuColour1Size
            
            .lblColour1(mymenu).AutoSize = True
            
            .picColour1(mymenu).Top = myCurrentTop
            .lblColour1(mymenu).Top = myCurrentTop + 60
                            
            If .lblColour1(mymenu).Width > TextMaxWidth And .lblColour1(mymenu).Visible Then
                TextMaxWidth = .lblColour1(mymenu).Width
            End If
            
            If .lblColour1(mymenu).Visible Then
                myCurrentTop = myCurrentTop + .picColour1(mymenu).Height + 30
            End If
                       
        Next mymenu
                       
        'Seperation Line
        .linMenu(2).Y1 = myCurrentTop + 60
        .linMenu(2).Y2 = .linMenu(2).Y1
        myCurrentTop = myCurrentTop + 120
        
        'Colour Option 2nd Menu
        For mymenu = 0 To mnuColour2Size
            
            .lblColour2(mymenu).AutoSize = True
            
            .picColour2(mymenu).Top = myCurrentTop
            .lblColour2(mymenu).Top = myCurrentTop + 60
                            
            If .lblColour2(mymenu).Width > TextMaxWidth And .lblColour2(mymenu).Visible Then
                TextMaxWidth = .lblColour2(mymenu).Width
            End If
            
            If .lblColour2(mymenu).Visible Then
                myCurrentTop = myCurrentTop + .picColour2(mymenu).Height + 30
            End If
                       
        Next mymenu
                       
        TextMaxWidth = TextMaxWidth + 75
                        
        .picIconHolder.Height = myCurrentTop
        
        .imgMenu.Left = .picIconHolder.Width + 15
        .imgMenu.Width = (TextMaxWidth + 300)
        .imgMenu.Visible = False
              
        'Set Width for each menu item
        For mymenu = 0 To mnuDisplay1Size
            .lblDisplay1(mymenu).AutoSize = False
            .lblDisplay1(mymenu).Width = TextMaxWidth
        Next mymenu
        For mymenu = 0 To mnuDisplay2Size
            .lblDisplay2(mymenu).AutoSize = False
            .lblDisplay2(mymenu).Width = TextMaxWidth
        Next mymenu
        For mymenu = 0 To mnuColour1Size
            .lblColour1(mymenu).AutoSize = False
            .lblColour1(mymenu).Width = TextMaxWidth
        Next mymenu
        For mymenu = 0 To mnuColour2Size
            .lblColour2(mymenu).AutoSize = False
            .lblColour2(mymenu).Width = TextMaxWidth
        Next mymenu
        For mymenu = 0 To 2
            .linMenu(mymenu).X1 = .imgMenu.Left
            .linMenu(mymenu).X2 = (.imgMenu.Left + .imgMenu.Width)
        Next mymenu
               
        .picMenuHolder.Width = .lblDisplay1(0).Left + TextMaxWidth + 120
        .picShadow.Width = .picMenuHolder.Width
        
        .picMenuHolder.Height = myCurrentTop + 30
        .picShadow.Height = .picMenuHolder.Height
               
        .picShadow.Left = 30
        .picShadow.Top = 30
               
        .Left = MDIMaindisp_frm.lblMenu(mnuDisp).Left - 75
        .Top = 0 'MDIMaindisp_frm.picMenu.Height + 335
        .Height = .picShadow.Top + .picShadow.Height
        .Width = .picShadow.Left + .picShadow.Width
        '.Visible = True
        .Show
        
    End With

Exit Sub
DisplayMenuPositionError:
    
    ErrorHandler Err, "MDIMenu DisplayMenuPosition", Err.Description, False
    Resume Next
    
End Sub
Public Sub DisplayMenuSetPictures()
       
    'Set Pictures
    
    With MenuDisplay_frm
    
        For mymenu = 0 To mnuDisplay1Size
            If DisplayOption1 = mymenu Then
                .picDisplay1(mymenu).Picture = .picChecked.Picture
            Else
                .picDisplay1(mymenu).Picture = .picNone.Picture
            End If
        Next mymenu
        For mymenu = 0 To mnuDisplay2Size
            If DisplayOption2 = mymenu Then
                .picDisplay2(mymenu).Picture = .picChecked.Picture
            Else
                .picDisplay2(mymenu).Picture = .picNone.Picture
            End If
        Next mymenu
        For mymenu = 0 To mnuColour1Size
            If ColourOption1 = mymenu Then
                .picColour1(mymenu).Picture = .picChecked.Picture
            Else
                .picColour1(mymenu).Picture = .picNone.Picture
            End If
        Next mymenu
        For mymenu = 0 To mnuColour2Size
            If ColourOption2 = mymenu Then
                .picColour2(mymenu).Picture = .picChecked.Picture
            Else
                .picColour2(mymenu).Picture = .picNone.Picture
            End If
        Next mymenu
    
    End With
    
End Sub

Public Sub MenuClick(Index As Integer, Optional DisplayOptionIndex As Integer)
    
    
    Dim OpenForm    As Form
    Dim FormOpen    As Boolean
    Dim FormIndex   As Integer
    
    Dim StnName     As String
    Dim DischName   As String
       
    Dim myTag           As String
    
    
    
    If MenuBarIndex <> mnuDisp And MenuBarIndex <> mnuSetu Then
        Menufrm.Hide
    End If
    
    Select Case MenuBarIndex
        Case mnuView
                       
            Select Case Index
                Case mnuSoil
                    DisplayForm maindisp0_frm, Menufrm.lblMenu(mnuSoil).Caption
                Case mnuClea
                    DisplayForm maindisp1_frm, Menufrm.lblMenu(mnuClea).Caption
                Case mnuPrim
                    DisplayForm maindisp2_frm, Menufrm.lblMenu(mnuPrim).Caption
            
                
                Case mnuOver
                    DisplayForm maindisp0_frm, Menufrm.lblMenu(mnuOver).Caption
                Case mnuRepo
                    Dim repWindow As Long
                    
                    repWindow = FindWindow(vbNullString, "Trackview 5 " & TextWord(300))
                    'repWindow = GetProcessId("Reports.exe")
                    If repWindow <> 0 Then '' Reports is already open
                        If IsIconic(repWindow) <> 0 Then ' It's minimized...restore it
                            ShowWindow repWindow, SW_SHOWMAXIMIZED 'SW_SHOWNORMAL
                         End If
                        SetForegroundWindow repWindow ' Make it the foreground window
                    Else
                        Shell App.path & "\Reports.exe", vbBringToFront
'                        Do While (repWindow = 0) '' Wait for reports to load then set to foreground.
'                            repWindow = FindWindow(vbNullString, "Trackview 5 " & TextWord(300))
'                            If repWindow <> 0 Then
'                                SetForegroundWindow repWindow ' Make it the foreground window
'                            Else
'                                DoEvents
'                            End If
'                        Loop
                    End If
                    
                Case mnuMain
                    BrowserPath = GetSetting("TrackView", "Config", "MaintPath")
                    DisplayForm Browser_frm
                
            
            End Select
        
        Case mnuDisp
            Select Case DisplayOptionIndex
                Case mnuDisplay1
                    DisplayOption1 = Index
                    db_uspSettingSave "SettingsLocal", "Display", "DisplayOption1", Index, PCNum
                Case mnuDisplay2
                    DisplayOption2 = Index
                    db_uspSettingSave "SettingsLocal", "Display", "DisplayOption2", Index, PCNum
                Case mnuColour1
                    ColourOption1 = Index
                    db_uspSettingSave "SettingsLocal", "Display", "ColourOption1", Index, PCNum
                Case mnuColour2
                    ColourOption2 = Index
                    db_uspSettingSave "SettingsLocal", "Display", "ColourOption2", Index, PCNum
                               
            End Select
            
            Call SetMDIcaption
            Call DisplayMenuSetPictures
                
        Case mnuLoad
                   
            If Index = 100 Then
                Index = 0
'            ElseIf Index > 1 Then
'                Index = Index + 1
            End If

            If DebugToErrorFile Then ErrorHandler 0, "DEBUG", "MenuClick Case mnuLoad" & Str(Index), False

        
            StnName = db_uspSettingGet("SettingsNetwork", "Config", "StationName" & Str(Index), "No Name! " & Index, PCNum)
            
            
            ThisStation = Index
            FormOpen = False

            'Find out if the form is Already open
            With MDIMaindisp_frm
                For Each OpenForm In Forms
                    If OpenForm.Caption = StnName And (OpenForm.Name = "Loading_frm" Or OpenForm.Name = "XSort_frm") Then
                        FormOpen = True
                        DisplayForm OpenForm
                    End If
                Next OpenForm
            End With
        
            'If the form is not open then create new instance
            If FormOpen = False Then
                Screen.MousePointer = vbHourglass

                Dim NewLoad As New Loading_frm
                NewLoad.Show

                
            End If
              
        Case mnuUnlo
                                              
            If Index = 100 Then Index = 0
            
            myTag = Menufrm.lblMenu(Index).Tag
            If Len(myTag) = 3 Then
                UnloadingPLC = Val(Left$(myTag, 1))
                UnloadingIndex = Val(Right$(myTag, 2))
            Else
                ErrorHandler 0, "DEBUG", "MenuClick Case mnuUnlo Invalid Tag" & myTag, True
                Exit Sub
            End If
            
            If DebugToErrorFile Then ErrorHandler 0, "DEBUG", "MenuClick Case mnuUnlo Tag = " & myTag & "  Index = " & Str(Index), False
                       
            DischName = db_uspSettingGet("SettingsNetwork", "DischargerName PLC" & Str(UnloadingPLC), Format$(UnloadingIndex), "Discharger" & Str(UnloadingIndex), PCNum)
                
            FormOpen = False
            
            'Find out if the form is Already open
            With MDIMaindisp_frm
                For Each OpenForm In Forms
                    If OpenForm.Caption = DischName Then
                        FormOpen = True
                        'OpenForm.ZOrder vbBringToFront
                        DisplayForm OpenForm
                    End If
                Next OpenForm
            End With
                
            'If the form is not open then create new instance
            If FormOpen = False Then
                Screen.MousePointer = vbHourglass
                Dim NewUnload As New Unloading
                NewUnload.Show
            End If
                        
        Case mnuSetu
                       
            Select Case Index
                Case mnuMBag
                    'New Feature - Drag Drop enable
                    MoveStorage = Not MoveStorage
                    If MoveStorage Then
                        Menufrm.picMenu(mnuMBag).Picture = Menufrm.picChecked.Picture
                        EditStorage = False
                        Menufrm.picMenu(mnuEBag).Picture = LoadPicture() 'No Picture
                    Else
                        Menufrm.picMenu(mnuMBag).Picture = LoadPicture() 'No Picture
                    End If
                    
                Case mnuEBag
                    EditStorage = Not EditStorage
                    If EditStorage Then
                        Menufrm.picMenu(mnuEBag).Picture = Menufrm.picChecked.Picture
                        MoveStorage = False
                        Menufrm.picMenu(mnuMBag).Picture = LoadPicture() 'No Picture
                    Else
                        Menufrm.picMenu(mnuEBag).Picture = LoadPicture() 'No Picture
                    End If
                                
                Case mnuCatG
                    Menufrm.Hide
                    dbView(1) = dbGroups
                    dbView(2) = dbNone
                    Database_frm.Show vbModal
                Case mnuCats
                    Menufrm.Hide
                    dbView(1) = dbCategories
                    dbView(2) = dbGroups
                    Database_frm.Show vbModal
                Case mnuCust
                    Menufrm.Hide
                    dbView(1) = dbCustomers
                    dbView(2) = dbNone
                    Database_frm.Show vbModal
                Case mnuImage
                    Menufrm.Hide
                    DisplayForm Picturedb_frm
                Case mnuReci
                    Menufrm.Hide
                    Recirc_Frm.Config 0 'Index
                    DisplayForm Recirc_Frm, Menufrm.lblMenu(mnuReci).Caption
                Case mnuStor
                    Menufrm.Hide
                    OptionsStorage.Config 0 'Start with PLC 0
                    DisplayForm OptionsStorage
                Case mnuRobo
                    Menufrm.Hide
                    Options_rb.Config 0, 1 'Start with PLC 0 and RB1
                    DisplayForm Options_rb
                Case mnuCali
                    Menufrm.Hide
                    DisplayForm Station_frm
                Case mnuEsCo
                   Menufrm.Hide
                   DisplayForm EasisortConfig_frm, TextWord(468)
        
                    
            End Select
           
        Case mnuDiag
            
            Select Case Index
                
                Case mnuAlar
                    DisplayForm Fault_frm
                Case mnuHist
                    DisplayForm FaultHistory_frm
                Case mnuSequ
                    DisplayForm Sequences_frm
                Case mnuCoun
                    DisplayForm Counters_frm
                Case mnuIOut
                        
                    FormIndex = 0
                    If Not ForceOpen(1) Then
                        FormIndex = 1
                    ElseIf Not ForceOpen(2) Then
                        FormIndex = 2
                    ElseIf Not ForceOpen(3) Then
                        FormIndex = 3
                    ElseIf Not ForceOpen(4) Then
                        FormIndex = 4
                    End If
        
                    If FormIndex <> 0 Then
                        ForceFormIndex = FormIndex
                        Dim NewForce As New PLCForce
                        NewForce.Show
                    End If
    
                    'Find out if the form is Already open
                    With MDIMaindisp_frm
                        For Each OpenForm In Forms
                            If OpenForm.Name = "PLCForce" Then
                                OpenForm.ZOrder vbBringToFront
                                'DisplayForm OpenForm
                            End If
                        Next OpenForm
                    End With
                    
                Case mnuStat
                    DisplayForm PLCStatus
                Case mnuMSta
                    DisplayForm SQLServerStatus_frm
                Case mnuComm
                    DisplayForm Comms_frm
               Case mnuSnap
                    'DisplayForm DataBackup_Frm
                    DisplayForm SnapShot_frm
'               Case Else
'                    Dim n As Integer
'                    n = (Index - mnuSnap - 1)
'                    If (n >= 0) And n <= UBound(PLCIpAddress()) Then
'                        HelpFile = PLCIpAddress(n) & "\sdm"
'                        BrowserPath = HelpFile
'                        Browser_frm.Config
'                    End If
                    
            End Select
            
        Case mnuProg
                       
            Select Case Index
                Case mnuOpti
                    DisplayForm Options_frm
                Case mnuAdOp
                    DisplayForm OptionsProg_frm
                Case mnuDbOp
                    DisplayForm Options_db
                Case mnuSqOp
                    DisplayForm OptionsSQL_frm
                Case mnuMiOp
                    DisplayForm OptionsMIS_frm
                Case mnuMISo
                    DisplayForm OptionsMISSQL_frm
                Case mnuVnOp
                    DisplayForm Options_vnc
                Case mnuUlOp
                    OptionsMachines.Config 0 'Start with PLC 0
                    DisplayForm OptionsMachines
                    
                Case mnuTask
                    Function_TaskMan
                Case mnuCtrl
                    Function_Control
                Case mnuExpl
                    Function_explorer
                Case mnuW7Co
                    Function_WinConfig
                Case mnuBackUp
                    DisplayForm DataBackup_Frm
                    'DisplayForm SnapShot_frm
                Case mnuDebug
                    DisplayForm debugInfo_frm
                    
            End Select
           
        Case mnuWind
            
            For Each OpenForm In Forms
                Debug.Print OpenForm.Caption
                Debug.Print Menufrm.lblMenu(Index).Caption
                If OpenForm.Caption = Menufrm.lblMenu(Index).Caption Then
                    'DisplayForm OpenForm
                    OpenForm.ZOrder vbBringToFront
                End If
                
            Next OpenForm
            
            
        Case mnuHelp
                        
            Select Case Index
                Case mnuManu
                    HelpFile = DataPath & TextWord(607)
                    BrowserPath = HelpFile
                    Browser_frm.Config
                Case mnuCont
                    HelpFile = DataPath & TextWord(606)
                    BrowserPath = HelpFile
                    Browser_frm.Config
                Case mnuNetw
                    HelpFile = DataPath & TextWord(599)
                    BrowserPath = HelpFile
                    Browser_frm.Config
                Case mnuAbou
                    DisplayForm About_frm
             
            End Select
             
        Case mnuExit
                       
            'Close connection to all databases
            dbClose
            Select Case Index
                Case mnuShut
                    WindowsShutDown
                    End
                Case mnuRest
                    WindowsReStart
                    End
                Case mnuClos
                    End
            End Select
         
            
    End Select


        
End Sub
Public Sub MenuConfig(Index As Integer)
          
    Dim LastMenuItem    As Integer
    Dim OpenForm        As Form
    Dim OpenFormCount   As Integer
    
    MenuBarIndex = Index
    
    'Display option is a different menu
    If (Index = mnuDisp) Then
        'Menufrm.Visible = False
        Menufrm.Hide
        Call DisplayMenuConfig
        Exit Sub
    Else
        'MenuDisplay_frm.Visible = False
        MenuDisplay_frm.Hide
    End If
    
    With Menufrm
               
        Select Case Index
            
            Case mnuView
                
                .picMenu(mnuSoil).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuSoil).Caption = TextWord(169) 'Soiled
                .lblMenu(mnuSoil).Visible = Maindisp0Used
                .linMenu(mnuSoil).Visible = False
                
                .picMenu(mnuClea).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuClea).Caption = TextWord(169) 'Clean
                .lblMenu(mnuClea).Visible = Maindisp1Used
                .linMenu(mnuClea).Visible = False
                    
                .picMenu(mnuPrim).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuPrim).Caption = TextWord(611) 'Primary
                .lblMenu(mnuPrim).Visible = Maindisp2Used
                .linMenu(mnuPrim).Visible = False
 
                .picMenu(mnuOver).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuOver).Caption = TextWord(850) 'Overview
                .lblMenu(mnuOver).Visible = False
                .linMenu(mnuOver).Visible = False
                
                .picMenu(mnuRepo).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuRepo).Caption = TextWord(300) 'Reports
                .lblMenu(mnuRepo).Visible = Reporting 'Reports
                .linMenu(mnuRepo).Visible = MaintenanceUsed
                                
                .picMenu(mnuMain).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuMain).Caption = TextWord(597) 'Maintenance Package
                .lblMenu(mnuMain).Visible = MaintenanceUsed
                .linMenu(mnuMain).Visible = RunAnother 'Don't show line if not Run Another Program
                
                .picMenu(mnuOthe).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuOthe).Caption = RunAnotherProgMenuText 'Run Another Program
                .lblMenu(mnuOthe).Visible = RunAnother
                .linMenu(mnuOthe).Visible = False
                               
                               
                               
                               
                               
                               
                LastMenuItem = mnuOthe
                
            
            Case mnuLoad
                .lblMenu(0).Visible = False
                .linMenu(0).Visible = False
                If (MaxDisplayStationBanks > 0) Then
                    For mymenu = 1 To MaxDisplayStationBanks
                        .picMenu(mymenu).Picture = LoadPicture() 'No Picture
                        .lblMenu(mymenu).Caption = "X-Sort " & Format$(mymenu)
                        .lblMenu(mymenu).Caption = db_uspSettingGet("SettingsNetwork", "Config", "StationName" & Str(mymenu), TextWord(534) & " " & TextWord(335) & " " & Str(mymenu), PCNum)
                        .lblMenu(mymenu).Visible = True
                        .linMenu(mymenu).Visible = False
                    Next mymenu
                    LastMenuItem = MaxDisplayStationBanks
                End If
                
            Case mnuUnlo
                                
                mymenu = 0
                                               
                For PLCStn = 0 To UsedPLC
                    If PLCMaxUnloading(PLCStn) > 0 Then
                        
                        For n = PLCStartDischarger(PLCStn) To PLCMaxUnloading(PLCStn)
                            .picMenu(mymenu).Picture = LoadPicture() 'No Picture
                            .lblMenu(mymenu).Caption = db_uspSettingGet("SettingsNetwork", "DischargerName PLC" & Str(PLCStn), Format$(n), "Discharger" & Str(n), PCNum)
                            .lblMenu(mymenu).Visible = True
                            .linMenu(mymenu).Visible = (n = PLCMaxUnloading(PLCStn)) And (PLCStn < UsedPLC)
                            .lblMenu(mymenu).Tag = Format$(PLCStn, "0") & Format$(n, "00")
                            mymenu = mymenu + 1
                        Next n
                    End If
                Next PLCStn
                
                LastMenuItem = (mymenu - 1)
                
            Case mnuSetu
               
                .picMenu(mnuMBag).Picture = LoadPicture() 'No Picture
                If MoveStorage Then
                    .picMenu(mnuMBag).Picture = .picChecked.Picture
                Else
                    .picMenu(mnuMBag).Picture = LoadPicture() 'No Picture
                End If
                .lblMenu(mnuMBag).Caption = TextWord(466)
                .lblMenu(mnuMBag).Visible = True
                .linMenu(mnuMBag).Visible = False
                
                If EditStorage Then
                    .picMenu(mnuEBag).Picture = .picChecked.Picture
                Else
                    .picMenu(mnuEBag).Picture = LoadPicture() 'No Picture
                End If
                .lblMenu(mnuEBag).Caption = TextWord(536)
                .lblMenu(mnuEBag).Visible = True
                .linMenu(mnuEBag).Visible = True
                
                .picMenu(mnuCatG).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuCatG).Caption = TextWord(670)
                .lblMenu(mnuCatG).Visible = Not dbCatUsed
                .linMenu(mnuCatG).Visible = False
                
                .picMenu(mnuCats).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuCats).Caption = TextWord(16)
                .lblMenu(mnuCats).Visible = dbCatUsed
                .linMenu(mnuCats).Visible = False
                
                .picMenu(mnuCust).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuCust).Caption = TextWord(17)
                .lblMenu(mnuCust).Visible = True
                .linMenu(mnuCust).Visible = (Val(dbSettingValue(GrpDbPicAddress)) = 0)
                
                .picMenu(mnuImage).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuImage).Caption = TextWord(931)
                .lblMenu(mnuImage).Visible = (Val(dbSettingValue(GrpDbPicAddress)) > 0)
                .linMenu(mnuImage).Visible = (Val(dbSettingValue(GrpDbPicAddress)) > 0)
                
                Dim DisplayRecirc As Boolean
                If AutomaticRecirculation(0) Or AutomaticRecirculation(1) Then
                    DisplayRecirc = True
                Else
                    DisplayRecirc = False
                End If
                
                .picMenu(mnuReci).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuReci).Caption = TextWord(284)
                .lblMenu(mnuReci).Visible = DisplayRecirc
                .linMenu(mnuReci).Visible = False
                
                .picMenu(mnuStor).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuStor).Caption = TextWord(820)
                .lblMenu(mnuStor).Visible = UseStorageAreas
                .linMenu(mnuStor).Visible = True
                
                .picMenu(mnuRobo).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuRobo).Caption = TextWord(800)
                .lblMenu(mnuRobo).Visible = RoboUsed
                .linMenu(mnuRobo).Visible = False
                
                .picMenu(mnuCali).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuCali).Caption = TextWord(218)
                .lblMenu(mnuCali).Visible = (MaxStations <> 0)
                .linMenu(mnuCali).Visible = True    'zane
                
                .picMenu(mnuEsCo).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuEsCo).Caption = TextWord(468)
                .lblMenu(mnuEsCo).Visible = db_uspSettingGet("SettingsNetwork", "Common", "PulseEasiSorts", Value, PCNum)
                .linMenu(mnuEsCo).Visible = db_uspSettingGet("SettingsNetwork", "Common", "PulseEasiSorts", Value, PCNum)
                
                LastMenuItem = mnuEsCo
               
            Case mnuDiag
                                            
                .picMenu(mnuAlar).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuAlar).Caption = TextWord(13)
                .lblMenu(mnuAlar).Visible = False '(AlarmMessage <> "") 'No need for menu as shown automatically / in window list
                .linMenu(mnuAlar).Visible = False
                
                .picMenu(mnuHist).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuHist).Caption = TextWord(656)
                .lblMenu(mnuHist).Visible = True
                .linMenu(mnuHist).Visible = True
                
                .picMenu(mnuSequ).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuSequ).Caption = TextWord(119)
                .lblMenu(mnuSequ).Visible = True
                .linMenu(mnuSequ).Visible = False
                
                .picMenu(mnuCoun).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuCoun).Caption = TextWord(500)
                .lblMenu(mnuCoun).Visible = True
                .linMenu(mnuCoun).Visible = False
                
                .picMenu(mnuIOut).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuIOut).Caption = TextWord(636)
                .lblMenu(mnuIOut).Visible = True
                .linMenu(mnuIOut).Visible = False
                
                .picMenu(mnuStat).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuStat).Caption = TextWord(23)
                .lblMenu(mnuStat).Visible = True
                .linMenu(mnuStat).Visible = True
                
                .picMenu(mnuMSta).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuMSta).Caption = "MIS " & TextWord(7)
                .lblMenu(mnuMSta).Visible = SQLServerUse
                .linMenu(mnuMSta).Visible = False
                
                
                .picMenu(mnuComm).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuComm).Caption = TextWord(531)
                .lblMenu(mnuComm).Visible = True
                .linMenu(mnuComm).Visible = True
                
                .picMenu(mnuSnap).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuSnap).Caption = "PLC Snapshot"
                .lblMenu(mnuSnap).Visible = True
                .linMenu(mnuSnap).Visible = False
                
'                'SDM Pages
'
'                Dim lastMenu As Integer
'                lastMenu = mnuBackUp + 1
'
'
'                For n = 0 To UBound(PLCIpAddress())
'                    .picMenu(lastMenu + n).Picture = LoadPicture() 'No Picture
'                    If n <= UBound(PLCName()) Then .lblMenu(lastMenu + n).Caption = PLCName(n) + " SDM" Else .lblMenu(lastMenu + n).Caption = "SDM "
'                    .lblMenu(lastMenu + n).Visible = True
'                    .linMenu(lastMenu + n).Visible = False
'                Next n
'                lastMenu = lastMenu + n - 1
                LastMenuItem = mnuSnap
                   
            Case mnuProg
                
                               
                .picMenu(mnuOpti).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuOpti).Caption = "Options"
                .lblMenu(mnuOpti).Visible = True
                .linMenu(mnuOpti).Visible = False
                
                .picMenu(mnuAdOp).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuAdOp).Caption = "Advanced Options"
                .lblMenu(mnuAdOp).Visible = (AccessLevel >= accDesigner)
                .linMenu(mnuAdOp).Visible = False
                
                .picMenu(mnuDbOp).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuDbOp).Caption = "Database Options"
                .lblMenu(mnuDbOp).Visible = (AccessLevel >= accDesigner)
                .linMenu(mnuDbOp).Visible = False
                
                .picMenu(mnuSqOp).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuSqOp).Caption = "SQL Server Options"
                .lblMenu(mnuSqOp).Visible = True
                .linMenu(mnuSqOp).Visible = False
                
                .picMenu(mnuMiOp).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuMiOp).Caption = "MIS Options"
                .lblMenu(mnuMiOp).Visible = True
                .linMenu(mnuMiOp).Visible = False
                
                .picMenu(mnuMISo).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuMISo).Caption = "MIS SQL Options"
                .lblMenu(mnuMISo).Visible = True
                .linMenu(mnuMISo).Visible = False
                                
                .picMenu(mnuVnOp).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuVnOp).Caption = "VNC Options"
                .lblMenu(mnuVnOp).Visible = True
                .linMenu(mnuVnOp).Visible = True
                
                .picMenu(mnuUlOp).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuUlOp).Caption = "Unloading Program Options"
                .lblMenu(mnuUlOp).Visible = True
                .linMenu(mnuUlOp).Visible = False
                
                .picMenu(mnuTask).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuTask).Caption = "Task Manager"
                .lblMenu(mnuTask).Visible = True
                .linMenu(mnuTask).Visible = False
                
                .picMenu(mnuCtrl).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuCtrl).Caption = "Control Panel"
                .lblMenu(mnuCtrl).Visible = True
                .linMenu(mnuCtrl).Visible = False
                
                .picMenu(mnuExpl).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuExpl).Caption = "Explorer"
                .lblMenu(mnuExpl).Visible = True
                .linMenu(mnuExpl).Visible = False
                
                .picMenu(mnuW7Co).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuW7Co).Caption = "Windows Config"
                .lblMenu(mnuW7Co).Visible = True
                .linMenu(mnuW7Co).Visible = True
                
                .picMenu(mnuBackUp).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuBackUp).Caption = "PLC Backup" 'TextWord(531)
                .lblMenu(mnuBackUp).Visible = True
                .linMenu(mnuBackUp).Visible = True
                
                .picMenu(mnuDebug).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuDebug).Caption = "Debug SQL info"
                .lblMenu(mnuDebug).Visible = True
                .linMenu(mnuDebug).Visible = False
                
                
                LastMenuItem = mnuDebug
                
            Case mnuWind
                               
                OpenFormCount = 0
                
                'Hide the 1st menu
                .lblMenu(0).Visible = False
                For Each OpenForm In Forms
                    If OpenForm.Caption <> "" And OpenForm.Name <> "MDIMaindisp_frm" And OpenForm.Name <> "Comms_frm" And OpenForm.Name <> "Kannegiesser_frm" And (OpenFormCount < 15) Then
                        .picMenu(OpenFormCount).Picture = LoadPicture() 'No Picture
                        .lblMenu(OpenFormCount).Caption = OpenForm.Caption
                        .lblMenu(OpenFormCount).Tag = OpenForm.Name
                        .lblMenu(OpenFormCount).Visible = True
                        .linMenu(OpenFormCount).Visible = False
                        OpenFormCount = OpenFormCount + 1
                        
                    End If
                Next OpenForm
                
                LastMenuItem = (OpenFormCount - 1)
                
            Case mnuHelp
                                 
                .picMenu(mnuManu).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuManu).Caption = TextWord(604)
                .lblMenu(mnuManu).Visible = True
                .linMenu(mnuManu).Visible = False
                
                .picMenu(mnuCont).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuCont).Caption = TextWord(605)
                .lblMenu(mnuCont).Visible = True
                .linMenu(mnuCont).Visible = False
                
                .picMenu(mnuNetw).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuNetw).Caption = TextWord(467)
                .lblMenu(mnuNetw).Visible = True
                .linMenu(mnuNetw).Visible = True
                              
                .picMenu(mnuAbou).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuAbou).Caption = TextWord(246)
                .lblMenu(mnuAbou).Visible = True
                .linMenu(mnuAbou).Visible = False
                
                LastMenuItem = mnuAbou
                
            Case mnuExit
                
                .picMenu(mnuShut).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuShut).Caption = TextWord(475)
                .lblMenu(mnuShut).Visible = True
                .linMenu(mnuShut).Visible = False
                
                .picMenu(mnuRest).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuRest).Caption = TextWord(476)
                .lblMenu(mnuRest).Visible = True
                .linMenu(mnuRest).Visible = False
                
                .picMenu(mnuClos).Picture = LoadPicture() 'No Picture
                .lblMenu(mnuClos).Caption = TextWord(477)
                .lblMenu(mnuClos).Visible = True
                .linMenu(mnuClos).Visible = False
                
                LastMenuItem = mnuClos
                
        End Select
        
        For n = LastMenuItem + 1 To MaxMenu
            .picMenu(n).Picture = LoadPicture() 'No Picture
            .lblMenu(n).Caption = ""
            .lblMenu(n).Visible = False
            .linMenu(n).Visible = False
        Next n
        
        Call MenuPosition(Index)
    
    End With

End Sub
Sub DisplayMenuConfig()
       
       
    With MenuDisplay_frm
        
        
        
        'Display 1st Choice
           
        
        .lblDisplay1(myNone).Caption = TextWord(616) & " - " & TextWord(344)
        .lblDisplay1(myNone).Visible = False 'Not an option for 1st display choice
                     
        .lblDisplay1(myGrp).Caption = TextWord(616) & " - " & TextWord(676)
        .lblDisplay1(myGrp).Visible = True
                     
        .lblDisplay1(myCat).Caption = TextWord(616) & " - " & TextWord(1)
        .lblDisplay1(myCat).Visible = dbCatUsed
               
        .lblDisplay1(myCus).Caption = TextWord(616) & " - " & TextWord(2)
        .lblDisplay1(myCus).Visible = True
               
        .lblDisplay1(myDst).Caption = TextWord(616) & " - " & TextWord(262)
        .lblDisplay1(myDst).Visible = True
               
        .lblDisplay1(myGrpLong).Caption = TextWord(616) & " - " & TextWord(676) & " " & TextWord(289)
        .lblDisplay1(myGrpLong).Visible = (dbSettingValue(GrpDbUseLongID) <> "0") And (dbSettingValue(GrpDbLongIDInBag) <> "0")
               
        .lblDisplay1(myCatLong).Caption = TextWord(616) & " - " & TextWord(1) & " " & TextWord(289)
        .lblDisplay1(myCatLong).Visible = (dbSettingValue(CatDbUseLongID) <> "0") And (dbSettingValue(CatDbLongIDInBag) <> "0") And dbCatUsed
               
        .lblDisplay1(myCusLong).Caption = TextWord(616) & " - " & TextWord(2) & " " & TextWord(289)
        .lblDisplay1(myCusLong).Visible = (dbSettingValue(CusDbUseLongID) <> "0") And (dbSettingValue(CusDbLongIDInBag) <> "0")
                
        .lblDisplay1(myWashProg).Caption = TextWord(616) & " - " & TextWord(201)
        .lblDisplay1(myWashProg).Visible = (dbSettingValue(GrpDbUseWashCodes) <> "0") Or (dbSettingValue(CatDbUseWashCodes) <> "0")
                
        .lblDisplay1(myDay).Caption = TextWord(616) & " - " & TextWord(474)
        .lblDisplay1(myDay).Visible = UseDay
    
        .lblDisplay1(myLot).Caption = TextWord(616) & " - " & TextWord(501)
        .lblDisplay1(myLot).Visible = dbUseLots
             
        .lblDisplay1(myBagIndex).Caption = "Bag Index"
        .lblDisplay1(myBagIndex).Visible = (AccessLevel >= accDesigner)
             
        .lblDisplay1(myBagID).Caption = "Bag ID"
        .lblDisplay1(myBagID).Visible = (AccessLevel >= accDesigner)
             
        .lblDisplay1(myMisID).Caption = "MIS ID"
        .lblDisplay1(myMisID).Visible = (AccessLevel >= accDesigner)
        
        .lblDisplay1(13).Caption = "---"
        .lblDisplay1(13).Visible = False
        
        'Display 2nd Choice
                                         
        .lblDisplay2(myNone).Caption = TextWord(617) & " - " & TextWord(344)
        .lblDisplay2(myNone).Visible = True
                     
        .lblDisplay2(myGrp).Caption = TextWord(617) & " - " & TextWord(676)
        .lblDisplay2(myGrp).Visible = True
                     
        .lblDisplay2(myCat).Caption = TextWord(617) & " - " & TextWord(1)
        .lblDisplay2(myCat).Visible = dbCatUsed
                     
        .lblDisplay2(myCus).Caption = TextWord(617) & " - " & TextWord(2)
        .lblDisplay2(myCus).Visible = True
                        
        .lblDisplay2(myDst).Caption = TextWord(617) & " - " & TextWord(262)
        .lblDisplay2(myDst).Visible = True
                     
        .lblDisplay2(myGrpLong).Caption = TextWord(617) & " - " & TextWord(676) & " " & TextWord(289)
        .lblDisplay2(myGrpLong).Visible = (dbSettingValue(GrpDbUseLongID) <> "0") And (dbSettingValue(GrpDbLongIDInBag) <> "0")
     
        .lblDisplay2(myCatLong).Caption = TextWord(617) & " - " & TextWord(1) & " " & TextWord(289)
        .lblDisplay2(myCatLong).Visible = (dbSettingValue(CatDbUseLongID) <> "0") And (dbSettingValue(CatDbLongIDInBag) <> "0") And dbCatUsed
                     
        .lblDisplay2(myCusLong).Caption = TextWord(617) & " - " & TextWord(2) & " " & TextWord(289)
        .lblDisplay2(myCusLong).Visible = (dbSettingValue(CusDbUseLongID) <> "0") And (dbSettingValue(CusDbLongIDInBag) <> "0")
     
        .lblDisplay2(myWashProg).Caption = TextWord(617) & " - " & TextWord(201)
        .lblDisplay2(myWashProg).Visible = (dbSettingValue(GrpDbUseWashCodes) <> "0") Or (dbSettingValue(CatDbUseWashCodes) <> "0")
     
        .lblDisplay2(myDay).Caption = TextWord(617) & " - " & TextWord(474)
        .lblDisplay2(myDay).Visible = UseDay
    
        .lblDisplay2(10).Caption = "---"
        .lblDisplay2(10).Visible = False
                       
        'Colour 1st Choice
                               
        .lblColour1(ColourNone).Caption = TextWord(616) & " - " & TextWord(470)
        .lblColour1(ColourNone).Visible = True
                     
        .lblColour1(ColourGrp).Caption = TextWord(616) & " - " & TextWord(684)
        .lblColour1(ColourGrp).Visible = (dbSettingValue(GrpDbUseBagColour) <> "0")
                     
        .lblColour1(ColourCat).Caption = TextWord(616) & " - " & TextWord(471)
        .lblColour1(ColourCat).Visible = (dbSettingValue(CatDbUseBagColour) <> "0") And dbCatUsed
                     
        .lblColour1(ColourCus).Caption = TextWord(616) & " - " & TextWord(472)
        .lblColour1(ColourCus).Visible = (dbSettingValue(CusDbUseBagColour) <> "0")
                        
        .lblColour1(ColourDay).Caption = TextWord(616) & " - " & TextWord(474)
        .lblColour1(ColourDay).Visible = UseDay
                     
        .lblColour1(ColourLot).Caption = TextWord(616) & " - " & TextWord(501)
        .lblColour1(ColourLot).Visible = dbUseLots
        
        'Colour 2nd Choice
                               
        .lblColour2(ColourNone).Caption = TextWord(617) & " - " & TextWord(470)
        .lblColour2(ColourNone).Visible = True
                     
        .lblColour2(ColourGrp).Caption = TextWord(617) & " - " & TextWord(684)
        .lblColour2(ColourGrp).Visible = (dbSettingValue(GrpDbUseBagColour) <> "0")
                     
        .lblColour2(ColourCat).Caption = TextWord(617) & " - " & TextWord(471)
        .lblColour2(ColourCat).Visible = (dbSettingValue(CatDbUseBagColour) <> "0") And dbCatUsed
                     
        .lblColour2(ColourCus).Caption = TextWord(617) & " - " & TextWord(472)
        .lblColour2(ColourCus).Visible = (dbSettingValue(CusDbUseBagColour) <> "0")
                        
        .lblColour2(ColourDay).Caption = TextWord(617) & " - " & TextWord(474)
        .lblColour2(ColourDay).Visible = UseDay
                     
        .lblColour2(ColourLot).Caption = TextWord(617) & " - " & TextWord(501)
        .lblColour2(ColourLot).Visible = dbUseLots
                        
        Call DisplayMenuPosition
                        
    End With

End Sub





Public Sub SetMDIcaption()
    
    Dim SystemName As String
    SystemName = db_uspSettingGet("SettingsNetwork", "System", "SystemName", "Supertrack TrackVIEW", PCNum)
    
    Select Case DisplayOption1
        Case myGrp
            MDIMaindisp_frm.Caption = SystemName & " - " & TextWord(679)
        Case myCat
            MDIMaindisp_frm.Caption = SystemName & " - " & TextWord(87)
        Case myCus
            MDIMaindisp_frm.Caption = SystemName & " - " & TextWord(88)
        Case myDst
            MDIMaindisp_frm.Caption = SystemName & " - " & TextWord(262)
        Case myGrpLong
            MDIMaindisp_frm.Caption = SystemName & " - " & TextWord(682) 'TextWord(679) & " " & TextWord(289)
        Case myCatLong
            MDIMaindisp_frm.Caption = SystemName & " - " & TextWord(633) 'TextWord(87) & " " & TextWord(289)
        Case myCusLong
            MDIMaindisp_frm.Caption = SystemName & " - " & TextWord(634) 'TextWord(88) & " " & TextWord(289)
        Case myDay
            MDIMaindisp_frm.Caption = SystemName & " - " & TextWord(474)
        Case myWashProg
            MDIMaindisp_frm.Caption = SystemName & " - " & TextWord(201)
    End Select
    
    Select Case DisplayOption2
        Case myGrp
            MDIMaindisp_frm.Caption = MDIMaindisp_frm.Caption & " + " & TextWord(679)
        Case myCat
            MDIMaindisp_frm.Caption = MDIMaindisp_frm.Caption & " + " & TextWord(87)
        Case myCus
            MDIMaindisp_frm.Caption = MDIMaindisp_frm.Caption & " + " & TextWord(88)
        Case myDst
            MDIMaindisp_frm.Caption = MDIMaindisp_frm.Caption & " + " & TextWord(262)
        Case myGrpLong
            MDIMaindisp_frm.Caption = MDIMaindisp_frm.Caption & " + " & TextWord(682) 'TextWord(679) & " " & TextWord(289)
        Case myCatLong
            MDIMaindisp_frm.Caption = MDIMaindisp_frm.Caption & " + " & TextWord(633) 'TextWord(87) & " " & TextWord(289)
        Case myCusLong
            MDIMaindisp_frm.Caption = MDIMaindisp_frm.Caption & " + " & TextWord(634) 'TextWord(88) & " " & TextWord(289)
        Case myDay
            MDIMaindisp_frm.Caption = MDIMaindisp_frm.Caption & " + " & TextWord(474)
        Case myWashProg
            MDIMaindisp_frm.Caption = MDIMaindisp_frm.Caption & " + " & TextWord(201)
    End Select
    
    
    
End Sub
Private Sub Function_Control()
    On Error Resume Next
    X = Shell("c:\windows\system32\control.exe ", 3)
End Sub
Private Sub Function_TaskMan()
    On Error Resume Next
    X = Shell("c:\windows\system32\Taskmgr.exe ", 1)
End Sub
Private Sub Function_explorer()
    On Error Resume Next
    X = Shell("explorer.exe ", 3)
End Sub
Private Sub Function_WinConfig()
    On Error Resume Next
    X = Shell(App.path & "\W7config.exe", 1)
End Sub

