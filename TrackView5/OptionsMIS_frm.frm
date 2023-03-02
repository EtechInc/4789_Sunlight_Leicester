VERSION 5.00
Begin VB.Form OptionsMIS_frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "MIS Options"
   ClientHeight    =   2535
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8490
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   2535
   ScaleWidth      =   8490
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Cmd_exit 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
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
      Left            =   6975
      TabIndex        =   6
      Top             =   1950
      Width           =   1215
   End
   Begin VB.CommandButton cmd_cancel 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
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
      Left            =   6975
      TabIndex        =   5
      Top             =   1425
      Width           =   1215
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Use MIS"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   1140
      Left            =   150
      TabIndex        =   0
      Top             =   150
      Width           =   8190
      Begin VB.CommandButton cmdBrowse 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Browse"
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
         Left            =   6825
         TabIndex        =   3
         Top             =   300
         Width           =   1215
      End
      Begin VB.CheckBox chkUseMIS 
         BackColor       =   &H00DBD9D4&
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   1050
         TabIndex        =   2
         Top             =   0
         Width           =   240
      End
      Begin VB.TextBox txtFileName 
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
         Height          =   315
         Left            =   375
         TabIndex        =   1
         ToolTipText     =   "MIS File Name - Enter required file name"
         Top             =   675
         Width           =   6375
      End
      Begin VB.Label lblMisc 
         BackStyle       =   0  'Transparent
         Caption         =   "File Name"
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
         Height          =   240
         Index           =   4
         Left            =   6825
         TabIndex        =   7
         Top             =   750
         Width           =   1290
      End
      Begin VB.Label lblPath 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
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
         Height          =   315
         Left            =   375
         TabIndex        =   4
         ToolTipText     =   "File Location - Use Browse to select a path"
         Top             =   300
         Width           =   6375
      End
   End
End
Attribute VB_Name = "OptionsMIS_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_cancel_Click()
    Unload Me
End Sub

Private Sub Cmd_exit_Click()
    
    db_uspSettingSave "SettingsNetwork", "MIS", "MISPath", lblPath.Caption, PCNum
    db_uspSettingSave "SettingsNetwork", "MIS", "MISFileName", txtFileName.Text, PCNum
    db_uspSettingSave "SettingsNetwork", "MIS", "MISUse", chkUseMIS.Value, PCNum
    
    MISPath = lblPath.Caption
    MISFileName = txtFileName.Text
    MISUse = chkUseMIS.Value
    
    Unload Me
    
End Sub

Private Sub cmdBrowse_Click()
    
    Dim spath As String
    
    spath = FixPath(MISPath)
     
    'call the function, returning the path
    
    lblPath.Caption = BrowseForFolderByPath(spath, Me.hWnd)

End Sub

Private Sub Form_Load()
    
    MISPath = db_uspSettingGet("SettingsNetwork", "MIS", "MISPath", "C:\", PCNum)
    MISFileName = db_uspSettingGet("SettingsNetwork", "MIS", "MISFileName", "MIS.TXT", PCNum)
    MISUse = db_uspSettingGet("SettingsNetwork", "MIS", "MISUse", False, PCNum)
    
    lblPath.Caption = MISPath
    txtFileName.Text = MISFileName
    chkUseMIS.Value = db_uspSettingGet("SettingsNetwork", "MIS", "MISUse", 0, PCNum)
    
End Sub
