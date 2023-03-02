VERSION 5.00
Begin VB.Form Station_frm 
   Appearance      =   0  'Flat
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Weighstations"
   ClientHeight    =   4920
   ClientLeft      =   3960
   ClientTop       =   4815
   ClientWidth     =   8310
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   DrawWidth       =   5
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H80000008&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   4920
   ScaleWidth      =   8310
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   25
      Left            =   4800
      Picture         =   "Calibration.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   105
      Top             =   225
      Visible         =   0   'False
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   0
      Left            =   2250
      Picture         =   "Calibration.frx":014E
      Style           =   1  'Graphical
      TabIndex        =   104
      Top             =   225
      Visible         =   0   'False
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   24
      Left            =   4800
      Picture         =   "Calibration.frx":029C
      Style           =   1  'Graphical
      TabIndex        =   103
      Top             =   3900
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   23
      Left            =   2250
      Picture         =   "Calibration.frx":03EA
      Style           =   1  'Graphical
      TabIndex        =   102
      Top             =   3900
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   22
      Left            =   4800
      Picture         =   "Calibration.frx":0538
      Style           =   1  'Graphical
      TabIndex        =   101
      Top             =   3600
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   21
      Left            =   2250
      Picture         =   "Calibration.frx":0686
      Style           =   1  'Graphical
      TabIndex        =   100
      Top             =   3600
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   20
      Left            =   4800
      Picture         =   "Calibration.frx":07D4
      Style           =   1  'Graphical
      TabIndex        =   99
      Top             =   3300
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   19
      Left            =   2250
      Picture         =   "Calibration.frx":0922
      Style           =   1  'Graphical
      TabIndex        =   98
      Top             =   3300
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   18
      Left            =   4800
      Picture         =   "Calibration.frx":0A70
      Style           =   1  'Graphical
      TabIndex        =   97
      Top             =   3000
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   17
      Left            =   2250
      Picture         =   "Calibration.frx":0BBE
      Style           =   1  'Graphical
      TabIndex        =   96
      Top             =   3000
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   16
      Left            =   4800
      Picture         =   "Calibration.frx":0D0C
      Style           =   1  'Graphical
      TabIndex        =   95
      Top             =   2700
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   15
      Left            =   2250
      Picture         =   "Calibration.frx":0E5A
      Style           =   1  'Graphical
      TabIndex        =   94
      Top             =   2700
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   14
      Left            =   4800
      Picture         =   "Calibration.frx":0FA8
      Style           =   1  'Graphical
      TabIndex        =   93
      Top             =   2400
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   13
      Left            =   2250
      Picture         =   "Calibration.frx":10F6
      Style           =   1  'Graphical
      TabIndex        =   92
      Top             =   2400
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   12
      Left            =   4800
      Picture         =   "Calibration.frx":1244
      Style           =   1  'Graphical
      TabIndex        =   91
      Top             =   2100
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   11
      Left            =   2250
      Picture         =   "Calibration.frx":1392
      Style           =   1  'Graphical
      TabIndex        =   90
      Top             =   2100
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   10
      Left            =   4800
      Picture         =   "Calibration.frx":14E0
      Style           =   1  'Graphical
      TabIndex        =   89
      Top             =   1800
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   9
      Left            =   2250
      Picture         =   "Calibration.frx":162E
      Style           =   1  'Graphical
      TabIndex        =   88
      Top             =   1800
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   8
      Left            =   4800
      Picture         =   "Calibration.frx":177C
      Style           =   1  'Graphical
      TabIndex        =   87
      Top             =   1500
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   7
      Left            =   2250
      Picture         =   "Calibration.frx":18CA
      Style           =   1  'Graphical
      TabIndex        =   86
      Top             =   1500
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   6
      Left            =   4800
      Picture         =   "Calibration.frx":1A18
      Style           =   1  'Graphical
      TabIndex        =   85
      Top             =   1200
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   5
      Left            =   2250
      Picture         =   "Calibration.frx":1B66
      Style           =   1  'Graphical
      TabIndex        =   84
      Top             =   1200
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   4
      Left            =   4800
      Picture         =   "Calibration.frx":1CB4
      Style           =   1  'Graphical
      TabIndex        =   83
      Top             =   900
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   3
      Left            =   2250
      Picture         =   "Calibration.frx":1E02
      Style           =   1  'Graphical
      TabIndex        =   82
      Top             =   900
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   2
      Left            =   4800
      Picture         =   "Calibration.frx":1F50
      Style           =   1  'Graphical
      TabIndex        =   81
      Top             =   600
      Width           =   315
   End
   Begin VB.CommandButton cmd_release 
      Height          =   240
      Index           =   1
      Left            =   2250
      Picture         =   "Calibration.frx":209E
      Style           =   1  'Graphical
      TabIndex        =   80
      Top             =   600
      Width           =   315
   End
   Begin VB.CheckBox lamptest 
      BackColor       =   &H00C0C0C0&
      Caption         =   "lamptest"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Left            =   225
      TabIndex        =   1
      Top             =   4275
      Width           =   1815
   End
   Begin VB.Timer tmr_update 
      Interval        =   1000
      Left            =   4875
      Top             =   4350
   End
   Begin VB.CommandButton Cmd_exit 
      Caption         =   "&End"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   6675
      TabIndex        =   0
      Top             =   4500
      Width           =   1215
   End
   Begin VB.Frame fra_Weight 
      Caption         =   "Weight"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   2265
      Left            =   5400
      TabIndex        =   106
      Top             =   225
      Width           =   2715
      Begin VB.CommandButton Cmd_Gain 
         Caption         =   "Gain"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   1275
         TabIndex        =   113
         Top             =   1575
         Width           =   1215
      End
      Begin VB.CommandButton Cmd_w_zero 
         Caption         =   "Zero"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   1275
         TabIndex        =   112
         Top             =   1200
         Width           =   1215
      End
      Begin VB.CheckBox optioncalibrate 
         Caption         =   "optioncalibrate"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   240
         Left            =   150
         TabIndex        =   111
         Top             =   1950
         Width           =   1815
      End
      Begin VB.ComboBox cmb_testweight 
         BackColor       =   &H8000000D&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   315
         Left            =   1275
         TabIndex        =   110
         Text            =   "00.0"
         Top             =   750
         Width           =   1215
      End
      Begin VB.ComboBox cmb_station 
         BackColor       =   &H8000000D&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   315
         ItemData        =   "Calibration.frx":21EC
         Left            =   1275
         List            =   "Calibration.frx":21EE
         Style           =   2  'Dropdown List
         TabIndex        =   109
         Top             =   300
         Width           =   1215
      End
      Begin VB.Label lbl_testweight 
         Alignment       =   1  'Right Justify
         Caption         =   "Test Weight"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   240
         Left            =   225
         TabIndex        =   108
         Top             =   825
         Width           =   915
      End
      Begin VB.Label lbl_station 
         Alignment       =   1  'Right Justify
         Caption         =   "Station"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   240
         Left            =   225
         TabIndex        =   107
         Top             =   375
         Width           =   915
      End
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   24
      Left            =   3975
      TabIndex        =   79
      Top             =   3825
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "24"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   24
      Left            =   2775
      TabIndex        =   78
      Top             =   3825
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   24
      Left            =   3225
      TabIndex        =   77
      Top             =   3825
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   23
      Left            =   1425
      TabIndex        =   76
      Top             =   3825
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "23"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   23
      Left            =   225
      TabIndex        =   75
      Top             =   3825
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   23
      Left            =   675
      TabIndex        =   74
      Top             =   3825
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   22
      Left            =   3975
      TabIndex        =   73
      Top             =   3525
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "22"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   22
      Left            =   2775
      TabIndex        =   72
      Top             =   3525
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   22
      Left            =   3225
      TabIndex        =   71
      Top             =   3525
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   21
      Left            =   1425
      TabIndex        =   70
      Top             =   3525
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "21"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   21
      Left            =   225
      TabIndex        =   69
      Top             =   3525
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   21
      Left            =   675
      TabIndex        =   68
      Top             =   3525
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   20
      Left            =   3975
      TabIndex        =   67
      Top             =   3225
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "20"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   20
      Left            =   2775
      TabIndex        =   66
      Top             =   3225
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   20
      Left            =   3225
      TabIndex        =   65
      Top             =   3225
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   19
      Left            =   1425
      TabIndex        =   64
      Top             =   3225
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "19"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   19
      Left            =   225
      TabIndex        =   63
      Top             =   3225
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   19
      Left            =   675
      TabIndex        =   62
      Top             =   3225
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   18
      Left            =   3975
      TabIndex        =   61
      Top             =   2925
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "18"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   18
      Left            =   2775
      TabIndex        =   60
      Top             =   2925
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   18
      Left            =   3225
      TabIndex        =   59
      Top             =   2925
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   17
      Left            =   1425
      TabIndex        =   58
      Top             =   2925
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "17"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   17
      Left            =   225
      TabIndex        =   57
      Top             =   2925
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   17
      Left            =   675
      TabIndex        =   56
      Top             =   2925
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   16
      Left            =   3975
      TabIndex        =   55
      Top             =   2625
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "16"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   16
      Left            =   2775
      TabIndex        =   54
      Top             =   2625
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   16
      Left            =   3225
      TabIndex        =   53
      Top             =   2625
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   15
      Left            =   1425
      TabIndex        =   52
      Top             =   2625
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "15"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   15
      Left            =   225
      TabIndex        =   51
      Top             =   2625
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   15
      Left            =   675
      TabIndex        =   50
      Top             =   2625
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   14
      Left            =   3975
      TabIndex        =   49
      Top             =   2325
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "14"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   14
      Left            =   2775
      TabIndex        =   48
      Top             =   2325
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   14
      Left            =   3225
      TabIndex        =   47
      Top             =   2325
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   13
      Left            =   1425
      TabIndex        =   46
      Top             =   2325
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "13"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   13
      Left            =   225
      TabIndex        =   45
      Top             =   2325
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   13
      Left            =   675
      TabIndex        =   44
      Top             =   2325
      Width           =   765
   End
   Begin VB.Label lbl_cnt_title 
      Alignment       =   2  'Center
      Caption         =   "Count"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   1
      Left            =   3975
      TabIndex        =   43
      Top             =   225
      Width           =   765
   End
   Begin VB.Label lbl_stn_title 
      Alignment       =   2  'Center
      Caption         =   "No."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   1
      Left            =   2775
      TabIndex        =   42
      Top             =   225
      Width           =   465
   End
   Begin VB.Label lbl_wgt_title 
      Alignment       =   2  'Center
      Caption         =   "Weight"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   1
      Left            =   3225
      TabIndex        =   41
      Top             =   225
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   12
      Left            =   3975
      TabIndex        =   40
      Top             =   2025
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "12"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   12
      Left            =   2775
      TabIndex        =   39
      Top             =   2025
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   12
      Left            =   3225
      TabIndex        =   38
      Top             =   2025
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   11
      Left            =   1425
      TabIndex        =   37
      Top             =   2025
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "11"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   11
      Left            =   225
      TabIndex        =   36
      Top             =   2025
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   11
      Left            =   675
      TabIndex        =   35
      Top             =   2025
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   10
      Left            =   3975
      TabIndex        =   34
      Top             =   1725
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "10"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   10
      Left            =   2775
      TabIndex        =   33
      Top             =   1725
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   10
      Left            =   3225
      TabIndex        =   32
      Top             =   1725
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   9
      Left            =   1425
      TabIndex        =   31
      Top             =   1725
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "9"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   9
      Left            =   225
      TabIndex        =   30
      Top             =   1725
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   9
      Left            =   675
      TabIndex        =   29
      Top             =   1725
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   8
      Left            =   3975
      TabIndex        =   28
      Top             =   1425
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "8"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   8
      Left            =   2775
      TabIndex        =   27
      Top             =   1425
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   8
      Left            =   3225
      TabIndex        =   26
      Top             =   1425
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   7
      Left            =   1425
      TabIndex        =   25
      Top             =   1425
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "7"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   7
      Left            =   225
      TabIndex        =   24
      Top             =   1425
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   7
      Left            =   675
      TabIndex        =   23
      Top             =   1425
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   6
      Left            =   3975
      TabIndex        =   22
      Top             =   1125
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "6"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   6
      Left            =   2775
      TabIndex        =   21
      Top             =   1125
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   6
      Left            =   3225
      TabIndex        =   20
      Top             =   1125
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   5
      Left            =   1425
      TabIndex        =   19
      Top             =   1125
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "5"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   5
      Left            =   225
      TabIndex        =   18
      Top             =   1125
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   5
      Left            =   675
      TabIndex        =   17
      Top             =   1125
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   4
      Left            =   3975
      TabIndex        =   16
      Top             =   825
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "4"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   4
      Left            =   2775
      TabIndex        =   15
      Top             =   825
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   4
      Left            =   3225
      TabIndex        =   14
      Top             =   825
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   3
      Left            =   1425
      TabIndex        =   13
      Top             =   825
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   3
      Left            =   225
      TabIndex        =   12
      Top             =   825
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   3
      Left            =   675
      TabIndex        =   11
      Top             =   825
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   2
      Left            =   3975
      TabIndex        =   10
      Top             =   525
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   2
      Left            =   2775
      TabIndex        =   9
      Top             =   525
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   2
      Left            =   3225
      TabIndex        =   8
      Top             =   525
      Width           =   765
   End
   Begin VB.Label lbl_cnt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   1
      Left            =   1425
      TabIndex        =   7
      Top             =   525
      Width           =   765
   End
   Begin VB.Label lbl_stn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   1
      Left            =   225
      TabIndex        =   6
      Top             =   525
      Width           =   465
   End
   Begin VB.Label lbl_wgt 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00.0kg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   315
      Index           =   1
      Left            =   675
      TabIndex        =   5
      Top             =   525
      Width           =   765
   End
   Begin VB.Label lbl_cnt_title 
      Alignment       =   2  'Center
      Caption         =   "Count"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   0
      Left            =   1425
      TabIndex        =   4
      Top             =   225
      Width           =   765
   End
   Begin VB.Label lbl_stn_title 
      Alignment       =   2  'Center
      Caption         =   "No."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   0
      Left            =   225
      TabIndex        =   3
      Top             =   225
      Width           =   465
   End
   Begin VB.Label lbl_wgt_title 
      Alignment       =   2  'Center
      Caption         =   "Weight"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   0
      Left            =   675
      TabIndex        =   2
      Top             =   225
      Width           =   765
   End
End
Attribute VB_Name = "Station_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim File As String
Dim TitleBar As String



Private Sub cmb_station_Click()
    CurrentRow = cmb_station.ListIndex + 1
End Sub

Private Sub cmb_testweight_Click()
    Dim Weight As Integer
    Weight = cmb_testweight.ListIndex
    SuperProc.FileSaveSetting "Supertrack", "Stations", "TestWeight", Weight
End Sub
Private Sub cmd_exit_Click()
    Unload Me
End Sub
Private Sub Cmd_Gain_Click()
    'Send Values to D995 to D997
    Data(0) = CurrentRow
    Data(1) = 12 'Cal High
    Data(2) = Val(cmb_testweight.ListIndex)
    WritePLC 1, "D", 995, 3, Data(), False
End Sub

Private Sub Cmd_Release_Click(Index As Integer)
    'Send Values to D995 to D997
    Data(0) = Index
    Data(1) = 10 'Release
    Data(2) = 0
    WritePLC 1, "D", 995, 3, Data(), False
End Sub
Private Sub Cmd_W_Zero_Click()
    'Send Values to D995 to D997
    Data(0) = CurrentRow
    Data(1) = 11 'Cal Low
    Data(2) = 0
    WritePLC 1, "D", 995, 3, Data(), False
End Sub
Private Sub LoadLanguage()
       
    Me.Caption = TextWord(419)
    lamptest.Caption = TextWord(416)
    
    fra_Weight.Caption = TextWord(214)
      
    Cmd_w_zero.Caption = TextWord(217)
    Cmd_Gain.Caption = TextWord(420)
    optioncalibrate.Caption = TextWord(218)
    Cmd_exit.Caption = TextWord(42)
    
    lbl_station.Caption = TextWord(31)
    lbl_testweight.Caption = TextWord(216)
    
    Dim lbl As Label
    For Each lbl In lbl_stn_title()
        lbl_stn_title(lbl.Index).Caption = TextWord(335)
        lbl_wgt_title(lbl.Index).Caption = TextWord(214)
        lbl_cnt_title(lbl.Index).Caption = TextWord(215)
    Next lbl
      
End Sub


Private Sub Form_Load()
     
    CenterForm Me
              
    For n = 1 To MaxStations
        cmb_station.AddItem Str(n), n - 1
    Next n
    cmb_station.ListIndex = 0
    
    For n = 0 To 999
        cmb_testweight.AddItem Format$(n / 10, "00.0") & " " & TextWord(224), n
    Next n
    cmb_testweight.ListIndex = Val(SuperProc.FileGetSetting("Supertrack", "Stations", "TestWeight", 200))
    cmb_testweight.Enabled = False
    cmb_station.Enabled = False
    
    'Setup the grid of labels
    Dim stn As Label
    For Each stn In lbl_stn()
        lbl_stn(stn.Index).Caption = Format$(stn.Index)
        lbl_wgt(stn.Index).Caption = "00.0" & " " & TextWord(224)
        lbl_cnt(stn.Index).Caption = "0000"
        If stn.Index > MaxStations Then
            lbl_stn(stn.Index).Visible = False
            lbl_wgt(stn.Index).Visible = False
            lbl_cnt(stn.Index).Visible = False
            cmd_release(stn.Index).Visible = False
        End If
    Next stn
    
    LoadLanguage
       
    If AccessLevel < 2 Then optioncalibrate.Enabled = False

End Sub
Private Sub LampTest_Click()
    
    If lamptest.Value = 1 Then
        lamptest.ForeColor = Red
        Cmd_exit.Enabled = False
        Data(0) = 1
    Else
        lamptest.ForeColor = vbHighlight
        Cmd_exit.Enabled = True
        Data(0) = 0
    End If
    
    WritePLC 1, "D", 998, 1, Data(), False

End Sub

Private Sub OptionCalibrate_Click()
        
    If optioncalibrate.Value = 1 Then
        Cmd_w_zero.Enabled = True
        Cmd_Gain.Enabled = True
        Cmd_exit.Enabled = False
        lamptest.Enabled = False
        cmb_station.Enabled = True
        cmb_testweight.Enabled = True
        
        optioncalibrate.ForeColor = Red
    Else
        Cmd_w_zero.Enabled = False
        Cmd_Gain.Enabled = False
        Cmd_exit.Enabled = True
        lamptest.Enabled = True
        cmb_station.Enabled = False
        cmb_testweight.Enabled = False
        optioncalibrate.ForeColor = vbHighlight
    End If
    
End Sub
Private Sub tmr_update_Timer()
        
    Dim stn As Label
    
    For Each stn In lbl_stn()
        lbl_stn(stn.Index).Caption = Format$(stn.Index)
        lbl_wgt(stn.Index).Caption = Format$(StorageData(stn.Index, 2) / 10, "#0.0")
        lbl_cnt(stn.Index).Caption = Format$(StorageData(stn.Index, 4), "0000")
    Next stn
    
End Sub
