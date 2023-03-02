VERSION 5.00
Begin VB.Form Unloading 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Unloading"
   ClientHeight    =   7470
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   13905
   FillColor       =   &H00C0C0C0&
   ForeColor       =   &H00000000&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   7470
   ScaleWidth      =   13905
   Begin VB.PictureBox fraHolding 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   7290
      Left            =   10575
      ScaleHeight     =   7290
      ScaleWidth      =   3240
      TabIndex        =   213
      Top             =   75
      Width           =   3240
      Begin VB.ComboBox cmbCus 
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
         Left            =   75
         Sorted          =   -1  'True
         TabIndex        =   229
         Text            =   "cmbCus"
         Top             =   375
         Visible         =   0   'False
         Width           =   3090
      End
      Begin VB.CommandButton Cmd_new 
         BackColor       =   &H00DBD9D4&
         Caption         =   "New"
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
         Left            =   75
         TabIndex        =   228
         Top             =   2775
         Width           =   1215
      End
      Begin VB.CommandButton Cmd_save 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Save"
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
         Left            =   1950
         TabIndex        =   227
         Top             =   3225
         Width           =   1215
      End
      Begin VB.CommandButton Cmd_FileDelete 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Delete"
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
         Left            =   1950
         TabIndex        =   226
         Top             =   2775
         Width           =   1215
      End
      Begin VB.CommandButton cmd_Send 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Send"
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
         Left            =   1950
         TabIndex        =   225
         Top             =   4050
         Width           =   1215
      End
      Begin VB.CommandButton cmd_Stop 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Stop"
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
         Left            =   75
         TabIndex        =   224
         Top             =   4050
         Width           =   1215
      End
      Begin VB.CheckBox chk_AutoSkip 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Skip incomplete steps"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00D2A03C&
         Height          =   240
         Left            =   75
         TabIndex        =   223
         Top             =   4875
         Width           =   3090
      End
      Begin VB.CheckBox chk_AutoRepeat 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Auto Repeat Cycle"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00D2A03C&
         Height          =   240
         Left            =   75
         TabIndex        =   222
         Top             =   5175
         Width           =   3090
      End
      Begin VB.CommandButton Cmd_exit 
         BackColor       =   &H00DBD9D4&
         Caption         =   "&End"
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
         Left            =   1950
         TabIndex        =   221
         Top             =   6900
         Width           =   1215
      End
      Begin VB.TextBox txtCus 
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
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   1
         Left            =   75
         TabIndex        =   220
         Top             =   750
         Width           =   1140
      End
      Begin VB.ComboBox cmbExpress 
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
         Left            =   75
         Style           =   2  'Dropdown List
         TabIndex        =   219
         Top             =   5550
         Width           =   690
      End
      Begin VB.ComboBox cmbManualLine 
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
         Left            =   75
         Style           =   2  'Dropdown List
         TabIndex        =   218
         Top             =   5850
         Width           =   690
      End
      Begin VB.ComboBox cmbManualBags 
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
         Left            =   75
         Style           =   2  'Dropdown List
         TabIndex        =   217
         Top             =   6150
         Width           =   690
      End
      Begin VB.CommandButton Cmd_CusFIFO 
         BackColor       =   &H00DBD9D4&
         Height          =   300
         Left            =   75
         Picture         =   "Unloading.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   216
         Top             =   1200
         Width           =   315
      End
      Begin VB.ComboBox cmbUnloadMode 
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
         Left            =   450
         Style           =   2  'Dropdown List
         TabIndex        =   215
         Top             =   1200
         Width           =   2715
      End
      Begin VB.ComboBox cmbProgramNames 
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
         Left            =   75
         Sorted          =   -1  'True
         TabIndex        =   214
         Text            =   "cmbProgramNames"
         Top             =   2025
         Width           =   3090
      End
      Begin VB.TextBox lblCusName 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   1
         Left            =   75
         TabIndex        =   238
         Top             =   375
         Width           =   3090
      End
      Begin VB.Label lblPrograms 
         BackStyle       =   0  'Transparent
         Caption         =   "Stored Programs"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00D2A03C&
         Height          =   240
         Left            =   75
         TabIndex        =   237
         Top             =   2475
         Width           =   3090
      End
      Begin VB.Label lblOptions 
         BackStyle       =   0  'Transparent
         Caption         =   "Options"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00D2A03C&
         Height          =   240
         Left            =   75
         TabIndex        =   236
         Top             =   4575
         Width           =   3090
      End
      Begin VB.Line lineEdit 
         BorderColor     =   &H00D2A03C&
         X1              =   75
         X2              =   3150
         Y1              =   3675
         Y2              =   3675
      End
      Begin VB.Label lblCurrentProg 
         BackStyle       =   0  'Transparent
         Caption         =   "Current Program"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00D2A03C&
         Height          =   240
         Left            =   75
         TabIndex        =   235
         Top             =   1725
         Width           =   3090
      End
      Begin VB.Label lblEditProg 
         BackStyle       =   0  'Transparent
         Caption         =   "Edit Program"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00D2A03C&
         Height          =   240
         Left            =   75
         TabIndex        =   234
         Top             =   3750
         Width           =   3090
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00D2A03C&
         Index           =   3
         X1              =   75
         X2              =   3150
         Y1              =   2400
         Y2              =   2400
      End
      Begin VB.Line lineOptions 
         BorderColor     =   &H00D2A03C&
         X1              =   75
         X2              =   3150
         Y1              =   4500
         Y2              =   4500
      End
      Begin VB.Label lblCustChoice 
         BackStyle       =   0  'Transparent
         Caption         =   "Customer Choices"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00D2A03C&
         Height          =   240
         Left            =   150
         TabIndex        =   233
         Top             =   75
         Width           =   3090
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00D2A03C&
         Index           =   0
         X1              =   75
         X2              =   3150
         Y1              =   1650
         Y2              =   1650
      End
      Begin VB.Label lblExpress 
         BackStyle       =   0  'Transparent
         Caption         =   "Experss Line"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00D2A03C&
         Height          =   240
         Left            =   900
         TabIndex        =   232
         Top             =   5625
         Width           =   2265
      End
      Begin VB.Label lblManLine 
         BackStyle       =   0  'Transparent
         Caption         =   "Man Line"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00D2A03C&
         Height          =   240
         Left            =   900
         TabIndex        =   231
         Top             =   5925
         Width           =   2265
      End
      Begin VB.Label lblManBags 
         BackStyle       =   0  'Transparent
         Caption         =   "Man Bags"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00D2A03C&
         Height          =   240
         Left            =   900
         TabIndex        =   230
         Top             =   6225
         Width           =   2265
      End
   End
   Begin VB.ComboBox cmbGrp 
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
      ItemData        =   "Unloading.frx":0102
      Left            =   2850
      List            =   "Unloading.frx":0104
      Sorted          =   -1  'True
      Style           =   2  'Dropdown List
      TabIndex        =   49
      Top             =   450
      Visible         =   0   'False
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   20
      Left            =   8250
      TabIndex        =   212
      Top             =   6150
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   19
      Left            =   8250
      TabIndex        =   211
      Top             =   5850
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   18
      Left            =   8250
      TabIndex        =   210
      Top             =   5550
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   17
      Left            =   8250
      TabIndex        =   209
      Top             =   5250
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   16
      Left            =   8250
      TabIndex        =   208
      Top             =   4950
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   15
      Left            =   8250
      TabIndex        =   207
      Top             =   4650
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   14
      Left            =   8250
      TabIndex        =   206
      Top             =   4350
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   13
      Left            =   8250
      TabIndex        =   205
      Top             =   4050
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   12
      Left            =   8250
      TabIndex        =   204
      Top             =   3750
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   11
      Left            =   8250
      TabIndex        =   203
      Top             =   3450
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   10
      Left            =   8250
      TabIndex        =   202
      Top             =   3150
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   9
      Left            =   8250
      TabIndex        =   201
      Top             =   2850
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   8
      Left            =   8250
      TabIndex        =   200
      Top             =   2550
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   7
      Left            =   8250
      TabIndex        =   199
      Top             =   2250
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   6
      Left            =   8250
      TabIndex        =   198
      Top             =   1950
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   5
      Left            =   8250
      TabIndex        =   197
      Top             =   1650
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   4
      Left            =   8250
      TabIndex        =   196
      Top             =   1350
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   3
      Left            =   8250
      TabIndex        =   195
      Top             =   1050
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   2
      Left            =   8250
      TabIndex        =   194
      Top             =   750
      Width           =   2190
   End
   Begin VB.TextBox lblGrp3Name 
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
      Index           =   1
      Left            =   8250
      TabIndex        =   193
      Top             =   450
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   20
      Left            =   5550
      TabIndex        =   192
      Top             =   6150
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   19
      Left            =   5550
      TabIndex        =   191
      Top             =   5850
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   18
      Left            =   5550
      TabIndex        =   190
      Top             =   5550
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   17
      Left            =   5550
      TabIndex        =   189
      Top             =   5250
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   16
      Left            =   5550
      TabIndex        =   188
      Top             =   4950
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   15
      Left            =   5550
      TabIndex        =   187
      Top             =   4650
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   14
      Left            =   5550
      TabIndex        =   186
      Top             =   4350
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   13
      Left            =   5550
      TabIndex        =   185
      Top             =   4050
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   12
      Left            =   5550
      TabIndex        =   184
      Top             =   3750
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   11
      Left            =   5550
      TabIndex        =   183
      Top             =   3450
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   10
      Left            =   5550
      TabIndex        =   182
      Top             =   3150
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   9
      Left            =   5550
      TabIndex        =   181
      Top             =   2850
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   8
      Left            =   5550
      TabIndex        =   180
      Top             =   2550
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   7
      Left            =   5550
      TabIndex        =   179
      Top             =   2250
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   6
      Left            =   5550
      TabIndex        =   178
      Top             =   1950
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   5
      Left            =   5550
      TabIndex        =   177
      Top             =   1650
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   4
      Left            =   5550
      TabIndex        =   176
      Top             =   1350
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   3
      Left            =   5550
      TabIndex        =   175
      Top             =   1050
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   2
      Left            =   5550
      TabIndex        =   174
      Top             =   750
      Width           =   2190
   End
   Begin VB.TextBox lblGrp2Name 
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
      Index           =   1
      Left            =   5550
      TabIndex        =   173
      Top             =   450
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   20
      Left            =   2850
      TabIndex        =   172
      Top             =   6150
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   19
      Left            =   2850
      TabIndex        =   171
      Top             =   5850
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   18
      Left            =   2850
      TabIndex        =   170
      Top             =   5550
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   17
      Left            =   2850
      TabIndex        =   169
      Top             =   5250
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   16
      Left            =   2850
      TabIndex        =   168
      Top             =   4950
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   15
      Left            =   2850
      TabIndex        =   167
      Top             =   4650
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   14
      Left            =   2850
      TabIndex        =   166
      Top             =   4350
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   13
      Left            =   2850
      TabIndex        =   165
      Top             =   4050
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   12
      Left            =   2850
      TabIndex        =   164
      Top             =   3750
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   11
      Left            =   2850
      TabIndex        =   163
      Top             =   3450
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   10
      Left            =   2850
      TabIndex        =   162
      Top             =   3150
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   9
      Left            =   2850
      TabIndex        =   161
      Top             =   2850
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   8
      Left            =   2850
      TabIndex        =   160
      Top             =   2550
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   7
      Left            =   2850
      TabIndex        =   159
      Top             =   2250
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   6
      Left            =   2850
      TabIndex        =   158
      Top             =   1950
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   5
      Left            =   2850
      TabIndex        =   157
      Top             =   1650
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   4
      Left            =   2850
      TabIndex        =   156
      Top             =   1350
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   3
      Left            =   2850
      TabIndex        =   155
      Top             =   1050
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   2
      Left            =   2850
      TabIndex        =   154
      Top             =   750
      Width           =   2190
   End
   Begin VB.TextBox lblGrp1Name 
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
      Index           =   1
      Left            =   2850
      TabIndex        =   153
      Top             =   450
      Width           =   2190
   End
   Begin VB.TextBox txtHidden 
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
      Left            =   -4000
      TabIndex        =   152
      Text            =   "txtHidden"
      Top             =   7125
      Width           =   2340
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   20
      Left            =   2400
      TabIndex        =   107
      Top             =   6150
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   19
      Left            =   2400
      TabIndex        =   104
      Top             =   5850
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   18
      Left            =   2400
      TabIndex        =   101
      Top             =   5550
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   17
      Left            =   2400
      TabIndex        =   98
      Top             =   5250
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   16
      Left            =   2400
      TabIndex        =   95
      Top             =   4950
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   15
      Left            =   2400
      TabIndex        =   92
      Top             =   4650
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   14
      Left            =   2400
      TabIndex        =   89
      Top             =   4350
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   13
      Left            =   2400
      TabIndex        =   86
      Top             =   4050
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   12
      Left            =   2400
      TabIndex        =   83
      Top             =   3750
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   11
      Left            =   2400
      TabIndex        =   80
      Top             =   3450
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   10
      Left            =   2400
      TabIndex        =   77
      Top             =   3150
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   9
      Left            =   2400
      TabIndex        =   74
      Top             =   2850
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   8
      Left            =   2400
      TabIndex        =   71
      Top             =   2550
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   7
      Left            =   2400
      TabIndex        =   68
      Top             =   2250
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   6
      Left            =   2400
      TabIndex        =   65
      Top             =   1950
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   5
      Left            =   2400
      TabIndex        =   62
      Top             =   1650
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   4
      Left            =   2400
      TabIndex        =   59
      Top             =   1350
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   3
      Left            =   2400
      TabIndex        =   56
      Top             =   1050
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   2
      Left            =   2400
      TabIndex        =   53
      Top             =   750
      Width           =   465
   End
   Begin VB.TextBox txtGrp1 
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
      Index           =   1
      Left            =   2400
      TabIndex        =   50
      Top             =   450
      Width           =   465
   End
   Begin VB.Frame fra_Hidden 
      Caption         =   "Hidden"
      Height          =   540
      Left            =   4200
      TabIndex        =   0
      Top             =   6825
      Visible         =   0   'False
      Width           =   3465
      Begin VB.OptionButton optStep 
         BackColor       =   &H8000000B&
         ForeColor       =   &H8000000D&
         Height          =   240
         Index           =   0
         Left            =   150
         TabIndex        =   1
         Top             =   225
         Visible         =   0   'False
         Width           =   240
      End
   End
   Begin VB.Timer tmr_update 
      Interval        =   100
      Left            =   75
      Top             =   6600
   End
   Begin VB.TextBox txtComplete 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   315
      Left            =   600
      TabIndex        =   150
      Top             =   6600
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   20
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   149
      Top             =   6150
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   19
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   148
      Top             =   5850
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   18
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   147
      Top             =   5550
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   17
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   146
      Top             =   5250
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   16
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   145
      Top             =   4950
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   15
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   144
      Top             =   4650
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   14
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   143
      Top             =   4350
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   13
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   142
      Top             =   4050
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   12
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   141
      Top             =   3750
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   11
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   140
      Top             =   3450
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   10
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   139
      Top             =   3150
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   9
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   138
      Top             =   2850
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   8
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   137
      Top             =   2550
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   7
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   136
      Top             =   2250
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   6
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   135
      Top             =   1950
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   5
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   134
      Top             =   1650
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   4
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   133
      Top             =   1350
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   3
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   132
      Top             =   1050
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   2
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   131
      Top             =   750
      Width           =   390
   End
   Begin VB.TextBox txtBatch 
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
      Index           =   1
      Left            =   1800
      MaxLength       =   1
      TabIndex        =   130
      Top             =   450
      Width           =   390
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   20
      Left            =   225
      TabIndex        =   129
      Top             =   6225
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   19
      Left            =   225
      TabIndex        =   128
      Top             =   5925
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   18
      Left            =   225
      TabIndex        =   127
      Top             =   5625
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   17
      Left            =   225
      TabIndex        =   126
      Top             =   5325
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   16
      Left            =   225
      TabIndex        =   125
      Top             =   5025
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   15
      Left            =   225
      TabIndex        =   124
      Top             =   4725
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   14
      Left            =   225
      TabIndex        =   123
      Top             =   4425
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   13
      Left            =   225
      TabIndex        =   122
      Top             =   4125
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   12
      Left            =   225
      TabIndex        =   121
      Top             =   3825
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   11
      Left            =   225
      TabIndex        =   120
      Top             =   3525
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   10
      Left            =   225
      TabIndex        =   119
      Top             =   3225
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   9
      Left            =   225
      TabIndex        =   118
      Top             =   2925
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   8
      Left            =   225
      TabIndex        =   117
      Top             =   2625
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   7
      Left            =   225
      TabIndex        =   116
      Top             =   2325
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   6
      Left            =   225
      TabIndex        =   115
      Top             =   2025
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   5
      Left            =   225
      TabIndex        =   114
      Top             =   1725
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   4
      Left            =   225
      TabIndex        =   113
      Top             =   1425
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   3
      Left            =   225
      TabIndex        =   112
      Top             =   1125
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   2
      Left            =   225
      TabIndex        =   111
      Top             =   825
      Width           =   240
   End
   Begin VB.OptionButton optStep 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   1
      Left            =   225
      TabIndex        =   110
      Top             =   525
      Width           =   240
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   20
      Left            =   7800
      TabIndex        =   109
      Top             =   6150
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   20
      Left            =   5100
      TabIndex        =   108
      Top             =   6150
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   19
      Left            =   7800
      TabIndex        =   106
      Top             =   5850
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   19
      Left            =   5100
      TabIndex        =   105
      Top             =   5850
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   18
      Left            =   7800
      TabIndex        =   103
      Top             =   5550
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   18
      Left            =   5100
      TabIndex        =   102
      Top             =   5550
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   17
      Left            =   7800
      TabIndex        =   100
      Top             =   5250
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   17
      Left            =   5100
      TabIndex        =   99
      Top             =   5250
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   16
      Left            =   7800
      TabIndex        =   97
      Top             =   4950
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   16
      Left            =   5100
      TabIndex        =   96
      Top             =   4950
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   15
      Left            =   7800
      TabIndex        =   94
      Top             =   4650
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   15
      Left            =   5100
      TabIndex        =   93
      Top             =   4650
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   14
      Left            =   7800
      TabIndex        =   91
      Top             =   4350
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   14
      Left            =   5100
      TabIndex        =   90
      Top             =   4350
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   13
      Left            =   7800
      TabIndex        =   88
      Top             =   4050
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   13
      Left            =   5100
      TabIndex        =   87
      Top             =   4050
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   12
      Left            =   7800
      TabIndex        =   85
      Top             =   3750
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   12
      Left            =   5100
      TabIndex        =   84
      Top             =   3750
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   11
      Left            =   7800
      TabIndex        =   82
      Top             =   3450
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   11
      Left            =   5100
      TabIndex        =   81
      Top             =   3450
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   10
      Left            =   7800
      TabIndex        =   79
      Top             =   3150
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   10
      Left            =   5100
      TabIndex        =   78
      Top             =   3150
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   9
      Left            =   7800
      TabIndex        =   76
      Top             =   2850
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   9
      Left            =   5100
      TabIndex        =   75
      Top             =   2850
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   8
      Left            =   7800
      TabIndex        =   73
      Top             =   2550
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   8
      Left            =   5100
      TabIndex        =   72
      Top             =   2550
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   7
      Left            =   7800
      TabIndex        =   70
      Top             =   2250
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   7
      Left            =   5100
      TabIndex        =   69
      Top             =   2250
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   6
      Left            =   7800
      TabIndex        =   67
      Top             =   1950
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   6
      Left            =   5100
      TabIndex        =   66
      Top             =   1950
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   5
      Left            =   7800
      TabIndex        =   64
      Top             =   1650
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   5
      Left            =   5100
      TabIndex        =   63
      Top             =   1650
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   4
      Left            =   7800
      TabIndex        =   61
      Top             =   1350
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   4
      Left            =   5100
      TabIndex        =   60
      Top             =   1350
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   3
      Left            =   7800
      TabIndex        =   58
      Top             =   1050
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   3
      Left            =   5100
      TabIndex        =   57
      Top             =   1050
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   2
      Left            =   7800
      TabIndex        =   55
      Top             =   750
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   2
      Left            =   5100
      TabIndex        =   54
      Top             =   750
      Width           =   465
   End
   Begin VB.TextBox txtGrp3 
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
      Index           =   1
      Left            =   7800
      TabIndex        =   52
      Top             =   450
      Width           =   465
   End
   Begin VB.TextBox txtGrp2 
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
      Index           =   1
      Left            =   5100
      TabIndex        =   51
      Top             =   450
      Width           =   465
   End
   Begin VB.TextBox txtBags 
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
      Index           =   20
      Left            =   600
      TabIndex        =   48
      Top             =   6150
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   20
      Left            =   1200
      TabIndex        =   47
      Top             =   6150
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   19
      Left            =   600
      TabIndex        =   46
      Top             =   5850
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   19
      Left            =   1200
      TabIndex        =   45
      Top             =   5850
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   18
      Left            =   600
      TabIndex        =   44
      Top             =   5550
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   18
      Left            =   1200
      TabIndex        =   43
      Top             =   5550
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   17
      Left            =   600
      TabIndex        =   42
      Top             =   5250
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   17
      Left            =   1200
      TabIndex        =   41
      Top             =   5250
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   16
      Left            =   600
      TabIndex        =   40
      Top             =   4950
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   16
      Left            =   1200
      TabIndex        =   39
      Top             =   4950
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   15
      Left            =   600
      TabIndex        =   38
      Top             =   4650
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   15
      Left            =   1200
      TabIndex        =   37
      Top             =   4650
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   14
      Left            =   600
      TabIndex        =   36
      Top             =   4350
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   14
      Left            =   1200
      TabIndex        =   35
      Top             =   4350
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   13
      Left            =   600
      TabIndex        =   34
      Top             =   4050
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   13
      Left            =   1200
      TabIndex        =   33
      Top             =   4050
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   12
      Left            =   600
      TabIndex        =   32
      Top             =   3750
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   12
      Left            =   1200
      TabIndex        =   31
      Top             =   3750
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   11
      Left            =   600
      TabIndex        =   30
      Top             =   3450
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   11
      Left            =   1200
      TabIndex        =   29
      Top             =   3450
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   10
      Left            =   600
      TabIndex        =   28
      Top             =   3150
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   10
      Left            =   1200
      TabIndex        =   27
      Top             =   3150
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   9
      Left            =   600
      TabIndex        =   26
      Top             =   2850
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   9
      Left            =   1200
      TabIndex        =   25
      Top             =   2850
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   8
      Left            =   600
      TabIndex        =   24
      Top             =   2550
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   8
      Left            =   1200
      TabIndex        =   23
      Top             =   2550
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   7
      Left            =   600
      TabIndex        =   22
      Top             =   2250
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   7
      Left            =   1200
      TabIndex        =   21
      Top             =   2250
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   6
      Left            =   600
      TabIndex        =   20
      Top             =   1950
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   6
      Left            =   1200
      TabIndex        =   19
      Top             =   1950
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   5
      Left            =   600
      TabIndex        =   18
      Top             =   1650
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   5
      Left            =   1200
      TabIndex        =   17
      Top             =   1650
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   4
      Left            =   600
      TabIndex        =   16
      Top             =   1350
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   4
      Left            =   1200
      TabIndex        =   15
      Top             =   1350
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   3
      Left            =   600
      TabIndex        =   14
      Top             =   1050
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   3
      Left            =   1200
      TabIndex        =   13
      Top             =   1050
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   2
      Left            =   600
      TabIndex        =   12
      Top             =   750
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   2
      Left            =   1200
      TabIndex        =   11
      Top             =   750
      Width           =   390
   End
   Begin VB.TextBox txtBags 
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
      Index           =   1
      Left            =   600
      TabIndex        =   10
      Top             =   450
      Width           =   390
   End
   Begin VB.TextBox txtLine 
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
      Index           =   1
      Left            =   1200
      TabIndex        =   9
      Top             =   450
      Width           =   390
   End
   Begin VB.Label lblComplete 
      BackStyle       =   0  'Transparent
      Caption         =   "Qty Completed"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00D2A03C&
      Height          =   240
      Left            =   1050
      TabIndex        =   151
      Top             =   6675
      Width           =   2790
   End
   Begin VB.Label lblBatch 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Batch"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00D2A03C&
      Height          =   240
      Left            =   1650
      TabIndex        =   8
      Top             =   150
      Width           =   615
   End
   Begin VB.Label lblProgram 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "3rd Category Choice"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00D2A03C&
      Height          =   240
      Index           =   3
      Left            =   7875
      TabIndex        =   7
      Top             =   150
      Width           =   2565
   End
   Begin VB.Label lblProgram 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "2nd Category Choice"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00D2A03C&
      Height          =   240
      Index           =   2
      Left            =   5175
      TabIndex        =   6
      Top             =   150
      Width           =   2565
   End
   Begin VB.Label lblProgram 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1st Category Choice"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00D2A03C&
      Height          =   240
      Index           =   1
      Left            =   2475
      TabIndex        =   5
      Top             =   150
      Width           =   2565
   End
   Begin VB.Label lblLine 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Line"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00D2A03C&
      Height          =   240
      Left            =   1125
      TabIndex        =   4
      Top             =   150
      Width           =   540
   End
   Begin VB.Label lblBags 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Qty"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00D2A03C&
      Height          =   240
      Left            =   525
      TabIndex        =   3
      Top             =   150
      Width           =   615
   End
   Begin VB.Label lblStep 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Step"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00D2A03C&
      Height          =   240
      Left            =   0
      TabIndex        =   2
      Top             =   150
      Width           =   615
   End
End
Attribute VB_Name = "Unloading"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim SelectedStep        As Integer
Dim Discharger          As Integer
Dim HighLightColour     As Long
Dim Stopped             As Boolean
Dim cmbGrpChoice        As Integer
Dim cmbGrpPosition      As Integer
Dim cmbCusPosition      As Integer
Dim AllowBatchChange    As Boolean
Dim PLCStn              As Integer
Dim MinLine             As Integer
Dim MaxLine             As Integer
Dim CustomerMode        As Integer
Dim Grp                 As Integer
Dim Cus                 As Integer
Dim ID                  As Integer


Private Sub cmbGrp_Click()
    
    On Error Resume Next
    
    Select Case cmbGrpChoice
        Case 1
            lblGrp1Name(cmbGrpPosition).Text = cmbGrp.Text
            txtGrp1(cmbGrpPosition).Text = CmbGetNum(cmbGrp, EditGrp)
        Case 2
            lblGrp2Name(cmbGrpPosition).Text = cmbGrp.Text
            txtGrp2(cmbGrpPosition).Text = CmbGetNum(cmbGrp, EditGrp)
        Case 3
            lblGrp3Name(cmbGrpPosition).Text = cmbGrp.Text
            txtGrp3(cmbGrpPosition).Text = CmbGetNum(cmbGrp, EditGrp)
            
    End Select
    
    
    
    cmbGrp.Visible = False
    
End Sub

Private Sub cmbCus_Click()
    lblCusName(cmbCusPosition).Text = cmbCus.Text
    txtCus(cmbCusPosition).Text = CmbGetNum(cmbCus, EditCus)
    cmbCus.Visible = False
End Sub


Private Sub cmbProgramNames_Click()
    Screen.MousePointer = vbHourglass
    Call ReadProgram
    Screen.MousePointer = vbNormal
End Sub

Private Sub cmbProgramNames_KeyPress(KeyAscii As Integer)
    cmbKeyPress cmbProgramNames, KeyAscii, EditProgramName
End Sub

Private Sub cmbUnloadMode_Click()
    CustomerMode = cmbUnloadMode.ItemData(cmbUnloadMode.ListIndex)
    Cmd_CusFIFO.Enabled = (CustomerMode <> 0)
End Sub

Private Sub Cmd_CusFIFO_Click()
    
    'CustomerFIFO_PLC = PLCStn
    'CustomerFIFO.Show vbModal
       
    CustFIFO_frm.Config PLCStn, Stopped
    DisplayForm CustFIFO_frm
       
End Sub

Private Sub cmd_Exit_Click()
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG - Unoading_frm", "Cmd_Exit_Click", False
    Unload Me
End Sub
Private Sub HighlightRow()
    
    On Error Resume Next
    
    Dim Item As TextBox
    Dim Index As Integer
    
    If Not Stopped Then
        HighLightColour = &H80FF80    'Green
    Else
        HighLightColour = &H8080FF    'Red
    End If
        
    For Each Item In txtBags()
        
        Index = Item.Index
        
        If SelectedStep = Index Then
            txtBags(Index).BackColor = HighLightColour
            txtLine(Index).BackColor = HighLightColour
            txtBatch(Index).BackColor = HighLightColour
            txtGrp1(Index).BackColor = HighLightColour
            lblGrp1Name(Index).BackColor = HighLightColour
            txtGrp2(Index).BackColor = HighLightColour
            lblGrp2Name(Index).BackColor = HighLightColour
            txtGrp3(Index).BackColor = HighLightColour
            lblGrp3Name(Index).BackColor = HighLightColour
        Else
            txtBags(Index).BackColor = vbHighlightText
            txtLine(Index).BackColor = vbHighlightText
            txtBatch(Index).BackColor = vbHighlightText
            txtGrp1(Index).BackColor = vbHighlightText
            lblGrp1Name(Index).BackColor = vbHighlightText
            txtGrp2(Index).BackColor = vbHighlightText
            lblGrp2Name(Index).BackColor = vbHighlightText
            txtGrp3(Index).BackColor = vbHighlightText
            lblGrp3Name(Index).BackColor = vbHighlightText
        End If
               
      
    Next Item
       
End Sub


Private Sub Cmd_FileDelete_Click()
    Screen.MousePointer = vbHourglass
    Call db_uspUnloadingProgramDelete(cmbProgramNames.Text)
    Call db_uspUnloadingProgramReadNames(cmbProgramNames)
    NewProgram
    Screen.MousePointer = vbNormal
End Sub

Private Sub Cmd_New_Click()
    Screen.MousePointer = vbHourglass
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG - Loading_frm", "Cmd_New_Click", False
    NewProgram
    cmbProgramNames.Text = ""
    Screen.MousePointer = vbNormal
End Sub



Private Sub Cmd_Save_Click()
             
    Screen.MousePointer = vbHourglass
    
             
    On Error GoTo Cmd_Save_Error
    
    
    Dim GrpID           As Integer
    Dim n               As Integer
    
   UnloadGrp.Name = ""
   For n = 1 To MaxSteps
    UnloadGrp.Bags(n) = 1
    UnloadGrp.Lin(n) = 0
    UnloadGrp.Grp1(n) = 0
    UnloadGrp.Grp2(n) = 0
    UnloadGrp.Grp3(n) = 0
    UnloadGrp.Batch(n) = 0
   Next n
    If Not IsNull(cmbProgramNames.Text) Then UnloadGrp.Name = cmbProgramNames.Text
    
    If UnloadGrp.Name <> "" Then
        
        For n = 1 To MaxSteps
            If Not IsNull(txtBags(n).Text) Then UnloadGrp.Bags(n) = Val(txtBags(n).Text)
            If Not IsNull(txtLine(n).Text) Then UnloadGrp.Lin(n) = Val(txtLine(n).Text)
            If Not IsNull(txtBatch(n).Text) Then UnloadGrp.Batch(n) = Val(txtBatch(n).Text)
            Call dbGetIDFromLongID(EditGrp, txtGrp1(n).Text, GrpID)
            If Not IsNull(GrpNum(GrpID)) Then UnloadGrp.Grp1(n) = GrpNum(GrpID)
            Call dbGetIDFromLongID(EditGrp, txtGrp2(n).Text, GrpID)
            If Not IsNull(GrpNum(GrpID)) Then UnloadGrp.Grp2(n) = GrpNum(GrpID)
            Call dbGetIDFromLongID(EditGrp, txtGrp3(n).Text, GrpID)
            If Not IsNull(GrpNum(GrpID)) Then UnloadGrp.Grp3(n) = GrpNum(GrpID)
           
        Next n
        
        'Call SQL Server stored proceedure
         Call db_uspUnloadingProgramWriteBulk
    
    End If
    
    'Re-populate the program name combo
    Call db_uspUnloadingProgramReadNames(cmbProgramNames)
    cmbProgramNames.Text = UnloadGrp.Name
    
    Screen.MousePointer = vbNormal
    
Exit Sub

Cmd_Save_Error:
     ErrorHandler Err, "Unloading Cmd_Save_Click", Err.Description, False
     MsgBox "Save fail", vbOKOnly, "Error"
     Screen.MousePointer = vbNormal
End Sub

    


Private Sub Cmd_send_Click()
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG - Loading_frm", "Cmd_Send_Click", False
    SendData
End Sub

Private Sub cmd_Stop_Click()
    
    Screen.MousePointer = vbHourglass
    
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG - Unoading_frm", "Cmd_Stop_Click", False
        
    On Error Resume Next
       
    If Not Stopped Then
        Stopped = True
        If Demo Then Unload_StartStop(Discharger, PLCStn) = 0
        'cmd_Stop.Caption = TextWord(123) 'Start
        
        Data(0) = 0
        Comms_frm.WritePLC PLCStn, "D", 19 + Unload_Register(Discharger, PLCStn), 1, Data(), DebugToErrorFile, "Unloading"
    Else
        Stopped = False
        If Demo Then Unload_StartStop(Discharger, PLCStn) = 1
        'cmd_Stop.Caption = TextWord(122) 'Stop
        Data(0) = 1
        Comms_frm.WritePLC PLCStn, "D", 19 + Unload_Register(Discharger, PLCStn), 1, Data(), DebugToErrorFile, "Unloading"
    End If
    
    'Clear Alarms Now operator can see the form and is working on it!
    Data(0) = 0
    Data(1) = 0
    Comms_frm.WritePLC PLCStn, "D", 14 + Unload_Register(Discharger, PLCStn), 2, Data(), DebugToErrorFile, "Unloading"
        
    Screen.MousePointer = vbNormal
    
End Sub

Private Sub Form_Activate()
    CheckFormPosition Me
End Sub

Private Sub Form_Load()
                
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG - Unloading_frm", "Form_Load Start", False
                
    Discharger = UnloadingIndex
    PLCStn = UnloadingPLC
    MinLine = Unload_StartLine(Discharger, PLCStn)
    MaxLine = Unload_EndLine(Discharger, PLCStn)
    
    SetLanguage
        
    If Discharger <> 0 Then
        Me.Caption = db_uspSettingGet("SettingsNetwork", "DischargerName PLC" & Str(PLCStn), Format$(Discharger), "Discharger" & Str(Discharger), PCNum)
    Else
        Me.Caption = TextWord(529)
    End If
    
    SetDisplay 'Position is set here
       
    
    If Discharger <> 0 Then
        If Not Demo Then DisplayProgram
        HighlightRow
    Else
        NewProgram
    End If
    Screen.MousePointer = vbArrow

    If DebugToErrorFile Then ErrorHandler 0, "DEBUG - Unloading_frm", "Form_Load Complete" & " PLCStn=" & Str(PLCStn), False

End Sub

Private Sub lblCusName_GotFocus(Index As Integer)
    'txtHidden.SetFocus
End Sub

Private Sub lblGrp1Name_Click(Index As Integer)
    If Stopped Then
       With cmbGrp
            .Top = lblGrp1Name(Index).Top
            .Left = lblGrp1Name(Index).Left
            .Visible = True
            .SetFocus
        End With
        cmbGrpChoice = 1
        cmbGrpPosition = Index
    End If
End Sub

Private Sub lblGrp1Name_GotFocus(Index As Integer)
    'txtHidden.SetFocus
End Sub

Private Sub lblGrp2Name_Click(Index As Integer)
    If Stopped Then
        With cmbGrp
            .Top = lblGrp2Name(Index).Top
            .Left = lblGrp2Name(Index).Left
            .Visible = True
            .SetFocus
        End With
        cmbGrpChoice = 2
        cmbGrpPosition = Index
    End If
End Sub

Private Sub lblGrp2Name_GotFocus(Index As Integer)
    'txtHidden.SetFocus
End Sub

Private Sub lblGrp3Name_Click(Index As Integer)
    If Stopped Then
        With cmbGrp
            .Top = lblGrp3Name(Index).Top
            .Left = lblGrp3Name(Index).Left
            .Visible = True
            .SetFocus
        End With
        cmbGrpChoice = 3
        cmbGrpPosition = Index
    End If
End Sub

Private Sub lblCusName_Click(Index As Integer)
    If Stopped Then
        With cmbCus
            .Top = lblCusName(Index).Top
            .Left = lblCusName(Index).Left
            .Visible = (CustomerMode = 0)
            If .Visible Then .SetFocus
        End With
        cmbCusPosition = Index
    End If
End Sub

Private Sub lblGrp3Name_GotFocus(Index As Integer)
    'txtHidden.SetFocus
End Sub

Private Sub optStep_Click(Index As Integer)
    SelectedStep = Index
    txtComplete.Text = "0"
    If Demo Then Unload_CurrentStep(Discharger, PLCStn) = Index
End Sub

Private Sub SetDisplay()
    
    On Error GoTo SetDisplayError
    
    Call db_uspUnloadingProgramReadNames(cmbProgramNames)
    cmbProgramNames.Text = db_uspSettingGet("SettingsNetwork", "Unloading PLC" & Str(PLCStn), "DischargerGroupName" & Str(Discharger), "", PCNum)
    
    
    Dim ShowProgram1 As Boolean
    Dim ShowProgram2 As Boolean
    Dim ShowProgram3 As Boolean
    Dim ShowLines As Boolean
    Dim ShowBatch As Boolean
    Dim ShowCustomers As Boolean
    
    ShowProgram1 = db_uspSettingGet("SettingsNetwork", "Unloading PLC" & Str(PLCStn), "ShowProgram1" & Str(Discharger), 0, PCNum)
    ShowProgram2 = db_uspSettingGet("SettingsNetwork", "Unloading PLC" & Str(PLCStn), "ShowProgram2" & Str(Discharger), 0, PCNum)
    ShowProgram3 = db_uspSettingGet("SettingsNetwork", "Unloading PLC" & Str(PLCStn), "ShowProgram3" & Str(Discharger), 0, PCNum)
    ShowLines = db_uspSettingGet("SettingsNetwork", "Unloading PLC" & Str(PLCStn), "ShowLine" & Str(Discharger), 0, PCNum)
    ShowBatch = db_uspSettingGet("SettingsNetwork", "Unloading PLC" & Str(PLCStn), "ShowBatch" & Str(Discharger), 0, PCNum)
    AllowBatchChange = db_uspSettingGet("SettingsNetwork", "Unloading PLC" & Str(PLCStn), "AllowBatchChange" & Str(Discharger), 0, PCNum)
    ShowCustomers = db_uspSettingGet("SettingsNetwork", "Unloading PLC" & Str(PLCStn), "ShowCustomers" & Str(Discharger), 0, PCNum)
        
    lblBatch.Visible = ShowBatch
    lblLine.Visible = ShowLines
    
    lblProgram(1).Visible = ShowProgram1
    lblProgram(2).Visible = ShowProgram2
    lblProgram(3).Visible = ShowProgram3
    
    lblCustChoice.Visible = ShowCustomers
    txtCus(1).Visible = ShowCustomers
    lblCusName(1).Visible = ShowCustomers
    cmbUnloadMode.Visible = ShowCustomers
    Cmd_CusFIFO.Visible = ShowCustomers
    
    If lblLine.Visible = False Then
        lblBatch.Left = lblBatch.Left - 525
        lblProgram(1).Left = lblProgram(1).Left - 525
        lblProgram(2).Left = lblProgram(2).Left - 525
        lblProgram(3).Left = lblProgram(3).Left - 525
    End If
    
    If lblBatch.Visible = False Then
        lblProgram(1).Left = lblProgram(1).Left - 525
        lblProgram(2).Left = lblProgram(2).Left - 525
        lblProgram(3).Left = lblProgram(3).Left - 525
    End If
    
    Dim Box As TextBox
    For Each Box In txtBatch()
        txtBatch(Box.Index).Visible = ShowBatch
        txtLine(Box.Index).Visible = ShowLines
        txtGrp1(Box.Index).Visible = ShowProgram1
        lblGrp1Name(Box.Index).Visible = ShowProgram1
        txtGrp2(Box.Index).Visible = ShowProgram2
        lblGrp2Name(Box.Index).Visible = ShowProgram2
        txtGrp3(Box.Index).Visible = ShowProgram3
        lblGrp3Name(Box.Index).Visible = ShowProgram3
   Next Box
   
   For Each Box In txtBatch()
        
        If ShowLines = False Then
            txtBatch(Box.Index).Left = txtBatch(Box.Index).Left - 525
            txtGrp1(Box.Index).Left = txtGrp1(Box.Index).Left - 525
            lblGrp1Name(Box.Index).Left = lblGrp1Name(Box.Index).Left - 525
            txtGrp2(Box.Index).Left = txtGrp2(Box.Index).Left - 525
            lblGrp2Name(Box.Index).Left = lblGrp2Name(Box.Index).Left - 525
            txtGrp3(Box.Index).Left = txtGrp3(Box.Index).Left - 525
            lblGrp3Name(Box.Index).Left = lblGrp3Name(Box.Index).Left - 525
        End If
                
        If ShowBatch = False Then
            txtGrp1(Box.Index).Left = txtGrp1(Box.Index).Left - 525
            lblGrp1Name(Box.Index).Left = lblGrp1Name(Box.Index).Left - 525
            txtGrp2(Box.Index).Left = txtGrp2(Box.Index).Left - 525
            lblGrp2Name(Box.Index).Left = lblGrp2Name(Box.Index).Left - 525
            txtGrp3(Box.Index).Left = txtGrp3(Box.Index).Left - 525
            lblGrp3Name(Box.Index).Left = lblGrp3Name(Box.Index).Left - 525
        End If
        
    Next Box
       
    If ShowLines = False Then Me.Width = Me.Width - 525
    If ShowBatch = False Then Me.Width = Me.Width - 525
    If ShowProgram1 = False Then Me.Width = Me.Width - 2700
    If ShowProgram2 = False Then Me.Width = Me.Width - 2700
    If ShowProgram3 = False Then Me.Width = Me.Width - 2700
    fraHolding.Left = Me.Width - (fraHolding.Width - 180)
    Me.Width = fraHolding.Left + fraHolding.Width + 180
       
    CenterForm Me
    Me.Top = 100
      
    CustomerMode = Unload_CustomerMode(Discharger, PLCStn)
    
    If Discharger <> 0 Then
        optStep(Unload_CurrentStep(Discharger, PLCStn)).Value = True
        txtComplete.Text = Unload_QtyCompleted(Discharger, PLCStn)
        If Unload_SkipIncomplete(Discharger, PLCStn) = 0 Then chk_AutoSkip.Value = 0 Else chk_AutoSkip.Value = 1
        If Unload_StopAtEndCycle(Discharger, PLCStn) = 0 Then chk_AutoRepeat.Value = 0 Else chk_AutoRepeat.Value = 1
        'Cmd_FileDelete.Visible = False
        'Cmd_save.Visible = False
        Cmd_CusFIFO.Enabled = (CustomerMode <> 0)
    Else
        Stopped = True
        tmr_Update.Enabled = False
        txtComplete.Visible = False
        Cmd_CusFIFO.Visible = False
        cmbUnloadMode.Visible = False
        cmd_Send.Visible = False
        cmd_Stop.Visible = False
        chk_AutoSkip.Visible = False
        chk_AutoRepeat.Visible = False
        lblOptions.Visible = False
        lblComplete.Visible = False
        Dim opt As OptionButton
        For Each opt In optStep()
            optStep(opt.Index).Visible = False
        Next opt
        lblStep.Visible = False
        lblCustChoice.Visible = False
        lblEditProg.Visible = False
        'lineEdit.Visible = False
        lineOptions.Visible = False
        txtCus(1).Visible = False
        lblCusName(1).Visible = False
        cmbUnloadMode.Visible = False
        Cmd_CusFIFO.Visible = False
        
        lblExpress.Visible = False
        cmbExpress.Visible = False
        lblManLine.Visible = False
        cmbManualLine.Visible = False
        lblManBags.Visible = False
        cmbManualBags.Visible = False
        
    End If
        
    'Add Names to Program Selection Combo
    PopulateGroupCombo cmbGrp, TextWord(683)
        
    'Add Names to Customer Selection Combo
    PopulateCustomerCombo cmbCus, TextWord(558)
        
    'Setup Customer Mode Selection Combo
    cmbUnloadMode.AddItem TextWord(565)
    cmbUnloadMode.ItemData(cmbUnloadMode.NewIndex) = 0
    cmbUnloadMode.AddItem TextWord(566)
    cmbUnloadMode.ItemData(cmbUnloadMode.NewIndex) = 1
    cmbUnloadMode.AddItem TextWord(567)
    cmbUnloadMode.ItemData(cmbUnloadMode.NewIndex) = 2
    cmbUnloadMode.ListIndex = CustomerMode
       
    
    If Unload_StartStop(Discharger, PLCStn) = 0 Then Stopped = True Else Stopped = False
    If Stopped Then cmd_Stop.Caption = TextWord(123) Else cmd_Stop.Caption = TextWord(122)
    
    'Express combo
    cmbExpress.AddItem "0"
    For n = MinLine To MaxLine
        cmbExpress.AddItem Format$(n)
    Next n
    cmbExpress.ListIndex = 0
    
    'Manual Line Combo
    cmbManualLine.AddItem "0"
    For n = MinLine To MaxLine
        cmbManualLine.AddItem Format$(n)
    Next n
    cmbManualLine.ListIndex = 0
    
    cmbManualBags.AddItem "0"
    For n = 1 To 9
        cmbManualBags.AddItem Format$(n)
    Next n
    cmbManualBags.ListIndex = 0

Exit Sub
SetDisplayError:
    ErrorHandler Err, "Unloading SetDisplay", "", True
    Resume Next
End Sub
Private Sub tmr_update_Timer()
    
    On Error Resume Next
    
    If Unload_StartStop(Discharger, PLCStn) = 0 Then Stopped = True Else Stopped = False
    
    If Not Stopped Then
        If Not Demo Then DisplayProgram
        SelectedStep = Unload_CurrentStep(Discharger, PLCStn)
        optStep(SelectedStep).Value = True
        txtComplete.Text = Unload_QtyCompleted(Discharger, PLCStn)
        If cmd_Stop.Caption <> TextWord(122) Then cmd_Stop.Caption = TextWord(122) 'Stop
        
    Else
        If cmd_Stop.Caption <> TextWord(123) Then cmd_Stop.Caption = TextWord(123) 'Start
    End If
    
    Dim opt As OptionButton
    For Each opt In optStep()
        optStep(opt.Index).Enabled = Stopped
    Next opt
      
    cmbUnloadMode.Enabled = Stopped
       
    Cmd_FileDelete.Enabled = Stopped
    Cmd_new.Enabled = Stopped
    Cmd_open.Enabled = Stopped
    Cmd_save.Enabled = Stopped
    cmd_Send.Enabled = Stopped
    chk_AutoSkip.Enabled = Stopped
    chk_AutoRepeat.Enabled = Stopped
    cmbExpress.Enabled = Stopped
    cmbManualLine.Enabled = Stopped
    cmbManualBags.Enabled = Stopped
    
    HighlightRow
    
End Sub

Private Sub txtBags_Change(Index As Integer)
    If txtBags(Index).Text = "0" Then
        txtLine_Click (Index)
        txtBatch_Click (Index)
        txtGrp1_Click (Index)
        txtGrp2_Click (Index)
        txtGrp3_Click (Index)
    End If
End Sub

Private Sub txtBags_Click(Index As Integer)
    If Stopped Then
        cmbGrp.Visible = False
        HighlightTextBox txtBags(Index)
    End If
End Sub

Private Sub txtBags_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txtGrp1(Index), KeyCode)
End Sub

Private Sub txtBags_KeyPress(Index As Integer, KeyAscii As Integer)
    If Stopped Then
        KeyAscii = CheckAsciiNumber(KeyAscii)
        KeyAscii = CheckValidNumber(txtBags(Index).Text, KeyAscii, 0, 99)
    Else
        KeyAscii = 0
    End If
End Sub

Private Sub txtBatch_Click(Index As Integer)
    
    If Stopped Then
        cmbGrp.Visible = False
        If Not AllowBatchChange Then
            'Do Nothing
        Else
            HighlightTextBox txtBatch(Index)
        End If
    End If
    
End Sub

Private Sub txtBatch_KeyPress(Index As Integer, KeyAscii As Integer)
    If Stopped And AllowBatchChange Then
        BoxKeyPress txtBatch(Index), KeyAscii, EditBid
    Else
        KeyAscii = 0
    End If
End Sub


Private Sub txtGrp1_Change(Index As Integer)
    If Stopped Then
        Call dbGetIDFromLongID(EditGrp, txtGrp1(Index).Text, ID)
        lblGrp1Name(Index).Text = GrpName(ID)
        txtBatch(Index).Text = GrpBatch(ID)
    End If
End Sub

Private Sub txtGrp1_Click(Index As Integer)
    If Stopped Then
        cmbGrp.Visible = False
        HighlightTextBox txtGrp1(Index)
    End If
End Sub

Private Sub txtGrp1_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txtGrp1(Index), KeyCode)
End Sub

Private Sub txtGrp1_KeyPress(Index As Integer, KeyAscii As Integer)
    If Stopped Then
        BoxKeyPress txtGrp1(Index), KeyAscii, EditGrp
    Else
        KeyAscii = 0
    End If
End Sub

Private Sub txtGrp2_Change(Index As Integer)
    If Stopped Then
        Call dbGetIDFromLongID(EditGrp, txtGrp2(Index).Text, ID)
        lblGrp2Name(Index).Text = GrpName(ID)
    End If
End Sub

Private Sub txtGrp2_Click(Index As Integer)
    If Stopped Then
        cmbGrp.Visible = False
        HighlightTextBox txtGrp2(Index)
    End If
End Sub

Private Sub txtGrp2_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txtGrp2(Index), KeyCode)
End Sub

Private Sub txtGrp2_KeyPress(Index As Integer, KeyAscii As Integer)
    If Stopped Then
        BoxKeyPress txtGrp2(Index), KeyAscii, EditGrp
    Else
        KeyAscii = 0
    End If
End Sub

Private Sub txtGrp3_Change(Index As Integer)
    If Stopped Then
        Call dbGetIDFromLongID(EditGrp, txtGrp3(Index).Text, ID)
        lblGrp3Name(Index).Text = GrpName(ID)
    End If
End Sub

Private Sub txtGrp3_Click(Index As Integer)
    If Stopped Then
        cmbGrp.Visible = False
        HighlightTextBox txtGrp3(Index)
    End If
End Sub

Private Sub txtGrp3_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txtGrp3(Index), KeyCode)
End Sub

Private Sub txtGrp3_KeyPress(Index As Integer, KeyAscii As Integer)
    If Stopped Then
        BoxKeyPress txtGrp3(Index), KeyAscii, EditGrp
    Else
        KeyAscii = 0
    End If
End Sub

Private Sub txtComplete_Click()
    If Stopped Then
        HighlightTextBox txtComplete
    End If
End Sub

Private Sub txtComplete_KeyPress(KeyAscii As Integer)
    If Stopped Then
        KeyAscii = CheckAsciiNumber(KeyAscii)
        KeyAscii = CheckValidNumber(txtComplete.Text, KeyAscii, 0, 99)
    Else
        KeyAscii = 0
    End If
End Sub

Private Sub txtCus_Change(Index As Integer)
    If Stopped Then
        lblCusName(Index).Text = dbGetNameFromNum(txtCus(Index), EditCus)
    End If
End Sub

Private Sub txtCus_Click(Index As Integer)
    If Stopped Then
        cmbCus.Visible = False
        HighlightTextBox txtCus(Index)
    End If
End Sub

Private Sub txtCus_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txtCus(Index), KeyCode)
End Sub

Private Sub txtCus_KeyPress(Index As Integer, KeyAscii As Integer)
    If Stopped Then
        BoxKeyPress txtCus(Index), KeyAscii, EditCus
    Else
        KeyAscii = 0
    End If
End Sub



Private Sub txtLine_Click(Index As Integer)
    If Stopped Then
        cmbGrp.Visible = False
        HighlightTextBox txtLine(Index)
    End If
End Sub

Private Sub txtLine_KeyPress(Index As Integer, KeyAscii As Integer)
    If Stopped Then
        KeyAscii = CheckAsciiNumber(KeyAscii)
        KeyAscii = CheckValidNumber(txtLine(Index).Text, KeyAscii, 0, CLng(MaxLine), True)
    Else
        KeyAscii = 0
    End If
End Sub
Private Sub SendData()
    
    'Save Program Name
    db_uspSettingSave "SettingsNetwork", "Unloading PLC" & Str(PLCStn), "DischargerGroupName" & Str(Discharger), cmbProgramNames.Text, PCNum
        
    'Write All Data to PLC
    '---------------------
    
    On Error Resume Next
    
    DisplayForm wait_frm
           
    'Manual Line and Bags
    Data(0) = Val(cmbManualLine.Text)
    Data(1) = Val(cmbManualBags.Text)
    Comms_frm.WritePLC PLCStn, "D", 7 + Unload_Register(Discharger, PLCStn), 2, Data(), False, "Unloading"
    
    'General Options
    Data(0) = chk_AutoSkip.Value
    Data(1) = chk_AutoRepeat.Value
    Data(2) = db_uspSettingGet("SettingsNetwork", "Unloading PLC" & Str(PLCStn), "BatchMixProgram" & Str(Discharger), 0, PCNum)
    Data(3) = db_uspSettingGet("SettingsNetwork", "Unloading PLC" & Str(PLCStn), "BatchMixCustomers" & Str(Discharger), 0, PCNum)
    Data(4) = 0 'Clear Alarm "No Bag"
    Data(5) = 0 'Clear Alarm "End of cycle"
    Comms_frm.WritePLC PLCStn, "D", 10 + Unload_Register(Discharger, PLCStn), 6, Data(), False, "Unloading"
       
       
    'Experss Line
    'Automatic Customer Mode 0=Manual 1=Auto all cust / step 2=Auto search all steps
    Data(0) = Val(cmbExpress.Text)
    Data(1) = CustomerMode
    Data(2) = 1 'Reset Program Values
    Comms_frm.WritePLC PLCStn, "D", 20 + Unload_Register(Discharger, PLCStn), 3, Data(), False, "Unloading"
     
    
    
    'Quantity
    For n = 1 To MaxSteps
        If txtBags(n).Visible Then
            Data(n - 1) = Val(txtBags(n).Text)
        Else
            Data(n - 1) = 0
        End If
    Next n
    Comms_frm.WritePLC PLCStn, "D", 41 + Unload_Register(Discharger, PLCStn), MaxSteps, Data(), False, "Unloading"
    
    'Batch Size
    For n = 1 To MaxSteps
        If txtBatch(n).Visible Then
            If Val(txtBatch(n).Text) = 0 Then txtBatch(n).Text = "1"
            Data(n - 1) = Val(txtBatch(n).Text)
        Else
            Data(n - 1) = 1
        End If
    Next n
    Comms_frm.WritePLC PLCStn, "D", 81 + Unload_Register(Discharger, PLCStn), MaxSteps, Data(), False, "Unloading"
        
    'Line
    For n = 1 To MaxSteps
        If txtLine(n).Visible Then
            Data(n - 1) = Val(txtLine(n).Text)
        Else
            Data(n - 1) = 0
        End If
    Next n
    Comms_frm.WritePLC PLCStn, "D", 61 + Unload_Register(Discharger, PLCStn), MaxSteps, Data(), False, "Unloading"
    
    'Program Choice 1
    For n = 1 To MaxSteps
        If txtGrp1(n).Visible Then
            Call dbGetIDFromLongID(EditGrp, txtGrp1(n).Text, ID)
            Data(n - 1) = GrpNum(ID)
        Else
            Data(n - 1) = 0
        End If
    Next n
    Comms_frm.WritePLC PLCStn, "D", 101 + Unload_Register(Discharger, PLCStn), MaxSteps, Data(), False, "Unloading"
    
    'Program Choice 2
    For n = 1 To MaxSteps
        If txtGrp2(n).Visible Then
            Call dbGetIDFromLongID(EditGrp, txtGrp2(n).Text, ID)
            Data(n - 1) = GrpNum(ID)
        Else
            Data(n - 1) = 0
        End If
    Next n
    Comms_frm.WritePLC PLCStn, "D", 121 + Unload_Register(Discharger, PLCStn), MaxSteps, Data(), False, "Unloading"
    
    'Program Choice 3
    For n = 1 To MaxSteps
        If txtGrp3(n).Visible Then
            Call dbGetIDFromLongID(EditGrp, txtGrp3(n).Text, ID)
            Data(n - 1) = GrpNum(ID)
        Else
            Data(n - 1) = 0
        End If
    Next n
    Comms_frm.WritePLC PLCStn, "D", 141 + Unload_Register(Discharger, PLCStn), MaxSteps, Data(), False, "Unloading"
    
    'CustomerChoices
    Call dbGetIDFromLongID(EditCus, txtCus(1).Text, ID)
    Data32(0) = CusNum(ID)
    Call WriteD32(PLCStn, (20 + Discharger), 1, Data32())
        
    'Current Step and Qty Completed - Send Last
    Data(0) = 0
    Data(1) = SelectedStep
    Data(2) = Val(txtComplete.Text)   'Qty Completed
    Comms_frm.WritePLC PLCStn, "D", 0 + Unload_Register(Discharger, PLCStn), 3, Data(), False, "Unloading"
    
    
        
End Sub
Private Sub NewProgram()
        
    cmbGrp.Visible = False
    cmbCus.Visible = False
        
    'Set All boxes to Zero
    Dim Box As TextBox
    For Each Box In txtBags()
               
        txtBags(Box.Index).Text = "0"
        txtLine(Box.Index).Text = "0"
        txtBatch(Box.Index).Text = "0"
            
                
        txtGrp1(Box.Index).Text = "0"
        txtGrp2(Box.Index).Text = "0"
        txtGrp3(Box.Index).Text = "0"
                  
    Next Box

    txtCus(1).Text = "0"
    'txtCus(2).Text = "0"
    'txtCus(3).Text = "0"
    
    txtComplete.Text = "0"
    
End Sub

Private Sub ReadProgram()
    
    On Error GoTo ReadProgramError
    
    Dim Amount      As Integer
    Dim n           As Integer
    Dim GrpID       As Integer
     
    'Clear Current Values
    For n = 1 To MaxSteps
        UnloadGrp.Bags(n) = 0
        UnloadGrp.Batch(n) = 0
        UnloadGrp.Lin(n) = 0
        UnloadGrp.Grp1(n) = 0
        UnloadGrp.Grp2(n) = 0
        UnloadGrp.Grp3(n) = 0
    Next n
    
    'Call the SQL Server Stored Procedure
    UnloadGrp.Name = cmbProgramNames.Text
    db_uspUnloadingProgramRead
    
             
    For n = 1 To MaxSteps
        txtBags(n).Text = UnloadGrp.Bags(n)
        txtLine(n).Text = UnloadGrp.Lin(n)
        'txtBatch(n).Text = UnloadGrp.Batch(n)
        txtGrp1(n).Text = UnloadGrp.Grp1(n)
        txtGrp2(n).Text = UnloadGrp.Grp2(n)
        txtGrp3(n).Text = UnloadGrp.Grp3(n)
               
        'Batch Size Now from Program database
        Call dbGetID(EditGrp, Val(txtGrp1(n).Text), GrpID)
        txtBatch(n).Text = GrpBatch(GrpID)
        
    Next n
          
Exit Sub

ReadProgramError:
    ErrorHandler Err, "Unloading ReadProgram", Err.Description, False
End Sub

Private Sub DisplayProgram()
    
    Dim Box As TextBox
    For Each Box In txtBags()
               
        txtBags(Box.Index).Text = Unload_Qty(Box.Index, Discharger, PLCStn)
        txtLine(Box.Index).Text = Unload_Line(Box.Index, Discharger, PLCStn)
                                
        txtGrp1(Box.Index).Text = dbGetLongFromNumVal(CLng(Unload_Grp1(Box.Index, Discharger, PLCStn)), EditGrp)
        txtGrp2(Box.Index).Text = dbGetLongFromNumVal(CLng(Unload_Grp2(Box.Index, Discharger, PLCStn)), EditGrp)
        txtGrp3(Box.Index).Text = dbGetLongFromNumVal(CLng(Unload_Grp3(Box.Index, Discharger, PLCStn)), EditGrp)
                  
        Call dbGetIDFromLongID(EditGrp, Format$(Unload_Grp1(Box.Index, Discharger, PLCStn)), ID)
        lblGrp1Name(Box.Index).Text = GrpName(ID)
        Call dbGetIDFromLongID(EditGrp, Format$(Unload_Grp2(Box.Index, Discharger, PLCStn)), ID)
        lblGrp2Name(Box.Index).Text = GrpName(ID)
        Call dbGetIDFromLongID(EditGrp, Format$(Unload_Grp3(Box.Index, Discharger, PLCStn)), ID)
        lblGrp3Name(Box.Index).Text = GrpName(ID)
        
        'Do after Program changes
        txtBatch(Box.Index).Text = Unload_Batch(Box.Index, Discharger, PLCStn)
        
    Next Box
    
    'Customer Selctions
    If CustomerMode = 0 Then
        txtCus(1).Text = dbGetLongFromNumVal(Unload_Cust(Discharger, PLCStn), EditCus)
        Call dbGetIDFromLongID(EditCus, Format$(Unload_Cust(Discharger, PLCStn)), ID)
        lblCusName(1).Text = CusName(ID)
    Else
        txtCus(1).Text = dbGetLongFromNumVal(Unload_CustAuto(Discharger, PLCStn), EditCus)
        Call dbGetIDFromLongID(EditCus, Format$(Unload_CustAuto(Discharger, PLCStn)), ID)
        lblCusName(1).Text = CusName(ID)
    End If
   
    
    
    cmbExpress.Text = Unload_ExperssLine(Discharger, PLCStn)
    cmbManualLine.Text = Unload_ManualLine(Discharger, PLCStn)
    cmbManualBags.Text = Unload_ManualBags(Discharger, PLCStn)
    
End Sub

Private Sub SetLanguage()

    lblStep.Caption = TextWord(38)
    lblBags.Caption = TextWord(156)
    lblBatch.Caption = TextWord(520)
    lblLine.Caption = TextWord(86)
    lblProgram(1).Caption = TextWord(671)
    lblProgram(2).Caption = TextWord(672)
    lblProgram(3).Caption = TextWord(673)
    lblCustChoice.Caption = TextWord(526)
    lblCurrentProg.Caption = TextWord(43)
    lblPrograms.Caption = TextWord(74)
    lblEditProg.Caption = TextWord(317)
    lblOptions.Caption = TextWord(322)
    'Cmd_open.Caption = TextWord(69)
    Cmd_FileDelete.Caption = TextWord(65)
    Cmd_new.Caption = TextWord(72)
    Cmd_save.Caption = TextWord(73)
    cmd_Send.Caption = TextWord(287)
    chk_AutoSkip.Caption = TextWord(157)
    chk_AutoRepeat.Caption = TextWord(528)
    Cmd_exit.Caption = TextWord(309)
    lblComplete.Caption = TextWord(527)
    lblManBags.Caption = TextWord(497)
    lblManLine.Caption = TextWord(498)
    lblExpress.Caption = TextWord(499)
    
End Sub


Private Sub txtLine_LostFocus(Index As Integer)
    Number = Val(txtLine(Index).Text)
    If ((Number < MinLine) Or (Number > MaxLine)) Then
        txtLine(Index).Text = ""
    End If
End Sub

Private Sub txtTest_GotFocus(Index As Integer)
    'Me.Cmd_exit.SetFocus
    Me.txtHidden.SetFocus
End Sub
