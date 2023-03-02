VERSION 5.00
Begin VB.Form debugInfo_frm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Debug"
   ClientHeight    =   10215
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   17820
   ForeColor       =   &H00000000&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10215
   ScaleWidth      =   17820
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_CloseErrList 
      Caption         =   "&Close Error Log"
      Height          =   375
      Left            =   16380
      TabIndex        =   14
      Top             =   9720
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Clear Error Log"
      Height          =   375
      Left            =   -60
      TabIndex        =   13
      Top             =   -420
      Width           =   1335
   End
   Begin VB.Timer tmr_UpdateErrorLog 
      Interval        =   100
      Left            =   4920
      Top             =   1260
   End
   Begin VB.CommandButton cmd_ClearErrorLog 
      Caption         =   "&Clear Error Log"
      Height          =   375
      Left            =   60
      TabIndex        =   12
      Top             =   9720
      Width           =   1335
   End
   Begin VB.ListBox lstErrors 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   7260
      Left            =   60
      TabIndex        =   11
      Top             =   2400
      Width           =   17655
   End
   Begin VB.CommandButton cmd_ReadErrors 
      Caption         =   "&Read Error Log"
      Height          =   375
      Left            =   60
      TabIndex        =   10
      Top             =   1800
      Width           =   1755
   End
   Begin VB.CommandButton cmd_Clear 
      Caption         =   "&Clear Counts"
      Height          =   375
      Left            =   1920
      TabIndex        =   7
      Top             =   1800
      Width           =   1575
   End
   Begin VB.Timer tmr_Update 
      Interval        =   100
      Left            =   4980
      Top             =   780
   End
   Begin VB.CommandButton cmd_Exit 
      Caption         =   "&Exit"
      Height          =   375
      Left            =   3540
      TabIndex        =   0
      Top             =   1800
      Width           =   1335
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "Error write count"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   1350
      Width           =   3015
   End
   Begin VB.Label lbl_ErrorWriteCount 
      BackColor       =   &H8000000E&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Label4"
      Height          =   315
      Left            =   3240
      TabIndex        =   8
      Top             =   1320
      Width           =   1575
   End
   Begin VB.Label lbl_SettingCacheReadCount 
      BackColor       =   &H8000000E&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Label4"
      Height          =   315
      Left            =   3240
      TabIndex        =   6
      Top             =   990
      Width           =   1575
   End
   Begin VB.Label lbl_SqlDisconnectCount 
      BackColor       =   &H8000000E&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Label4"
      Height          =   315
      Left            =   3240
      TabIndex        =   5
      Top             =   630
      Width           =   1575
   End
   Begin VB.Label lbl_SqlConnectCount 
      BackColor       =   &H8000000E&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Label4"
      Height          =   315
      Left            =   3240
      TabIndex        =   4
      Top             =   270
      Width           =   1575
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "Sql Setting Cache Read Count"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   1020
      Width           =   3015
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "Sql Connection Count"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   660
      Width           =   3015
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Sql Disconnection Count"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   300
      Width           =   3015
   End
End
Attribute VB_Name = "debugInfo_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_Clear_Click()
    DebugCounters.SQLConnections = 0
    DebugCounters.SQLDiconnections = 0
    DebugCounters.SQLReadSettingCache = 0
    DebugCounters.SQLErrorWriteCount = 0
End Sub

Private Sub cmd_ClearErrorLog_Click()
    If AccessLevel >= accProgrammer Then db_uspPCError_Delete PCNum
    GetErrors
End Sub

Private Sub cmd_CloseErrList_Click()
    tmr_UpdateErrorLog.Enabled = False
    SetFormSize "min"
End Sub

Private Sub cmd_Exit_Click()
    Unload Me
End Sub

Private Sub cmd_ReadErrors_Click()
    GetErrors
    tmr_UpdateErrorLog.Enabled = True
    tmr_UpdateErrorLog.Interval = 10000 '10secs
End Sub

Private Sub Form_Load()
    SetFormSize "min"
    tmr_UpdateErrorLog.Enabled = False
    UpdateCount
End Sub
Private Sub UpdateCount()
    lbl_SqlConnectCount.Caption = DebugCounters.SQLConnections
    lbl_SqlDisconnectCount.Caption = DebugCounters.SQLDiconnections
    lbl_SettingCacheReadCount.Caption = DebugCounters.SQLReadSettingCache
    lbl_ErrorWriteCount.Caption = DebugCounters.SQLErrorWriteCount
    
End Sub

Private Sub tmr_update_Timer()
    UpdateCount
End Sub
Private Sub GetErrors()
    SetFormSize "max"
    db_uspPCError_GetHistory
    lstErrors.Clear
    
    For n = 0 To UBound(PCErrorMessages)
        lstErrors.AddItem (PCErrorMessages(n))
    Next n
End Sub

Private Sub tmr_UpdateErrorLog_Timer()
    GetErrors
End Sub
Private Sub SetFormSize(size As String)
   Select Case size
        Case "min"
            Me.Height = 2670
            Me.Width = 5000
            
        Case "max"
            
            Me.Height = 10650
            Me.Width = 17910
        
   End Select


End Sub
