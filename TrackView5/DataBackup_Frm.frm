VERSION 5.00
Begin VB.Form DataBackup_Frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   3825
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   6645
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   3825
   ScaleWidth      =   6645
   Begin VB.ComboBox cmb_PLCStn 
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
      Height          =   330
      Left            =   3960
      Style           =   2  'Dropdown List
      TabIndex        =   8
      Top             =   60
      Width           =   2565
   End
   Begin VB.Timer tmr_update 
      Interval        =   1000
      Left            =   240
      Top             =   3180
   End
   Begin VB.Frame fr_backupState 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Backup State"
      Height          =   675
      Left            =   120
      TabIndex        =   6
      Top             =   420
      Width           =   6375
      Begin VB.CheckBox chk_BackupState 
         BackColor       =   &H0000FF00&
         Caption         =   "Back up Running"
         Enabled         =   0   'False
         Height          =   315
         Left            =   180
         TabIndex        =   7
         Top             =   240
         Width           =   2415
      End
      Begin VB.Shape shp_BackupState 
         BackColor       =   &H0000FF00&
         BackStyle       =   1  'Opaque
         BorderStyle     =   0  'Transparent
         Height          =   435
         Left            =   60
         Top             =   180
         Width           =   6255
      End
   End
   Begin VB.CommandButton cmdExit 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      Caption         =   "&Exit"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   5160
      TabIndex        =   4
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Frame fr_BackupOpts 
      BackColor       =   &H00DBD9D4&
      Caption         =   "BackUp Options"
      Height          =   1875
      Left            =   120
      TabIndex        =   0
      Top             =   1140
      Width           =   6375
      Begin VB.CommandButton cmdUpdate 
         Appearance      =   0  'Flat
         BackColor       =   &H00DBD9D4&
         Caption         =   "&Update"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   5040
         TabIndex        =   5
         Top             =   1380
         Width           =   1215
      End
      Begin VB.OptionButton opt_Restore 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Start backup without Restore"
         Height          =   255
         Index           =   10
         Left            =   300
         TabIndex        =   3
         Top             =   960
         Width           =   5295
      End
      Begin VB.OptionButton opt_Restore 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Restore Data From USB"
         Height          =   255
         Index           =   2
         Left            =   300
         TabIndex        =   2
         Top             =   660
         Width           =   5295
      End
      Begin VB.OptionButton opt_Restore 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Restore Data From SYSROM"
         Height          =   255
         Index           =   1
         Left            =   300
         TabIndex        =   1
         Top             =   360
         Width           =   5295
      End
   End
End
Attribute VB_Name = "DataBackup_Frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim PLCStn As Integer

Private Sub chk_BackupState_Click()
         
   If chk_BackupState.Value <> Backup_Active(PLCStn) Then
        Data(0) = chk_BackupState.Value
        Backup_Active(PLCStn) = chk_BackupState.Value
        Call Comms_frm.WritePLC(PLCStn, "D", 291, 1, Data, False, "")
    End If
End Sub

Private Sub cmb_PLCStn_Click()
    PLCStn = cmb_PLCStn.ListIndex
    UpdateStatus
    opt_Restore(1).Value = 1
End Sub

Private Sub cmdExit_Click()
    Unload Me
End Sub
Private Sub UpdateStatus()
  
    If Backup_Active(PLCStn) Then
        chk_BackupState.Value = vbChecked
        chk_BackupState.BackColor = vbGreen
        shp_BackupState.BackColor = vbGreen
        chk_BackupState.Caption = TextWord(958)
        SetStatus (False)
    Else
        chk_BackupState.Value = vbUnchecked
        chk_BackupState.BackColor = vbRed
        shp_BackupState.BackColor = vbRed
        chk_BackupState.Caption = TextWord(750)
        SetStatus (True)
    End If
End Sub
Private Sub WriteTexts()
    Me.Caption = "PLC Backup"
    opt_Restore(1).Caption = TextWord(959) & " SYSROM"
    opt_Restore(2).Caption = TextWord(959) & "  USB"
    opt_Restore(10).Caption = TextWord(960)
    CmdExit.Caption = TextWord(42)
    cmdUpdate.Caption = TextWord(461)
End Sub

Private Sub cmdUpdate_Click()
    Dim opt As OptionButton
    Dim Value As Integer
    Value = 0
    For Each opt In opt_Restore
    If opt.Value = True Then
        Value = opt.Index
        Exit For
    End If
    Next opt
    If Value > 0 Then
        Data(0) = Value
        Call Comms_frm.WritePLC(PLCStn, "D", 292, 1, Data, False, "")
    End If
End Sub

Private Sub Form_Load()
    LoadPLCs
    cmb_PLCStn.ListIndex = 0
    'opt_Restore(1).Value = 1
    UpdateStatus
    WriteTexts
End Sub

Private Sub tmr_update_Timer()
    UpdateStatus
End Sub
Private Sub SetStatus(Locked As Boolean)
    Dim opt As OptionButton
    For Each opt In opt_Restore
        opt.Enabled = Locked
    Next opt
    cmdUpdate.Enabled = Locked
    
End Sub
Private Sub LoadPLCs()
    Dim PLC As Integer
        
    For PLC = 0 To UsedPLC
        cmb_PLCStn.AddItem " " & Format$(PLC, "#0") & " -  " & PLCName(PLC)
        cmb_PLCStn.ItemData(cmb_PLCStn.NewIndex) = PLC
    Next PLC
   

End Sub

