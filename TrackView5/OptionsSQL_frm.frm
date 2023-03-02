VERSION 5.00
Begin VB.Form OptionsSQL_frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "SQL Options"
   ClientHeight    =   1935
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8550
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   1935
   ScaleWidth      =   8550
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmd_exit 
      BackColor       =   &H00DBD9D4&
      Caption         =   "&Exit"
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
      Left            =   7200
      TabIndex        =   7
      Top             =   1440
      Width           =   1215
   End
   Begin VB.TextBox lblHidden 
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
      Left            =   -5000
      TabIndex        =   6
      Text            =   "lblHidden"
      Top             =   1500
      Width           =   3090
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00DBD9D4&
      BorderStyle     =   0  'None
      Height          =   915
      Left            =   225
      ScaleHeight     =   915
      ScaleWidth      =   8190
      TabIndex        =   1
      Top             =   375
      Width           =   8190
      Begin VB.TextBox txtFileName 
         BackColor       =   &H00DBD9D4&
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
         Left            =   75
         TabIndex        =   4
         ToolTipText     =   "SQL Server Database Name - eg ""MISDB3"""
         Top             =   450
         Width           =   6450
      End
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
         Left            =   6675
         TabIndex        =   3
         Top             =   75
         Visible         =   0   'False
         Width           =   1215
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
         Left            =   75
         TabIndex        =   2
         ToolTipText     =   "SQL Server Path - eg ""ACERXP\SQLEXPRESS"""
         Top             =   75
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
         Left            =   6675
         TabIndex        =   5
         Top             =   525
         Width           =   1290
      End
   End
   Begin VB.Timer tmrUpdate 
      Interval        =   1000
      Left            =   225
      Top             =   1500
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
      Left            =   150
      TabIndex        =   0
      Top             =   150
      Width           =   8295
   End
End
Attribute VB_Name = "OptionsSQL_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim OriginalPath As String
Dim OriginalFileName As String

Private Sub cmd_cancel_Click()
    Unload Me
End Sub

Private Sub cmd_exit_Click()
    
    Dim Changed As Boolean
      
    Changed = ((txtPath.Text <> OriginalPath) Or (txtFileName.Text <> OriginalFileName))
    
    If Changed Then
    
        Response = MsgBox("TrackView needs re-starting!", vbOKOnly + vbCritical, "Close TrackView?")
        
        If Response = vbOK Then
                        
            'Save SQL Server location and database name
            SQLServerPath = txtPath.Text
            Call SaveSetting("TrackView", "Config", "SQLServerPath", SQLServerPath)
            Call SaveSetting("TrackView", "Config", "SQLServerDbName", SQLServerDbName)
            
                            
            'Close connection to all databases
            dbClose
                                       
            Unload Comms_frm
                
            End
               
        End If
    
    End If
           
    'Save for TCP/IP Driver even if not saved
    Call SaveSetting("TrackView", "Config", "SQLServerPath", SQLServerPath)
    Call SaveSetting("TrackView", "Config", "SQLServerDbName", SQLServerDbName)
            
    For n = 0 To UsedPLC
        If PLCConnected(n) Then
            Call SendStringPLC(n, StartSQLServerDataRead)
        End If
    Next n
           
    Unload Me
    
End Sub


Private Sub Form_Load()
    
    
    
    txtPath.Text = GetSetting("TrackView", "Config", "SQLServerPath") 'Default should not be a valid path to TrackView
    txtFileName.Text = GetSetting("TrackView", "Config", "SQLServerDbName")

    
End Sub


Private Sub txtFileName_GotFocus()
    lblHidden.SetFocus
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
