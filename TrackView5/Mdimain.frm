VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.MDIForm MDIMaindisp_frm 
   Appearance      =   0  'Flat
   BackColor       =   &H00D2A03C&
   Caption         =   "MDIMaindisp_frm"
   ClientHeight    =   8955
   ClientLeft      =   1470
   ClientTop       =   930
   ClientWidth     =   20250
   LinkTopic       =   "MDIForm1"
   NegotiateToolbars=   0   'False
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.Timer tmr_AutoLogout 
      Interval        =   60000
      Left            =   240
      Top             =   3300
   End
   Begin VB.PictureBox Picture1 
      Align           =   1  'Align Top
      Height          =   1575
      Left            =   0
      ScaleHeight     =   1515
      ScaleWidth      =   20190
      TabIndex        =   26
      Top             =   585
      Width           =   20250
      Begin VB.Image Image1 
         Height          =   750
         Left            =   3000
         Picture         =   "Mdimain.frx":0000
         Top             =   60
         Width           =   750
      End
   End
   Begin VB.PictureBox picMenu 
      Align           =   1  'Align Top
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   585
      Left            =   0
      ScaleHeight     =   525
      ScaleMode       =   0  'User
      ScaleWidth      =   20190
      TabIndex        =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   20250
      Begin VB.PictureBox picPass 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   480
         Index           =   5
         Left            =   16200
         Picture         =   "Mdimain.frx":037A
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   25
         Tag             =   "English"
         Top             =   0
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.PictureBox picPass 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   480
         Index           =   4
         Left            =   16140
         Picture         =   "Mdimain.frx":335C
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   24
         Tag             =   "English"
         Top             =   0
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.PictureBox picPass 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   480
         Index           =   3
         Left            =   15825
         Picture         =   "Mdimain.frx":3666
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   23
         Tag             =   "English"
         Top             =   0
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.PictureBox picPass 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   480
         Index           =   2
         Left            =   15600
         Picture         =   "Mdimain.frx":3AA8
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   22
         Tag             =   "English"
         Top             =   0
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.PictureBox picPass 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   480
         Index           =   1
         Left            =   15375
         Picture         =   "Mdimain.frx":3F33
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   21
         Tag             =   "English"
         Top             =   0
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.PictureBox picPass 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   480
         Index           =   0
         Left            =   15150
         Picture         =   "Mdimain.frx":43FF
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   20
         Tag             =   "English"
         Top             =   0
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.PictureBox picMenuRight 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         FontTransparent =   0   'False
         ForeColor       =   &H80000008&
         Height          =   540
         Left            =   6975
         ScaleHeight     =   540
         ScaleWidth      =   5760
         TabIndex        =   13
         Top             =   0
         Width           =   5760
         Begin VB.TextBox txt_AlarmCount 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H000000C0&
            BorderStyle     =   0  'None
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000005&
            Height          =   195
            Left            =   4740
            Locked          =   -1  'True
            TabIndex        =   28
            Text            =   "12"
            Top             =   360
            Width           =   390
         End
         Begin VB.PictureBox picAccess 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H80000005&
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   480
            Left            =   5180
            Picture         =   "Mdimain.frx":48AE
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   19
            Tag             =   "English"
            Top             =   60
            Width           =   480
         End
         Begin VB.TextBox txtTime 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H8000000F&
            BorderStyle     =   0  'None
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Left            =   3900
            TabIndex        =   18
            Text            =   "11:18"
            Top             =   180
            Width           =   765
         End
         Begin VB.PictureBox picFlag 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H80000005&
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   480
            Index           =   2
            Left            =   45
            Picture         =   "Mdimain.frx":4D39
            ScaleHeight     =   480
            ScaleWidth      =   795
            TabIndex        =   17
            TabStop         =   0   'False
            Tag             =   "French"
            Top             =   60
            Visible         =   0   'False
            Width           =   795
         End
         Begin VB.PictureBox picFlag 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H80000005&
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   480
            Index           =   0
            Left            =   1875
            Picture         =   "Mdimain.frx":617B
            ScaleHeight     =   480
            ScaleWidth      =   795
            TabIndex        =   15
            Tag             =   "English"
            Top             =   60
            Width           =   795
         End
         Begin VB.PictureBox picFlag 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H80000005&
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   480
            Index           =   1
            Left            =   975
            Picture         =   "Mdimain.frx":75BD
            ScaleHeight     =   480
            ScaleWidth      =   780
            TabIndex        =   16
            Tag             =   "Norweigian"
            Top             =   60
            Visible         =   0   'False
            Width           =   780
         End
         Begin VB.PictureBox picAlarm 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H000000C0&
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   480
            Left            =   4680
            Picture         =   "Mdimain.frx":807F
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   27
            Tag             =   "English"
            Top             =   60
            Width           =   480
         End
         Begin VB.TextBox txtDate 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H8000000F&
            BorderStyle     =   0  'None
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Left            =   2580
            TabIndex        =   14
            Text            =   "07/12/2012"
            Top             =   180
            Width           =   1440
         End
      End
      Begin VB.Label lblMenu 
         Alignment       =   2  'Center
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "TrackView"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   10
         Left            =   13275
         TabIndex        =   12
         Top             =   150
         Width           =   1290
      End
      Begin VB.Label lblFindSize 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00FFC0FF&
         Caption         =   "Find Size"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   14775
         TabIndex        =   11
         Top             =   150
         Visible         =   0   'False
         Width           =   1275
      End
      Begin VB.Label lblMenu 
         Alignment       =   2  'Center
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Exit"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   9
         Left            =   12300
         TabIndex        =   10
         Top             =   150
         Width           =   840
      End
      Begin VB.Label lblMenu 
         Alignment       =   2  'Center
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Help"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   8
         Left            =   11400
         TabIndex        =   9
         Top             =   150
         Width           =   765
      End
      Begin VB.Label lblMenu 
         Alignment       =   2  'Center
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Window"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   7
         Left            =   10350
         TabIndex        =   8
         Top             =   150
         Width           =   990
      End
      Begin VB.Label lblMenu 
         Alignment       =   2  'Center
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Programmer"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   6
         Left            =   8850
         TabIndex        =   7
         Top             =   150
         Width           =   1290
      End
      Begin VB.Label lblMenu 
         Alignment       =   2  'Center
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Diagnostics"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   5
         Left            =   7440
         TabIndex        =   6
         Top             =   150
         Width           =   1290
      End
      Begin VB.Label lblMenu 
         Alignment       =   2  'Center
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Unloading"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   3
         Left            =   4875
         TabIndex        =   5
         Top             =   150
         Width           =   1140
      End
      Begin VB.Label lblMenu 
         Alignment       =   2  'Center
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Loading"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   2
         Left            =   3525
         TabIndex        =   4
         Top             =   150
         Width           =   1215
      End
      Begin VB.Label lblMenu 
         Alignment       =   2  'Center
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Display"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   1
         Left            =   2175
         TabIndex        =   3
         Top             =   150
         Width           =   1140
      End
      Begin VB.Label lblMenu 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "View"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   0
         Left            =   180
         TabIndex        =   2
         Top             =   120
         Width           =   1920
      End
      Begin VB.Label lblMenu 
         Alignment       =   2  'Center
         BackColor       =   &H00808080&
         BackStyle       =   0  'Transparent
         Caption         =   "Setup"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   4
         Left            =   6150
         TabIndex        =   1
         Top             =   150
         Width           =   1140
      End
      Begin VB.Image imgMnu 
         Height          =   510
         Left            =   420
         Picture         =   "Mdimain.frx":8442
         Stretch         =   -1  'True
         Top             =   120
         Width           =   1470
      End
   End
   Begin VB.Timer tmrBackup 
      Enabled         =   0   'False
      Interval        =   60000
      Left            =   225
      Top             =   2700
   End
   Begin VB.Timer tmrTest 
      Interval        =   5000
      Left            =   225
      Top             =   2175
   End
   Begin VB.Timer tmrSQL 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   225
      Top             =   1650
   End
   Begin VB.Timer tmrMIS 
      Enabled         =   0   'False
      Interval        =   10000
      Left            =   225
      Top             =   1125
   End
   Begin VB.Timer tmrUpdate 
      Interval        =   1000
      Left            =   225
      Top             =   600
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   4380
      Top             =   2880
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   115
      ImageHeight     =   115
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   1
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Mdimain.frx":C264
            Key             =   ""
         EndProperty
      EndProperty
   End
End
Attribute VB_Name = "MDIMaindisp_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim AlarmMessageOld As String
Dim FormOpen    As Boolean
Dim Minutes As Integer
Dim myTest As String

Private Sub lblMenu_Click(Index As Integer)
    Call MenuConfig(Index)
End Sub

Private Sub tmr_AutoLogout_Timer()
    Dim useAutologout As String
    
    NotMultiSupervisor = db_uspSettingGet("SettingsLocal", "Access", "AccSupervisor", 1, PCNum)
    NotMultiEngineer = db_uspSettingGet("SettingsLocal", "Access", "AccEngineer", 1, PCNum)
    useAutologout = db_uspSettingGet("SettingsNetwork", "PasswordAutoLogout", "Use", 0, PCNum)
    If AccessLevel > 0 And useAutologout <> "0" Then
        Minutes = Minutes + 1
        If Minutes > 4 Then
            Minutes = 0
            'Release the engineer can only access 1 PC lock
            If AccessLevel = accEngineer Then
                If PCNum = PCEngineer And (NotMultiEngineer = "1") Then
                    Data(0) = 0
                    Comms_frm.WritePLC 0, "D", 69, 1, Data(), True, "PasswordForm"
                End If
            ElseIf AccessLevel = accSupervisor And (NotMultiSupervisor = "1") Then
                If PCNum = PCSupervisor Then
                    Data(0) = 0
                    Comms_frm.WritePLC 0, "D", 68, 1, Data(), True, "PasswordForm"
                End If
           End If
            
            AccessLevel = 0
            MDIMaindisp_frm.picAccess.Picture = MDIMaindisp_frm.picPass(AccessLevel).Picture
            MenuBarLoad
        End If
    Else
        Minutes = 0
    End If

End Sub

Private Sub lblMenu_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call MenuBarHighlight(Index)
End Sub

Private Sub MDIForm_Click()
    Call MenuBarHighlight(100)
End Sub

Private Sub MDIForm_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'Call MenuBarHighlight(100)
End Sub

Private Sub MDIForm_Load()
             
    On Error GoTo MDIForm_loadError
                 
    Picture1.Visible = False
    picMenu.Enabled = False
           
    Resize
    picAccess.Picture = picPass(AccessLevel).Picture
           
    'picMenuRight.Left = (((1920 * 15) - picMenuRight.Width) - 30)


    DisplayOption1 = db_uspSettingGet("SettingsLocal", "Display", "DisplayOption1", 0, PCNum)
    DisplayOption2 = db_uspSettingGet("SettingsLocal", "Display", "DisplayOption2", 0, PCNum)
    
    'Default to Category if not set
    If DisplayOption1 = myNone Then
        DisplayOption1 = myCat
    End If
    
    ColourOption1 = db_uspSettingGet("SettingsLocal", "Display", "ColourOption1", 0, PCNum)
    ColourOption2 = db_uspSettingGet("SettingsLocal", "Display", "ColourOption2", 0, PCNum)
        
    SetMDIcaption
       
MDIForm_loadError:
Exit Sub
    ErrorHandler Err, "MDIForm_loadError", Err.Description, True
    Resume Next
    
End Sub
Private Sub Resize()
    'picMenu.Width = Me.Width
    picMenuRight.Left = ((Me.Width - picMenuRight.Width) - 240)
End Sub
Private Sub MDIForm_QueryUnload(Cancel As Integer, UnloadMode As Integer)
   
    If UnloadMode = 0 Then Cancel = True

End Sub

Private Sub MDIForm_Resize()
    If AccessLevel < accProgrammer Then
        MDIMaindisp_frm.WindowState = 2
    End If
    Resize
End Sub

Private Sub MDIForm_Unload(Cancel As Integer)
    
    MDIForm_Loaded = False

End Sub

Private Sub picAccess_Click()
    DisplayForm password_frm
End Sub

Private Sub picAlarm_Click()
    DisplayForm Fault_frm
End Sub

Private Sub picFlag_Click(Index As Integer)
    
    Dim myLanguage As String
    
    myLanguage = picFlag(Index).Tag
    If CurrentLanguage <> myLanguage Then
    
        Call db_uspLanguageRead(myLanguage)
        Call db_uspSequencesRead(myLanguage)
        Call db_uspSequenceStepsRead(myLanguage)
        Call db_uspIOListRead(myLanguage)
        Call db_uspAlarmTextsRead(myLanguage)
        Call db_uspSettingSave("SettingsLocal", "Language", "Current", myLanguage, PCNum)
        CurrentLanguage = myLanguage
    End If
End Sub


Private Sub tmrBackup_Timer()
    
    'Backup SQL Database
    If MasterPC And dbBackupTime = Format$(Now, "HH:mm") And (dbSettingValue(dbBackupAtTime) <> "0") Then
        Call db_uspBackupDataBase(App.Path & "\dbBackups\SUPDB1 " & Format(Now, "YYYY MM DD HHMM ") & ".bak")
    End If
    
End Sub

Private Sub tmrMIS_Timer()
    
    'MIS Copy Transaction file data to the MIS File
    '----------------------------------------------
    If MasterPC Then
        
        If MISUse Then
            MISTransactionToMISFile
        End If
    
    End If

    
End Sub


Private Sub tmrSQL_Timer()
    
    'SQL Server Status
    '-----------------
    
    
    If MasterPC Then
        'Only connect with SQL server if the last connection was good else wait until ReTry.
        If (MISSQLServerReTryCount = 0) Then
            If Not MISSQLServerStatus And StatusOnline Then
                Call MISSQLServerSetStatus
            End If
            If MISSQLServerStatus And StatusOnline Then
                Call MISSQLServer_ReadContentsBuffer
            End If
        Else
            If (MISSQLServerReTryCount > 0) Then
                MISSQLServerReTryCount = MISSQLServerReTryCount - 1
            End If
        End If
           
    End If
        
End Sub






Private Sub tmrUpdate_Timer()
            
    Dim WindowListEnabled As Boolean
            
    'Wait until project is loaded bofore starting timers
    tmrBackup.Enabled = ProjectLoaded
    tmrMIS.Enabled = ProjectLoaded
    tmrSQL.Enabled = ProjectLoaded
            
    If ProjectLoaded Then
        CheckFaults
        picAlarm.Visible = AlarmActive
        txt_AlarmCount.Visible = AlarmActive
        txt_AlarmCount.Text = UBound(Alarm_ActiveList)
        'Check if Window List menu should be enabled
        WindowListEnabled = False
        For Each OpenForm In Forms
            If OpenForm.Caption <> "" And OpenForm.Name <> "MDIMaindisp_frm" And OpenForm.Name <> "Comms_frm" And OpenForm.Name <> "Kannegiesser_frm" Then
                WindowListEnabled = True
            End If
            If OpenForm.Name = "Database_frm" Then
                WindowListEnabled = False
            End If
            
        Next OpenForm
                
        If Me.lblMenu(mnuWind).Enabled <> WindowListEnabled Then
            Me.lblMenu(mnuWind).Enabled = WindowListEnabled
        End If
        
    End If
    
    Me.txtDate.Text = Format$(Now, "dd.mm.yyyy")
    Me.txtTime.Text = Format$(Now, "hh:mm")
    
    
    
End Sub

Private Sub txt_AlarmCount_Click()
    DisplayForm Fault_frm
End Sub

Private Sub txtDate_Click()
    If AccessLevel > accOperator Then DisplayForm Date_frm
End Sub

Private Sub txtTime_Click()
    If AccessLevel > accOperator Then DisplayForm Time_frm
End Sub

Private Sub VNCOptions_Click()
    ErrorHandler 0, "DEBUG - ** PROGRAMMER MENU **", "VNCOptions_Click", False
    DisplayForm Options_vnc
End Sub
