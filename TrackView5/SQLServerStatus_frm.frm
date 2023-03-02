VERSION 5.00
Begin VB.Form SQLServerStatus_frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "SQL Status"
   ClientHeight    =   2415
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6945
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   2415
   ScaleWidth      =   6945
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdMISSQLServerTestNoConnection 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Test"
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
      Left            =   225
      TabIndex        =   5
      Top             =   1950
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Timer tmrUpdate 
      Interval        =   250
      Left            =   1725
      Top             =   1875
   End
   Begin VB.CheckBox chkContinue 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Continue"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   225
      TabIndex        =   4
      Top             =   1425
      Width           =   3540
   End
   Begin VB.CommandButton CmdExit 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Exit"
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
      Left            =   5400
      TabIndex        =   0
      Top             =   1950
      Width           =   1215
   End
   Begin VB.Label lblStatus 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Status"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   315
      Left            =   225
      TabIndex        =   3
      Top             =   1050
      Width           =   6450
   End
   Begin VB.Label lblFileName 
      BackColor       =   &H00FFFFFF&
      Caption         =   "File Name"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   315
      Left            =   225
      TabIndex        =   2
      Top             =   675
      Width           =   6450
   End
   Begin VB.Label lblPath 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Path"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   315
      Left            =   225
      TabIndex        =   1
      Top             =   300
      Width           =   6450
   End
End
Attribute VB_Name = "SQLServerStatus_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Loading As Boolean
Private Sub cmdExit_Click()
    
    Unload Me

End Sub
Private Sub chkContinue_Click()
    
    If chkContinue.Value And Not Loading Then
        MsgBox TextWord(871), vbCritical, TextWord(870)
    End If
    
    db_uspSettingSave "SettingsNetwork", "MISSQLServer", "MISSQLRunIfNoConnection", Me.chkContinue.Value, PCNum
    
    Loading = False
    
    Call MISSQLServerSetStatus
    
End Sub

Private Sub cmdMISSQLServerTestNoConnection_Click()
    MISSQLTestNoConnection = Not MISSQLTestNoConnection
End Sub

Private Sub Form_Load()
    
    Loading = True
    
    SetLanguage
     
    Me.lblPath = db_uspSettingGet("SettingsNetwork", "MISSQLServer", "MISSQLServerPath", DefaultMISSQLPath, PCNum)
    Me.lblFileName = db_uspSettingGet("SettingsNetwork", "MISSQLServer", "MISSQLServerDbName", "MISDB3", PCNum)
       
    Me.chkContinue.Value = db_uspSettingGet("SettingsNetwork", "MISSQLServer", "MISSQLRunIfNoConnection", 0, PCNum)
       
    Me.cmdMISSQLServerTestNoConnection.Visible = (AccessLevel > accProgrammer)
       
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Call MISSQLServerSetStatus
End Sub
Private Sub SetLanguage()
    
    Me.Caption = TextWord(861) 'MISSQL Server Status
          
    Me.chkContinue.Caption = TextWord(869)
    
    cmdExit.Caption = TextWord(309)
  
End Sub
Private Sub tmrUpdate_Timer()
    
    
    lblStatus.Caption = ""
    If (MISSQLServerStatus And StatusNotUsed) Then
        lblStatus.Caption = TextWord(862)
    End If
    If (MISSQLServerStatus And StatusOnline) Then
        lblStatus.Caption = TextWord(863)
    End If
    If (MISSQLServerStatus And StatusOffline) Then
        lblStatus.Caption = TextWord(864)
        If MISSQLServerStatus And StatusRunIfNoConnection Then
            lblStatus.Caption = lblStatus.Caption & " - " & TextWord(865)
        Else
            lblStatus.Caption = lblStatus.Caption & " - " & TextWord(866)
        End If
    End If
       
    If (MISSQLServerReTryCount <> 0) Then
        lblStatus.Caption = lblStatus.Caption & " [" & TextWord(873) & " " & Format$(MISSQLServerReTryCount) & "s]"
    End If
    
    'Test Button
    If MISSQLTestNoConnection Then
        cmdMISSQLServerTestNoConnection.Caption = "Stopped"
    Else
        cmdMISSQLServerTestNoConnection.Caption = "Running"
    End If
    
End Sub
