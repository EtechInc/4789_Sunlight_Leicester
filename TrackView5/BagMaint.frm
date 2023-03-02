VERSION 5.00
Begin VB.Form BagMaint_frm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "BagMaint"
   ClientHeight    =   7530
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   17250
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   9
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
   ScaleHeight     =   7530
   ScaleWidth      =   17250
   Begin VB.TextBox txt_SetPoint 
      Height          =   330
      Left            =   14280
      TabIndex        =   151
      Text            =   "Text1"
      Top             =   6780
      Width           =   1395
   End
   Begin VB.VScrollBar VScroll 
      Height          =   6015
      Left            =   16800
      TabIndex        =   150
      Top             =   660
      Width           =   315
   End
   Begin VB.ComboBox cmb_PLCStn 
      Height          =   330
      Left            =   240
      TabIndex        =   149
      Text            =   "Combo1"
      Top             =   6780
      Width           =   2505
   End
   Begin VB.ComboBox cmb_State 
      Height          =   330
      Left            =   14700
      TabIndex        =   148
      Text            =   "Combo1"
      Top             =   7380
      Width           =   2505
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
      Left            =   15840
      TabIndex        =   0
      Top             =   6780
      Width           =   1215
   End
   Begin VB.Label lbl_Setpoint 
      Alignment       =   1  'Right Justify
      Caption         =   "Label1"
      Height          =   300
      Left            =   10380
      TabIndex        =   152
      Top             =   6810
      Width           =   3825
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   140
      Left            =   14220
      TabIndex        =   147
      Top             =   6360
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   139
      Left            =   14220
      TabIndex        =   146
      Top             =   6060
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   138
      Left            =   14220
      TabIndex        =   145
      Top             =   5760
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   137
      Left            =   14220
      TabIndex        =   144
      Top             =   5460
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   136
      Left            =   14220
      TabIndex        =   143
      Top             =   5160
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   135
      Left            =   14220
      TabIndex        =   142
      Top             =   4860
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   134
      Left            =   14220
      TabIndex        =   141
      Top             =   4560
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   133
      Left            =   14220
      TabIndex        =   140
      Top             =   4260
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   132
      Left            =   14220
      TabIndex        =   139
      Top             =   3960
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   131
      Left            =   14220
      TabIndex        =   138
      Top             =   3660
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   130
      Left            =   14220
      TabIndex        =   137
      Top             =   3360
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   129
      Left            =   14220
      TabIndex        =   136
      Top             =   3060
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   128
      Left            =   14220
      TabIndex        =   135
      Top             =   2760
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   127
      Left            =   14220
      TabIndex        =   134
      Top             =   2460
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   126
      Left            =   14220
      TabIndex        =   133
      Top             =   2160
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   125
      Left            =   14220
      TabIndex        =   132
      Top             =   1860
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   124
      Left            =   14220
      TabIndex        =   131
      Top             =   1560
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   123
      Left            =   14220
      TabIndex        =   130
      Top             =   1260
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   122
      Left            =   14220
      TabIndex        =   129
      Top             =   960
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   121
      Left            =   14220
      TabIndex        =   128
      Top             =   660
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   120
      Left            =   11700
      TabIndex        =   127
      Top             =   6360
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   119
      Left            =   11700
      TabIndex        =   126
      Top             =   6060
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   118
      Left            =   11700
      TabIndex        =   125
      Top             =   5760
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   117
      Left            =   11700
      TabIndex        =   124
      Top             =   5460
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   116
      Left            =   11700
      TabIndex        =   123
      Top             =   5160
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   115
      Left            =   11700
      TabIndex        =   122
      Top             =   4860
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   114
      Left            =   11700
      TabIndex        =   121
      Top             =   4560
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   113
      Left            =   11700
      TabIndex        =   120
      Top             =   4260
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   112
      Left            =   11700
      TabIndex        =   119
      Top             =   3960
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   111
      Left            =   11700
      TabIndex        =   118
      Top             =   3660
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   110
      Left            =   11700
      TabIndex        =   117
      Top             =   3360
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   109
      Left            =   11700
      TabIndex        =   116
      Top             =   3060
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   108
      Left            =   11700
      TabIndex        =   115
      Top             =   2760
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   107
      Left            =   11700
      TabIndex        =   114
      Top             =   2460
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   106
      Left            =   11700
      TabIndex        =   113
      Top             =   2160
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   105
      Left            =   11700
      TabIndex        =   112
      Top             =   1860
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   104
      Left            =   11700
      TabIndex        =   111
      Top             =   1560
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   103
      Left            =   11700
      TabIndex        =   110
      Top             =   1260
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   102
      Left            =   11700
      TabIndex        =   109
      Top             =   960
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   101
      Left            =   11700
      TabIndex        =   108
      Top             =   660
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   100
      Left            =   9180
      TabIndex        =   107
      Top             =   6360
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   99
      Left            =   9180
      TabIndex        =   106
      Top             =   6060
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   98
      Left            =   9180
      TabIndex        =   105
      Top             =   5760
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   97
      Left            =   9180
      TabIndex        =   104
      Top             =   5460
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   96
      Left            =   9180
      TabIndex        =   103
      Top             =   5160
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   95
      Left            =   9180
      TabIndex        =   102
      Top             =   4860
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   94
      Left            =   9180
      TabIndex        =   101
      Top             =   4560
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   93
      Left            =   9180
      TabIndex        =   100
      Top             =   4260
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   92
      Left            =   9180
      TabIndex        =   99
      Top             =   3960
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   91
      Left            =   9180
      TabIndex        =   98
      Top             =   3660
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   90
      Left            =   9180
      TabIndex        =   97
      Top             =   3360
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   89
      Left            =   9180
      TabIndex        =   96
      Top             =   3060
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H8000000D&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   88
      Left            =   9180
      TabIndex        =   95
      Top             =   2760
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H0080C0FF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   87
      Left            =   9180
      TabIndex        =   94
      Top             =   2460
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   86
      Left            =   9180
      TabIndex        =   93
      Top             =   2160
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   85
      Left            =   9180
      TabIndex        =   92
      Top             =   1860
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   84
      Left            =   9180
      TabIndex        =   91
      Top             =   1560
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   83
      Left            =   9180
      TabIndex        =   90
      Top             =   1260
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   82
      Left            =   9180
      TabIndex        =   89
      Top             =   960
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   81
      Left            =   9180
      TabIndex        =   88
      Top             =   660
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   80
      Left            =   6660
      TabIndex        =   87
      Top             =   6360
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   79
      Left            =   6660
      TabIndex        =   86
      Top             =   6060
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   78
      Left            =   6660
      TabIndex        =   85
      Top             =   5760
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   77
      Left            =   6660
      TabIndex        =   84
      Top             =   5460
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   76
      Left            =   6660
      TabIndex        =   83
      Top             =   5160
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   75
      Left            =   6660
      TabIndex        =   82
      Top             =   4860
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   74
      Left            =   6660
      TabIndex        =   81
      Top             =   4560
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   73
      Left            =   6660
      TabIndex        =   80
      Top             =   4260
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   72
      Left            =   6660
      TabIndex        =   79
      Top             =   3960
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   71
      Left            =   6660
      TabIndex        =   78
      Top             =   3660
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   70
      Left            =   6660
      TabIndex        =   77
      Top             =   3360
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   69
      Left            =   6660
      TabIndex        =   76
      Top             =   3060
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   68
      Left            =   6660
      TabIndex        =   75
      Top             =   2760
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   67
      Left            =   6660
      TabIndex        =   74
      Top             =   2460
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   66
      Left            =   6660
      TabIndex        =   73
      Top             =   2160
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   65
      Left            =   6660
      TabIndex        =   72
      Top             =   1860
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   64
      Left            =   6660
      TabIndex        =   71
      Top             =   1560
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   63
      Left            =   6660
      TabIndex        =   70
      Top             =   1260
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   62
      Left            =   6660
      TabIndex        =   69
      Top             =   960
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   61
      Left            =   6660
      TabIndex        =   68
      Top             =   660
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   60
      Left            =   4140
      TabIndex        =   67
      Top             =   6360
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   59
      Left            =   4140
      TabIndex        =   66
      Top             =   6060
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   58
      Left            =   4140
      TabIndex        =   65
      Top             =   5760
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   57
      Left            =   4140
      TabIndex        =   64
      Top             =   5460
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   56
      Left            =   4140
      TabIndex        =   63
      Top             =   5160
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   55
      Left            =   4140
      TabIndex        =   62
      Top             =   4860
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   54
      Left            =   4140
      TabIndex        =   61
      Top             =   4560
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   53
      Left            =   4140
      TabIndex        =   60
      Top             =   4260
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   52
      Left            =   4140
      TabIndex        =   59
      Top             =   3960
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   51
      Left            =   4140
      TabIndex        =   58
      Top             =   3660
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   50
      Left            =   4140
      TabIndex        =   57
      Top             =   3360
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   49
      Left            =   4140
      TabIndex        =   56
      Top             =   3060
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   48
      Left            =   4140
      TabIndex        =   55
      Top             =   2760
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   47
      Left            =   4140
      TabIndex        =   54
      Top             =   2460
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   46
      Left            =   4140
      TabIndex        =   53
      Top             =   2160
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   45
      Left            =   4140
      TabIndex        =   52
      Top             =   1860
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   44
      Left            =   4140
      TabIndex        =   51
      Top             =   1560
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   43
      Left            =   4140
      TabIndex        =   50
      Top             =   1260
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   42
      Left            =   4140
      TabIndex        =   49
      Top             =   960
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   41
      Left            =   4140
      TabIndex        =   48
      Top             =   660
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   40
      Left            =   1620
      TabIndex        =   47
      Top             =   6360
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   39
      Left            =   1620
      TabIndex        =   46
      Top             =   6060
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   38
      Left            =   1620
      TabIndex        =   45
      Top             =   5760
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   37
      Left            =   1620
      TabIndex        =   44
      Top             =   5460
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   36
      Left            =   1620
      TabIndex        =   43
      Top             =   5160
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   35
      Left            =   1620
      TabIndex        =   42
      Top             =   4860
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   34
      Left            =   1620
      TabIndex        =   41
      Top             =   4560
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   33
      Left            =   1620
      TabIndex        =   40
      Top             =   4260
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   32
      Left            =   1620
      TabIndex        =   39
      Top             =   3960
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   31
      Left            =   1620
      TabIndex        =   38
      Top             =   3660
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   30
      Left            =   1620
      TabIndex        =   37
      Top             =   3360
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   29
      Left            =   1620
      TabIndex        =   36
      Top             =   3060
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   28
      Left            =   1620
      TabIndex        =   35
      Top             =   2760
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   27
      Left            =   1620
      TabIndex        =   34
      Top             =   2460
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   26
      Left            =   1620
      TabIndex        =   33
      Top             =   2160
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   25
      Left            =   1620
      TabIndex        =   32
      Top             =   1860
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   24
      Left            =   1620
      TabIndex        =   31
      Top             =   1560
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   23
      Left            =   1620
      TabIndex        =   30
      Top             =   1260
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   22
      Left            =   1620
      TabIndex        =   29
      Top             =   960
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   21
      Left            =   1620
      TabIndex        =   28
      Top             =   660
      Width           =   2505
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   20
      Left            =   240
      TabIndex        =   27
      Top             =   6360
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   19
      Left            =   240
      TabIndex        =   26
      Top             =   6060
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   18
      Left            =   240
      TabIndex        =   25
      Top             =   5760
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   17
      Left            =   240
      TabIndex        =   24
      Top             =   5460
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   16
      Left            =   240
      TabIndex        =   23
      Top             =   5160
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   15
      Left            =   240
      TabIndex        =   22
      Top             =   4860
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   14
      Left            =   240
      TabIndex        =   21
      Top             =   4560
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   13
      Left            =   240
      TabIndex        =   20
      Top             =   4260
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   12
      Left            =   240
      TabIndex        =   19
      Top             =   3960
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   11
      Left            =   240
      TabIndex        =   18
      Top             =   3660
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   10
      Left            =   240
      TabIndex        =   17
      Top             =   3360
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   9
      Left            =   240
      TabIndex        =   16
      Top             =   3060
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   8
      Left            =   240
      TabIndex        =   15
      Top             =   2760
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   7
      Left            =   240
      TabIndex        =   14
      Top             =   2460
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   6
      Left            =   240
      TabIndex        =   13
      Top             =   2160
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   5
      Left            =   240
      TabIndex        =   12
      Top             =   1860
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   4
      Left            =   240
      TabIndex        =   11
      Top             =   1560
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   3
      Left            =   240
      TabIndex        =   10
      Top             =   1260
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   2
      Left            =   240
      TabIndex        =   9
      Top             =   960
      Width           =   1335
   End
   Begin VB.Label lbl_Data 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   1
      Left            =   240
      TabIndex        =   8
      Top             =   660
      Width           =   1335
   End
   Begin VB.Label lbl_Title 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "State"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   500
      Index           =   6
      Left            =   14220
      TabIndex        =   7
      Top             =   180
      Width           =   2505
   End
   Begin VB.Label lbl_Title 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Count Since Maintenance"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   500
      Index           =   3
      Left            =   6660
      TabIndex        =   6
      Top             =   180
      Width           =   2505
   End
   Begin VB.Label lbl_Title 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Total Count"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   500
      Index           =   5
      Left            =   11700
      TabIndex        =   5
      Top             =   180
      Width           =   2505
   End
   Begin VB.Label lbl_Title 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Last ScanDate"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   500
      Index           =   2
      Left            =   4140
      TabIndex        =   4
      Top             =   180
      Width           =   2505
   End
   Begin VB.Label lbl_Title 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Last Maint Date"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   500
      Index           =   4
      Left            =   9180
      TabIndex        =   3
      Top             =   180
      Width           =   2505
   End
   Begin VB.Label lbl_Title 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "RFID Code"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   500
      Index           =   1
      Left            =   1620
      TabIndex        =   2
      Top             =   180
      Width           =   2505
   End
   Begin VB.Label lbl_Title 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Bag Num"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   500
      Index           =   0
      Left            =   240
      TabIndex        =   1
      Top             =   180
      Width           =   1335
   End
End
Attribute VB_Name = "BagMaint_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Const OffSet_BagNum As Integer = 0
Private Const OffSet_RFIDCode As Integer = 20
Private Const OffSet_LastScanDate As Integer = 40
Private Const OffSet_CurrentCount As Integer = 60
Private Const OffSet_LastMaintDate As Integer = 80
Private Const OffSet_TotalCount As Integer = 100
Private Const OffSet_State As Integer = 120
Private Const BackCol_Highlight As Long = vbHighlightText
Private Const BackCol_Disabled As Long = vbButtonFace
Dim BackCol_State(3) As Long
Dim PLCStn As Integer
Dim LabelIndex As Integer
Private Sub cmb_PLCStn_Click()
    VScroll.Value = 0
    PLCStn = cmb_PLCStn.ListIndex
    ReadData (PLCStn)

End Sub

Private Sub cmb_State_Click()
Dim BagNum As Integer
BagNum = lbl_Data(OffSet_BagNum + LabelIndex).Caption
    Call db_uspBagMaintSetBagState(PLCStn, BagNum, cmb_State.ListIndex)
    ReadData (PLCStn)
End Sub

Private Sub cmb_State_LostFocus()
    cmb_State.Visible = False
End Sub

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    CenterForm Me
    Config
    PLCStn = 0
    ReadData (PLCStn)
End Sub
Private Sub Config()
    cmb_PLCStn.Clear
    For n = 0 To MaxPLC
        cmb_PLCStn.AddItem PLCName(n)
        cmb_PLCStn.ItemData(cmb_PLCStn.NewIndex) = n
    Next n
    cmb_PLCStn.ListIndex = 0
    cmb_State.Clear
    For n = 0 To 2
        cmb_State.AddItem TextWord(n + 946)
        cmb_State.ItemData(cmb_State.NewIndex) = n
    Next n
    
    BackCol_State(0) = vbWhite
    BackCol_State(1) = &H80C0FF     'Orange
    BackCol_State(2) = &HFF&  'Red
    cmb_State.Visible = False
    Me.Caption = TextWord(938)
    For n = 0 To 6
        lbl_Title(n) = TextWord(939 + n)
    Next n
    lbl_Setpoint.Caption = TextWord(949)
    txt_SetPoint.Text = ""
    txt_SetPoint.Enabled = AccessLevel >= accEngineer
    txt_SetPoint.Text = db_uspBagMaintReadMaintSetPoint(PLCStn)
End Sub
Private Sub ReadData(PLCStn As Integer)

    Dim MyRecordCount As Integer
    txt_SetPoint.Text = db_uspBagMaintReadMaintSetPoint(PLCStn)
    MyRecordCount = db_uspBagMaintGetOverviewData(PLCStn)
    If MyRecordCount > 20 Then
        VScroll.Visible = True
        VScroll.Min = 0
        VScroll.Max = MyRecordCount - 20
    Else
        VScroll.Visible = False
    End If
    DisplayData
    
End Sub
Private Sub DisplayData()

Dim n As Integer
Dim OffSet As Long
Dim LocalBackCol As Long

OffSet = VScroll.Value

For n = 1 To 20
    
    
    lbl_Data(n + OffSet_BagNum).Caption = BagMaintRecord((OffSet + n)).BagNum
    lbl_Data(n + OffSet_RFIDCode).Caption = BagMaintRecord((OffSet + n)).RFID_Code
    lbl_Data(n + OffSet_LastScanDate).Caption = BagMaintRecord((OffSet + n)).LastSeenDate
    lbl_Data(n + OffSet_CurrentCount).Caption = BagMaintRecord((OffSet + n)).CurrentCount
    lbl_Data(n + OffSet_LastMaintDate).Caption = BagMaintRecord((OffSet + n)).LastMaintDate
    lbl_Data(n + OffSet_TotalCount).Caption = BagMaintRecord((OffSet + n)).TotalCount
    If Not IsNull(BagMaintRecord((OffSet + n)).CurrentState) And (BagMaintRecord((OffSet + n)).CurrentState < 3) Then
        lbl_Data(n + OffSet_State).Caption = TextWord(946 + BagMaintRecord((OffSet + n)).CurrentState)
    Else
        lbl_Data(n + OffSet_State).Caption = "Data Error"
    End If
    'Set Colours.
    If lbl_Data(n + OffSet_BagNum) > 0 Then
       
        Select Case BagMaintRecord((OffSet + n)).CurrentState
            Case 0
                LocalBackCol = BackCol_State(0)
            Case 1
                LocalBackCol = BackCol_State(1)
            Case 2
                LocalBackCol = BackCol_State(2)
            Case Else
        End Select
        lbl_Data(n + OffSet_BagNum).Enabled = True
        lbl_Data(n + OffSet_BagNum).BackColor = LocalBackCol
        lbl_Data(n + OffSet_RFIDCode).Enabled = True
        lbl_Data(n + OffSet_RFIDCode).BackColor = LocalBackCol
        lbl_Data(n + OffSet_LastScanDate).Enabled = True
        lbl_Data(n + OffSet_LastScanDate).BackColor = LocalBackCol
        lbl_Data(n + OffSet_CurrentCount).Enabled = True
        lbl_Data(n + OffSet_CurrentCount).BackColor = LocalBackCol
        lbl_Data(n + OffSet_LastMaintDate).Enabled = True
        lbl_Data(n + OffSet_LastMaintDate).BackColor = LocalBackCol
        lbl_Data(n + OffSet_TotalCount).Enabled = True
        lbl_Data(n + OffSet_TotalCount).BackColor = LocalBackCol
        lbl_Data(n + OffSet_State).Enabled = True
        lbl_Data(n + OffSet_State).BackColor = LocalBackCol
    
    Else
        lbl_Data(n + OffSet_BagNum).Enabled = False
        lbl_Data(n + OffSet_BagNum).BackColor = BackCol_Disabled
        lbl_Data(n + OffSet_BagNum).Caption = ""
        lbl_Data(n + OffSet_RFIDCode).Enabled = False
        lbl_Data(n + OffSet_RFIDCode).BackColor = BackCol_Disabled
        lbl_Data(n + OffSet_RFIDCode).Caption = ""
        lbl_Data(n + OffSet_LastScanDate).Enabled = False
        lbl_Data(n + OffSet_LastScanDate).BackColor = BackCol_Disabled
        lbl_Data(n + OffSet_LastScanDate).Caption = ""
        lbl_Data(n + OffSet_CurrentCount).Enabled = False
        lbl_Data(n + OffSet_CurrentCount).BackColor = BackCol_Disabled
        lbl_Data(n + OffSet_CurrentCount).Caption = ""
        lbl_Data(n + OffSet_LastMaintDate).Enabled = False
        lbl_Data(n + OffSet_LastMaintDate).BackColor = BackCol_Disabled
        lbl_Data(n + OffSet_LastMaintDate).Caption = ""
        lbl_Data(n + OffSet_TotalCount).Enabled = False
        lbl_Data(n + OffSet_TotalCount).BackColor = BackCol_Disabled
        lbl_Data(n + OffSet_TotalCount).Caption = ""
        lbl_Data(n + OffSet_State).Enabled = False
        lbl_Data(n + OffSet_State).BackColor = BackCol_Disabled
        lbl_Data(n + OffSet_State).Caption = ""
    End If
Next n

End Sub

Private Sub lbl_Data_Click(Index As Integer)
    DisplayData ' Clear previous highlight
    cmb_PLCStn.SetFocus
    If Index > OffSet_State Then
            If AccessLevel >= accEngineer Then
                cmb_State.Width = lbl_Data(Index).Width
                cmb_State.Top = lbl_Data(Index).Top
                cmb_State.Left = lbl_Data(Index).Left
                cmb_State.Visible = True
                cmb_State.SetFocus
            End If
    End If
    LabelIndex = GetIndex(Index)
    HighlightRow (LabelIndex)
     
End Sub

Private Sub HighlightRow(LocalIndex)
    For n = OffSet_BagNum To OffSet_State Step 20
        lbl_Data(LocalIndex + n).BackColor = vbHighlight
    Next n

End Sub

Private Sub txt_SetPoint_Change()
    Dim Length As Integer
    If Not IsNumeric(txt_SetPoint.Text) Then
       Length = Len(txt_SetPoint.Text) - 1
        If Length > 0 Then
            txt_SetPoint.Text = Left(txt_SetPoint.Text, Length)
            txt_SetPoint.SelStart = Length
        Else
            txt_SetPoint.Text = ""
        End If
    End If
    
End Sub

Private Sub txt_SetPoint_KeyPress(KeyAscii As Integer)
        If KeyAscii = 13 Then  ' The ENTER key.
            'SendKeys "{tab}"    ' Set the focus to the next control.
            'KeyAscii = 0        ' Ignore this key.
            UpdateSetPoint
        End If
End Sub

Private Sub txt_SetPoint_LostFocus()
    UpdateSetPoint
End Sub
Private Sub UpdateSetPoint()
    Call db_uspBagMaintSetMaintSetPoint(PLCStn, Val(txt_SetPoint.Text))
   ReadData (PLCStn)
End Sub

Private Sub VScroll_Change()
    DisplayData
End Sub

Private Function GetIndex(lblIndex) As Integer
    Dim LocalIndex As Integer
    Select Case lblIndex
         Case Is > OffSet_State
            LocalIndex = lblIndex - OffSet_State
        Case Is > OffSet_TotalCount
            LocalIndex = lblIndex - OffSet_TotalCount
         Case Is > OffSet_LastMaintDate
            LocalIndex = lblIndex - OffSet_LastMaintDate
         Case Is > OffSet_CurrentCount
            LocalIndex = lblIndex - OffSet_CurrentCount
        Case Is > OffSet_LastScanDate
            LocalIndex = lblIndex - OffSet_LastScanDate
        Case Is > OffSet_RFIDCode
            LocalIndex = lblIndex - OffSet_RFIDCode
        Case Is > OffSet_BagNum
            LocalIndex = lblIndex - OffSet_BagNum
     End Select
    GetIndex = LocalIndex

End Function
