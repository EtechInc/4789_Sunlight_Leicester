VERSION 5.00
Begin VB.Form FaultHistory_frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "History"
   ClientHeight    =   5430
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9870
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "Courier New"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   5430
   ScaleWidth      =   9870
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdPrint 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      Caption         =   "Print"
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
      Left            =   2175
      TabIndex        =   89
      Top             =   4950
      Width           =   1215
   End
   Begin VB.CommandButton cmdClear 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      Caption         =   "Clear"
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
      Left            =   75
      TabIndex        =   88
      Top             =   4950
      Width           =   1215
   End
   Begin VB.CommandButton cmdList 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      Caption         =   "List"
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
      Left            =   4275
      TabIndex        =   87
      Top             =   4950
      Width           =   1215
   End
   Begin VB.CommandButton cmdTotals 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      Caption         =   "Totals"
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
      Left            =   6450
      TabIndex        =   86
      Top             =   4950
      Width           =   1215
   End
   Begin VB.CommandButton cmdExit 
      Appearance      =   0  'Flat
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
      Left            =   8625
      TabIndex        =   69
      Top             =   4950
      Width           =   1215
   End
   Begin VB.VScrollBar scrHistory 
      Height          =   4815
      Left            =   9525
      TabIndex        =   68
      Top             =   75
      Width           =   315
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   20
      Left            =   75
      TabIndex        =   85
      Top             =   4650
      Width           =   2040
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   20
      Left            =   2100
      TabIndex        =   84
      Top             =   4650
      Width           =   1290
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   20
      Left            =   3375
      TabIndex        =   83
      Top             =   4650
      Width           =   1440
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   20
      Left            =   4800
      TabIndex        =   82
      Top             =   4650
      Width           =   4665
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   19
      Left            =   75
      TabIndex        =   81
      Top             =   4425
      Width           =   2040
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   19
      Left            =   2100
      TabIndex        =   80
      Top             =   4425
      Width           =   1290
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   19
      Left            =   3375
      TabIndex        =   79
      Top             =   4425
      Width           =   1440
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   19
      Left            =   4800
      TabIndex        =   78
      Top             =   4425
      Width           =   4665
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   18
      Left            =   75
      TabIndex        =   77
      Top             =   4200
      Width           =   2040
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   18
      Left            =   2100
      TabIndex        =   76
      Top             =   4200
      Width           =   1290
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   18
      Left            =   3375
      TabIndex        =   75
      Top             =   4200
      Width           =   1440
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   18
      Left            =   4800
      TabIndex        =   74
      Top             =   4200
      Width           =   4665
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   17
      Left            =   75
      TabIndex        =   73
      Top             =   3975
      Width           =   2040
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   17
      Left            =   2100
      TabIndex        =   72
      Top             =   3975
      Width           =   1290
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   17
      Left            =   3375
      TabIndex        =   71
      Top             =   3975
      Width           =   1440
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   17
      Left            =   4800
      TabIndex        =   70
      Top             =   3975
      Width           =   4665
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   16
      Left            =   4800
      TabIndex        =   67
      Top             =   3750
      Width           =   4665
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   16
      Left            =   3375
      TabIndex        =   66
      Top             =   3750
      Width           =   1440
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   16
      Left            =   2100
      TabIndex        =   65
      Top             =   3750
      Width           =   1290
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   16
      Left            =   75
      TabIndex        =   64
      Top             =   3750
      Width           =   2040
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   15
      Left            =   4800
      TabIndex        =   63
      Top             =   3525
      Width           =   4665
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   15
      Left            =   3375
      TabIndex        =   62
      Top             =   3525
      Width           =   1440
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   15
      Left            =   2100
      TabIndex        =   61
      Top             =   3525
      Width           =   1290
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   15
      Left            =   75
      TabIndex        =   60
      Top             =   3525
      Width           =   2040
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   14
      Left            =   4800
      TabIndex        =   59
      Top             =   3300
      Width           =   4665
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   14
      Left            =   3375
      TabIndex        =   58
      Top             =   3300
      Width           =   1440
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   14
      Left            =   2100
      TabIndex        =   57
      Top             =   3300
      Width           =   1290
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   14
      Left            =   75
      TabIndex        =   56
      Top             =   3300
      Width           =   2040
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   13
      Left            =   4800
      TabIndex        =   55
      Top             =   3075
      Width           =   4665
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   13
      Left            =   3375
      TabIndex        =   54
      Top             =   3075
      Width           =   1440
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   13
      Left            =   2100
      TabIndex        =   53
      Top             =   3075
      Width           =   1290
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   13
      Left            =   75
      TabIndex        =   52
      Top             =   3075
      Width           =   2040
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   12
      Left            =   4800
      TabIndex        =   51
      Top             =   2850
      Width           =   4665
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   12
      Left            =   3375
      TabIndex        =   50
      Top             =   2850
      Width           =   1440
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   12
      Left            =   2100
      TabIndex        =   49
      Top             =   2850
      Width           =   1290
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   12
      Left            =   75
      TabIndex        =   48
      Top             =   2850
      Width           =   2040
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   11
      Left            =   4800
      TabIndex        =   47
      Top             =   2625
      Width           =   4665
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   11
      Left            =   3375
      TabIndex        =   46
      Top             =   2625
      Width           =   1440
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   11
      Left            =   2100
      TabIndex        =   45
      Top             =   2625
      Width           =   1290
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   11
      Left            =   75
      TabIndex        =   44
      Top             =   2625
      Width           =   2040
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   10
      Left            =   4800
      TabIndex        =   43
      Top             =   2400
      Width           =   4665
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   10
      Left            =   3375
      TabIndex        =   42
      Top             =   2400
      Width           =   1440
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   10
      Left            =   2100
      TabIndex        =   41
      Top             =   2400
      Width           =   1290
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   10
      Left            =   75
      TabIndex        =   40
      Top             =   2400
      Width           =   2040
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   9
      Left            =   4800
      TabIndex        =   39
      Top             =   2175
      Width           =   4665
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   9
      Left            =   3375
      TabIndex        =   38
      Top             =   2175
      Width           =   1440
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   9
      Left            =   2100
      TabIndex        =   37
      Top             =   2175
      Width           =   1290
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   9
      Left            =   75
      TabIndex        =   36
      Top             =   2175
      Width           =   2040
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   8
      Left            =   4800
      TabIndex        =   35
      Top             =   1950
      Width           =   4665
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   8
      Left            =   3375
      TabIndex        =   34
      Top             =   1950
      Width           =   1440
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   8
      Left            =   2100
      TabIndex        =   33
      Top             =   1950
      Width           =   1290
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   8
      Left            =   75
      TabIndex        =   32
      Top             =   1950
      Width           =   2040
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   7
      Left            =   4800
      TabIndex        =   31
      Top             =   1725
      Width           =   4665
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   7
      Left            =   3375
      TabIndex        =   30
      Top             =   1725
      Width           =   1440
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   7
      Left            =   2100
      TabIndex        =   29
      Top             =   1725
      Width           =   1290
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   7
      Left            =   75
      TabIndex        =   28
      Top             =   1725
      Width           =   2040
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   6
      Left            =   4800
      TabIndex        =   27
      Top             =   1500
      Width           =   4665
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   6
      Left            =   3375
      TabIndex        =   26
      Top             =   1500
      Width           =   1440
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   6
      Left            =   2100
      TabIndex        =   25
      Top             =   1500
      Width           =   1290
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   6
      Left            =   75
      TabIndex        =   24
      Top             =   1500
      Width           =   2040
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   5
      Left            =   4800
      TabIndex        =   23
      Top             =   1275
      Width           =   4665
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   5
      Left            =   3375
      TabIndex        =   22
      Top             =   1275
      Width           =   1440
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   5
      Left            =   2100
      TabIndex        =   21
      Top             =   1275
      Width           =   1290
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   5
      Left            =   75
      TabIndex        =   20
      Top             =   1275
      Width           =   2040
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   4
      Left            =   4800
      TabIndex        =   19
      Top             =   1050
      Width           =   4665
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   4
      Left            =   3375
      TabIndex        =   18
      Top             =   1050
      Width           =   1440
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   4
      Left            =   2100
      TabIndex        =   17
      Top             =   1050
      Width           =   1290
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   4
      Left            =   75
      TabIndex        =   16
      Top             =   1050
      Width           =   2040
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   3
      Left            =   4800
      TabIndex        =   15
      Top             =   825
      Width           =   4665
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   3
      Left            =   3375
      TabIndex        =   14
      Top             =   825
      Width           =   1440
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   3
      Left            =   2100
      TabIndex        =   13
      Top             =   825
      Width           =   1290
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   3
      Left            =   75
      TabIndex        =   12
      Top             =   825
      Width           =   2040
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   2
      Left            =   4800
      TabIndex        =   11
      Top             =   600
      Width           =   4665
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   2
      Left            =   3375
      TabIndex        =   10
      Top             =   600
      Width           =   1440
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   2
      Left            =   2100
      TabIndex        =   9
      Top             =   600
      Width           =   1290
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   2
      Left            =   75
      TabIndex        =   8
      Top             =   600
      Width           =   2040
   End
   Begin VB.Label lblDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Description"
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
      Height          =   240
      Index           =   1
      Left            =   4800
      TabIndex        =   7
      Top             =   375
      Width           =   4665
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time"
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
      Height          =   240
      Index           =   1
      Left            =   3375
      TabIndex        =   6
      Top             =   375
      Width           =   1440
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date"
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
      Height          =   240
      Index           =   1
      Left            =   2100
      TabIndex        =   5
      Top             =   375
      Width           =   1290
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "System"
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
      Height          =   240
      Index           =   1
      Left            =   75
      TabIndex        =   4
      Top             =   375
      Width           =   2040
   End
   Begin VB.Label lblDescription 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
      Caption         =   "Description"
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
      Index           =   0
      Left            =   4800
      TabIndex        =   3
      Top             =   75
      Width           =   4665
   End
   Begin VB.Label lblTime 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
      Caption         =   "Time"
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
      Index           =   0
      Left            =   3375
      TabIndex        =   2
      Top             =   75
      Width           =   1440
   End
   Begin VB.Label lblDate 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
      Caption         =   "Date"
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
      Index           =   0
      Left            =   2100
      TabIndex        =   1
      Top             =   75
      Width           =   1290
   End
   Begin VB.Label lblSystem 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
      Caption         =   "System"
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
      Index           =   0
      Left            =   75
      TabIndex        =   0
      Top             =   75
      Width           =   2040
   End
End
Attribute VB_Name = "FaultHistory_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Const MaxHistory = 200
Dim HistoryPLCName(MaxHistory)       As Integer
Dim HistoryAlarmNum(MaxHistory)     As Integer
Dim HistoryAlarmNam(MaxHistory)     As Integer
Dim HistoryDate(MaxHistory)         As String
Dim HistoryTime(MaxHistory)         As String
Dim HistoryDescription(MaxHistory)  As String
Dim HistoryQty(MaxHistory)          As Integer
Dim HistoryAlarmExtra(MaxHistory)   As Integer
Dim Mode As Integer
Const modeNormal = 0
Const modeTotal = 1



Private Sub cmdClear_Click()
    DeleteHistory
    db_uspReadAlarmHistory
    Mode = modeNormal
    DisplayHistory
End Sub

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub cmdList_Click()
    scrHistory.Max = MaxAlarmList
    db_uspReadAlarmHistory
    Mode = modeNormal
    DisplayHistory
End Sub

Private Sub cmdPrint_Click()
    
    On Error GoTo cmdPrintError
    
    Dim PrintText As String
    Dim PrintLen    As Integer
    
    If scrHistory.Max > 20 Then
        PrintLen = scrHistory.Max + 20
    Else
        PrintLen = 20
    End If
                
    Printer.Font = "Courier New" '"Terminal"
    Printer.FontSize = 10
    
    'Set field widths
    SysStart = 1
    DateStart = 20
    TimeStart = 34
    DescStart = 46
    QtyStart = 25
        
    'Title
    PrintText = ""
    PrintText = PrintText & vbCrLf
    PrintText = PrintText & vbCrLf
    PrintText = PrintText & "Alarm History" & vbCrLf
    PrintText = PrintText & vbCrLf
    PrintText = PrintText & vbCrLf
    
    'Message
    LineText = Space(100)
    Message = "System"
    Mid$(LineText, SysStart, Len(Message)) = Message
    If Mode = modeNormal Then
        Message = "Date"
        Mid$(LineText, DateStart, Len(Message)) = Message
        Message = "Time"
        Mid$(LineText, TimeStart, Len(Message)) = Message
    Else
        Message = "Qty"
        Mid$(LineText, QtyStart, Len(Message)) = Message
    End If
    Message = "Description"
    Mid$(LineText, DescStart, Len(Message)) = Message
    PrintText = PrintText & LineText & vbCrLf
      
    'Messages
    For n = 1 To PrintLen
        LineText = Space(100)
        Message = PLCName(HistoryPLCName(n))
        Mid$(LineText, SysStart, Len(Message)) = Message
        If Mode = modeNormal Then
            Message = HistoryDate(n)
            Mid$(LineText, DateStart, Len(Message)) = Message
            Message = HistoryTime(n)
            Mid$(LineText, TimeStart, Len(Message)) = Message
        Else
            Message = HistoryQty(n)
            Mid$(LineText, QtyStart, Len(Message)) = Message
        End If
        Message = HistoryDescription(n)
        Mid$(LineText, DescStart, Len(Message)) = Message
        PrintText = PrintText & LineText & vbCrLf
    Next n
        
    Printer.Print PrintText
    Printer.EndDoc

Exit Sub
cmdPrintError:
    
    ErrorHandler Err, "Fault History cmdPrint", Err.Description, True
    
End Sub

Private Sub cmdTotals_Click()
    db_uspAlarmHistoryTotalsRead
    Mode = modeTotal
    DisplayHistory
End Sub

Private Sub Form_Activate()
    FormPosition Me
End Sub

Private Sub Form_Load()
    
    SetLanguage
    
    db_uspReadAlarmHistory
    Mode = modeNormal
    DisplayHistory
    
    Me.cmdClear.Enabled = AccessLevel >= accEngineer
    Me.cmdPrint.Enabled = AccessLevel >= accEngineer

End Sub


Public Sub db_uspReadAlarmHistory()
                        
    
    On Error GoTo db_uspReadAlarmHistoryError
    
    Dim mySQL   As String
    Dim AddNew  As Boolean
    Dim db      As Integer
    Dim n       As Integer
    Dim HisSize As Integer
    Dim Extra   As Integer
    
    ClearHistoryArray
           
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspAlarmHistoryRead"
                
    dbCmd.Parameters.Item("@myDummyValue") = 1
                
    Call dbCmd.Execute
       
    MyRecordCount = dbCmd.Parameters.Item("@RecordCount")
        
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
        
    n = 1
    HisSize = 1
    
    Do While Not rs.EOF
         
        If n < MaxHistory Then
        
            HistoryPLCName(n) = rs.Fields("PLC")
            HistoryDate(n) = Format$(rs.Fields("TimeDate"), "dd/mm/yyyy")
            HistoryTime(n) = Format$(rs.Fields("TimeDate"), "HH:mm:mm")
            HistoryAlarmNum(n) = rs.Fields("AlarmNumber")
            HistoryAlarmNam(n) = rs.Fields("AlarmName")
            HistoryAlarmExtra(n) = rs.Fields("AlarmExtra")
                        
            GetHistoryDescription (n)
            
            HisSize = HisSize + 1
        End If
                       
        n = n + 1
        
        rs.MoveNext
        
    Loop
           
    rs.Close
    
    dbDisconnect
    
    If HisSize <= 20 Then
        scrHistory.Max = 0
        scrHistory.Visible = False
    Else
        scrHistory.Max = HisSize - 21
    End If
    
Exit Sub
db_uspReadAlarmHistoryError:
    ErrorHandler Err, "db_uspReadAlarmHistory", Err.Description, False
    dbDisconnect
End Sub
Public Sub db_uspAlarmHistoryTotalsRead()
                        
    
    On Error GoTo db_uspAlarmHistoryTotalsReadError
    
    Dim mySQL   As String
    Dim AddNew  As Boolean
    Dim n       As Integer
        
    ClearHistoryArray
           
    dbConnect
           
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspAlarmHistoryTotalsRead"
                  
    Call dbCmd.Execute
           
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
      
    n = 1
    
    Do While Not rs.EOF
         
        If n <= MaxHistory Then
        
            HistoryPLCName(n) = rs.Fields("PLC")
            HistoryQty(n) = rs.Fields("AlarmCount")
            HistoryAlarmNum(n) = rs.Fields("AlarmNumber")
            HistoryAlarmNam(n) = rs.Fields("AlarmName")
            HistoryAlarmExtra(n) = rs.Fields("AlarmExtra")
            
            GetHistoryDescription (n)
            
            n = n + 1
            
        End If
               
        rs.MoveNext
        
    Loop
           
    rs.Close
    
    dbDisconnect
    
    If n <= 20 Then
        scrHistory.Visible = False
    Else
        scrHistory.Max = n - 21
    End If
    
Exit Sub
db_uspAlarmHistoryTotalsReadError:
    ErrorHandler Err, "db_uspAlarmHistoryTotalsRead", Err.Description, False
    dbDisconnect
End Sub
Public Sub DisplayHistory(Optional Totals As Boolean)
    
    Dim X       As Integer
    
    
    If Mode = modeTotal Then
        Me.lblDate(0).Caption = ""
        Me.lblTime(0).Caption = TextWord(658) '"Quantity"
    Else
        Me.lblDate(0).Caption = TextWord(237) '"Date"
        Me.lblTime(0).Caption = TextWord(249) '"Time"
    End If
    
    For n = 1 To 20
        
        X = n + scrHistory.Value
        
        If HistoryAlarmNam(n) <> 0 And (X <= MaxHistory) Then
            
            Me.lblSystem(n).Caption = PLCName(HistoryPLCName(X))
            If Mode = modeNormal Then
                Me.lblDate(n).Caption = HistoryDate(X)
                Me.lblTime(n).Caption = HistoryTime(X)
            Else
                Me.lblDate(n).Caption = ""
                Me.lblTime(n).Caption = HistoryQty(X)
            End If
            Me.lblDescription(n) = HistoryDescription(X)
                  
        Else
            
            Me.lblSystem(n).Caption = ""
            Me.lblDate(n).Caption = ""
            Me.lblTime(n).Caption = ""
            Me.lblDescription(n).Caption = ""
                   
        End If
        
    Next n


End Sub


Private Sub scrHistory_Change()
    Call DisplayHistory
End Sub

Public Sub DeleteHistory()
    
    Call db_uspAlarmHistoryDelete
    
End Sub
Private Sub GetHistoryDescription(n As Integer)
    
    Dim Seq     As Integer
    Dim PLC     As Integer
    Dim SeqName As String
    
    'See if its a sequence alarm or a general alarm
    Seq = HistoryAlarmNum(n)
    PLC = HistoryPLCName(n)
    If Seq > 0 And Seq <= MaxSeq Then
        SeqName = SequenceAlm(Seq, PLC) & " - "
    Else
        SeqName = ""
    End If
    
    'Get the message number - start at TextWord 700's
    MsgNum = HistoryAlarmNam(n)
    
'    If ((MsgNum + 700) > 700) And ((MsgNum + 700) < MaxTextWord) Then
'        If HistoryAlarmExtra(n) > 0 Then
'            HistoryDescription(n) = SeqName & TextWord(MsgNum + 700) & Str(HistoryAlarmExtra(n))
'        Else
'            HistoryDescription(n) = SeqName & TextWord(MsgNum + 700)
'        End If
'    Else
'        HistoryDescription(n) = ""
'    End If
   HistoryDescription(n) = SeqName & Alarm_Text(MsgNum).Name
    
    
    
End Sub
Private Sub ClearHistoryArray()
     
    Dim n As Integer
    For n = 0 To MaxHistory
        HistoryPLCName(n) = 0
        HistoryAlarmNum(n) = 0
        HistoryAlarmNam(n) = 0
        HistoryDate(n) = 0
        HistoryTime(n) = ""
        HistoryDescription(n) = ""
        HistoryQty(n) = 0
    Next n
End Sub

Private Sub SetLanguage()
    
    Me.Caption = TextWord(656)
    
    Me.lblSystem(0).Caption = TextWord(15)
    Me.lblDate(0).Caption = TextWord(237)
    Me.lblTime(0).Caption = TextWord(249)
    Me.lblDescription(0).Caption = TextWord(336)
    
    Me.cmdClear.Caption = TextWord(65) 'Delete
    Me.cmdPrint.Caption = TextWord(301)
    Me.cmdList.Caption = TextWord(657)
    Me.cmdTotals.Caption = TextWord(340)
    Me.cmdExit.Caption = TextWord(309)
    
End Sub
