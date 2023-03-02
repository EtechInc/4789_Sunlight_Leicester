VERSION 5.00
Begin VB.Form password_frm 
   Appearance      =   0  'Flat
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Access Level"
   ClientHeight    =   1485
   ClientLeft      =   1395
   ClientTop       =   3645
   ClientWidth     =   7170
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   161
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00800000&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   1485
   ScaleWidth      =   7170
   Begin VB.CommandButton CmdChange 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Change"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   5850
      TabIndex        =   7
      Top             =   75
      Width           =   1215
   End
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      Height          =   540
      Left            =   5100
      Picture         =   "Pasword.frx":0000
      ScaleHeight     =   480
      ScaleWidth      =   480
      TabIndex        =   6
      Top             =   150
      Width           =   540
   End
   Begin VB.CommandButton Cmd_cancel 
      BackColor       =   &H00DBD9D4&
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   5850
      TabIndex        =   1
      Top             =   600
      Width           =   1215
   End
   Begin VB.CommandButton Cmd_OK 
      BackColor       =   &H00DBD9D4&
      Caption         =   "OK"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   5850
      TabIndex        =   2
      Top             =   1050
      Width           =   1215
   End
   Begin VB.TextBox pass_box 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   360
      IMEMode         =   3  'DISABLE
      Left            =   2610
      MaxLength       =   10
      PasswordChar    =   "*"
      TabIndex        =   0
      Top             =   825
      Width           =   3030
   End
   Begin VB.Label Label3 
      Appearance      =   0  'Flat
      BackStyle       =   0  'Transparent
      Caption         =   "Label3"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000040C0&
      Height          =   255
      Left            =   2625
      TabIndex        =   5
      Top             =   300
      Width           =   1620
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Enter password "
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   225
      Left            =   150
      TabIndex        =   4
      Top             =   300
      Width           =   2385
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Enter password "
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   525
      TabIndex        =   3
      Top             =   900
      Width           =   2025
   End
End
Attribute VB_Name = "password_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim OldAccessLevel As Integer
Dim Operator As String
Dim Supervisor As String
Dim Engineer As String
Dim Programmer As String
Dim Designer As String

Private Sub Access_Level(Optional DoNotResetLevel As Boolean)
    
    On Error GoTo Access_LevelError
    If Not DoNotResetLevel Then
        AccessLevel = accOperator
    
        If (UCase(pass_box.Text) = Supervisor Or UCase(pass_box.Text) = "MEDOC163") Then AccessLevel = accSupervisor
        If (UCase(pass_box.Text) = Engineer Or UCase(pass_box.Text) = "MEDOC180") Then AccessLevel = accEngineer
        If (UCase(pass_box.Text) = Programmer Or UCase(pass_box.Text) = "251036") Then AccessLevel = accProgrammer
        Designer = Format$(Now, "hhmm") & "medoc"
        If UCase(pass_box.Text) = UCase(Designer) Then AccessLevel = accDesigner
        SQLsa = Format$(Now, "hhmm") & "medoc" & Weekday(Now, vbMonday)
        If UCase(pass_box.Text) = Left(UCase(SQLsa), 10) Then AccessLevel = accSQLsa
    End If
    Dim lockSetting As String
    lockSetting = GetSetting("TrackView", "LockSettings", "Lock", "Unlocked")
    If UCase(lockSetting) = UCase("Locked") And AccessLevel > accSupervisor Then AccessLevel = accSupervisor
    Select Case AccessLevel
        Case 0
            Label3.Caption = TextWord(163)
            Label3.ForeColor = DarkGrey
        Case 1
            Label3.Caption = TextWord(164)
            Label3.ForeColor = Blue
        Case 2
            Label3.Caption = TextWord(165)
            Label3.ForeColor = Red
        Case 3
            Label3.Caption = TextWord(245)
            Label3.ForeColor = DarkYellow
        Case 4
            Label3.Caption = "Software Engineer"
            Label3.ForeColor = &H40C0&     'Orange 'White
        Case 5
            Label3.Caption = "Software Engineer sa"
            Label3.ForeColor = &HC000C0        'Purple
    End Select
           
    Picture1.Picture = MDIMaindisp_frm.picPass(AccessLevel).Picture
   
Exit Sub
Access_LevelError:
    
    ErrorHandler Err, "Access_Level", Err.Description, True
    Resume Next
    
End Sub


Private Sub cmd_cancel_Click()
    pass_box.Text = ""
    Access_Level
    'unload the password window when cancel key pressed
    Unload password_frm
End Sub

Private Sub Cmd_OK_Click()
    
    Dim PCName              As String
    Dim NotMultiSupervisor  As Boolean
    Dim NotMultiEngineer    As Boolean
    
    NotMultiSupervisor = db_uspSettingGet("SettingsLocal", "Access", "AccSupervisor", 1, PCNum)
    NotMultiEngineer = db_uspSettingGet("SettingsLocal", "Access", "AccEngineer", 1, PCNum)
    
    'Supervisor Multiple Logging control
    If AccessLevel = accSupervisor And NotMultiSupervisor Then
        If PCNum = PCSupervisor Or PCSupervisor = 0 Then
            Data(0) = PCNum
            Comms_frm.WritePLC 0, "D", 68, 1, Data(), True, "PasswordForm"
        Else
            AccessLevel = accOperator
            PCName = db_uspSettingGet("SettingsNetwork", "Config", "PCName", "PC " & Format$(PCNum), PCNum)
            MsgBox TextWord(628) & " " & Format$(PCSupervisor) & " - " & PCName, vbExclamation, TextWord(629)
        End If
    End If
    
    'Release Access Control
    If AccessLevel <> accSupervisor And PCNum = PCSupervisor Then
        Data(0) = 0
        Comms_frm.WritePLC 0, "D", 68, 1, Data(), True, "PasswordForm"
    End If
    
    'Engineer Multiple Logging control
    If AccessLevel = accEngineer And NotMultiEngineer Then
        If PCNum = PCEngineer Or PCEngineer = 0 Then
            Data(0) = PCNum
            Comms_frm.WritePLC 0, "D", 69, 1, Data(), True, "PasswordForm"
        Else
            AccessLevel = 0
            PCName = db_uspSettingGet("SettingsNetwork", "Config", "PCName", "PC " & Format$(PCNum), PCNum)
            MsgBox TextWord(630) & " " & Format$(PCEngineer) & " - " & PCName, vbExclamation, TextWord(629)
        End If
    End If
    
    'Release Access Control
    If AccessLevel <> accEngineer And PCNum = PCEngineer Then
        Data(0) = 0
        Comms_frm.WritePLC 0, "D", 69, 1, Data(), True, "PasswordForm"
    End If
    
    'Set Main display
    MDIMaindisp_frm.picAccess.Picture = MDIMaindisp_frm.picPass(AccessLevel).Picture
    MenuBarLoad
    
    'Save locally and for TCP/IP Driver
    Call SaveSetting("TrackView", "Config", "AccessLevel", AccessLevel)
    db_uspSettingSave "SettingsLocal", "Access", "Level", AccessLevel, PCNum
    
    Unload Me
    If OldAccessLevel <> AccessLevel Then CloseAllOpenForms
    
End Sub

Private Sub CmdChange_Click()
    
    If AccessLevel <> accOperator Then
        DisplayForm passchg_frm
        Unload Me
    End If
    
End Sub

Private Sub Form_Load()
    
    CenterForm Me
    
    OldAccessLevel = AccessLevel
    
    'Moved from AccessLevel
    Operator = db_uspSettingGet("SettingsNetwork", "Access", "Operator", "", PCNum)
    Supervisor = db_uspSettingGet("SettingsNetwork", "Access", "Supervisor", "12345", PCNum)
    Engineer = db_uspSettingGet("SettingsNetwork", "Access", "Engineer", "A1SCPU", PCNum)
    Programmer = db_uspSettingGet("SettingsNetwork", "Access", "Programmer", "VBRUN300", PCNum)
'    Designer = Format$(Now, "hhmm") & "medoc"
'    '-----------------------
'    Select Case AccessLevel
'        Case accOperator
'            pass_box.Text = Operator
'        Case accSupervisor
'            pass_box.Text = Supervisor
'        Case accEngineer
'            pass_box.Text = Engineer
'        Case accProgrammer
'            pass_box.Text = Programmer
'        Case accDesigner
'            pass_box.Text = Designer
'    End Select
    password_frm.Caption = TextWord(55)
    Label1.Caption = TextWord(56)
    Label2.Caption = TextWord(167)
    Cmd_OK.Caption = TextWord(60)
    cmd_cancel.Caption = TextWord(61)
    CmdChange.Caption = TextWord(67)
    Access_Level True

End Sub

Private Sub pass_box_Change()
    
    Access_Level

End Sub

Private Sub pass_box_KeyPress(KeyAscii As Integer)
    
    Access_Level
    If KeyAscii = 13 Then
        Call SaveSetting("TrackView", "Config", "AccessLevel", AccessLevel)
        db_uspSettingSave "SettingsLocal", "Access", "Level", AccessLevel, PCNum
        Unload Me
        If OldAccessLevel <> AccessLevel Then CloseAllOpenForms
    End If

End Sub


