VERSION 5.00
Begin VB.Form PLCForce 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "PLC Inputs and Outputs"
   ClientHeight    =   9210
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6780
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   9210
   ScaleWidth      =   6780
   ShowInTaskbar   =   0   'False
   Begin VB.CheckBox chkShowAllIO 
      Caption         =   "Show all I/O on display"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Left            =   2100
      TabIndex        =   146
      Top             =   8925
      Width           =   2640
   End
   Begin VB.CommandButton cmdPrevCard 
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
      Left            =   5100
      Picture         =   "PLCForce.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   145
      Top             =   375
      Width           =   765
   End
   Begin VB.CommandButton cmdNextCard 
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
      Left            =   5925
      Picture         =   "PLCForce.frx":0442
      Style           =   1  'Graphical
      TabIndex        =   144
      Top             =   375
      Width           =   765
   End
   Begin VB.CommandButton cmdForceIpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   16
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   138
      Top             =   4275
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   16
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   139
      Top             =   4275
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   15
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   136
      Top             =   4050
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   15
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   137
      Top             =   4050
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   14
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   134
      Top             =   3825
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   14
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   135
      Top             =   3825
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   13
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   132
      Top             =   3600
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   13
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   133
      Top             =   3600
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   12
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   130
      Top             =   3375
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   12
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   131
      Top             =   3375
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   11
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   128
      Top             =   3150
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   11
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   129
      Top             =   3150
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   10
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   126
      Top             =   2925
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   10
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   127
      Top             =   2925
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   9
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   124
      Top             =   2700
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   9
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   125
      Top             =   2700
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   8
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   122
      Top             =   2475
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   8
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   123
      Top             =   2475
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   7
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   120
      Top             =   2250
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   7
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   121
      Top             =   2250
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   6
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   118
      Top             =   2025
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   6
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   119
      Top             =   2025
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   5
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   116
      Top             =   1800
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   5
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   117
      Top             =   1800
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   4
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   114
      Top             =   1575
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   4
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   115
      Top             =   1575
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   16
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   112
      Top             =   8400
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   16
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   113
      Top             =   8400
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   15
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   110
      Top             =   8175
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   15
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   111
      Top             =   8175
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   14
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   108
      Top             =   7950
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   14
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   109
      Top             =   7950
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   13
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   106
      Top             =   7725
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   13
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   107
      Top             =   7725
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   12
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   104
      Top             =   7500
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   12
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   105
      Top             =   7500
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   11
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   102
      Top             =   7275
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   11
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   103
      Top             =   7275
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   10
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   100
      Top             =   7050
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   10
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   101
      Top             =   7050
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   9
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   98
      Top             =   6825
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   9
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   99
      Top             =   6825
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   8
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   96
      Top             =   6600
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   8
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   97
      Top             =   6600
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   7
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   94
      Top             =   6375
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   7
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   95
      Top             =   6375
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   6
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   92
      Top             =   6150
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   6
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   93
      Top             =   6150
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   5
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   90
      Top             =   5925
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   5
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   91
      Top             =   5925
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   4
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   88
      Top             =   5700
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   4
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   89
      Top             =   5700
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   3
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   86
      Top             =   5475
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   3
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   87
      Top             =   5475
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   2
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   84
      Top             =   5250
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   2
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   85
      Top             =   5250
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   3
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   83
      Top             =   1350
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   3
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   82
      Top             =   1350
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   2
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   81
      Top             =   1125
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   2
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   80
      Top             =   1125
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   0
      Left            =   1500
      MaskColor       =   &H8000000F&
      Style           =   1  'Graphical
      TabIndex        =   79
      Top             =   4620
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   0
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   78
      Top             =   4620
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   1
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   76
      Top             =   900
      Width           =   390
   End
   Begin VB.CommandButton cmdForceIpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   1
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   77
      Top             =   900
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   0
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   75
      Top             =   8745
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   0
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   74
      Top             =   8745
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOff 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   1
      Left            =   1500
      Style           =   1  'Graphical
      TabIndex        =   72
      Top             =   5025
      Width           =   390
   End
   Begin VB.CommandButton cmdForceOpOn 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   1
      Left            =   1125
      Style           =   1  'Graphical
      TabIndex        =   73
      Top             =   5025
      Width           =   390
   End
   Begin VB.CommandButton cmdExit 
      Appearance      =   0  'Flat
      Caption         =   "&Exit"
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
      Left            =   5475
      TabIndex        =   22
      Top             =   8775
      Width           =   1215
   End
   Begin VB.ComboBox cmbCard 
      BackColor       =   &H00FF8080&
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
      Height          =   330
      IntegralHeight  =   0   'False
      Left            =   75
      TabIndex        =   20
      Text            =   "cmbCard"
      Top             =   450
      Visible         =   0   'False
      Width           =   4965
   End
   Begin VB.Frame fraTools 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Tools"
      Height          =   1515
      Left            =   4350
      TabIndex        =   18
      Top             =   6825
      Visible         =   0   'False
      Width           =   1965
      Begin VB.Timer tmrUpdate 
         Interval        =   100
         Left            =   825
         Top             =   375
      End
      Begin VB.Image picGreen 
         Height          =   165
         Left            =   300
         Picture         =   "PLCForce.frx":0884
         Top             =   225
         Width           =   165
      End
      Begin VB.Image picGrey 
         Height          =   165
         Left            =   300
         Picture         =   "PLCForce.frx":0BDE
         Top             =   450
         Width           =   165
      End
      Begin VB.Image picAmber 
         Height          =   165
         Left            =   300
         Picture         =   "PLCForce.frx":0F38
         Top             =   675
         Width           =   165
      End
   End
   Begin VB.ComboBox cmbPLC 
      BackColor       =   &H00FF8080&
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
      Height          =   330
      IntegralHeight  =   0   'False
      Left            =   75
      TabIndex        =   0
      Text            =   "cmbPLC"
      Top             =   75
      Visible         =   0   'False
      Width           =   4965
   End
   Begin VB.PictureBox Picture4 
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   3765
      Left            =   750
      ScaleHeight     =   3765
      ScaleWidth      =   1290
      TabIndex        =   19
      Top             =   4950
      Width           =   1290
      Begin VB.Image picPLCOutput 
         Height          =   165
         Index           =   16
         Left            =   75
         Picture         =   "PLCForce.frx":1292
         Top             =   3450
         Width           =   165
      End
      Begin VB.Image picPLCOutput 
         Height          =   165
         Index           =   15
         Left            =   75
         Picture         =   "PLCForce.frx":15EC
         Top             =   3225
         Width           =   165
      End
      Begin VB.Image picPLCOutput 
         Height          =   165
         Index           =   14
         Left            =   75
         Picture         =   "PLCForce.frx":1946
         Top             =   3000
         Width           =   165
      End
      Begin VB.Image picPLCOutput 
         Height          =   165
         Index           =   13
         Left            =   75
         Picture         =   "PLCForce.frx":1CA0
         Top             =   2775
         Width           =   165
      End
      Begin VB.Image picPLCOutput 
         Height          =   165
         Index           =   12
         Left            =   75
         Picture         =   "PLCForce.frx":1FFA
         Top             =   2550
         Width           =   165
      End
      Begin VB.Image picPLCOutput 
         Height          =   165
         Index           =   11
         Left            =   75
         Picture         =   "PLCForce.frx":2354
         Top             =   2325
         Width           =   165
      End
      Begin VB.Image picPLCOutput 
         Height          =   165
         Index           =   10
         Left            =   75
         Picture         =   "PLCForce.frx":26AE
         Top             =   2100
         Width           =   165
      End
      Begin VB.Image picPLCOutput 
         Height          =   165
         Index           =   9
         Left            =   75
         Picture         =   "PLCForce.frx":2A08
         Top             =   1875
         Width           =   165
      End
      Begin VB.Image picPLCOutput 
         Height          =   165
         Index           =   8
         Left            =   75
         Picture         =   "PLCForce.frx":2D62
         Top             =   1650
         Width           =   165
      End
      Begin VB.Image picPLCOutput 
         Height          =   165
         Index           =   7
         Left            =   75
         Picture         =   "PLCForce.frx":30BC
         Top             =   1425
         Width           =   165
      End
      Begin VB.Image picPLCOutput 
         Height          =   165
         Index           =   6
         Left            =   75
         Picture         =   "PLCForce.frx":3416
         Top             =   1200
         Width           =   165
      End
      Begin VB.Image picPLCOutput 
         Height          =   165
         Index           =   5
         Left            =   75
         Picture         =   "PLCForce.frx":3770
         Top             =   975
         Width           =   165
      End
      Begin VB.Image picPLCOutput 
         Height          =   165
         Index           =   4
         Left            =   75
         Picture         =   "PLCForce.frx":3ACA
         Top             =   750
         Width           =   165
      End
      Begin VB.Image picPLCOutput 
         Height          =   165
         Index           =   3
         Left            =   75
         Picture         =   "PLCForce.frx":3E24
         Top             =   525
         Width           =   165
      End
      Begin VB.Image picPLCOutput 
         Height          =   165
         Index           =   2
         Left            =   75
         Picture         =   "PLCForce.frx":417E
         Top             =   300
         Width           =   165
      End
      Begin VB.Image picPLCOutput 
         Height          =   165
         Index           =   1
         Left            =   75
         Picture         =   "PLCForce.frx":44D8
         Top             =   75
         Width           =   165
      End
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   3765
      Left            =   750
      ScaleHeight     =   3765
      ScaleWidth      =   1290
      TabIndex        =   71
      Top             =   825
      Width           =   1290
      Begin VB.Image picPLCInput 
         Height          =   165
         Index           =   16
         Left            =   75
         Picture         =   "PLCForce.frx":4832
         Top             =   3450
         Width           =   165
      End
      Begin VB.Image picPLCInput 
         Height          =   165
         Index           =   15
         Left            =   75
         Picture         =   "PLCForce.frx":4B8C
         Top             =   3225
         Width           =   165
      End
      Begin VB.Image picPLCInput 
         Height          =   165
         Index           =   14
         Left            =   75
         Picture         =   "PLCForce.frx":4EE6
         Top             =   3000
         Width           =   165
      End
      Begin VB.Image picPLCInput 
         Height          =   165
         Index           =   13
         Left            =   75
         Picture         =   "PLCForce.frx":5240
         Top             =   2775
         Width           =   165
      End
      Begin VB.Image picPLCInput 
         Height          =   165
         Index           =   12
         Left            =   75
         Picture         =   "PLCForce.frx":559A
         Top             =   2550
         Width           =   165
      End
      Begin VB.Image picPLCInput 
         Height          =   165
         Index           =   11
         Left            =   75
         Picture         =   "PLCForce.frx":58F4
         Top             =   2325
         Width           =   165
      End
      Begin VB.Image picPLCInput 
         Height          =   165
         Index           =   10
         Left            =   75
         Picture         =   "PLCForce.frx":5C4E
         Top             =   2100
         Width           =   165
      End
      Begin VB.Image picPLCInput 
         Height          =   165
         Index           =   9
         Left            =   75
         Picture         =   "PLCForce.frx":5FA8
         Top             =   1875
         Width           =   165
      End
      Begin VB.Image picPLCInput 
         Height          =   165
         Index           =   8
         Left            =   75
         Picture         =   "PLCForce.frx":6302
         Top             =   1650
         Width           =   165
      End
      Begin VB.Image picPLCInput 
         Height          =   165
         Index           =   7
         Left            =   75
         Picture         =   "PLCForce.frx":665C
         Top             =   1425
         Width           =   165
      End
      Begin VB.Image picPLCInput 
         Height          =   165
         Index           =   6
         Left            =   75
         Picture         =   "PLCForce.frx":69B6
         Top             =   1200
         Width           =   165
      End
      Begin VB.Image picPLCInput 
         Height          =   165
         Index           =   5
         Left            =   75
         Picture         =   "PLCForce.frx":6D10
         Top             =   975
         Width           =   165
      End
      Begin VB.Image picPLCInput 
         Height          =   165
         Index           =   4
         Left            =   75
         Picture         =   "PLCForce.frx":706A
         Top             =   750
         Width           =   165
      End
      Begin VB.Image picPLCInput 
         Height          =   165
         Index           =   3
         Left            =   75
         Picture         =   "PLCForce.frx":73C4
         Top             =   525
         Width           =   165
      End
      Begin VB.Image picPLCInput 
         Height          =   165
         Index           =   2
         Left            =   75
         Picture         =   "PLCForce.frx":771E
         Top             =   300
         Width           =   165
      End
      Begin VB.Image picPLCInput 
         Height          =   165
         Index           =   1
         Left            =   75
         Picture         =   "PLCForce.frx":7A78
         Top             =   75
         Width           =   165
      End
   End
   Begin VB.Label lblIp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   16
      Left            =   75
      TabIndex        =   70
      Top             =   4275
      Width           =   690
   End
   Begin VB.Label lblIp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   15
      Left            =   75
      TabIndex        =   69
      Top             =   4050
      Width           =   690
   End
   Begin VB.Label lblIp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   14
      Left            =   75
      TabIndex        =   68
      Top             =   3825
      Width           =   690
   End
   Begin VB.Label lblIp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   13
      Left            =   75
      TabIndex        =   67
      Top             =   3600
      Width           =   690
   End
   Begin VB.Label lblIp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   12
      Left            =   75
      TabIndex        =   66
      Top             =   3375
      Width           =   690
   End
   Begin VB.Label lblIp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   11
      Left            =   75
      TabIndex        =   65
      Top             =   3150
      Width           =   690
   End
   Begin VB.Label lblIp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   10
      Left            =   75
      TabIndex        =   64
      Top             =   2925
      Width           =   690
   End
   Begin VB.Label lblIp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   9
      Left            =   75
      TabIndex        =   63
      Top             =   2700
      Width           =   690
   End
   Begin VB.Label lblIp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   8
      Left            =   75
      TabIndex        =   62
      Top             =   2475
      Width           =   690
   End
   Begin VB.Label lblIp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   7
      Left            =   75
      TabIndex        =   61
      Top             =   2250
      Width           =   690
   End
   Begin VB.Label lblIp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   6
      Left            =   75
      TabIndex        =   60
      Top             =   2025
      Width           =   690
   End
   Begin VB.Label lblIp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   5
      Left            =   75
      TabIndex        =   59
      Top             =   1800
      Width           =   690
   End
   Begin VB.Label lblIp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   4
      Left            =   75
      TabIndex        =   58
      Top             =   1575
      Width           =   690
   End
   Begin VB.Label lblIp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   3
      Left            =   75
      TabIndex        =   57
      Top             =   1350
      Width           =   690
   End
   Begin VB.Label lblIp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "X9901"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   2
      Left            =   75
      TabIndex        =   56
      Top             =   1125
      Width           =   690
   End
   Begin VB.Label lblIp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   1
      Left            =   75
      TabIndex        =   55
      Top             =   900
      Width           =   690
   End
   Begin VB.Label lblIpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   16
      Left            =   2100
      TabIndex        =   54
      Top             =   4275
      Width           =   4500
   End
   Begin VB.Label lblIpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   15
      Left            =   2100
      TabIndex        =   53
      Top             =   4050
      Width           =   4500
   End
   Begin VB.Label lblIpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   14
      Left            =   2100
      TabIndex        =   52
      Top             =   3825
      Width           =   4500
   End
   Begin VB.Label lblIpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   13
      Left            =   2100
      TabIndex        =   51
      Top             =   3600
      Width           =   4500
   End
   Begin VB.Label lblIpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   12
      Left            =   2100
      TabIndex        =   50
      Top             =   3375
      Width           =   4500
   End
   Begin VB.Label lblIpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   11
      Left            =   2100
      TabIndex        =   49
      Top             =   3150
      Width           =   4500
   End
   Begin VB.Label lblIpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   10
      Left            =   2100
      TabIndex        =   48
      Top             =   2925
      Width           =   4500
   End
   Begin VB.Label lblIpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   9
      Left            =   2100
      TabIndex        =   47
      Top             =   2700
      Width           =   4500
   End
   Begin VB.Label lblIpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   8
      Left            =   2100
      TabIndex        =   46
      Top             =   2475
      Width           =   4500
   End
   Begin VB.Label lblIpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   7
      Left            =   2100
      TabIndex        =   45
      Top             =   2250
      Width           =   4500
   End
   Begin VB.Label lblIpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   6
      Left            =   2100
      TabIndex        =   44
      Top             =   2025
      Width           =   4500
   End
   Begin VB.Label lblIpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   5
      Left            =   2100
      TabIndex        =   43
      Top             =   1800
      Width           =   4500
   End
   Begin VB.Label lblIpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   4
      Left            =   2100
      TabIndex        =   42
      Top             =   1575
      Width           =   4500
   End
   Begin VB.Label lblIpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   3
      Left            =   2100
      TabIndex        =   41
      Top             =   1350
      Width           =   4500
   End
   Begin VB.Label lblIpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   2
      Left            =   2100
      TabIndex        =   40
      Top             =   1125
      Width           =   4500
   End
   Begin VB.Label lblIpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   1
      Left            =   2100
      TabIndex        =   39
      Top             =   900
      Width           =   4500
   End
   Begin VB.Label lblOpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   16
      Left            =   2100
      TabIndex        =   38
      Top             =   8400
      Width           =   4500
   End
   Begin VB.Label lblOpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   15
      Left            =   2100
      TabIndex        =   37
      Top             =   8175
      Width           =   4500
   End
   Begin VB.Label lblOpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   14
      Left            =   2100
      TabIndex        =   36
      Top             =   7950
      Width           =   4500
   End
   Begin VB.Label lblOpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   13
      Left            =   2100
      TabIndex        =   35
      Top             =   7725
      Width           =   4500
   End
   Begin VB.Label lblOpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   12
      Left            =   2100
      TabIndex        =   34
      Top             =   7500
      Width           =   4500
   End
   Begin VB.Label lblOpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   11
      Left            =   2100
      TabIndex        =   33
      Top             =   7275
      Width           =   4500
   End
   Begin VB.Label lblOpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   10
      Left            =   2100
      TabIndex        =   32
      Top             =   7050
      Width           =   4500
   End
   Begin VB.Label lblOpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   9
      Left            =   2100
      TabIndex        =   31
      Top             =   6825
      Width           =   4500
   End
   Begin VB.Label lblOpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   8
      Left            =   2100
      TabIndex        =   30
      Top             =   6600
      Width           =   4500
   End
   Begin VB.Label lblOpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   7
      Left            =   2100
      TabIndex        =   29
      Top             =   6375
      Width           =   4500
   End
   Begin VB.Label lblOpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   6
      Left            =   2100
      TabIndex        =   28
      Top             =   6150
      Width           =   4500
   End
   Begin VB.Label lblOpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   5
      Left            =   2100
      TabIndex        =   27
      Top             =   5925
      Width           =   4500
   End
   Begin VB.Label lblOpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   4
      Left            =   2100
      TabIndex        =   26
      Top             =   5700
      Width           =   4500
   End
   Begin VB.Label lblOpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   3
      Left            =   2100
      TabIndex        =   25
      Top             =   5475
      Width           =   4500
   End
   Begin VB.Label lblOpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   2
      Left            =   2100
      TabIndex        =   24
      Top             =   5250
      Width           =   4500
   End
   Begin VB.Label lblOpDescription 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   1
      Left            =   2100
      TabIndex        =   23
      Top             =   5025
      Width           =   4500
   End
   Begin VB.Label lblCard 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "PLC Name"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   330
      Left            =   75
      TabIndex        =   21
      Top             =   450
      Width           =   4965
   End
   Begin VB.Label lblOp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   16
      Left            =   75
      TabIndex        =   17
      Top             =   8400
      Width           =   690
   End
   Begin VB.Label lblOp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   15
      Left            =   75
      TabIndex        =   16
      Top             =   8175
      Width           =   690
   End
   Begin VB.Label lblOp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   14
      Left            =   75
      TabIndex        =   15
      Top             =   7950
      Width           =   690
   End
   Begin VB.Label lblOp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   13
      Left            =   75
      TabIndex        =   14
      Top             =   7725
      Width           =   690
   End
   Begin VB.Label lblOp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   12
      Left            =   75
      TabIndex        =   13
      Top             =   7500
      Width           =   690
   End
   Begin VB.Label lblOp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   11
      Left            =   75
      TabIndex        =   12
      Top             =   7275
      Width           =   690
   End
   Begin VB.Label lblOp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   10
      Left            =   75
      TabIndex        =   11
      Top             =   7050
      Width           =   690
   End
   Begin VB.Label lblOp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   9
      Left            =   75
      TabIndex        =   10
      Top             =   6825
      Width           =   690
   End
   Begin VB.Label lblOp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   8
      Left            =   75
      TabIndex        =   9
      Top             =   6600
      Width           =   690
   End
   Begin VB.Label lblOp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   7
      Left            =   75
      TabIndex        =   8
      Top             =   6375
      Width           =   690
   End
   Begin VB.Label lblOp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   6
      Left            =   75
      TabIndex        =   7
      Top             =   6150
      Width           =   690
   End
   Begin VB.Label lblOp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   5
      Left            =   75
      TabIndex        =   6
      Top             =   5925
      Width           =   690
   End
   Begin VB.Label lblOp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   4
      Left            =   75
      TabIndex        =   5
      Top             =   5700
      Width           =   690
   End
   Begin VB.Label lblOp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   3
      Left            =   75
      TabIndex        =   4
      Top             =   5475
      Width           =   690
   End
   Begin VB.Label lblOp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   2
      Left            =   75
      TabIndex        =   3
      Top             =   5250
      Width           =   690
   End
   Begin VB.Label lblOp 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Index           =   1
      Left            =   75
      TabIndex        =   2
      Top             =   5025
      Width           =   690
   End
   Begin VB.Label lblPLC 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "PLC Name"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   330
      Left            =   75
      TabIndex        =   1
      Top             =   75
      Width           =   4965
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      Height          =   3765
      Index           =   0
      Left            =   2025
      TabIndex        =   140
      Top             =   825
      Width           =   4665
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      Height          =   3765
      Index           =   1
      Left            =   2025
      TabIndex        =   141
      Top             =   4950
      Width           =   4665
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      Height          =   3765
      Index           =   2
      Left            =   75
      TabIndex        =   142
      Top             =   825
      Width           =   690
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      Height          =   3765
      Index           =   3
      Left            =   75
      TabIndex        =   143
      Top             =   4950
      Width           =   690
   End
End
Attribute VB_Name = "PLCForce"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim PLCStn As Integer
Dim ForceInstance   As Integer

Dim ForcePLC        As Integer
Dim ForceCard       As Long


Dim ForceValueIP As Integer
Dim ForceStateIP As Integer
Dim ForceValueOP As Integer
Dim ForceStateOP As Integer
Dim ForceSelValueIP(16) As Boolean
Dim ForceOnIP(16) As Boolean
Dim ForceSelValueOP(16) As Boolean
Dim ForceOnOP(16) As Boolean
Dim CardText(MaxPLCCards) As String





Private Sub chkShowAllIO_Click()
    ShowAllIO = chkShowAllIO.Value
End Sub

Private Sub cmbCard_Click()
    
    
    ForceCard = cmbCard.ItemData(cmbCard.ListIndex)
    
    
    NewForceCard
    
End Sub

Private Sub cmdExit_Click()
    On Error Resume Next
    Unload Me
    
End Sub

Private Sub cmdForceIpOff_Click(Index As Integer)
    
    If Not ForceOnIP(Index) Then
        ForceOnIP(Index) = True
    ElseIf ForceOnIP(Index) And ForceSelValueIP(Index) Then
        'Force already on with other button
    Else
        ForceOnIP(Index) = False
    End If
    
    ForceSelValueIP(Index) = False
     
    Dim n As Integer
    If Index = 0 Then
        For n = 1 To 16
            ForceOnIP(n) = ForceOnIP(0)
            ForceSelValueIP(n) = ForceSelValueIP(0)
        Next n
    End If
       
    UpdateForceButtons
    WriteForces
    
    cmdExit.SetFocus

End Sub

Private Sub cmdForceIpOn_Click(Index As Integer)
    
    If Not ForceOnIP(Index) Then
        ForceOnIP(Index) = True
    ElseIf ForceOnIP(Index) And Not ForceSelValueIP(Index) Then
        'Force already on with other button
    Else
        ForceOnIP(Index) = False
    End If
    
    
    ForceSelValueIP(Index) = True
           
    Dim n As Integer
    If Index = 0 Then
        For n = 1 To 16
            ForceOnIP(n) = ForceOnIP(0)
            ForceSelValueIP(n) = ForceSelValueIP(0)
        Next n
    End If
    
    UpdateForceButtons
    WriteForces
    
    cmdExit.SetFocus
    
End Sub

Private Sub cmdForceOpOff_Click(Index As Integer)
    
    If Not ForceOnOP(Index) Then
        ForceOnOP(Index) = True
    ElseIf ForceOnOP(Index) And ForceSelValueOP(Index) Then
        'Force already on with other button
    Else
        ForceOnOP(Index) = False
    End If
    
    ForceSelValueOP(Index) = False
     
    Dim n As Integer
    If Index = 0 Then
        For n = 1 To 16
            ForceOnOP(n) = ForceOnOP(0)
            ForceSelValueOP(n) = ForceSelValueOP(0)
        Next n
    End If
       
    UpdateForceButtons
    WriteForces
    
    cmdExit.SetFocus
    
End Sub

Private Sub cmdForceOpOn_Click(Index As Integer)
    
    If Not ForceOnOP(Index) Then
        ForceOnOP(Index) = True
    ElseIf ForceOnOP(Index) And Not ForceSelValueOP(Index) Then
        'Force already on with other button
    Else
        ForceOnOP(Index) = False
    End If
    
    
    ForceSelValueOP(Index) = True
           
    Dim n As Integer
    If Index = 0 Then
        For n = 1 To 16
            ForceOnOP(n) = ForceOnOP(0)
            ForceSelValueOP(n) = ForceSelValueOP(0)
        Next n
    End If
    
    UpdateForceButtons
    WriteForces
    
    cmdExit.SetFocus
    
End Sub

Private Sub cmdNextCard_Click()
    
NextCard:
    If ForceCard < MaxPLCCards Then
        ForceCard = ForceCard + 1
        If Not PLCCardUsed(ForceCard, PLCStn) Then
            GoTo NextCard
        End If
    End If
    NewForceCard
End Sub

Private Sub cmdPrevCard_Click()
    
NextCard:
    If ForceCard > MinPLCCards Then
        ForceCard = ForceCard - 1
        If Not PLCCardUsed(ForceCard, PLCStn) Then
            GoTo NextCard
        End If
    End If
    NewForceCard
End Sub

Private Sub Form_Deactivate()
    If AccessLevel < accEngineer Then
        Unload Me
    ElseIf AccessLevel = accDesigner Then
        'Do Nothing
    Else
        Me.ZOrder vbBringToFront
    End If
End Sub

Private Sub Form_Load()
    
    
    
    Dim pic             As Image
        
    ForceInstance = ForceFormIndex
    ForceOpen(ForceInstance) = True
        
        
    CenterForm Me
    Me.Top = 15
    
    SetLanguage
    
    db_uspIOListRead CurrentLanguage
    
    'Align each I/O pic with the X/Y labels
    For Each pic In picPLCInput()
        picPLCInput(pic.Index).Top = picPLCInput(pic.Index).Top + 37
    Next pic
    For Each pic In picPLCOutput()
        picPLCOutput(pic.Index).Top = picPLCOutput(pic.Index).Top + 37
    Next pic
    
    cmdPrevCard.Top = cmdPrevCard.Top + 37
    cmdNextCard.Top = cmdNextCard.Top + 37
    
    If ShowAllIO Then
        chkShowAllIO.Value = 1
    Else
        chkShowAllIO.Value = 0
    End If
    
    LoadButtons
    
    LoadPLCs
    
    LoadCards
    
    'Set Public Variables
    ForceCard = MinPLCCards
        
    PLCStn = 0
    
    lblPLC.caption = " " & Format$(PLCStn, "#0") & " -  " & PLCName(PLCStn)
    
    lblCard.caption = CardText(ForceCard)
    DisplayIO
    
    ForceCard = cmbCard.ItemData(0)
    
    NewForceCard (True) 'Update display
    
    chkShowAllIO.visible = (AccessLevel >= accProgrammer)
    
End Sub


Private Sub cmbPLC_Click()
        
            
    CancelAllForces 'Cancel any forces on the previous PLC selection
    
    PLCStn = cmbPLC.ItemData(cmbPLC.ListIndex)
    lblPLC.caption = cmbPLC.text
    cmbPLC.visible = False
    
    
    
    LoadButtons
    LoadCards
    If cmbCard.ListCount > 0 Then ForceCard = cmbCard.ItemData(0) Else ForceCard = 0
    
    NewForceCard

End Sub
Private Sub LoadPLCs()
    
    
    Dim PLC As Integer
        
    For PLC = 0 To UsedPLC
        cmbPLC.AddItem " " & Format$(PLC, "#0") & " -  " & PLCName(PLC)
        cmbPLC.ItemData(cmbPLC.NewIndex) = PLC
    Next PLC
   

End Sub
Private Sub LoadCards()
    
    Dim Card As Integer
       
    cmbCard.Clear
    
    For Card = MinPLCCards To MaxPLCCards
        If PLCCardUsed(Card, PLCStn) Then
            CardText(Card) = " " & TextWord(638) & " X" & Format$(Card, "#0") & "01-" & "X" & Format$(Card, "#0") & "16" & _
                            " " & TextWord(639) & " Y" & Format$(Card, "#0") & "01-" & "Y" & Format$(Card, "#0") & "16"
            cmbCard.AddItem CardText(Card)
            cmbCard.ItemData(cmbCard.NewIndex) = Card
        End If
    Next Card
   

End Sub

Private Sub Form_LostFocus()
    If AccessLevel < accEngineer Then Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
          
    CancelAllForces
    
    ForceOpen(ForceInstance) = False
        
End Sub

Private Sub lblCard_Click()
    cmbCard.text = lblCard.caption
    cmbCard.visible = True
    cmbPLC.visible = False
End Sub

Private Sub lblPLC_Click()
    cmbPLC.text = lblPLC.caption
    cmbPLC.visible = True
    cmbCard.visible = False
End Sub
Public Sub DisplayIO()
    Dim n As Integer
    For n = 1 To 16
        lblIp(n).caption = "X" & Format$((ForceCard * 100) + n, "000")
        lblIpDescription(n).caption = PLCInputDesc(ForceCard, n, PLCStn)
        lblOp(n).caption = "Y" & Format$((ForceCard * 100) + n, "000")
        lblOpDescription(n).caption = PLCOutputDesc(ForceCard, n, PLCStn)
    Next n
End Sub
Public Sub Update()
    
    'Update current card
    
    For n = 1 To 16
        If PLCx(ForceCard, n, PLCStn) Then
            picPLCInput(n).Picture = picGreen.Picture
        Else
            picPLCInput(n).Picture = picGrey.Picture
        End If
        If PLCy(ForceCard, n, PLCStn) Then
            picPLCOutput(n).Picture = picAmber.Picture
        Else
            picPLCOutput(n).Picture = picGrey.Picture
        End If
    
        'DoEvents
    
    Next n
       
       
       
End Sub

Public Sub CalcForces()
    
    Dim n As Long
    
    n = 0
    
    If ForceSelValueIP(1) Then n = n + 1
    If ForceSelValueIP(2) Then n = n + 2
    If ForceSelValueIP(3) Then n = n + 4
    If ForceSelValueIP(4) Then n = n + 8
    If ForceSelValueIP(5) Then n = n + 16
    If ForceSelValueIP(6) Then n = n + 32
    If ForceSelValueIP(7) Then n = n + 64
    If ForceSelValueIP(8) Then n = n + 128
    If ForceSelValueIP(9) Then n = n + 256
    If ForceSelValueIP(10) Then n = n + 512
    If ForceSelValueIP(11) Then n = n + 1024
    If ForceSelValueIP(12) Then n = n + 2048
    If ForceSelValueIP(13) Then n = n + 4096
    If ForceSelValueIP(14) Then n = n + 8192
    If ForceSelValueIP(15) Then n = n + 16384
    If ForceSelValueIP(16) Then n = n + 32768
    
    If n > 32767 Then
        ForceValueIP = n - 65536
    Else
        ForceValueIP = n
    End If
       
    n = 0
    
    If ForceOnIP(1) Then n = n + 1
    If ForceOnIP(2) Then n = n + 2
    If ForceOnIP(3) Then n = n + 4
    If ForceOnIP(4) Then n = n + 8
    If ForceOnIP(5) Then n = n + 16
    If ForceOnIP(6) Then n = n + 32
    If ForceOnIP(7) Then n = n + 64
    If ForceOnIP(8) Then n = n + 128
    If ForceOnIP(9) Then n = n + 256
    If ForceOnIP(10) Then n = n + 512
    If ForceOnIP(11) Then n = n + 1024
    If ForceOnIP(12) Then n = n + 2048
    If ForceOnIP(13) Then n = n + 4096
    If ForceOnIP(14) Then n = n + 8192
    If ForceOnIP(15) Then n = n + 16384
    If ForceOnIP(16) Then n = n + 32768
    
    If n > 32767 Then
        ForceStateIP = n - 65536
    Else
        ForceStateIP = n
    End If
    
    n = 0
    
    If ForceSelValueOP(1) Then n = n + 1
    If ForceSelValueOP(2) Then n = n + 2
    If ForceSelValueOP(3) Then n = n + 4
    If ForceSelValueOP(4) Then n = n + 8
    If ForceSelValueOP(5) Then n = n + 16
    If ForceSelValueOP(6) Then n = n + 32
    If ForceSelValueOP(7) Then n = n + 64
    If ForceSelValueOP(8) Then n = n + 128
    If ForceSelValueOP(9) Then n = n + 256
    If ForceSelValueOP(10) Then n = n + 512
    If ForceSelValueOP(11) Then n = n + 1024
    If ForceSelValueOP(12) Then n = n + 2048
    If ForceSelValueOP(13) Then n = n + 4096
    If ForceSelValueOP(14) Then n = n + 8192
    If ForceSelValueOP(15) Then n = n + 16384
    If ForceSelValueOP(16) Then n = n + 32768
    
    If n > 32767 Then
        ForceValueOP = n - 65536
    Else
        ForceValueOP = n
    End If
       
    n = 0
    
    If ForceOnOP(1) Then n = n + 1
    If ForceOnOP(2) Then n = n + 2
    If ForceOnOP(3) Then n = n + 4
    If ForceOnOP(4) Then n = n + 8
    If ForceOnOP(5) Then n = n + 16
    If ForceOnOP(6) Then n = n + 32
    If ForceOnOP(7) Then n = n + 64
    If ForceOnOP(8) Then n = n + 128
    If ForceOnOP(9) Then n = n + 256
    If ForceOnOP(10) Then n = n + 512
    If ForceOnOP(11) Then n = n + 1024
    If ForceOnOP(12) Then n = n + 2048
    If ForceOnOP(13) Then n = n + 4096
    If ForceOnOP(14) Then n = n + 8192
    If ForceOnOP(15) Then n = n + 16384
    If ForceOnOP(16) Then n = n + 32768
    
    If n > 32767 Then
        ForceStateOP = n - 65536
    Else
        ForceStateOP = n
    End If
    
    


End Sub
Private Sub WriteForces()
    
    Screen.MousePointer = vbHourglass
    
    CalcForces
    
    'ForceInstance
    
    Dim n As Integer
    
    n = (ForceInstance - 1) * 5
    
    Data(0) = ForceCard     'D380
    Data(1) = ForceStateIP  'D381
    Data(2) = ForceValueIP  'D382
    Data(3) = ForceStateOP  'D383
    Data(4) = ForceValueOP  'D384
    Comms_frm.WritePLC PLCStn, "D", (380 + n), 5, Data()
    
    ErrorHandler 0, "Output Forced", "Force Card = " & Str(ForceCard) & "  ForceStateIP =" & Hex(ForceStateIP) & "  ForceValueIP =" & Hex(ForceValueIP), False, 1
    ErrorHandler 0, "Output Forced", "Force Card = " & Str(ForceCard) & "  ForceStateOP =" & Hex(ForceStateOP) & "  ForceValueOP =" & Hex(ForceValueOP), False, 1
    
    If Demo Then
        PLCx(ForceCard, 1, PLCStn) = ForceValueIP And 1
        PLCx(ForceCard, 2, PLCStn) = ForceValueIP And 2
        PLCx(ForceCard, 3, PLCStn) = ForceValueIP And 4
        PLCx(ForceCard, 4, PLCStn) = ForceValueIP And 8
        PLCx(ForceCard, 5, PLCStn) = ForceValueIP And 16
        PLCx(ForceCard, 6, PLCStn) = ForceValueIP And 32
        PLCx(ForceCard, 7, PLCStn) = ForceValueIP And 64
        PLCx(ForceCard, 8, PLCStn) = ForceValueIP And 128
        
        PLCy(ForceCard, 1, PLCStn) = ForceValueOP And 1
        PLCy(ForceCard, 2, PLCStn) = ForceValueOP And 2
        PLCy(ForceCard, 3, PLCStn) = ForceValueOP And 4
        PLCy(ForceCard, 4, PLCStn) = ForceValueOP And 8
        PLCy(ForceCard, 5, PLCStn) = ForceValueOP And 16
        PLCy(ForceCard, 6, PLCStn) = ForceValueOP And 32
        PLCy(ForceCard, 7, PLCStn) = ForceValueOP And 64
        PLCy(ForceCard, 8, PLCStn) = ForceValueOP And 128
    End If
    
    Screen.MousePointer = vbArrow
    
End Sub

Private Sub UpdateForceButtons()
    Dim Bttn As CommandButton
    
    For Each Bttn In cmdForceIpOn()
        If ForceOnIP(Bttn.Index) Then
            If ForceSelValueIP(Bttn.Index) Then
                cmdForceIpOn(Bttn.Index).BackColor = vbLightRed
                cmdForceIpOff(Bttn.Index).BackColor = vbButtonFace
            Else
                cmdForceIpOn(Bttn.Index).BackColor = vbButtonFace
                cmdForceIpOff(Bttn.Index).BackColor = vbLightRed
            End If
        Else
            cmdForceIpOn(Bttn.Index).BackColor = vbButtonFace
            cmdForceIpOff(Bttn.Index).BackColor = vbButtonFace
        End If
    Next Bttn
    
    For Each Bttn In cmdForceOpOn()
        If ForceOnOP(Bttn.Index) Then
            If ForceSelValueOP(Bttn.Index) Then
                cmdForceOpOn(Bttn.Index).BackColor = vbLightRed
                cmdForceOpOff(Bttn.Index).BackColor = vbButtonFace
            Else
                cmdForceOpOn(Bttn.Index).BackColor = vbButtonFace
                cmdForceOpOff(Bttn.Index).BackColor = vbLightRed
            End If
        Else
            cmdForceOpOn(Bttn.Index).BackColor = vbButtonFace
            cmdForceOpOff(Bttn.Index).BackColor = vbButtonFace
        End If
    Next Bttn
End Sub
Private Sub NewForceCard(Optional NoWritePLC As Boolean)
    
    cmbCard.visible = False
    lblCard.caption = CardText(ForceCard)
    
    'Clear any previous forces
    Dim n As Integer
    'If Index = 0 Then
        For n = 0 To 16
            ForceOnIP(n) = False
            ForceSelValueIP(n) = False
            ForceOnOP(n) = False
            ForceSelValueOP(n) = False
        Next n
    'End If
    
    UpdateForceButtons
    
    DisplayIO
       
    If Not NoWritePLC Then WriteForces 'Don't write to PLC when form loads

End Sub
Private Sub CancelAllForces()
    
    'Cancel All forces to PLC
    ForceCard = 0
    ForceStateIP = 0
    ForceValueIP = 0
    ForceStateOP = 0
    ForceValueOP = 0
    
    WriteForces
    
End Sub

Private Sub SetLanguage()

    cmdExit.caption = TextWord(309)
    Me.caption = TextWord(636)
        
End Sub

Private Sub tmr1Second_Timer()

End Sub

Private Sub tmrUpdate_Timer()
    Call Update
End Sub
Private Sub LoadButtons()
    
    Dim cmd             As CommandButton
    Dim ForceButtons    As Boolean
    
    ForceButtons = ((AccessLevel >= accDesigner) Or ((AccessLevel >= accEngineer) And ForceAllowed(PLCStn)))
    
    'Enable Forcing Buttons
    For Each cmd In cmdForceIpOff()
        cmdForceIpOff(cmd.Index).visible = ForceButtons
        cmdForceIpOn(cmd.Index).visible = ForceButtons
        cmdForceOpOff(cmd.Index).visible = ForceButtons
        cmdForceOpOn(cmd.Index).visible = ForceButtons
        
        cmdForceIpOff(cmd.Index).caption = "O"
        cmdForceIpOn(cmd.Index).caption = "I"
        cmdForceOpOff(cmd.Index).caption = "O"
        cmdForceOpOn(cmd.Index).caption = "I"
    Next cmd

End Sub
