VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   2100
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   9060
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2100
   ScaleWidth      =   9060
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Cmd_exit 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      Caption         =   "&Save"
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
      Left            =   7560
      TabIndex        =   0
      Top             =   1440
      Width           =   1215
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00DBD9D4&
      Caption         =   "SQL Server Options"
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
      Height          =   1215
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   8655
      Begin VB.PictureBox Picture1 
         BackColor       =   &H00DBD9D4&
         BorderStyle     =   0  'None
         Height          =   915
         Left            =   240
         ScaleHeight     =   915
         ScaleWidth      =   8190
         TabIndex        =   2
         Top             =   240
         Width           =   8190
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
            Left            =   120
            TabIndex        =   4
            ToolTipText     =   "SQL Server Database Name - eg ""MISDB3"""
            Top             =   480
            Width           =   6450
         End
         Begin VB.TextBox txtPath 
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
            Left            =   120
            TabIndex        =   3
            ToolTipText     =   "SQL Server Path - eg ""ACERXP\SQLEXPRESS"""
            Top             =   120
            Width           =   6450
         End
         Begin VB.Label lblMisc 
            BackStyle       =   0  'Transparent
            Caption         =   "DB Name"
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
            Left            =   6840
            TabIndex        =   5
            Top             =   525
            Width           =   1290
         End
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim OriginalPath As String
Dim OriginalFileName As String

Private Sub cmd_cancel_Click()
    Unload Me
End Sub

Private Sub Cmd_exit_Click()
    
    
    Response = MsgBox("Update Registry?", vbOKOnly + vbCritical, "Close TrackView?")
    SQLServerPath = txtPath.Text
    SQLServerDbName = txtFileName.Text
    
    
    If Response = vbOK Then
                    
        'Save SQL Server location and database name
        SQLServerPath = txtPath.Text
        Call SaveSetting("TrackView", "Config", "SQLServerPath", SQLServerPath)
        Call SaveSetting("TrackView", "Config", "SQLServerDbName", SQLServerDbName)
           
    End If


           
    'Save for TCP/IP Driver even if not saved
    Call SaveSetting("TrackView", "Config", "SQLServerPath", SQLServerPath)
    Call SaveSetting("TrackView", "Config", "SQLServerDbName", SQLServerDbName)

           
    Unload Me
    
End Sub


Private Sub Form_Load()
    
    
    
    txtPath.Text = GetSetting("TrackView", "Config", "SQLServerPath") 'Default should not be a valid path to TrackView
    txtFileName.Text = GetSetting("TrackView", "Config", "SQLServerDbName")

    
End Sub


Private Sub txtFileName_GotFocus()
    'lblHidden.SetFocus
End Sub

'Private Sub txtPath_Change()
'    Dim Length As Integer
'    Dim LastChar As String
'    LastChar = Right(txtPath.Text, 1)
'    Select Case IsNumeric(LastChar)
'        Case True
'            'Numbers are OK
'        Case False
'            If LastChar <> "." Then
'                Length = Len(txtPath.Text) - 1
'                If Length > 0 Then
'                    txtPath.Text = Left(txtPath.Text, Length)
'                    txtPath.SelStart = Length
'                Else
'                    txtPath.Text = ""
'                End If
'            End If
'    End Select
'
'End Sub

