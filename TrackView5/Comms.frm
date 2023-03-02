VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Comms_frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "lblCatName"
   ClientHeight    =   6930
   ClientLeft      =   3600
   ClientTop       =   2055
   ClientWidth     =   11565
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   6930
   ScaleWidth      =   11565
   ShowInTaskbar   =   0   'False
   Visible         =   0   'False
   Begin VB.CommandButton cmdSave 
      BackColor       =   &H00DBD9D4&
      Caption         =   "&Save"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   60
      TabIndex        =   45
      Top             =   6360
      Width           =   1395
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
      TabIndex        =   44
      Text            =   "lblHidden"
      Top             =   6525
      Width           =   3090
   End
   Begin VB.TextBox txtPLC 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H008080FF&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   0
      Left            =   6780
      TabIndex        =   43
      Text            =   "0"
      ToolTipText     =   "PLC Write Buffer Selection"
      Top             =   5700
      Width           =   540
   End
   Begin VB.Timer tmrPLCConnected 
      Interval        =   1000
      Left            =   5580
      Top             =   6420
   End
   Begin VB.ListBox lstWriteOwner 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
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
      Height          =   2760
      Index           =   0
      Left            =   6750
      TabIndex        =   42
      Top             =   2925
      Width           =   4740
   End
   Begin VB.TextBox txtWriteBuffer 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
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
      Height          =   315
      Left            =   10800
      TabIndex        =   40
      ToolTipText     =   "PLC Write Buffer Count"
      Top             =   5925
      Width           =   690
   End
   Begin VB.CheckBox chkWrite 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      Caption         =   "Write Enabled"
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
      Height          =   195
      Left            =   6825
      TabIndex        =   39
      Top             =   6075
      Width           =   1965
   End
   Begin VB.ListBox lstWrite 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
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
      Height          =   2955
      Index           =   0
      Left            =   6540
      TabIndex        =   38
      Top             =   6540
      Visible         =   0   'False
      Width           =   3465
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Tools "
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
      Height          =   3390
      Left            =   2340
      TabIndex        =   35
      Top             =   6600
      Visible         =   0   'False
      Width           =   2640
      Begin VB.Timer tmr_connectError 
         Enabled         =   0   'False
         Interval        =   1500
         Left            =   1620
         Top             =   300
      End
      Begin VB.Timer tmrWrite 
         Interval        =   100
         Left            =   150
         Top             =   2475
      End
      Begin VB.Timer tmrReply 
         Index           =   0
         Interval        =   100
         Left            =   150
         Top             =   1875
      End
      Begin VB.Timer tmr_connect 
         Index           =   0
         Interval        =   1000
         Left            =   150
         Top             =   1350
      End
      Begin MSWinsockLib.Winsock sck_PLC_Write 
         Index           =   0
         Left            =   150
         Top             =   900
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
      End
      Begin MSWinsockLib.Winsock sck_PLC_Read 
         Index           =   0
         Left            =   150
         Top             =   450
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
      End
   End
   Begin VB.TextBox txtRemoteHost 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
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
      Height          =   315
      Index           =   0
      Left            =   75
      TabIndex        =   24
      Text            =   "10"
      Top             =   1050
      Width           =   1815
   End
   Begin VB.TextBox txtMaxBytesWrite 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
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
      Height          =   315
      Index           =   0
      Left            =   7950
      TabIndex        =   23
      Text            =   "0"
      Top             =   1050
      Width           =   690
   End
   Begin VB.TextBox lblBytesWrite 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
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
      Height          =   315
      Index           =   0
      Left            =   7275
      TabIndex        =   22
      Text            =   "0"
      Top             =   1050
      Width           =   690
   End
   Begin VB.CheckBox chkEnabed 
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      Caption         =   "Enabled"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Index           =   0
      Left            =   150
      TabIndex        =   21
      Top             =   150
      Width           =   1290
   End
   Begin VB.TextBox txtMaxBytesRead 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
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
      Height          =   315
      Index           =   0
      Left            =   4575
      TabIndex        =   20
      Text            =   "0"
      Top             =   1050
      Width           =   690
   End
   Begin VB.TextBox lblBytesRead 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
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
      Height          =   315
      Index           =   0
      Left            =   3900
      TabIndex        =   19
      Text            =   "0"
      Top             =   1050
      Width           =   690
   End
   Begin VB.TextBox txt_Message 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
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
      Height          =   315
      Index           =   0
      Left            =   8625
      TabIndex        =   18
      Top             =   1050
      Width           =   2190
   End
   Begin VB.TextBox txtStateWrite 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
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
      Height          =   315
      Index           =   0
      Left            =   5925
      TabIndex        =   17
      Top             =   1050
      Width           =   690
   End
   Begin VB.TextBox txtStateRead 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
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
      Height          =   315
      Index           =   0
      Left            =   2550
      TabIndex        =   16
      Top             =   1050
      Width           =   690
   End
   Begin VB.TextBox txt_connectsWrite 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
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
      Height          =   315
      Index           =   0
      Left            =   6600
      TabIndex        =   15
      Top             =   1050
      Width           =   690
   End
   Begin VB.TextBox txt_connectsRead 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
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
      Height          =   315
      Index           =   0
      Left            =   3225
      TabIndex        =   14
      Top             =   1050
      Width           =   690
   End
   Begin VB.TextBox txtRemotePortWrite 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
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
      Height          =   315
      Index           =   0
      Left            =   5250
      TabIndex        =   13
      Text            =   "31999"
      Top             =   1050
      Width           =   690
   End
   Begin VB.TextBox txtRemotePortRead 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
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
      Height          =   315
      Index           =   0
      Left            =   1875
      TabIndex        =   12
      Text            =   "31999"
      Top             =   1050
      Width           =   690
   End
   Begin VB.TextBox txtRX 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
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
      Height          =   3315
      Left            =   60
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   3
      Top             =   2880
      Width           =   6615
   End
   Begin VB.CheckBox chkStop 
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      Caption         =   "Switch off to View"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   150
      TabIndex        =   2
      Top             =   2625
      Width           =   1965
   End
   Begin VB.CommandButton cmd_exit 
      BackColor       =   &H00DBD9D4&
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
      Height          =   390
      Left            =   10275
      TabIndex        =   1
      Top             =   6450
      Width           =   1215
   End
   Begin VB.TextBox txtTX 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
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
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   2100
      Width           =   11415
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PLC Write Buffer"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   6750
      TabIndex        =   41
      Top             =   2550
      Width           =   4740
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PLC Read data"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   75
      TabIndex        =   37
      Top             =   2550
      Width           =   6615
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PLC Write data"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   75
      TabIndex        =   36
      Top             =   1725
      Width           =   11415
   End
   Begin VB.Label lblMisc 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Messages"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   16
      Left            =   8625
      TabIndex        =   34
      ToolTipText     =   "Messages from the PLC"
      Top             =   675
      Width           =   2190
   End
   Begin VB.Label lblMisc 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Max"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   15
      Left            =   7950
      TabIndex        =   33
      Top             =   675
      Width           =   690
   End
   Begin VB.Label lblMisc 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1 sec"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   14
      Left            =   7275
      TabIndex        =   32
      Top             =   675
      Width           =   690
   End
   Begin VB.Label lblMisc 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Conn's"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   11
      Left            =   6600
      TabIndex        =   31
      ToolTipText     =   "Connection Attempts"
      Top             =   675
      Width           =   690
   End
   Begin VB.Label lblMisc 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "State"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   10
      Left            =   5925
      TabIndex        =   30
      Top             =   675
      Width           =   690
   End
   Begin VB.Label lblMisc 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Port"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   4
      Left            =   5250
      TabIndex        =   29
      Top             =   675
      Width           =   690
   End
   Begin VB.Label lblStatus 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PLC Communications Status"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   75
      TabIndex        =   28
      Top             =   75
      Width           =   11415
   End
   Begin VB.Label lbldata 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "0000"
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
      Height          =   315
      Index           =   0
      Left            =   10800
      TabIndex        =   27
      Top             =   1050
      Width           =   690
   End
   Begin VB.Label lblMisc 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Write"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   12
      Left            =   5250
      TabIndex        =   26
      Top             =   375
      Width           =   3390
   End
   Begin VB.Label lblMisc 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Read"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   0
      Left            =   1875
      TabIndex        =   25
      Top             =   375
      Width           =   3390
   End
   Begin VB.Label lblMisc 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Port"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   2
      Left            =   1875
      TabIndex        =   11
      Top             =   675
      Width           =   690
   End
   Begin VB.Label lblMisc 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Conn's"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   3
      Left            =   3225
      TabIndex        =   10
      ToolTipText     =   "Connection Attempts"
      Top             =   675
      Width           =   690
   End
   Begin VB.Label lblMisc 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PLC"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   5
      Left            =   8625
      TabIndex        =   9
      Top             =   375
      Width           =   2865
   End
   Begin VB.Label lblMisc 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1 sec"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   6
      Left            =   3900
      TabIndex        =   8
      Top             =   675
      Width           =   690
   End
   Begin VB.Label lblMisc 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Max"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   7
      Left            =   4575
      TabIndex        =   7
      Top             =   675
      Width           =   690
   End
   Begin VB.Label lblMisc 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "D30"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   8
      Left            =   10800
      TabIndex        =   6
      ToolTipText     =   "Current Value of D30"
      Top             =   675
      Width           =   690
   End
   Begin VB.Label lblMisc 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Server IP"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   1
      Left            =   75
      TabIndex        =   5
      ToolTipText     =   "TCP/IP Driver IP Address"
      Top             =   375
      Width           =   1815
   End
   Begin VB.Label lblMisc 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "State"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   13
      Left            =   2550
      TabIndex        =   4
      Top             =   675
      Width           =   690
   End
End
Attribute VB_Name = "Comms_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim n                       As Integer
Dim D0                      As Integer
Dim Answer(MaxPLC)          As String
Dim StrData(MaxPLC)         As String
Dim ReadDataBuild(MaxPLC)   As String
Dim Sends                   As Long

Dim WriteBufferFull         As Boolean
Dim WriteSocketNotConnected As Boolean

Dim AlarmNum                As Integer
Dim AlarmNam                As Integer
Dim AlarmExt                As Integer
Dim AlarmHistoryID(MaxPLC)  As Integer
Dim Dave As Long
Dim BatchReplyID(MaxPLC)    As Long

Dim PLCAlive(MaxPLC)        As Integer
Dim WriteReplyPLC           As Integer
Dim SelectedPLC             As Integer

Dim WriteBytes  As Integer
Dim WriteTries  As Integer
Dim retryCount(10) As Integer
Dim WriteSnapShot(MaxPLC) As Boolean




Private Sub chkEnabed_Click(Index As Integer)
    
    If AccessLevel > accProgrammer Then
        db_uspSettingSave "SettingsLocal", "TCP_IP_Client Enabled", Format$(Index), chkEnabed(Index).Value, PCNum
        
        If chkEnabed(Index).Value Then
            RemoteIP = txtRemoteHost(Index).Text
            db_uspSettingSave "SettingsLocal", "TCP_IP_Client RemoteHost", Format$(Index), RemoteIP, PCNum
        End If
    End If
    
    EnableButtons (Index)
     
End Sub



Private Sub chkStop_Click()
    If chkStop.Value = vbUnchecked Then
        txtRX.Text = ""
        cmdSave.Visible = True
    End If
End Sub

Private Sub CmdSave_Click()
    On Error Resume Next
            ErrorDate = Format$(Now, "yymmddHHMMSS")
            File = LogPath & ErrorDate & ".rxLog"
            F = FreeFile

            Open File For Output Shared As F
                Print #F, txtRX.Text
            Close F
            Open File For Input Shared As F
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    If UnloadMode = 0 Then Cancel = True
End Sub

Private Sub sck_PLC_Read_Connect(Index As Integer)
    
    sck_PLC_Read(Index).SendData "RequestData"
    
End Sub


Private Sub sck_PLC_Read_DataArrival(Index As Integer, ByVal bytesTotal As Long)
    
    Dim Length As Integer
    Dim Device As Integer
    
    On Error GoTo DataArrivalError
    'Debug.Print "Data Arrived"
    
    If chkStop.Value = 0 Then txtRX.Text = txtDebugRX & vbCrLf & txtRX.Text 'Else txtRX.Text = ""
    If Len(txtRX.Text) > 1000000 Then txtRX.Text = Left(txtRX.Text, 1000000)
    
    txtDebugRX = Now() & " Data Arrived"
              
    sck_PLC_Read(Index).GetData StrData(Index)
        
    Call ConvertBinaryToAscii(StrData(Index), Answer(Index))
        
    'DoEvents
        
    If Me.Visible = False Then chkStop.Value = 1
    'If chkStop.Value = 0 Then txtRX.Text = Answer(Index)
       
    'Varify all data has arrived
    
    ReadDataBuild(Index) = ReadDataBuild(Index) + Answer(Index)
    Length = Val("&H" & Mid$(ReadDataBuild(Index), 11, 4))
    Device = Val("&H" & Mid$(ReadDataBuild(Index), 5, 2))
    RequiredLength = (((DeviceBytes(Device) * Length) * 2) + 16)
    CurrentLength = Len(ReadDataBuild(Index))
   
    txtDebugRX = txtDebugRX & vbCrLf & _
                "Device" & " = " & Device & vbCrLf & _
                "Length" & " = " & Length & vbCrLf & _
                "Required Length" & " = " & RequiredLength & vbCrLf & _
                "Current Length" & " = " & CurrentLength
                
    

    
    
   ' If Device = 3 Then 'Debug.Print Device
    
    If CurrentLength = RequiredLength Then
'        Debug.Print "Decode"
'        Debug.Print "CurrentLength = " & CurrentLength
'        Debug.Print "RequiredLength = " & RequiredLength
        
        
        DecodeRead ReadDataBuild(Index)
        
 
'        'Debug.Print ReadDataBuild(Index)
                
        'Add the new string byte count to this seconds total
        BytesRead(Index) = BytesRead(Index) + Len(ReadDataBuild(Index)) / 4
        
        ReadDataBuild(Index) = ""
        
        If sck_PLC_Read(Index).State = sckConnected Then
            If TCPIPDriverShow Then
                sck_PLC_Read(Index).SendData "RequestDataShow"
                TCPIPDriverShow = False
            ElseIf TCPIPDriverHide Then
                sck_PLC_Read(Index).SendData "RequestDataHide"
                TCPIPDriverHide = False
            Else
                sck_PLC_Read(Index).SendData "RequestData"
            End If
            WaitPLCReplyRead(Index) = 30
        End If
              
    ElseIf CurrentLength > RequiredLength Then
        
'        Debug.Print "Lenght Invalid"
'        Debug.Print "CurrentLength = " & CurrentLength
'        Debug.Print "RequiredLength = " & RequiredLength
'        Debug.Print ReadDataBuild(Index)
        txtDebugRX = txtDebugRX & vbCrLf & _
                    "Data Error To Long"
                
        ReadDataBuild(Index) = ""
        
        If sck_PLC_Read(Index).State = sckConnected Then
            sck_PLC_Read(Index).SendData "RequestData"
        End If
        
    Else
        txtDebugRX = txtDebugRX & vbCrLf & _
                    "Wait for next packet"
'        'Debug.Print "Fragment"
'        'Debug.Print "CurrentLength = " & CurrentLength
'        'Debug.Print "RequiredLength = " & RequiredLength
'        'Debug.Print ReadDataBuild(Index)
                    
    End If
          
    
          
Exit Sub

DataArrivalError:
    ErrorHandler Err, "Comms_frm sck_PLC_Read  DataArrival", Err.Description, False
    Debug.Assert "Data Arrive Error"
    
    Resume Next
End Sub

Private Sub sck_PLC_Read_Error(Index As Integer, ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
    ErrorHandler CLng(Number), "sck_PLC_Read Connection No." & Str(Index) & "read socket State = " & sck_PLC_Read(Index).State _
                                  & "Write socket State = " & sck_PLC_Write(Index).State & "Closing Write Port", Description, False
    'New try to close the socket if have an error..
    sck_PLC_Read(Index).Close
    ' Should we close the write port too??
    sck_PLC_Write(Index).Close
End Sub

Private Sub sck_PLC_Write_DataArrival(Index As Integer, ByVal bytesTotal As Long)
    
    On Error GoTo DataArrivalError
           
    Dim WriteArrivalString As String
    
    sck_PLC_Write(Index).GetData WriteArrivalString
                     
    Call WriteReply(WriteArrivalString)
    
Exit Sub

DataArrivalError:
    ErrorHandler Err, "Comms_frm sck_PLC_Read  DataArrival", Err.Description, False
    Resume Next
End Sub
Public Sub WritePLC(PLCStn As Integer, Device As String, Start As Integer, _
                    Amount As Integer, Data As Variant, Optional ShowWait As Boolean, _
                    Optional Owner As String, Optional Importance As Integer)
     
    'Importance 0=Critical 1=Non Critical (If PLC not connected then won't be added to the buffer)
            
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG - ****** PLC Write ******", _
    "PLCStation=" & Str(PLC_Station_No) & " Device=" & Device & " Start=" & Str(Start) _
    & " Amount=" & Str(Amount), False
        
    On Error GoTo WritePLCError
    
    Dim SendString          As String
        
    If ShowWait Then DisplayForm wait_frm
    
    SendString = EncodeWrite(PLCStn, Device, Start, Amount, Data)
    
    If SendString <> "Failed" Then
        
        If (lstWrite(PLCStn).ListCount < 2000) Then
            
            If ((Importance = PLCWriteCritical) Or (PLCAlive(PLCStn) > 0)) Then
            
                WriteBufferFull = False
                
                lstWrite(PLCStn).AddItem SendString
                            
                If Owner <> "" Then myWriteText = Owner Else myWriteText = "Unknown"
                            
                lstWriteOwner(PLCStn).AddItem myWriteText & " - " & Format$(PLCStn) & " " & Format$(Device) & " " & Format$(Start) & " " & Format$(Amount)
            
            End If
            
        Else
            If Not WriteBufferFull Then
                ErrorHandler 0, "WritePLC", "Write Buffer Full PLC=" & PLCStn, True
                WriteBufferFull = True
            End If
        End If
    Else
        ErrorHandler 0, "WritePLC", "EncodeWrite Failed", True
        Exit Sub
    End If
    
    Me.txtWriteBuffer.Text = Format$(lstWrite(SelectedPLC).ListCount)
    
Exit Sub

WritePLCError:
    If ShowWait Then Unload wait_frm
    ErrorHandler Err, "Comms_frm WritePLC ", Err.Description, True
    
End Sub


Private Sub tmrPLCConnected_Timer()
    For n = 0 To UsedPLC
        If PLCAlive(n) > 0 Then
            PLCAlive(n) = PLCAlive(n) - 1
            txtPLC(n).BackColor = &HC0FFC0
            WriteSnapShot(n) = True
            
        End If
        If PLCAlive(n) = 0 Then
            PLCConnected(n) = False 'Old Variable used in OptionsSQL_frm, DatabaseToPLC and SendAllStationsPLC
            txtPLC(n).BackColor = &H8080FF
            'Call an automated snapshot
            If WriteSnapShot(n) Then
                If MasterPC Then BackupDataRead n, "TCP/IP Disconnect"
                WriteSnapShot(n) = False
            End If
        End If
        'Debug.Print "PLCAlive(" & n & ") " & PLCAlive(n)
    Next n
End Sub

Private Sub tmrWrite_Timer()
    
    Dim ReplyString As String
    
    'If no reply from PLC Write then try again
    If (WaitPLCReplyWrite > 0) Then
        WaitPLCReplyWrite = (WaitPLCReplyWrite - 1)
        If WaitPLCReplyWrite = 0 Then
            ConvertAsciiToBinary "1600", ReplyString
            Call WriteReply(ReplyString)
            'ErrorHandler 0, "tmrReply WaitPLCReplyWrite", "Set WriteReply to TimedOut", False
        End If
    ElseIf WaitPLCReplyWrite = 0 Then
        Call WriteSendBuffer
    End If
        
End Sub

Public Sub WriteSendBuffer()
    
    Dim SendString  As String
    Dim BinString   As String
    Dim CheckSum    As String
    
    Const Index = 0
    
    'WriteReplyPLC
    'PLCAlive()
    
    
    
    For n = 0 To UsedPLC
    
        If (lstWrite(n).ListCount > 0) And (PLCAlive(n) > 0) Then
            
            If (sck_PLC_Write(0).State = sckConnected) Then
                                                        
                WriteSocketNotConnected = False
                         
                                                                          
                If (Me.chkWrite.Value <> 0) Then
                    
                    SendString = lstWrite(n).List(0)
                                      
                    WriteBytes = (Len(SendString) / 4)
                                      
                    ConvertAsciiToBinary SendString, BinString
                    CheckSum_Binary BinString, CheckSum
                    sck_PLC_Write(Index).SendData BinString + CheckSum
                                     
                    txt_Message(Index) = "Wait ACK"
                    WaitPLCReplyWrite = 5 '0.5 seconds
                                   
                    WriteReplyPLC = n
                                   
                    GoTo WriteFound
                                   
                End If
                                         
            Else
            
                If Not WriteSocketNotConnected Then
                    ErrorHandler 0, "WriteSendBuffer", "Socket Not Connected", False
                    WriteSocketNotConnected = True
                End If
            
            End If
        
        End If
    
    Next n
    
WriteFound:
    
    Me.txtWriteBuffer.Text = Format$(lstWrite(SelectedPLC).ListCount)
    
    'Wait Form display - Close if connected PLCs all have buffer counts less than 2
    CloseWaitForm = True
    For n = 0 To UsedPLC
        If (lstWrite(n).ListCount > 2) And (PLCAlive(n) > 0) Then
            CloseWaitForm = False
        End If
    Next n
    
    If CloseWaitForm Then
        If CheckFormOpen("wait_frm") Then
            Unload wait_frm
        End If
    End If
       
Exit Sub
WriteSendBufferError:
      
    ErrorHandler Err, "Comms WriteSendBuffer ", Err.Description, True
    WaitPLCReplyWrite = 0
    
End Sub
Public Sub WriteReply(ReplyString As String)
        
    Dim Answer      As String
    Const Index = 0
    
    Dim BinString   As String
    Dim CheckSum    As String
    
    Dim CommsString As String
    
    Call ConvertBinaryToAscii(ReplyString, Answer)
        
    Answer = Left$(Answer, 2)
        
    Select Case Answer
        Case "06" 'ACK From PLC
            'Add the new string byte count to this seconds total
            BytesWrite(Index) = BytesWrite(Index) + WriteBytes
            txt_Message(Index).Text = "ACK PLC"
            WaitPLCReplyWrite = 0
            
            Sends = Sends + 1
            txtTX.Text = Str(Sends)
            
            lstWrite(WriteReplyPLC).RemoveItem 0
            lstWriteOwner(WriteReplyPLC).RemoveItem 0
            
            WriteTries = 0
            WaitPLCReplyWrite = 0
        Case "14" 'NAK from driver
            Call ConvertBinaryToAscii(lstWrite(WriteReplyPLC).List(0), CommsString)
            txt_Message(Index).Text = "NAK Driver"
            ErrorHandler 0, "Comms_frm WriteReply", "NAK Driver Tries = " & Str(WriteTries) & " Write Message = " & lstWriteOwner(WriteReplyPLC).List(0) & " FullData=" & CommsString, False
            WaitPLCReplyWrite = 5 '0.5 seconds
        Case "15" 'NAK From PLC
            Call ConvertBinaryToAscii(lstWrite(WriteReplyPLC).List(0), CommsString)
            txt_Message(Index).Text = "NAK PLC"
            ErrorHandler 0, "Comms_frm WriteReply", "NAK PLC Tries = " & Str(WriteTries) & " Write Message = " & lstWriteOwner(WriteReplyPLC).List(0) & " FullData=" & CommsString, False
            WaitPLCReplyWrite = 5 '0.5 seconds
        Case "16" 'Timed Out
            Call ConvertBinaryToAscii(lstWrite(WriteReplyPLC).List(0), CommsString)
            txt_Message(Index).Text = "Timed Out"
            ErrorHandler 0, "Comms_frm WriteReply", "Timed Out Tries = " & Str(WriteTries) & " Write Message = " & lstWriteOwner(WriteReplyPLC).List(0) & " FullData=" & CommsString, False
            WaitPLCReplyWrite = 5 '0.5 seconds
        Case Else
            Call ConvertBinaryToAscii(lstWrite(WriteReplyPLC).List(0), CommsString)
            ErrorHandler 0, "Comms_frm WritePLC Strange Reply", "Tries = " & Str(WriteTries) & " Answer = " & Answer & " Write Message = " & lstWriteOwner(WriteReplyPLC).List(0) & " FullData=" & CommsString, False
    End Select
        
    MaxTries = 20 'retry time of 500ms
    WriteTries = WriteTries + 1
    If WriteTries > MaxTries Then
        ErrorHandler 0, "WriteReply ++++++++++ PLC Write ++++++++++ ", "Write Failed " & Format$(MaxTries) & " Write Message = " & lstWriteOwner(0).List(WriteReplyPLC) & " FullData=" & CommsString, False
        WriteTries = 0
        lstWrite(WriteReplyPLC).RemoveItem 0
        lstWriteOwner(WriteReplyPLC).RemoveItem 0
        WaitPLCReplyWrite = 0 'Pause Before Starting again with next item
    Else
        Call WriteSendBuffer
    End If
    
Exit Sub
WriteReplyError:
        
    ErrorHandler Err, "Comms WriteSendBuffer ", Err.Description, True
    WaitPLCReplyWrite = 0
    
End Sub

Public Sub DecodeRead(DecodeString As String, Optional Stn As Integer)
       
    On Error GoTo ErrorDecodeRead
    
    Dim Station         As String
    Dim cmd             As Integer
    Dim Device          As String
    Dim Length          As Integer
    Dim Start           As Integer
    Dim DataString      As String
    Dim Dump            As String
    Dim DecodeData()    As Integer
    Dim DecodeData32()  As Long
    Dim m               As Integer
    Dim n               As Integer
      
    Dim myData          As Integer
      
    'Station = Format$(Stn)
    Station = Mid$(DecodeString, 1, 2)
    cmd = Val(Mid$(DecodeString, 3, 2)) 'Not Used was used for byte calculation
    Device = Mid$(DecodeString, 5, 2)
    Start = Val("&H" & Mid$(DecodeString, 7, 4))
    Length = Val("&H" & Mid$(DecodeString, 11, 4))
    DataString = Right$(DecodeString, Len(DecodeString) - 16) 'Remove the Header info from the String
    
    


    
                
    'Set Device for eaisy read in TrackView
    If Device = "01" Then
        Device = "C"
        ByteLen = 4 'Ascii Bytes "FFFF"
        Length = Len(DataString) / ByteLen
        ReDim DecodeData(Length)
    ElseIf Device = "02" Then
        Device = "D"
        ByteLen = 4 'Ascii Bytes "FFFF"
        Length = Len(DataString) / ByteLen
        ReDim DecodeData(Length)
    ElseIf Device = "03" Then
        Device = "Bag"
        ByteLen = 4 'Ascii Bytes "FFFF" 'Bag is actually a mix of data types
        Length = Len(DataString) / ByteLen
        ReDim DecodeData(Length)
    ElseIf Device = "04" Then
        Device = "RB_Posn"
        ByteLen = 8 'Ascii Bytes "FFFFFFFF"
        Length = Len(DataString) / ByteLen
        ReDim DecodeData32(Length)
    ElseIf Device = "05" Then
        Device = "D32"
        ByteLen = 8 'Ascii Bytes "FFFFFFFF"
        Length = Len(DataString) / ByteLen
        ReDim DecodeData32(Length)
    ElseIf Device = "06" Then
        Device = "MCN"
        ByteLen = 4 'Ascii Bytes "FFFF" 'Machine is actually a mix of data types
        Length = Len(DataString) / ByteLen
        ReDim DecodeData(Length)
    Else
         
        txtDebugRX = txtDebugRX & vbCrLf & "Decode Failed"
        GoTo Failed
    End If
    
    txtDebugRX = txtDebugRX & vbCrLf & _
            "Decode" & vbCrLf & _
              "Station    = " & Station & vbCrLf & _
              "Device     = " & Device & vbCrLf & _
              "Start      = " & Start & vbCrLf & _
              "Length    = " & Length
  
    

    m = 0
   ' Debug.Print Station & " " & Device & " " & Start & " " & Length
    
    
    For n = 1 To Len(DataString) Step ByteLen
        If (PLCType(Station) = i386) Then
            If (ByteLen = 4) Then
                DecodeData(m) = Val("&H" & (Mid$(DataString, n + 2, 2) & Mid$(DataString, n, 2)))
            ElseIf (ByteLen = 8) Then
                DecodeData32(m) = CDbl("&H" & (Mid$(DataString, n + 6, 2) & Mid$(DataString, n + 4, 2) & Mid$(DataString, n + 2, 2) & Mid$(DataString, n, 2)))
                If m = 35 Then
                    Dave = Dave
                End If
            End If
        Else
            DecodeData(m) = Val("&H" & Mid$(DataString, n, ByteLen))
        End If
        m = m + 1
    Next n
    If m < Length Then GoTo Failed 'Check the String Sent was as expected length
    
    If Device = "Bag" Then
        DecodeBag Station, Device, Start, Length, DecodeData()
    ElseIf Device = "RB_Posn" Then
        DecodeRB Station, Device, Start, Length, DecodeData32()
    ElseIf Device = "D32" Then
        Decode32 Station, Device, Start, Length, DecodeData32()
    ElseIf Device = "MCN" Then
        DecodeMCN Station, Device, Start, Length, DecodeData()
    Else
        DecodeCD Station, Device, Start, Length, DecodeData()
    End If
    
'    PLCConnected(Station) = True
'    PLCAlive(Station) = 10
    
Exit Sub

Failed:
    ErrorHandler 0, "Comms_frm DecodeRead Failed", " m = " & m & " Length = " & Length, False
Exit Sub

ErrorDecodeRead:
    'Debug.Print "Station=" & Station & " Device=" & Device & " Start=" & Start & " Length=" & Length
    txtDebugRX = txtDebugRX & vbCrLf & "Decode Error"
    ErrorHandler Err, "Comms_frm DecodeRead Failed", Err.Description, False
    Resume Next
End Sub
Private Sub DecodeBag(Station As String, Device As String, _
        DataStart As Integer, DataLen As Integer, Rdata As Variant)
        
        On Error GoTo ErrorDecodeBag
        
        Dim BagIndex   As Integer
        Dim i       As Integer
        Dim n       As Integer
        Dim PLCStn  As Integer
               
        'Bag format
        'Grp    USINT
        'Dst    USINT
        'Wgt    UINT
        'Cnt    UINT
        'Ur1    UINT - User Spare Integer
        'Bid    UDINT
        'Cat    UDINT
        'Mis    UDINT
        'Ur2    UDINT
        
                
        Dim Dst         As Integer
        Dim Grp         As Integer
        Dim Wgt         As Integer
        Dim Cnt         As Integer
        Dim Ur1         As Integer
        Dim Bid         As Long
        Dim Cat         As Long
        Dim MIS         As Long
        Dim Cus         As Long
        Dim Ur2         As Long
        Dim TimeStamp As Long
        
        
        
        Dim Changed     As Boolean
        Dim OpenForm    As Form
        
        Dim DataHL      As Integer
        Dim DataH       As Integer
        Dim DataL       As Integer
        Dim DataLong    As Long
        
        Dim DataEnd     As Integer
        
        PLCStn = Val(Station)
        
        BagDataSize = (DeviceBytes(DeviceBag)) / 2 '2 Bytes for each value 16bit
        
        n = 0
        DataEnd = ((DataStart + (DataLen / BagDataSize)) - 1)
        For BagIndex = DataStart To DataEnd
                                                   
            If BagIndex = 1 Then
                Dave = Dave
            End If
                                       
            Call ConvertIntToLong(CInt(Rdata(7 + n)), CInt(Rdata(6 + n)), DataLong)
            Cat = DataLong
                                       
            If Cat > 0 Then
                Call ConvertIntToByte(CInt(Rdata(0 + n)), DataH, DataL)
                Grp = DataL
                Dst = DataH
                
                Wgt = CInt(Rdata(1 + n))
                Cnt = CInt(Rdata(2 + n))
                Ur1 = CInt(Rdata(3 + n))
                
                Call ConvertIntToLong(CInt(Rdata(5 + n)), CInt(Rdata(4 + n)), DataLong)
                Bid = DataLong
                
                Call ConvertIntToLong(CInt(Rdata(9 + n)), CInt(Rdata(8 + n)), DataLong)
                MIS = DataLong
                
                Call ConvertIntToLong(CInt(Rdata(11 + n)), CInt(Rdata(10 + n)), DataLong)
                Cus = DataLong
                
                Call ConvertIntToLong(CInt(Rdata(13 + n)), CInt(Rdata(12 + n)), DataLong)
                Ur2 = DataLong
                
                Call ConvertIntToLong(CInt(Rdata(15 + n)), CInt(Rdata(14 + n)), DataLong)
                   'Date time in B&R is  number of seconds added to 1/1/1970 00:00
                   'TimeStamp = DateAdd("s", DataLong, TimeStampDateStart)
                   'Store raw value from b&r and convert on display
                   TimeStamp = DataLong
            Else
                
                Grp = 0
                Dst = 0
                Wgt = 0
                Cnt = 0
                Ur1 = 0
                Bid = 0
                Cat = 0
                MIS = 0
                Cus = 0
                Ur2 = 0
                TimeStamp = 0
                
            End If
                                       
            Changed = False
            If Grp <> BagGrp(BagIndex, PLCStn) Then Changed = True
            If Dst <> BagDst(BagIndex, PLCStn) Then Changed = True
            If Wgt <> BagWgt(BagIndex, PLCStn) Then Changed = True
            If Cnt <> BagCnt(BagIndex, PLCStn) Then Changed = True
            If Ur1 <> BagUr1(BagIndex, PLCStn) Then Changed = True
            If Bid <> BagBid(BagIndex, PLCStn) Then Changed = True
            If Cat <> BagCat(BagIndex, PLCStn) Then Changed = True
            If MIS <> BagMis(BagIndex, PLCStn) Then Changed = True
            If Cus <> BagCus(BagIndex, PLCStn) Then Changed = True
            If Ur2 <> BagUr2(BagIndex, PLCStn) Then Changed = True
            If TimeStamp <> BagTimestamp(BagIndex, PLCStn) Then Changed = True
                                
            
            BagGrp(BagIndex, PLCStn) = Grp
            BagDst(BagIndex, PLCStn) = Dst
            BagWgt(BagIndex, PLCStn) = Wgt
            BagCnt(BagIndex, PLCStn) = Cnt
            BagUr1(BagIndex, PLCStn) = Ur1
            BagBid(BagIndex, PLCStn) = Bid
            BagCat(BagIndex, PLCStn) = Cat
            BagMis(BagIndex, PLCStn) = MIS
            BagCus(BagIndex, PLCStn) = Cus
            BagUr2(BagIndex, PLCStn) = Ur2
            BagTimestamp(BagIndex, PLCStn) = TimeStamp
        
            ''Debug.Print "DecodeBag=" & BagIndex & " Grp=" & Grp & " Cat=" & Cat
                                       
            'Find any open Bag display forms and call update if the Bag data has changed
            If Changed Then
                With MDIMaindisp_frm
                    For Each OpenForm In Forms
                        If InStr(1, OpenForm.Name, "maindisp", vbTextCompare) > 0 Then
                            If OpenForm.Name <> "MDIMaindisp_frm" Then
                                With OpenForm
                                    .UpdateBag BagIndex, PLCStn
                                End With
                            End If
                        End If
                    Next OpenForm
                End With
            End If
           
            
            n = n + BagDataSize
        
        Next BagIndex
                    
Exit Sub
ErrorDecodeBag:
    ErrorHandler Err, "DecodeBag", Err.Description, False
    Resume Next
    

End Sub
Private Sub DecodeRB(Station As String, Device As String, _
        DataStart As Integer, DataLen As Integer, Rdata As Variant)
        
        On Error GoTo ErrorDecodeRB
        
        Dim myRB    As Integer
        Dim i       As Integer
        Dim n       As Integer
        Dim PLCStn  As Integer
        
        Dim RotateOffset As Integer
        
        PLCStn = Val(Station)
        
        RBDataSize = (DeviceBytes(DeviceRBPosn)) / 4 '4 Bytes for each value 32bit
        
        
        For myRB = DataStart To (DataLen / RBDataSize)
            If myRB > MaxRBs Then Exit For
            n = ((myRB - 1) * RBDataSize)
                                       
            RB_Posn(myRB, PLCStn).Lift.RefOffset = Rdata(0 + n)
            RB_Posn(myRB, PLCStn).Lift.MaxSpeed = Rdata(1 + n)
            RB_Posn(myRB, PLCStn).Lift.CycleCount = Rdata(2 + n)
            RB_Posn(myRB, PLCStn).Lift.PositionNow = Rdata(3 + n)
            RB_Posn(myRB, PLCStn).Lift.OperationMode = Rdata(4 + n)
            RB_Posn(myRB, PLCStn).Lift.IOStatus = Rdata(5 + n)
            RB_Posn(myRB, PLCStn).Lift.Monitor = Rdata(6 + n)
            RB_Posn(myRB, PLCStn).Lift.SeqStep = Rdata(7 + n)
            For i = 0 To 29
                RB_Posn(myRB, PLCStn).Lift.Posn(i) = Rdata(i + 8 + n)
                ''Debug.Print "Lift position " & i & " = " & RB_Posn(myRB, PLCStn).Lift.Posn(i)
            Next i
            
            RotateOffset = (9 + 29) 'Next Position + Number of Positions
            
            RB_Posn(myRB, PLCStn).Rotate.RefOffset = Rdata(0 + RotateOffset + n)
            RB_Posn(myRB, PLCStn).Rotate.MaxSpeed = Rdata(1 + RotateOffset + n)
            RB_Posn(myRB, PLCStn).Rotate.CycleCount = Rdata(2 + RotateOffset + n)
            RB_Posn(myRB, PLCStn).Rotate.PositionNow = Rdata(3 + RotateOffset + n)
            RB_Posn(myRB, PLCStn).Rotate.OperationMode = Rdata(4 + RotateOffset + n)
            RB_Posn(myRB, PLCStn).Rotate.IOStatus = Rdata(5 + RotateOffset + n)
            RB_Posn(myRB, PLCStn).Rotate.Monitor = Rdata(6 + RotateOffset + n)
            RB_Posn(myRB, PLCStn).Rotate.SeqStep = Rdata(7 + RotateOffset + n)
            For i = 0 To 29
                RB_Posn(myRB, PLCStn).Rotate.Posn(i) = Rdata(i + 8 + RotateOffset + n)
                ''Debug.Print "Rotate position " & i & " = " & RB_Posn(myRB, PLCStn).Rotate.Posn(i)
            Next i
            n = n + RBDataSize
        Next myRB
        
Exit Sub
ErrorDecodeRB:
    ErrorHandler Err, "Comms_frm DecodeRB", Err.Description, False

End Sub
Private Sub DecodeMCN(Station As String, Device As String, _
        DataStart As Integer, DataLen As Integer, Rdata As Variant)
        
        On Error GoTo ErrorDecodeMCN
        
        Dim myMCN    As Integer
        Dim i       As Integer
        Dim n       As Integer
        Dim PLCStn  As Integer
        
        Dim DataHL      As Integer
        Dim DataH       As Integer
        Dim DataL       As Integer
        Dim DataLong    As Long
        
        
        
        PLCStn = Val(Station)
        
        MCNDataSize = (DeviceBytes(DeviceMCN)) / 2 '2 Bytes for each value 16bit
        
        n = 0
        
        For myMCN = DataStart To (DataLen / MCNDataSize)
                                                   
            Call ConvertIntToLong(CInt(Rdata(1 + n)), CInt(Rdata(0 + n)), DataLong)
            Mcn(myMCN, PLCStn).MACHINE_NO = DataLong
                                      
            Call ConvertIntToByte(CInt(Rdata(2 + n)), DataH, DataL)
            Mcn(myMCN, PLCStn).DATA_VALID = DataL
            Mcn(myMCN, PLCStn).MACHINE_STATUS = DataH
             
            Call ConvertIntToByte(CInt(Rdata(3 + n)), DataH, DataL)
            Mcn(myMCN, PLCStn).MSG_TYPE = DataL
            Mcn(myMCN, PLCStn).SPARE_FREI_1 = DataH
                       
            Mcn(myMCN, PLCStn).MSG_NR = Rdata(4 + n)
            Mcn(myMCN, PLCStn).SPARE_FREI_2 = Rdata(5 + n)
            
                    
            n = n + MCNDataSize
        
        Next myMCN
        
Exit Sub
ErrorDecodeMCN:
    ErrorHandler Err, "Comms_frm DecodeMCN", Err.Description, False

End Sub
Private Sub Decode32(Station As String, Device As String, _
        DataStart As Integer, DataLen As Integer, Rdata As Variant)

If TrapErrors Then On Error GoTo Decode32Error

Dim i           As Integer
Dim n           As Integer
Dim PLCStn      As Integer
Dim NewID       As Long

Dim BatchNumber As Long
Dim RequestID   As Long
Dim ReplyStn    As Long



Dim ValidLen    As Integer

Dim DataValid   As Boolean


ValidLen = 2000

PLCStn = Val(Station)

DataValid = ((DataLen <= ValidLen) And (PLCStn >= 0) And (PLCStn <= MaxPLC))

If DataValid Then

    For i = 0 To DataLen - 1
                
        n = DataStart + i
                                   
        Select Case Device
                            
            Case "D32"
                
                Select Case n
                    
                    Case 1 To 20
                        'Reports D32[1] to D32[20]
                                
                        RptRdy(PLCStn) = Rdata(i + 0)           'D32[1]
                        RptCus(PLCStn) = Rdata(i + 1)           'D32[2]
                        RptCat(PLCStn) = Rdata(i + 2)           'D32[3]
                        RptWgt(PLCStn) = Rdata(i + 3)           'D32[4]
                        RptCnt(PLCStn) = Rdata(i + 4)           'D32[5]
                        RptStn(PLCStn) = Rdata(i + 5)           'D32[6]
                        RptMcn(PLCStn) = Rdata(i + 6)           'D32[7]
                        RptGrp(PLCStn) = Rdata(i + 7)           'D32[8]
                        RptBid(PLCStn) = Rdata(i + 8)           'D32[9]
                        RptDst(PLCStn) = Rdata(i + 9)           'D32[10]
                        RptDay(PLCStn) = Rdata(i + 10)          'D32[11]
                        RptSQL(PLCStn) = Rdata(i + 12)          'D32[13]
                        RptAct(PLCStn) = Rdata(i + 13)          'D32[14]
                        RptUr1(PLCStn) = Rdata(i + 14)          'D32[15]
                        RptUr2(PLCStn) = Rdata(i + 15)          'D32[16]
                        RptRkg(PLCStn) = Rdata(i + 16)          'D32[17]
                        RptID(PLCStn) = Rdata(i + 18)           'D32[19]
                        ReportReplyID(PLCStn) = Rdata(i + 19)   'D32[20]
                        
                        If MasterPC And Reports_Station Then
                            Call BagReport(CLng(PLCStn), RptRdy(PLCStn), RptCus(PLCStn), RptCat(PLCStn), RptWgt(PLCStn), _
                                            RptCnt(PLCStn), RptStn(PLCStn), RptMcn(PLCStn), RptGrp(PLCStn), _
                                            RptBid(PLCStn), RptDst(PLCStn), RptDay(PLCStn), 0, _
                                            RptSQL(PLCStn), RptAct(PLCStn), RptUr1(PLCStn), RptUr2(PLCStn), RptRkg(PLCStn), RptID(PLCStn))
                        End If
                        
                        i = i + 19 'D32[1] to D32[20]
                    
                    Case 21 To 30
                        If ((n - 20) <= MaxUnloading) Then Unload_Cust(n - 20, PLCStn) = Rdata(i)
                    Case 31 To 51
                        If ((n - 30) <= MaxUnloading) Then Unload_CustAuto(n - 30, PLCStn) = Rdata(i)
'

                    Case 78 ' PLC Timestamp, used as a trigger for data back up.
                        PLCConnected(PLCStn) = True
                        PLCAlive(PLCStn) = 10
                        PLCTime(PLCStn) = Rdata(i)
                        
                    Case 79 ' Used to send current time to PLC>
                    
                    
                    Case 80 To 89 'Customer number for automatic cust change
                        Dim CustomerNum As Long
                        CustomerNum = Rdata(i)
                        If (CustomerNum > 0) And MasterPC Then Call LoadNewCustomer(CustomerNum, n - 80)
                    
                    Case 90 To 99 ' Reserved for customer automatic cust status reply.


'
                    'Database info Requests - Get the Database information from a supplied Category up-to 5 different requests from 1 PLC
                    Case 100
                        If MasterPC Then Call GetDatabaseFromCategory(PLCStn, CLng(Rdata(i)), CLng(Rdata(i + 1)), 101)
                    Case 120
                        If MasterPC Then Call GetDatabaseFromCategory(PLCStn, CLng(Rdata(i)), CLng(Rdata(i + 1)), 121)
                    Case 140
                        If MasterPC Then Call GetDatabaseFromCategory(PLCStn, CLng(Rdata(i)), CLng(Rdata(i + 1)), 141)
                    Case 160
                        If MasterPC Then Call GetDatabaseFromCategory(PLCStn, CLng(Rdata(i)), CLng(Rdata(i + 1)), 161)
                    Case 180
                        If MasterPC Then Call GetDatabaseFromCategory(PLCStn, CLng(Rdata(i)), CLng(Rdata(i + 1)), 181)
                    
                    'PLC Bag ID read and check if valid if not then set from TrackView Stored value
                    Case 200
                        If MasterPC Then
                            NewID = CLng(Rdata(i))
                            If (PLCBagID(PLCStn) <> NewID) And (NewID > 1000) Then
                                db_uspSettingSave "SettingsNetwork", "Config", "PLCBagID" & Str(PLCStn), NewID, PCNum
                                PLCBagID(PLCStn) = NewID
                            End If
                            'IF PLC ID has not been set then send from TrackView
                            If (NewID < 1000) Then
                                Data32(0) = db_uspSettingGet("SettingsNetwork", "Config", "PLCBagID" & Str(PLSStn), 1000, PCNum)
                                WriteD32 PLCStn, 200, 1, Data32()
                            End If
                        End If
                    
                    Case 201
                        If MasterPC And (Rdata(i) > 0) Then Call GetLongAndName(PLCStn, CLng(Rdata(i)), CLng(Rdata(i + 1)), CLng(Rdata(i + 2)), CLng(Rdata(i + 3)), CLng(Rdata(i + 4)), CLng(Rdata(i + 5)))
                    
                    Case 212
                        If (MasterPC And MISSQLServerUse) Then
                            RequestID = CLng(Rdata(i + 0))
                            If (BatchReplyID(PLCStn) = 0) Then
                                BatchReplyID(PLCStn) = CLng(Rdata(i - 1)) 'Set TrackView as PLC when TrackView started D32[211]
                            End If
                            If ((BatchReplyID(PLCStn) <> RequestID) And (RequestID > 0)) Then
                                BatchNumber = MISSQLServer_uspCreateBatchID(CLng(Rdata(i + 1)), CLng(Rdata(i + 2)), CLng(Rdata(i + 3)))
                                If BatchNumber > 0 Then
                                    BatchReplyID(PLCStn) = RequestID
                                    Data32(0) = BatchNumber
                                    Data32(1) = BatchReplyID(PLCStn)
                                    WriteD32 PLCStn, 210, 2, Data32()
                                End If
                            End If
                        End If
                    
                    Case 217
                        If Not MISSQLServerBlockRead Then
                            MISSQLServerStatus = CLng(Rdata(i + 0))
                            If MISSQLServerStatus <> MISSQLServerLastStatus Then
                                MISSQLServerSetStatus
                            End If
                        End If
                            
                    Case 220
                        If MasterPC Then Call SendStringPLC(PLCStn, CLng(Rdata(i + 0)))
                    
                    'Weighing station calibration values
                    Case 230
                        Call WeighingCalibrationValues(PLCStn, CLng(Rdata(i + 0)), CLng(Rdata(i + 1)), CLng(Rdata(i + 2)), CLng(Rdata(i + 3)), _
                                                        CLng(Rdata(i + 4)), CLng(Rdata(i + 5)), CLng(Rdata(i + 6)))
                        
                    'Customer FIFO List
                    Case 401 To 495
                        CustomerList(n - 400, PLCStn) = Rdata(i)
                    
                    
                        
              End Select
                            
        End Select
        
    Next i
    
End If 'RdataValid

Exit Sub

Decode32Error:
        
    ErrorHandler Err, "Decode32Error", Err.Description & "  i =" & Str(i) & "  Device = " & Device, False
    Resume Next
End Sub
Private Sub DecodeCD(Station As String, Device As String, _
        DataStart As Integer, DataLen As Integer, Rdata As Variant)

On Error GoTo DecodeCDError

Dim i           As Integer
Dim n           As Integer
Dim X           As Integer
Dim F           As Integer
Dim DataValue   As Integer
Dim PLCStn      As Integer
Dim PLCSignalsOpen  As Boolean
Dim PLCForceOpen    As Boolean
Dim Rdata_i     As Long
Dim ValidLen    As Integer
Dim mySeq       As Integer

Dim Card        As Integer
Dim Start       As Integer
Dim BagNum      As Integer

Dim DataHL      As Integer
Dim DataH       As Integer
Dim DataL       As Integer

ValidLen = 2000

PLCStn = Val(Station)

DataValid = ((DataLen <= ValidLen) And (PLCStn >= 0) And (PLCStn <= MaxPLC))

If DataValid Then

    For i = 0 To DataLen - 1
        
        n = DataStart + i
        
        If ((Rdata(i) >= -32768) And (Rdata(i) <= 32767)) Then
                            
            Select Case Device
                               
                Case "D"
                    
                    Select Case n
                        Case 0
                            Alarm(PLCStn) = Rdata(i)
                        'Case 1 To 10 'Old 16 bit reports
                                                    
                        'Start / Stops 1 - 63
                        Case 1 To 63
                            Start_Stop(n, PLCStn) = Rdata(i)
                            
                        'Extra Start / Stops 100 - 299
                        Case 7700 To 7899
                            Start_Stop(n - 7600, PLCStn) = Rdata(i)
                                                                   
                                          
                        
                        
                        Case 65 'Rdatabase changed
                            If PLCStn = MasterPLC Then
                                If DatabaseChanged <> Rdata(i) Then
                                    DatabaseChanged = Rdata(i)
                                    db_uspCategoryGroupRead
                                    db_uspCategoriesRead
                                    db_uspCustomersRead
                                End If
                            End If
                            
                        Case 66 'Rdatabase Repair required
                                                        
                        Case 67 'MaxPLCScanTime
                            
                        
                        Case 68 'PC With Supervisor Access
                            If PLCStn = MasterPLC Then PCSupervisor = Rdata(i)
                            
                        Case 69 'PC With Engineer Access
                            If PLCStn = MasterPLC Then PCEngineer = Rdata(i)
                            
                        Case 70 'PC With Rdatabase Access
                            If PLCStn = MasterPLC Then PCRdatabase = Rdata(i)
                            
                        'Indication / Status Pictures
                        Case 71 To 75
                            F = ((n - 71) * 16)
                                                     
                            If Rdata(i) > 0 Then
                                Rdata_i = Rdata(i)
                            Else
                                Rdata_i = Rdata(i) + 65536
                            End If
                            Indication(0 + F, PLCStn) = Rdata_i And 1
                            Indication(1 + F, PLCStn) = Rdata_i And 2
                            Indication(2 + F, PLCStn) = Rdata_i And 4
                            Indication(3 + F, PLCStn) = Rdata_i And 8
                            Indication(4 + F, PLCStn) = Rdata_i And 16
                            Indication(5 + F, PLCStn) = Rdata_i And 32
                            Indication(6 + F, PLCStn) = Rdata_i And 64
                            Indication(7 + F, PLCStn) = Rdata_i And 128
                            Indication(8 + F, PLCStn) = Rdata_i And 256
                            Indication(9 + F, PLCStn) = Rdata_i And 512
                            Indication(10 + F, PLCStn) = Rdata_i And 1024
                            Indication(11 + F, PLCStn) = Rdata_i And 2048
                            Indication(12 + F, PLCStn) = Rdata_i And 4096
                            Indication(13 + F, PLCStn) = Rdata_i And 8192
                            Indication(14 + F, PLCStn) = Rdata_i And 16384
                            Indication(15 + F, PLCStn) = Rdata_i And 32768
                        
                        'CAN Live Pictures
                        Case 76 To 77
                            F = ((n - 76) * 16)
                                                     
                            If Rdata(i) > 0 Then
                                Rdata_i = Rdata(i)
                            Else
                                Rdata_i = Rdata(i) + 65536
                            End If
                            CANLive(1 + F, PLCStn) = Rdata_i And 1
                            CANLive(2 + F, PLCStn) = Rdata_i And 2
                            CANLive(3 + F, PLCStn) = Rdata_i And 4
                            CANLive(4 + F, PLCStn) = Rdata_i And 8
                            CANLive(5 + F, PLCStn) = Rdata_i And 16
                            CANLive(6 + F, PLCStn) = Rdata_i And 32
                            CANLive(7 + F, PLCStn) = Rdata_i And 64
                            CANLive(8 + F, PLCStn) = Rdata_i And 128
                            CANLive(9 + F, PLCStn) = Rdata_i And 256
                            CANLive(10 + F, PLCStn) = Rdata_i And 512
                            CANLive(11 + F, PLCStn) = Rdata_i And 1024
                            CANLive(12 + F, PLCStn) = Rdata_i And 2048
                            CANLive(13 + F, PLCStn) = Rdata_i And 4096
                            CANLive(14 + F, PLCStn) = Rdata_i And 8192
                            CANLive(15 + F, PLCStn) = Rdata_i And 16384
                            CANLive(16 + F, PLCStn) = Rdata_i And 32768
                        
                        'Long ID Request from any one
                        Case 78
                            
                            
                        
                        
                        'RB Write registers
                        Case 81 To 84
                        
                        'RB Monitor Index
                        Case 85
                            RBMonitorIndex(PLCStn) = Rdata(i)
                        
                        
                       'EasiSort Times
                        Case 86 To 88
                            ES_PulseConfig(i - 86) = Rdata(i)      '86
 
                        Case 89
                            'Spare - Part of old CAN status
                        
                        'Robo Position Names 90-95
                        Case 90
                            Call RoboPositionNames(PLCStn, CInt(Rdata(i + 0)), CInt(Rdata(i + 1)), CInt(Rdata(i + 2)), _
                                                    CInt(Rdata(i + 3)), CInt(Rdata(i + 4)), CInt(Rdata(i + 5)))
                            
                        'Spare
                        Case 96 To 100
                            
                                           
                        'Sorting Stations in the Release Q Upto 99 Stations
                        Case 101 To 100 + MaxStations
                            If PLCStn = MasterPLC Then StnInQ(n - 100) = Rdata(i)
                                           
                        Case 201 To 210
                            AlarmRaw(n - 200, PLCStn).Number = Rdata(i)
                            'Add TimeStamp PLC Needs to send this.
                            
                        Case 211 To 220
                            DataHL = Rdata(i)
                            Call ConvertIntToByte(DataHL, DataH, DataL)
                            AlarmRaw(n - 210, PLCStn).Name = DataL
                            AlarmRaw(n - 210, PLCStn).Extra = DataH
                        
                        'Alarm History D221 to D224
                        Case 221
                            
                            'Write to Alarm History if New ID
                            If MasterPC And Rdata(i) > 0 Then
                                
                                If Rdata(i + 2) <> AlarmHistoryID(PLCStn) Then
                                                                
                                    AlarmNum = Rdata(i)
                                    AlarmNam = Rdata(i + 1)
                                    AlarmHistoryID(PLCStn) = Rdata(i + 2)
                                    AlarmExt = Rdata(i + 3)
                                    
                                    Call db_uspAlarmHistoryWrite(AlarmHistoryID(PLCStn), PLCStn, AlarmNum, AlarmNam, AlarmExt)
                                                        
                                 End If
                                 
                                 'Clear the History
                                 If Rdata(i + 2) = AlarmHistoryID(PLCStn) Then
                                                                        
                                    Data(0) = 0
                                    Data(1) = 0
                                    WritePLC PLCStn, "D", 221, 2, Data(), False
                                                                 
                                 End If
                                 
                            End If
                                                      
                            i = i + 3 'D221 to D224 jump over already read registers
                         
                        'Storage Areas
                        Case 250
                            StorageAreaMax(PLCStn) = Rdata(i)
                        Case 251 To 270
                            StorageAreaFrom(n - 250, PLCStn) = Rdata(i)
                        Case 271 To 290
                            StorageAreaTo(n - 270, PLCStn) = Rdata(i)
                        
                        Case 291 ' Check if back up is running
                            Backup_Active(PLCStn) = (Rdata(i) > 0)
                                                                                              
                        'System Running Time
                        Case 310
                            SysRunSeconds(PLCStn) = Rdata(i)
                        Case 311
                           SysRunMinutes(PLCStn) = Rdata(i)
                        Case 312
                            SysRunHours(PLCStn) = Rdata(i)
                        Case 313
                            SysRunHoursK(PLCStn) = Rdata(i)
                                                                                          
                        'Forcing Allowed
                        Case 319
                            ForceAllowed(PLCStn) = (Rdata(i) <> 0)
                                                                                          
                        'PLC I/O Card Status
                        Case 320 To 335
                                                                                                          
                            Start = ((n - 320) * 16)
                                                                                                          
                            If Rdata(i) > 0 Then
                                Rdata_i = Rdata(i)
                            Else
                                Rdata_i = Rdata(i) + 65536
                            End If
                            If ((Start + 16) <= 200) Then
                            
                                PLCIOStatus(Start + 1, PLCStn) = Rdata_i And 1
                                PLCIOStatus(Start + 2, PLCStn) = Rdata_i And 2
                                PLCIOStatus(Start + 3, PLCStn) = Rdata_i And 4
                                PLCIOStatus(Start + 4, PLCStn) = Rdata_i And 8
                                PLCIOStatus(Start + 5, PLCStn) = Rdata_i And 16
                                PLCIOStatus(Start + 6, PLCStn) = Rdata_i And 32
                                PLCIOStatus(Start + 7, PLCStn) = Rdata_i And 64
                                PLCIOStatus(Start + 8, PLCStn) = Rdata_i And 128
                                PLCIOStatus(Start + 9, PLCStn) = Rdata_i And 256
                                PLCIOStatus(Start + 10, PLCStn) = Rdata_i And 512
                                PLCIOStatus(Start + 11, PLCStn) = Rdata_i And 1024
                                PLCIOStatus(Start + 12, PLCStn) = Rdata_i And 2048
                                PLCIOStatus(Start + 13, PLCStn) = Rdata_i And 4096
                                PLCIOStatus(Start + 14, PLCStn) = Rdata_i And 8192
                                PLCIOStatus(Start + 15, PLCStn) = Rdata_i And 16384
                                PLCIOStatus(Start + 16, PLCStn) = Rdata_i And 32768
                            End If
                                                                   
                        'PLC I/O Station Card Status
                        Case 350 To 356
                                                                                                          
                            Start = ((n - 350) * 16)
                                                                                                          
                            If Rdata(i) > 0 Then
                                Rdata_i = Rdata(i)
                            Else
                                Rdata_i = Rdata(i) + 65536
                            End If
                            
                            PLCStnStatus(Start + 1, PLCStn) = Rdata_i And 1
                            PLCStnStatus(Start + 2, PLCStn) = Rdata_i And 2
                            PLCStnStatus(Start + 3, PLCStn) = Rdata_i And 4
                            PLCStnStatus(Start + 4, PLCStn) = Rdata_i And 8
                            PLCStnStatus(Start + 5, PLCStn) = Rdata_i And 16
                            PLCStnStatus(Start + 6, PLCStn) = Rdata_i And 32
                            PLCStnStatus(Start + 7, PLCStn) = Rdata_i And 64
                            PLCStnStatus(Start + 8, PLCStn) = Rdata_i And 128
                            PLCStnStatus(Start + 9, PLCStn) = Rdata_i And 256
                            PLCStnStatus(Start + 10, PLCStn) = Rdata_i And 512
                            PLCStnStatus(Start + 11, PLCStn) = Rdata_i And 1024
                            PLCStnStatus(Start + 12, PLCStn) = Rdata_i And 2048
                            PLCStnStatus(Start + 13, PLCStn) = Rdata_i And 4096
                            PLCStnStatus(Start + 14, PLCStn) = Rdata_i And 8192
                            PLCStnStatus(Start + 15, PLCStn) = Rdata_i And 16384
                            PLCStnStatus(Start + 16, PLCStn) = Rdata_i And 32768
                        
                        
                        Case 360
                           PurgeOn(PLCStn) = Rdata(i)
                              
                        Case 366 To 370
                            
                            PurgeOptions(i - 366, PLCStn) = Rdata(i)
                                          
                         Case 371 To 372
                            Rdata_i = Rdata(i)
                            F = ((n - 371) * 16)
                            PurgeStn(1 + F, PLCStn) = Rdata_i And 1
                            PurgeStn(2 + F, PLCStn) = Rdata_i And 2
                            PurgeStn(3 + F, PLCStn) = Rdata_i And 4
                            PurgeStn(4 + F, PLCStn) = Rdata_i And 8
                            PurgeStn(5 + F, PLCStn) = Rdata_i And 16
                            PurgeStn(6 + F, PLCStn) = Rdata_i And 32
                            PurgeStn(7 + F, PLCStn) = Rdata_i And 64
                            PurgeStn(8 + F, PLCStn) = Rdata_i And 128
                            PurgeStn(9 + F, PLCStn) = Rdata_i And 256
                            PurgeStn(10 + F, PLCStn) = Rdata_i And 512
                            PurgeStn(11 + F, PLCStn) = Rdata_i And 1024
                            PurgeStn(12 + F, PLCStn) = Rdata_i And 2048
                            PurgeStn(13 + F, PLCStn) = Rdata_i And 4096
                            PurgeStn(14 + F, PLCStn) = Rdata_i And 8192
                            PurgeStn(15 + F, PLCStn) = Rdata_i And 16384
                            PurgeStn(16 + F, PLCStn) = Rdata_i And 32768
                                          
                                          
                        Case 379
                           
                   
                                          
                        'All PLC Input Cards
                        Case 400 To 400 + (MaxPLCCards / 2)
                            Card = (n - 400)  '1 Cards Per 16 bit register
                                                                                 
                            If Rdata(i) > 0 Then
                                Rdata_i = Rdata(i)
                            Else
                                Rdata_i = Rdata(i) + 65536
                            End If
                                                        
                            PLCx(Card + 0, 1, PLCStn) = Rdata_i And 1
                            PLCx(Card + 0, 2, PLCStn) = Rdata_i And 2
                            PLCx(Card + 0, 3, PLCStn) = Rdata_i And 4
                            PLCx(Card + 0, 4, PLCStn) = Rdata_i And 8
                            PLCx(Card + 0, 5, PLCStn) = Rdata_i And 16
                            PLCx(Card + 0, 6, PLCStn) = Rdata_i And 32
                            PLCx(Card + 0, 7, PLCStn) = Rdata_i And 64
                            PLCx(Card + 0, 8, PLCStn) = Rdata_i And 128
                            PLCx(Card + 0, 9, PLCStn) = Rdata_i And 256
                            PLCx(Card + 0, 10, PLCStn) = Rdata_i And 512
                            PLCx(Card + 0, 11, PLCStn) = Rdata_i And 1024
                            PLCx(Card + 0, 12, PLCStn) = Rdata_i And 2048
                            PLCx(Card + 0, 13, PLCStn) = Rdata_i And 4096
                            PLCx(Card + 0, 14, PLCStn) = Rdata_i And 8192
                            PLCx(Card + 0, 15, PLCStn) = Rdata_i And 16384
                            PLCx(Card + 0, 16, PLCStn) = Rdata_i And 32768
                                        
                        'All PLC Output Cards
                        Case 600 To 600 + (MaxPLCCards / 2)
                            Card = (n - 600) '1 Cards Per 16 bit register
                                                                                 
                            If Rdata(i) > 0 Then
                                Rdata_i = Rdata(i)
                            Else
                                Rdata_i = Rdata(i) + 65536
                            End If
                            
                            PLCy(Card + 0, 1, PLCStn) = Rdata_i And 1
                            PLCy(Card + 0, 2, PLCStn) = Rdata_i And 2
                            PLCy(Card + 0, 3, PLCStn) = Rdata_i And 4
                            PLCy(Card + 0, 4, PLCStn) = Rdata_i And 8
                            PLCy(Card + 0, 5, PLCStn) = Rdata_i And 16
                            PLCy(Card + 0, 6, PLCStn) = Rdata_i And 32
                            PLCy(Card + 0, 7, PLCStn) = Rdata_i And 64
                            PLCy(Card + 0, 8, PLCStn) = Rdata_i And 128
                            PLCy(Card + 0, 9, PLCStn) = Rdata_i And 256
                            PLCy(Card + 0, 10, PLCStn) = Rdata_i And 512
                            PLCy(Card + 0, 11, PLCStn) = Rdata_i And 1024
                            PLCy(Card + 0, 12, PLCStn) = Rdata_i And 2048
                            PLCy(Card + 0, 13, PLCStn) = Rdata_i And 4096
                            PLCy(Card + 0, 14, PLCStn) = Rdata_i And 8192
                            PLCy(Card + 0, 15, PLCStn) = Rdata_i And 16384
                            PLCy(Card + 0, 16, PLCStn) = Rdata_i And 32768
                                              
                        'Machine Status - NEED MOVING USED BY OUTPUTS
                        'Case 700 To 749
                        '    McnStatus(n - 700, PLCStn) = Rdata(i)
                               
                        'Machine Message Type 0=Warning 1=Alarm
                        'Case 750 To 799
                        '    McnMsgType(n - 750, PLCStn) = Rdata(i)
                                  
                        'ManualRelease
                        Case 800 To 899
                            ManualRelease(n - 800, PLCStn) = Rdata(i)
                                 
                        'PLC Sequences
                        Case 900 To 999
                            SequenceStep(n - 900, PLCStn) = Rdata(i)
                        
                        'PLC Sequences - Extra 100
                        Case ExtraSeqStart To (ExtraSeqStart + 99)
                            mySeq = n - (ExtraSeqStart - 100)
                            If (mySeq <= MaxSeq) Then
                                SequenceStep(mySeq, PLCStn) = Rdata(i)
                            End If
                            
                        'Discharger 1 Unloading Program
                        Case 1001 To 1199
                            DataValue = Rdata(i)
                            Call DecodeUnloading(n - 1000, 1, DataValue, PLCStn)
                        
                        'Discharger 2 Unloading Program
                        Case 1201 To 1399
                            DataValue = Rdata(i)
                            Call DecodeUnloading(n - 1200, 2, DataValue, PLCStn)
                            
                        'Discharger 3 Unloading Program
                        Case 1401 To 1599
                            DataValue = Rdata(i)
                            Call DecodeUnloading(n - 1400, 3, DataValue, PLCStn)
                            
                        'Discharger 4 Unloading Program
                        Case 1601 To 1799
                            DataValue = Rdata(i)
                            Call DecodeUnloading(n - 1600, 4, DataValue, PLCStn)
                            
                        'Discharger 5 Unloading Program
                        Case 1801 To 1999
                            DataValue = Rdata(i)
                            Call DecodeUnloading(n - 1800, 5, DataValue, PLCStn)
                            
                        'Discharger 6 Unloading Program
                        Case 2001 To 2199
                            DataValue = Rdata(i)
                            Call DecodeUnloading(n - 2000, 6, DataValue, PLCStn)
                            
                        'Discharger 7 Unloading Program
                        Case 2201 To 2399
                            DataValue = Rdata(i)
                            Call DecodeUnloading(n - 2200, 7, DataValue, PLCStn)
                            
                        'Discharger 8 Unloading Program
                        Case 2401 To 2599
                            DataValue = Rdata(i)
                            Call DecodeUnloading(n - 2400, 8, DataValue, PLCStn)
                            
                        'Discharger 9 Unloading Program
                        Case 2601 To 2799
                            DataValue = Rdata(i)
                            Call DecodeUnloading(n - 2600, 9, DataValue, PLCStn)
                        
                        'Discharger 10 Unloading Program
                        Case 2801 To 2999
                            DataValue = Rdata(i)
                            Call DecodeUnloading(n - 2800, 10, DataValue, PLCStn)
                                                 'Store weigh calibration values for PLC Snap shot
                        Case 4400 To 4499 'Stn low
                            StnCalib_Low(n - 4400, PLCStn) = Rdata(i)
                        Case 4500 To 4599 'Stn High
                            StnCalib_High(n - 4500, PLCStn) = Rdata(i)
                        Case 4600 To 4699 'Stn set weight
                            StnCalib_Set(n - 4600, PLCStn) = Rdata(i)
                            
                        'Discharger 11 Unloading Program
                        Case 6600 To 6799
                            DataValue = Rdata(i)
                            Call DecodeUnloading(n - 6600, 11, DataValue, PLCStn)
                        
                        
                    End Select
                
                Case "C"
                
                    Select Case n
                        Case 0 To 0 + MaxCounters
                            If (Rdata(i) < 3) Then
                                CounterValue(n - 0, PLCStn) = Rdata(i)
                            Else
                                CounterValue(n - 0, PLCStn) = 0
                            End If
                    End Select
                                
            End Select
        Else
            ErrorHandler 0, "Decode Done", "Rdata(i) not valid" & "Rdata =" & Str(Rdata(i)) & " i=" & Str(i) & " Device=" & Device, False
        End If 'Rdata(i) within integer range
    Next i
    
End If 'RdataValid

Exit Sub

DecodeCDError:
        
    ErrorHandler Err, "DecodeCDError", Err.Description & "  i =" & Str(i) & "  Device = " & Device, False
    Resume Next
End Sub

Private Sub cmd_Exit_Click()
    
    Dim Index       As Integer
    Dim RemoteIP    As String
    
    If AccessLevel > accProgrammer Then
        For Index = 0 To MaxTCPConnections
            db_uspSettingSave "SettingsLocal", "TCP_IP_Client RemotePortRead", Format$(Index), txtRemotePortRead(Index).Text, PCNum
            db_uspSettingSave "SettingsLocal", "TCP_IP_Client RemotePortWrite", Format$(Index), txtRemotePortWrite(Index).Text, PCNum
            RemoteIP = txtRemoteHost(Index).Text 'Replace(txtRemoteHost(Index).Text, ".", "x")
            db_uspSettingSave "SettingsLocal", "TCP_IP_Client RemoteHost", Format$(Index), RemoteIP, PCNum
        Next Index
    End If
    
    Me.Hide
End Sub


Private Sub Form_Activate()
    
    CenterForm Me
    Me.Top = Me.Top - 500
         
    
    For n = 0 To MaxTCPConnections
        chkEnabed(n).Visible = (AccessLevel > accProgrammer)
        EnableButtons (n)
    Next n
    
    
        
    chkWrite.Enabled = (AccessLevel > accProgrammer)
    
End Sub

Private Sub Form_Load()

    ReportsEnabled = True
    
    CenterForm Me
    Me.Top = Me.Top - 500
    
    'Set Constants
    NUL = Chr$(&H0)
    STX = Chr$(&H2)
    ETX = Chr$(&H3)
    ENQ = Chr$(&H5)
    ACK = Chr$(&H6)
    CR = Chr$(&HD)
    NAK = Chr$(&H15)
        
    chkWrite.Value = 1
    cmdSave.Visible = False
        
        
    Dim MasterIPAddress As String
    If MasterPC Then
        MasterIPAddress = Me.sck_PLC_Write(0).LocalIP
        'MasterIPAddress = Replace(MasterIPAddress, ".", "x")
        db_uspSettingSave "SettingsNetwork", "Master", "IP", MasterIPAddress, PCNum
    End If
       
    Dim IPAddress As String
    
    
    ' The name of the Winsock control is tcpClient.
    ' Note: to specify a remote host, you can use
    ' either the IP address (ex: "121.111.1.1") or
    ' the computer's "friendly" name, as shown here.
    Dim Client As Winsock
    For Each Client In sck_PLC_Read()
        
        n = Client.Index
        'IP Address saved in parts to avoid problems with Format and different reginal settings . replaced with x
        IPAddress = ""
        
        IPAddress = db_uspSettingGet("SettingsLocal", "TCP_IP_Client RemoteHost", Format$(n), "127.0.0.1", PCNum)
        'IPAddress = Replace(IPAddress, "x", ".")
        
        txtRemoteHost(n).Text = IPAddress
        
        IPMaster = db_uspSettingGet("SettingsNetwork", "Master", "IP", "127.0.0.1", PCNum)
        'IPMaster = Replace(IPMaster, "x", ".")
        
        'Auto Master IP Address if IP is set to "0.0.0.0" then use the masters IP address
        'Used with DHCP when Master address can change
        'Only works if all TCP/IP Drivers are on the Master PC
        If IPAddress = "0.0.0.0" Then IPAddress = IPMaster
                
        sck_PLC_Read(n).RemoteHost = IPAddress
        sck_PLC_Write(n).RemoteHost = IPAddress
                
        sck_PLC_Read(n).RemotePort = db_uspSettingGet("SettingsLocal", "TCP_IP_Client RemotePortRead", Format$(n), Format$(31000 + n), PCNum)
        sck_PLC_Write(n).RemotePort = db_uspSettingGet("SettingsLocal", "TCP_IP_Client RemotePortWrite", Format$(n), Format$(31100 + n), PCNum)
        txtRemotePortRead(n).Text = sck_PLC_Read(n).RemotePort
        txtRemotePortWrite(n).Text = sck_PLC_Write(n).RemotePort
        
        chkEnabed(n).Value = db_uspSettingGet("SettingsLocal", "TCP_IP_Client Enabled", Format$(n), 0, PCNum)
        
        MaxTCPConnections = Client.Index
    
    Next Client
      
    If MaxTCPConnections Then MaxTCPConnections = 1
      
    
    
    ReDim WaitPLCReplyRead(MaxTCPConnections)
    ReDim ConnectsRead(MaxTCPConnections)
    ReDim ConnectsWrite(MaxTCPConnections)
    ReDim PLCStation(MaxTCPConnections)
    ReDim BytesRead(MaxTCPConnections)
    ReDim BytesWrite(MaxTCPConnections)
    ReDim MaxBytesRead(MaxTCPConnections)
    ReDim MaxBytesWrite(MaxTCPConnections)
     
    'Write buffers for each PLC
    If UsedPLC > 0 Then
        For n = 1 To UsedPLC
            Load lstWrite(n)
            Load lstWriteOwner(n)
            lstWriteOwner(n).Visible = True
            Load txtPLC(n)
            txtPLC(n).Left = txtPLC(n - 1).Left + 600
            txtPLC(n).Top = txtPLC(n - 1).Top
            txtPLC(n).Visible = True
            txtPLC(n).Text = n
        Next n
    End If
    lstWriteOwner(0).ZOrder vbBringToFront
      
    ''Debug.Print "Starts ----------------------"
    
    
    
End Sub
   
Private Sub tmr_connect_Timer(Index As Integer)
    
    If TrapErrors Then On Error GoTo ConnectError
    
    If chkEnabed(Index).Value = 1 And Demo = False Then
        'If sck_PLC_Read(Index).State = sckClosing Or sck_PLC_Read(Index).State = sckError Then
        If sck_PLC_Read(Index).State <> sckConnected Then
            sck_PLC_Read(Index).Close
            ReadDataBuild(Index) = ""
        End If
        If sck_PLC_Read(Index).State = sckClosed Then
            ReadDataBuild(Index) = ""
            sck_PLC_Read(Index).Connect
            ConnectsRead(Index) = ConnectsRead(Index) + 1
            txt_connectsRead(Index).Text = Format(ConnectsRead(Index))
        End If
        'If sck_PLC_Write(Index).State = sckClosing Or sck_PLC_Write(Index).State = sckError Then
        If sck_PLC_Write(Index).State <> sckConnected Then
            sck_PLC_Write(Index).Close
        End If
        If sck_PLC_Write(Index).State = sckClosed Then
            sck_PLC_Write(Index).Connect
            ConnectsWrite(Index) = ConnectsWrite(Index) + 1
            txt_connectsWrite(Index).Text = Format(ConnectsWrite(Index))
        End If
    Else
        If sck_PLC_Read(Index).State <> sckClosed Then sck_PLC_Read(Index).Close
        If sck_PLC_Write(Index).State <> sckClosed Then sck_PLC_Write(Index).Close
    End If
      
    'Show current connection state
    txtStateRead(Index).Text = sck_PLC_Read(Index).State
    txtStateWrite(Index).Text = sck_PLC_Write(Index).State
    
    If sck_PLC_Read(Index).State = sckConnected Then
        txtStateRead(Index).ForeColor = &H800000
    Else
        txtStateRead(Index).ForeColor = vbRed
    End If
    
    If sck_PLC_Write(Index).State = sckConnected Then
        txtStateWrite(Index).ForeColor = &H800000
    Else
        txtStateWrite(Index).ForeColor = vbRed
    End If
    
    'Show ammount of data per second for Reading PLC
    If BytesRead(Index) > MaxBytesRead(Index) Then MaxBytesRead(Index) = BytesRead(Index)
    lblBytesRead(Index).Text = BytesRead(Index)
    txtMaxBytesRead(Index).Text = MaxBytesRead(Index)
    BytesRead(Index) = 0
    
    'Show ammount of data per second for Writing PLC
    MaxBytesWrite(Index) = MaxBytesWrite(Index) + BytesWrite(Index)
    lblBytesWrite(Index).Text = BytesWrite(Index)
    txtMaxBytesWrite(Index).Text = MaxBytesWrite(Index)
    BytesWrite(Index) = 0
    
'    If chkEnabed(Index).Value = 1 And sck_PLC_Read(Index).State <> 7 And Demo = False Then
'        Dim OpenForm As Form
'        Dim FormOpen As Boolean
'        'Find out if the form is Already open
'        With MDIMaindisp_frm
'            For Each OpenForm In Forms
'                If OpenForm.Name = "NoConnection_frm" Then
'                    FormOpen = True
'                End If
'            Next OpenForm
'        End With
'        If FormOpen = False And ProjectLoaded Then
'            NotConnected = Index
'            NoConnection_frm.Show
'            'OpenForm.ZOrder vbBringToFront
'        End If
'    End If
    If chkEnabed(Index).Value = 1 And sck_PLC_Read(Index).State <> 7 And Demo = False Then
        tmr_connectError.Enabled = True
    Else
        tmr_connectError.Enabled = False
    End If
      
    
    
Exit Sub
    
ConnectError:
    
    ErrorHandler Err, "Comms_frm", "tmr_connect " & Str(Index), False
    Resume Next
End Sub
Private Sub tmr_connectError_Timer()
        Dim OpenForm As Form
        Dim FormOpen As Boolean
        'Find out if the form is Already open
        With MDIMaindisp_frm
            For Each OpenForm In Forms
                If OpenForm.Name = "NoConnection_frm" Then
                    FormOpen = True
                End If
            Next OpenForm
        End With
        If FormOpen = False And ProjectLoaded Then
            NotConnected = Index
            NoConnection_frm.Show
            'OpenForm.ZOrder vbBringToFront
        End If
End Sub


Private Sub tmrReply_Timer(Index As Integer)
    
    
    
    'If no reply from request data then try again 3 seconds
    If WaitPLCReplyRead(Index) > 0 Then
        WaitPLCReplyRead(Index) = (WaitPLCReplyRead(Index) - 1)
        If WaitPLCReplyRead(Index) = 1 Then
            If sck_PLC_Read(Index).State = sckConnected Then
                If retryCount(Index) < 2 Then
                ReadDataBuild(Index) = ""
                sck_PLC_Read(Index).SendData "RequestData"
                WaitPLCReplyRead(Index) = 30
                retryCount(Index) = retryCount(Index) + 1
                ErrorHandler 0, "tmrReply WaitPLCReplyRead", "Sent Request again " & retryCount(Index), False
                
                'Debug.Print retryCount(Index)
                Else
                    sck_PLC_Read(Index).Close
                    ErrorHandler 0, "tmrReply WaitPLCReplyRead", "Close Connection", False
                End If
            End If
        End If
    End If
    
    
End Sub








Private Sub txt_connectsRead_Click(Index As Integer)
    ConnectsRead(Index) = 0
    txt_connectsRead(Index).Text = "0"
End Sub

Private Sub txt_connectsWrite_Click(Index As Integer)
    ConnectsWrite(Index) = 0
    txt_connectsWrite(Index).Text = "0"
End Sub



Private Sub txtMaxBytesRead_Click(Index As Integer)
    MaxBytesRead(Index) = 0
End Sub

Public Sub EnableButtons(Index As Integer)
    
    txtRemoteHost(Index).Enabled = chkEnabed(Index).Value
    txtRemotePortRead(Index).Enabled = chkEnabed(Index).Value
    txtRemotePortWrite(Index).Enabled = chkEnabed(Index).Value
    txt_connectsRead(Index).Enabled = chkEnabed(Index).Value
    txt_connectsWrite(Index).Enabled = chkEnabed(Index).Value
    txtStateRead(Index).Enabled = chkEnabed(Index).Value
    txtStateWrite(Index).Enabled = chkEnabed(Index).Value
    txt_Message(Index).Enabled = chkEnabed(Index).Value
    lblBytesRead(Index).Enabled = chkEnabed(Index).Value
    lblBytesWrite(Index).Enabled = chkEnabed(Index).Value
    txtMaxBytesRead(Index).Enabled = chkEnabed(Index).Value
    txtMaxBytesWrite(Index).Enabled = chkEnabed(Index).Value
    lbldata(Index).Enabled = chkEnabed(Index).Value
    
    
    
End Sub

Private Sub DecodeUnloading(n As Integer, Discharger As Integer, Data As Integer, PLCStn As Integer)
    
    On Error GoTo ErrorDecodeUnloading
    
    If Discharger > MaxUnloading Then Exit Sub
    If PLCStn > MaxPLC Then Exit Sub
    
    Select Case n
        
        Case 1
            Unload_CurrentStep(Discharger, PLCStn) = Data
        Case 2
            Unload_QtyCompleted(Discharger, PLCStn) = Data
        Case 3
            'Each PLC can have recirculation detect 1st discharger
            If Unload_Register(Discharger, PLCStn) = 1000 Then
                AutoRecirc(PLCStn) = Data 'Only Discharger 1 for each PLC
            End If
        Case 4
            If Unload_Register(Discharger, PLCStn) = 1000 Then
                RecircDepth(PLCStn) = Data 'Only Discharger 1 for each PLC
            End If
        Case 5
            If Unload_Register(Discharger, PLCStn) = 1000 Then
                OnManualLine(PLCStn) = Data 'Only Discharger 1 for each PLC
            End If
        Case 6
            If Unload_Register(Discharger, PLCStn) = 1000 Then
                OnManualBags(PLCStn) = Data 'Only Discharger 1 for each PLC
            End If
        Case 7
            Unload_ManualLine(Discharger, PLCStn) = Data
        Case 8
            Unload_ManualBags(Discharger, PLCStn) = Data
        Case 9
            
        Case 10
            Unload_SkipIncomplete(Discharger, PLCStn) = Data
        Case 11
            Unload_StopAtEndCycle(Discharger, PLCStn) = Data
        Case 14
            Unload_NoBag(Discharger, PLCStn) = Data
        Case 15
            Unload_ProgramEnd(Discharger, PLCStn) = Data
        Case 16
            If Unload_Register(Discharger, PLCStn) = 1000 Then
                OffManualLine(PLCStn) = Data 'Only Discharger 1 for each PLC
            End If
        Case 17
            If Unload_Register(Discharger, PLCStn) = 1000 Then
                OffManualBags(PLCStn) = Data 'Only Discharger 1 for each PLC
            End If
        Case 18
            Unload_StartStop(Discharger, PLCStn) = Data
        Case 20
            Unload_ExperssLine(Discharger, PLCStn) = Data
        Case 21
            Unload_CustomerMode(Discharger, PLCStn) = Data
        
        Case 41 To 60
            Unload_Qty(n - 40, Discharger, PLCStn) = Data
        Case 61 To 80
            Unload_Line(n - 60, Discharger, PLCStn) = Data
        Case 81 To 100
            Unload_Batch(n - 80, Discharger, PLCStn) = Data
        Case 101 To 120
            Unload_Grp1(n - 100, Discharger, PLCStn) = Data
        Case 121 To 140
            Unload_Grp2(n - 120, Discharger, PLCStn) = Data
        Case 141 To 160
            Unload_Grp3(n - 140, Discharger, PLCStn) = Data
        
            
    End Select

Exit Sub
ErrorDecodeUnloading:
    ErrorHandler Err, "DecodeUnloading", Err.Description, False
    Resume Next
    
End Sub

Private Sub txtPLC_Click(Index As Integer)
    
    lstWriteOwner(Index).ZOrder vbBringToFront
    SelectedPLC = Index
    
End Sub

Private Sub txtPLC_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Me.lblHidden.SetFocus
End Sub

Private Sub txtRemoteHost_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    txtRemoteHost(Index).ToolTipText = sck_PLC_Read(Index).RemoteHost
End Sub

Public Sub BagReport(PLCStn As Long, _
                            RptRdy As Long, _
                            RptCus As Long, _
                            RptCat As Long, _
                            RptWgt As Long, _
                            RptCnt As Long, _
                            RptStn As Long, _
                            RptMcn As Long, _
                            RptGrp As Long, _
                            RptBid As Long, _
                            RptDst As Long, _
                            RptDay As Long, _
                            RptSpe As Long, _
                            RptSQL As Long, _
                            RptAct As Long, _
                            RptUr1 As Long, _
                            RptUr2 As Long, _
                            RptRkg As Long, _
                            RptID As Long)
    
    'Version 2.00 09/11/2011 D.J. Added RptSQL (SQL Server Batch ID) not used at present
    
    Dim Dummy       As Integer
    Dim DataValid   As Boolean
        
    Dim DummyLong       As Long
    Dim DummyTime       As String
    Dim Notes           As String
    Dim Special         As Long
        
    
    If MasterPC And Reports_Station Then
        If ReportID(PLCStn) <> RptID And RptRdy > 0 Then
            
            DataValid = True
            If RptStn < 0 Or RptStn > 99 Then DataValid = False
            If RptGrp < 0 Or RptGrp > MaxGrp Then DataValid = False
            If RptCat < 0 Or RptCat > MaxCat Then DataValid = False
            If RptCus < 0 Or RptCus > MaxCus Then DataValid = False
            If RptWgt < 0 Or RptWgt > 9999 Then DataValid = False
            If RptCnt < 0 Or RptCnt > 9999 Then DataValid = False
            If RptDst < 0 Or RptDst > 999 Then DataValid = False
            If RptDay < 0 Or RptDay > 7 Then DataValid = False
            If RptMcn < 0 Or RptMcn > 999 Then DataValid = False
            'If RptBid < 0 Then DataValid = False - Some loads may not have a BagID
            
            'Special report when Station and Machine have been set to the same value
            If (RptStn = RptMcn) Then
                RptSpe = RptStn
                RptStn = 0
                RptMcn = 0
            End If
            
            If DataValid Then
                
                'Write to Supertrack Reports - only if weight or count have a value
                If (RptCnt > 0) Or (RptWgt > 0) Then
                    db_uspReportWrite RptID, PLCStn, RptCus, RptCat, RptWgt, RptCnt, RptStn, RptMcn, RptGrp, RptBid, RptDst, RptDay, RptSpe
                End If
                
                'Update Bag ID table - If Action = 1 Release
                If (RptStn > 0) And (RptAct = 1) Then
                    Call db_uspBagIDRead(RptBid, DummyTime, DummyLong, DummyLong, DummyLong, DummyLong, DummyLong, DummyLong, DummyLong, DummyLong, DummyLong, DummyLong, DummyLong, DummyLong, Special, Notes)
                    Call db_uspBagIDWrite(RptBid, DummyTime, RptDst, RptGrp, RptRkg, RptCnt, RptCat, RptUr1, RptSQL, RptCus, RptUr2, RptStn, RptMcn, RptDay, Special, Notes)
                End If
                
                'Write to MIS Transaction File - only if weight or count have a value
                If (RptCnt > 0) Or (RptWgt > 0) Then
                    If MISUse Then
                        If (PLCStn = MasterPLC And RptStn > 0) Then
                            Call MISStore(RptStn, RptCus, RptCat, RptCnt, RptWgt, RptBid)
                        End If
                    End If
                End If
                
                'Write to SQL Server - Only if Bag ID (Batch Number) exists and batch from a sorting station / loading position
                If SQLServerUse Then
                    If (PLCStn = MasterPLC And RptStn > 0 And RptSQL > 0) Then
                        Call MISSQLServer_WriteContentsBuffer(RptCus, RptCat, RptWgt, RptCnt, RptStn, RptMcn, RptGrp, RptBid, RptDst, RptDay, RptSpe, RptSQL)
                    End If
                End If
            Else
                
                ErrorHandler 0, "BagReport", "DataValid = FALSE", False
                
            End If
                                                            
            ReportID(PLCStn) = RptID
            'db_uspSettingSave "SettingsNetwork", "Reports", "ID" & Format$(PLCStn), ReportID(PLCStn), PCNum ' Tim Marker. Removed as never read and wastes time
            
        End If
        
    End If

    'Acknoledge to the PLC the Report has been read
    If ReportID(PLCStn) = RptID And ReportReplyID(PLCStn) <> ReportID(PLCStn) Then
        Data32(0) = RptID
        Call WriteD32(CInt(PLCStn), 20, 1, Data32())
    End If
    
End Sub



