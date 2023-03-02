VERSION 5.00
Begin VB.Form maindisp0_frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "7207"
   ClientHeight    =   22635
   ClientLeft      =   45
   ClientTop       =   165
   ClientWidth     =   28470
   FillColor       =   &H00C0C0C0&
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00C0C0C0&
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   Palette         =   "Maindis0.frx":0000
   Picture         =   "Maindis0.frx":338AA2
   ScaleHeight     =   22635
   ScaleWidth      =   28470
   ShowInTaskbar   =   0   'False
   Tag             =   "105"
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP 6"
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
      Index           =   48
      Left            =   22155
      TabIndex        =   147
      Top             =   3360
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CPR1"
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
      Index           =   47
      Left            =   21000
      TabIndex        =   146
      Top             =   1425
      Width           =   630
   End
   Begin VB.PictureBox Picture2 
      BorderStyle     =   0  'None
      Height          =   1875
      Left            =   3285
      Picture         =   "Maindis0.frx":B81064
      ScaleHeight     =   1875
      ScaleWidth      =   10710
      TabIndex        =   145
      Top             =   2745
      Width           =   10710
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP9"
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
      Index           =   42
      Left            =   21090
      TabIndex        =   139
      Top             =   480
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CPN1"
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
      Index           =   4
      Left            =   25890
      TabIndex        =   138
      Top             =   12000
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP16"
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
      Index           =   28
      Left            =   2130
      TabIndex        =   137
      Top             =   18915
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP17"
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
      Index           =   27
      Left            =   315
      TabIndex        =   136
      Top             =   19710
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CVC1"
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
      Index           =   25
      Left            =   26610
      TabIndex        =   135
      Top             =   11370
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CIC3"
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
      Index           =   18
      Left            =   18720
      TabIndex        =   134
      Top             =   1470
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CPI4"
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
      Index           =   30
      Left            =   8610
      TabIndex        =   133
      Top             =   18915
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP8"
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
      Index           =   41
      Left            =   19815
      TabIndex        =   132
      Top             =   2280
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CPC1"
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
      Index           =   39
      Left            =   21000
      TabIndex        =   131
      Top             =   12375
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP4"
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
      Index           =   40
      Left            =   22290
      TabIndex        =   130
      Top             =   10335
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CPF1"
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
      Index           =   5
      Left            =   23520
      TabIndex        =   129
      Top             =   12000
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CLU2"
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
      Index           =   32
      Left            =   27180
      TabIndex        =   128
      Top             =   5460
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CLU1"
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
      Index           =   3
      Left            =   24795
      TabIndex        =   127
      Top             =   5535
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "Belt B"
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
      Index           =   2
      Left            =   27195
      TabIndex        =   126
      Top             =   4590
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "Belt A"
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
      Index           =   33
      Left            =   24915
      TabIndex        =   125
      Top             =   4620
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CPI0"
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
      Index           =   38
      Left            =   15705
      TabIndex        =   124
      Top             =   21840
      Width           =   615
   End
   Begin VB.CommandButton Cmd_exit 
      BackColor       =   &H00DBD9D4&
      Caption         =   "End"
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
      Left            =   19980
      TabIndex        =   123
      Top             =   14520
      Width           =   1215
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP3"
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
      Index           =   26
      Left            =   15690
      TabIndex        =   122
      Top             =   13710
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CPI 4"
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
      Index           =   24
      Left            =   19710
      TabIndex        =   121
      Top             =   9390
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CBC1"
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
      Index           =   15
      Left            =   1875
      TabIndex        =   120
      Top             =   17010
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CDC6"
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
      Index           =   11
      Left            =   10620
      TabIndex        =   119
      Top             =   19815
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CDC5"
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
      Index           =   10
      Left            =   13695
      TabIndex        =   118
      Top             =   19815
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CDC3"
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
      Index           =   8
      Left            =   21195
      TabIndex        =   117
      Top             =   2160
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CDC2"
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
      Index           =   7
      Left            =   21780
      TabIndex        =   116
      Top             =   5100
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CDC1"
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
      Index           =   6
      Left            =   23835
      TabIndex        =   115
      Top             =   5535
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CPI 3"
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
      Index           =   23
      Left            =   17955
      TabIndex        =   114
      Top             =   12600
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CPI 1"
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
      Index           =   21
      Left            =   4215
      TabIndex        =   113
      Top             =   16530
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CPI 6"
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
      Index           =   37
      Left            =   930
      TabIndex        =   112
      Top             =   18915
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP 12"
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
      Index           =   43
      Left            =   9900
      TabIndex        =   111
      Top             =   21840
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CDC9"
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
      Index           =   14
      Left            =   900
      TabIndex        =   110
      Top             =   20190
      Width           =   650
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CIC6"
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
      Index           =   36
      Left            =   4515
      TabIndex        =   109
      Top             =   21840
      Width           =   650
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CIC5"
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
      Index           =   35
      Left            =   10875
      TabIndex        =   108
      Top             =   21840
      Width           =   720
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CPI5"
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
      Index           =   34
      Left            =   7110
      TabIndex        =   107
      Top             =   18915
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CDC7"
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
      Index           =   12
      Left            =   7725
      TabIndex        =   106
      Top             =   19815
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP15"
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
      Index           =   29
      Left            =   5505
      TabIndex        =   105
      Top             =   18915
      Width           =   650
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP2"
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
      Index           =   31
      Left            =   20715
      TabIndex        =   104
      Top             =   21840
      Width           =   650
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CDC8"
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
      Index           =   13
      Left            =   4050
      TabIndex        =   103
      Top             =   19815
      Width           =   650
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CIC2"
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
      Index           =   17
      Left            =   16635
      TabIndex        =   102
      Top             =   21840
      Width           =   650
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CIC1"
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
      Index           =   16
      Left            =   18165
      TabIndex        =   101
      Top             =   19815
      Width           =   650
   End
   Begin VB.Frame fraFilters 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Filters"
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
      Height          =   1815
      Left            =   13515
      TabIndex        =   89
      Top             =   9810
      Width           =   4665
      Begin VB.PictureBox Picture1 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   1440
         Left            =   150
         ScaleHeight     =   1440
         ScaleWidth      =   4365
         TabIndex        =   90
         Top             =   300
         Width           =   4365
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
            Left            =   1275
            Sorted          =   -1  'True
            TabIndex        =   98
            Text            =   "cmbGrp"
            Top             =   0
            Width           =   3090
         End
         Begin VB.TextBox txtFilterGrp 
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
            Left            =   0
            TabIndex        =   97
            Top             =   0
            Width           =   1140
         End
         Begin VB.TextBox txtFilterCount 
            Alignment       =   1  'Right Justify
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
            Left            =   3300
            TabIndex        =   96
            Text            =   "0"
            Top             =   1650
            Width           =   1065
         End
         Begin VB.TextBox txtFilterCus 
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
            Left            =   0
            TabIndex        =   95
            Top             =   750
            Width           =   1140
         End
         Begin VB.TextBox txtFilterCat 
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
            Left            =   0
            TabIndex        =   94
            Top             =   375
            Width           =   1140
         End
         Begin VB.TextBox txtFilterWeight 
            Alignment       =   1  'Right Justify
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
            Left            =   3300
            TabIndex        =   93
            Text            =   "100Kg"
            Top             =   1125
            Width           =   1065
         End
         Begin VB.ComboBox cmbCat 
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
            Left            =   1275
            Sorted          =   -1  'True
            TabIndex        =   92
            Text            =   "cmbCat"
            Top             =   375
            Width           =   3090
         End
         Begin VB.ComboBox cmbCus 
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
            Left            =   1260
            Sorted          =   -1  'True
            TabIndex        =   91
            Text            =   "cmbCus"
            Top             =   750
            Width           =   3090
         End
         Begin VB.Label lblFilterCount 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0C0C0&
            BackStyle       =   0  'Transparent
            Caption         =   "Count"
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
            Left            =   1125
            TabIndex        =   100
            Top             =   1650
            Width           =   2115
         End
         Begin VB.Label lblFilterWeight 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            BackStyle       =   0  'Transparent
            Caption         =   "Weight"
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
            Left            =   1050
            TabIndex        =   99
            Top             =   1200
            Width           =   2115
         End
      End
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   53
      Left            =   27195
      TabIndex        =   73
      Top             =   1425
      Width           =   465
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "5"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   55
      Left            =   27195
      TabIndex        =   72
      Top             =   2640
      Width           =   465
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "7"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   57
      Left            =   27195
      TabIndex        =   71
      Top             =   3795
      Width           =   465
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "2"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   52
      Left            =   27195
      TabIndex        =   70
      Top             =   810
      Width           =   465
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "4"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   54
      Left            =   27150
      TabIndex        =   69
      Top             =   2040
      Width           =   465
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "6"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   56
      Left            =   27195
      TabIndex        =   68
      Top             =   3210
      Width           =   465
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "8"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   58
      Left            =   24915
      TabIndex        =   67
      Top             =   3795
      Width           =   465
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "14"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   64
      Left            =   24915
      TabIndex        =   66
      Top             =   225
      Width           =   465
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "12"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   62
      Left            =   24915
      TabIndex        =   65
      Top             =   1425
      Width           =   465
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "10"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   60
      Left            =   24915
      TabIndex        =   64
      Top             =   2640
      Width           =   465
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "13"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   63
      Left            =   24915
      TabIndex        =   63
      Top             =   810
      Width           =   465
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "11"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   61
      Left            =   24915
      TabIndex        =   62
      Top             =   2040
      Width           =   465
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CIC4"
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
      Index           =   19
      Left            =   26325
      TabIndex        =   60
      Top             =   21840
      Width           =   660
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CPI2"
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
      Index           =   22
      Left            =   17010
      TabIndex        =   59
      Top             =   13710
      Width           =   615
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP 1"
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
      Index           =   20
      Left            =   26595
      TabIndex        =   58
      Top             =   6345
      Width           =   630
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CDC4"
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
      Index           =   9
      Left            =   16995
      TabIndex        =   57
      Top             =   19815
      Width           =   630
   End
   Begin VB.Frame Fra_Tools 
      BackColor       =   &H00DBD9D4&
      ForeColor       =   &H00800000&
      Height          =   5085
      Left            =   11175
      TabIndex        =   0
      Top             =   22380
      Visible         =   0   'False
      Width           =   10965
      Begin VB.PictureBox pic_DataEntry 
         BorderStyle     =   0  'None
         Height          =   2235
         Left            =   10920
         ScaleHeight     =   2235
         ScaleWidth      =   2505
         TabIndex        =   56
         Top             =   4020
         Width           =   2505
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Command1"
         Height          =   675
         Left            =   300
         TabIndex        =   55
         Top             =   4740
         Width           =   1455
      End
      Begin VB.PictureBox pic_BagInfo 
         Appearance      =   0  'Flat
         BackColor       =   &H00DBD9D4&
         ForeColor       =   &H00C0C0C0&
         Height          =   3180
         Left            =   2760
         ScaleHeight     =   3150
         ScaleWidth      =   7695
         TabIndex        =   21
         Top             =   2235
         Visible         =   0   'False
         Width           =   7725
         Begin VB.ListBox lstCat 
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
            Height          =   1740
            Left            =   825
            TabIndex        =   49
            Top             =   2805
            Width           =   2715
         End
         Begin VB.TextBox lblGroup 
            Alignment       =   2  'Center
            BackColor       =   &H00D2A03C&
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
            Left            =   825
            TabIndex        =   48
            Text            =   "Category Group"
            Top             =   300
            Width           =   2715
         End
         Begin VB.TextBox lblCategory 
            Alignment       =   2  'Center
            BackColor       =   &H00D2A03C&
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
            Left            =   825
            TabIndex        =   47
            Text            =   "Category"
            Top             =   600
            Width           =   2715
         End
         Begin VB.TextBox lblCustomer 
            Alignment       =   2  'Center
            BackColor       =   &H00D2A03C&
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
            Left            =   825
            TabIndex        =   46
            Text            =   "Customer"
            Top             =   900
            Width           =   2715
         End
         Begin VB.TextBox lblDestination 
            Alignment       =   2  'Center
            BackColor       =   &H00D2A03C&
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
            Left            =   825
            TabIndex        =   45
            Text            =   "Destination"
            Top             =   1200
            Width           =   2715
         End
         Begin VB.TextBox lblDay 
            Alignment       =   2  'Center
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
            Height          =   315
            Left            =   825
            TabIndex        =   44
            Text            =   "Day"
            Top             =   5025
            Width           =   2640
         End
         Begin VB.TextBox lblCount 
            Alignment       =   2  'Center
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
            Height          =   315
            Left            =   825
            TabIndex        =   43
            Text            =   "Count"
            Top             =   5400
            Width           =   2640
         End
         Begin VB.TextBox lblHidden 
            Alignment       =   2  'Center
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
            Height          =   315
            Left            =   -4000
            TabIndex        =   42
            Text            =   "Hidden"
            Top             =   5625
            Width           =   2640
         End
         Begin VB.TextBox lblGrpNo 
            Alignment       =   2  'Center
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
            Left            =   3525
            TabIndex        =   41
            Text            =   "99999999"
            Top             =   300
            Width           =   1140
         End
         Begin VB.TextBox lblCatNo 
            Alignment       =   2  'Center
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
            Left            =   3525
            TabIndex        =   40
            Text            =   "99999999"
            Top             =   600
            Width           =   1140
         End
         Begin VB.TextBox lblCusNo 
            Alignment       =   2  'Center
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
            Left            =   3525
            TabIndex        =   39
            Text            =   "99999999"
            Top             =   900
            Width           =   1140
         End
         Begin VB.TextBox lblDstNo 
            Alignment       =   2  'Center
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
            Left            =   3525
            TabIndex        =   38
            Text            =   "99999999"
            Top             =   1200
            Width           =   1140
         End
         Begin VB.TextBox lblDayNo 
            Alignment       =   2  'Center
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
            Left            =   3525
            TabIndex        =   37
            Text            =   "99999999"
            Top             =   5025
            Width           =   1140
         End
         Begin VB.TextBox lblCnt 
            Alignment       =   2  'Center
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
            Left            =   3525
            TabIndex        =   36
            Text            =   "99999999"
            Top             =   5400
            Width           =   1140
         End
         Begin VB.TextBox lblGrp 
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
            Left            =   4650
            TabIndex        =   35
            Text            =   "Prg"
            Top             =   300
            Width           =   2865
         End
         Begin VB.TextBox lblCat 
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
            Left            =   4650
            TabIndex        =   34
            Text            =   "Cat"
            Top             =   600
            Width           =   2865
         End
         Begin VB.TextBox lblCus 
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
            Left            =   4650
            TabIndex        =   33
            Text            =   "Cus"
            Top             =   900
            Width           =   2865
         End
         Begin VB.TextBox lblUser2 
            Alignment       =   2  'Center
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
            Height          =   315
            Left            =   750
            TabIndex        =   32
            Text            =   "Ur2"
            Top             =   6150
            Width           =   2715
         End
         Begin VB.TextBox lblUr2No 
            Alignment       =   2  'Center
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
            Left            =   3450
            TabIndex        =   31
            Text            =   "99999999"
            Top             =   6150
            Width           =   1140
         End
         Begin VB.TextBox lblDst 
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
            Left            =   4650
            TabIndex        =   30
            Text            =   "Dst"
            Top             =   1200
            Width           =   2865
         End
         Begin VB.TextBox lblUr2 
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
            Left            =   4575
            TabIndex        =   29
            Text            =   "Ur2"
            Top             =   6150
            Width           =   2865
         End
         Begin VB.TextBox lblUser1 
            Alignment       =   2  'Center
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
            Height          =   315
            Left            =   750
            TabIndex        =   28
            Text            =   "Ur1"
            Top             =   5775
            Width           =   2715
         End
         Begin VB.TextBox lblUr1No 
            Alignment       =   2  'Center
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
            Left            =   3450
            TabIndex        =   27
            Text            =   "99999999"
            Top             =   5775
            Width           =   1140
         End
         Begin VB.TextBox lblUr1 
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
            Left            =   4575
            TabIndex        =   26
            Text            =   "Ur1"
            Top             =   5775
            Width           =   2865
         End
         Begin VB.TextBox lblKg 
            Alignment       =   2  'Center
            BackColor       =   &H00D2A03C&
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
            Left            =   825
            TabIndex        =   25
            Text            =   "Kg"
            Top             =   1500
            Width           =   2715
         End
         Begin VB.TextBox lblWgt 
            Alignment       =   2  'Center
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
            Left            =   3525
            TabIndex        =   24
            Text            =   "99999999"
            Top             =   1500
            Width           =   1140
         End
         Begin VB.ListBox lstCus 
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
            Height          =   1740
            Left            =   3525
            TabIndex        =   23
            Top             =   2805
            Width           =   2790
         End
         Begin VB.ListBox lstWgt 
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
            Height          =   1740
            Left            =   6300
            TabIndex        =   22
            Top             =   2805
            Width           =   1215
         End
         Begin VB.Label lbl_Timestamp 
            Alignment       =   1  'Right Justify
            BackStyle       =   0  'Transparent
            Caption         =   "TimeStamp"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   240
            Left            =   4875
            TabIndex        =   54
            Top             =   1575
            Width           =   2640
         End
         Begin VB.Label lblBagID 
            Alignment       =   1  'Right Justify
            BackStyle       =   0  'Transparent
            Caption         =   "Bag ID"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   240
            Left            =   4875
            TabIndex        =   53
            Top             =   1875
            Width           =   2640
         End
         Begin VB.Image Image1 
            Height          =   480
            Left            =   150
            Picture         =   "Maindis0.frx":B8C216
            Top             =   150
            Width           =   480
         End
         Begin VB.Label lblGrpError 
            BackStyle       =   0  'Transparent
            Caption         =   "lblGrpError"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   240
            Left            =   825
            TabIndex        =   52
            Top             =   75
            Width           =   6690
         End
         Begin VB.Label lblBatchID 
            Alignment       =   1  'Right Justify
            BackStyle       =   0  'Transparent
            Caption         =   "BatchID"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   240
            Left            =   4875
            TabIndex        =   51
            Top             =   2175
            Width           =   2640
         End
         Begin VB.Label lblBag 
            BackStyle       =   0  'Transparent
            Caption         =   "Bag"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   240
            Left            =   825
            TabIndex        =   50
            Top             =   2175
            Width           =   2640
         End
      End
      Begin VB.PictureBox picMyToolTipText 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H80000008&
         Height          =   390
         Left            =   1440
         ScaleHeight     =   360
         ScaleWidth      =   2235
         TabIndex        =   3
         Top             =   4200
         Width           =   2265
         Begin VB.Label lblMyToolTipText 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "lblMyToolTipTex"
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
            Left            =   150
            TabIndex        =   4
            Top             =   75
            Width           =   1380
         End
      End
      Begin VB.PictureBox picMyToolTipTextShadow 
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   161
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   390
         Left            =   1320
         ScaleHeight     =   390
         ScaleWidth      =   2265
         TabIndex        =   6
         Top             =   4260
         Width           =   2265
      End
      Begin VB.CommandButton cmdVNC 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   540
         Index           =   0
         Left            =   6975
         Picture         =   "Maindis0.frx":B8C658
         Style           =   1  'Graphical
         TabIndex        =   5
         Top             =   1200
         Width           =   690
      End
      Begin VB.Timer tmrMyPopUp 
         Enabled         =   0   'False
         Interval        =   700
         Left            =   75
         Top             =   1500
      End
      Begin VB.CommandButton SeqButton 
         Caption         =   "Seq"
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
         Left            =   2040
         TabIndex        =   2
         Top             =   600
         Width           =   690
      End
      Begin VB.Timer tmr_update 
         Interval        =   700
         Left            =   75
         Top             =   975
      End
      Begin VB.PictureBox Alarm_pic 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   465
         Left            =   825
         Picture         =   "Maindis0.frx":B8CF22
         ScaleHeight     =   465
         ScaleWidth      =   465
         TabIndex        =   1
         Top             =   525
         Width           =   465
      End
      Begin VB.Image picX 
         Height          =   750
         Index           =   6
         Left            =   11100
         Picture         =   "Maindis0.frx":B8D194
         Top             =   420
         Width           =   1290
      End
      Begin VB.Image picX 
         Height          =   810
         Index           =   5
         Left            =   10020
         Picture         =   "Maindis0.frx":B8DB24
         Top             =   420
         Width           =   825
      End
      Begin VB.Image picX 
         Height          =   795
         Index           =   4
         Left            =   9060
         Picture         =   "Maindis0.frx":B8E603
         Top             =   360
         Width           =   750
      End
      Begin VB.Image picX 
         Height          =   1500
         Index           =   1
         Left            =   8640
         Picture         =   "Maindis0.frx":B8EECB
         Top             =   300
         Width           =   435
      End
      Begin VB.Image picX 
         Height          =   90
         Index           =   23
         Left            =   3540
         Picture         =   "Maindis0.frx":B8FA92
         Top             =   1560
         Width           =   315
      End
      Begin VB.Image picX 
         Height          =   75
         Index           =   17
         Left            =   1980
         Picture         =   "Maindis0.frx":B8FDEB
         Top             =   1380
         Width           =   750
      End
      Begin VB.Image picX 
         Height          =   75
         Index           =   16
         Left            =   1920
         Picture         =   "Maindis0.frx":B9015E
         Top             =   1140
         Width           =   750
      End
      Begin VB.Image picX 
         Height          =   750
         Index           =   15
         Left            =   3000
         Picture         =   "Maindis0.frx":B904CF
         Top             =   960
         Width           =   75
      End
      Begin VB.Image picX 
         Height          =   750
         Index           =   13
         Left            =   2820
         Picture         =   "Maindis0.frx":B90843
         Top             =   960
         Width           =   75
      End
      Begin VB.Image picX_NC 
         Height          =   105
         Index           =   1
         Left            =   -90
         Picture         =   "Maindis0.frx":B90BBB
         Top             =   -45
         Width           =   165
      End
      Begin VB.Image BcScanner 
         Height          =   660
         Index           =   0
         Left            =   11040
         Picture         =   "Maindis0.frx":B90F12
         Top             =   1260
         Width           =   660
      End
      Begin VB.Image picGreenBag 
         Height          =   315
         Left            =   2100
         Picture         =   "Maindis0.frx":B915C4
         Top             =   2400
         Width           =   315
      End
      Begin VB.Image picBlueBag 
         Height          =   315
         Left            =   1800
         Picture         =   "Maindis0.frx":B91B46
         Top             =   2400
         Width           =   315
      End
      Begin VB.Image picCAN 
         Height          =   285
         Index           =   5
         Left            =   5475
         Picture         =   "Maindis0.frx":B920C8
         Top             =   1650
         Width           =   345
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   113
         Left            =   1980
         Picture         =   "Maindis0.frx":B9222E
         Top             =   780
         Width           =   165
      End
      Begin VB.Label BagData1 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00808000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   20.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   525
         Index           =   0
         Left            =   5550
         TabIndex        =   19
         Top             =   975
         Width           =   465
         WordWrap        =   -1  'True
      End
      Begin VB.Label BagData2 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00808000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   20.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   525
         Index           =   0
         Left            =   5925
         TabIndex        =   18
         Top             =   975
         Width           =   465
         WordWrap        =   -1  'True
      End
      Begin VB.Image StartStopPic 
         Height          =   315
         Index           =   0
         Left            =   1575
         Picture         =   "Maindis0.frx":B92592
         Top             =   675
         Width           =   315
      End
      Begin VB.Shape shpBagCol2 
         BackColor       =   &H00FFFFFF&
         BackStyle       =   1  'Opaque
         BorderStyle     =   0  'Transparent
         Height          =   240
         Index           =   0
         Left            =   5640
         Shape           =   4  'Rounded Rectangle
         Top             =   780
         Width           =   405
      End
      Begin VB.Shape shpGlowDest 
         BackColor       =   &H0000FF00&
         BorderColor     =   &H0000FF00&
         BorderWidth     =   2
         Height          =   525
         Index           =   0
         Left            =   6090
         Shape           =   5  'Rounded Square
         Top             =   390
         Width           =   525
      End
      Begin VB.Shape shpGlowInside 
         BorderColor     =   &H00FBD448&
         Height          =   495
         Left            =   7350
         Shape           =   5  'Rounded Square
         Top             =   300
         Width           =   495
      End
      Begin VB.Shape shpGlowOutside 
         BorderColor     =   &H00B17F36&
         Height          =   525
         Left            =   7125
         Shape           =   5  'Rounded Square
         Top             =   375
         Width           =   525
      End
      Begin VB.Image picW7Red 
         Height          =   315
         Index           =   4
         Left            =   7350
         Picture         =   "Maindis0.frx":B92B14
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picW7Red 
         Height          =   315
         Index           =   3
         Left            =   7035
         Picture         =   "Maindis0.frx":B93096
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picW7Red 
         Height          =   315
         Index           =   2
         Left            =   6750
         Picture         =   "Maindis0.frx":B93618
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picW7Red 
         Height          =   315
         Index           =   1
         Left            =   6450
         Picture         =   "Maindis0.frx":B93B9A
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picW7Green 
         Height          =   315
         Index           =   4
         Left            =   7350
         Picture         =   "Maindis0.frx":B9411C
         Top             =   1950
         Width           =   315
      End
      Begin VB.Image picW7Green 
         Height          =   315
         Index           =   3
         Left            =   7050
         Picture         =   "Maindis0.frx":B9469E
         Top             =   1950
         Width           =   315
      End
      Begin VB.Image picW7Green 
         Height          =   315
         Index           =   2
         Left            =   6750
         Picture         =   "Maindis0.frx":B94C20
         Top             =   1950
         Width           =   315
      End
      Begin VB.Image picW7Green 
         Height          =   315
         Index           =   1
         Left            =   6450
         Picture         =   "Maindis0.frx":B951A2
         Top             =   1950
         Width           =   315
      End
      Begin VB.Label lblHours 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         BackStyle       =   0  'Transparent
         Caption         =   "Running Hours"
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
         Left            =   4920
         TabIndex        =   17
         Top             =   1080
         Width           =   1815
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   10
         Left            =   4380
         Picture         =   "Maindis0.frx":B95724
         Top             =   1725
         Width           =   165
      End
      Begin VB.Image picX_NC 
         Height          =   165
         Index           =   8
         Left            =   3975
         Picture         =   "Maindis0.frx":B95A8E
         Top             =   675
         Width           =   105
      End
      Begin VB.Image picStartStop 
         Height          =   165
         Index           =   0
         Left            =   6180
         Picture         =   "Maindis0.frx":B95DE6
         Top             =   1635
         Width           =   165
      End
      Begin VB.Image picStartStopNone 
         Height          =   165
         Left            =   6000
         Top             =   2250
         Width           =   165
      End
      Begin VB.Image picStartStopNoEntry 
         Height          =   165
         Left            =   5775
         Picture         =   "Maindis0.frx":B96148
         Top             =   2250
         Width           =   165
      End
      Begin VB.Image picStartStopGreen 
         Height          =   255
         Left            =   825
         Picture         =   "Maindis0.frx":B964AA
         Top             =   2850
         Width           =   225
      End
      Begin VB.Image picStartStopRed 
         Height          =   255
         Left            =   825
         Picture         =   "Maindis0.frx":B9681C
         Top             =   2475
         Width           =   225
      End
      Begin VB.Image picMsgType 
         Height          =   165
         Index           =   0
         Left            =   6600
         Picture         =   "Maindis0.frx":B96B8E
         Top             =   1500
         Width           =   165
      End
      Begin VB.Image picMcnStatus 
         Height          =   165
         Index           =   0
         Left            =   6600
         Picture         =   "Maindis0.frx":B96EE8
         Top             =   1275
         Width           =   165
      End
      Begin VB.Image picLampRed 
         Height          =   165
         Left            =   525
         Picture         =   "Maindis0.frx":B97242
         Top             =   3150
         Width           =   165
      End
      Begin VB.Image picLampGrey 
         Height          =   165
         Left            =   525
         Picture         =   "Maindis0.frx":B9759C
         Top             =   2925
         Width           =   165
      End
      Begin VB.Image picLampGreen 
         Height          =   165
         Left            =   525
         Picture         =   "Maindis0.frx":B978F6
         Top             =   2700
         Width           =   165
      End
      Begin VB.Image picLampAmber 
         Height          =   165
         Left            =   525
         Picture         =   "Maindis0.frx":B97C50
         Top             =   2475
         Width           =   165
      End
      Begin VB.Label lblDeliveryDay 
         Alignment       =   2  'Center
         BackColor       =   &H00404040&
         Caption         =   "0"
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
         Left            =   1425
         TabIndex        =   16
         Top             =   2850
         Visible         =   0   'False
         Width           =   915
      End
      Begin VB.Label lblDeliveryDay 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "Mon"
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
         Left            =   1050
         TabIndex        =   15
         Top             =   3225
         Visible         =   0   'False
         Width           =   915
      End
      Begin VB.Label lblDeliveryDay 
         Alignment       =   2  'Center
         BackColor       =   &H000000FF&
         Caption         =   "Tue"
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
         Left            =   2025
         TabIndex        =   14
         Top             =   3225
         Visible         =   0   'False
         Width           =   915
      End
      Begin VB.Label lblDeliveryDay 
         Alignment       =   2  'Center
         BackColor       =   &H0000FFFF&
         Caption         =   "Wed"
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
         Left            =   3000
         TabIndex        =   13
         Top             =   3225
         Visible         =   0   'False
         Width           =   915
      End
      Begin VB.Label lblDeliveryDay 
         Alignment       =   2  'Center
         BackColor       =   &H0000C000&
         Caption         =   "Thu"
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
         Left            =   3975
         TabIndex        =   12
         Top             =   3225
         Visible         =   0   'False
         Width           =   915
      End
      Begin VB.Label lblDeliveryDay 
         Alignment       =   2  'Center
         BackColor       =   &H00FF8080&
         Caption         =   "Fri"
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
         Left            =   4950
         TabIndex        =   11
         Top             =   3225
         Visible         =   0   'False
         Width           =   915
      End
      Begin VB.Label lblDeliveryDay 
         Alignment       =   2  'Center
         BackColor       =   &H000080FF&
         Caption         =   "Sat"
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
         Left            =   5925
         TabIndex        =   10
         Top             =   3225
         Visible         =   0   'False
         Width           =   915
      End
      Begin VB.Label lblDeliveryDay 
         Alignment       =   2  'Center
         BackColor       =   &H00800080&
         Caption         =   "Sun"
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
         Left            =   6900
         TabIndex        =   9
         Top             =   3225
         Visible         =   0   'False
         Width           =   915
      End
      Begin VB.Image picTrip0 
         Height          =   165
         Left            =   300
         Picture         =   "Maindis0.frx":B97FAA
         Top             =   2475
         Width           =   165
      End
      Begin VB.Image picTrip1 
         Height          =   165
         Left            =   300
         Picture         =   "Maindis0.frx":B9802B
         Top             =   2775
         Width           =   165
      End
      Begin VB.Image picTrip2 
         Height          =   165
         Left            =   300
         Picture         =   "Maindis0.frx":B980AC
         Top             =   3075
         Width           =   165
      End
      Begin VB.Image picCAN 
         Height          =   240
         Index           =   0
         Left            =   5175
         Picture         =   "Maindis0.frx":B9812D
         Top             =   1650
         Width           =   240
      End
      Begin VB.Image picIndication 
         Height          =   165
         Index           =   0
         Left            =   5175
         Picture         =   "Maindis0.frx":B9822F
         Top             =   900
         Width           =   165
      End
      Begin VB.Image TripCount 
         Height          =   165
         Index           =   0
         Left            =   4860
         Picture         =   "Maindis0.frx":B982B0
         Top             =   1380
         Width           =   165
      End
      Begin VB.Image picX 
         Height          =   105
         Index           =   2
         Left            =   4575
         Picture         =   "Maindis0.frx":B98331
         Top             =   900
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   7
         Left            =   3900
         Picture         =   "Maindis0.frx":B9868D
         Top             =   1290
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   6
         Left            =   3900
         Picture         =   "Maindis0.frx":B989F7
         Top             =   1515
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   5
         Left            =   3900
         Picture         =   "Maindis0.frx":B98D58
         Top             =   1725
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   4
         Left            =   4140
         Picture         =   "Maindis0.frx":B990C2
         Top             =   1725
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   2
         Left            =   4380
         Picture         =   "Maindis0.frx":B99426
         Top             =   1500
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   1
         Left            =   4380
         Picture         =   "Maindis0.frx":B99787
         Top             =   1275
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   0
         Left            =   4140
         Picture         =   "Maindis0.frx":B99AF1
         Top             =   1260
         Width           =   165
      End
      Begin VB.Shape shpEmpty 
         BorderColor     =   &H00808080&
         FillColor       =   &H0080FF80&
         FillStyle       =   0  'Solid
         Height          =   465
         Index           =   41
         Left            =   3120
         Shape           =   5  'Rounded Square
         Top             =   375
         Width           =   465
      End
      Begin VB.Label lblWeight 
         BackColor       =   &H00C0C0C0&
         BackStyle       =   0  'Transparent
         Caption         =   "99kg"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   240
         Index           =   0
         Left            =   1680
         TabIndex        =   8
         Top             =   1725
         Width           =   465
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         Caption         =   "Do not remove!"
         ForeColor       =   &H000000FF&
         Height          =   240
         Left            =   1575
         TabIndex        =   7
         Top             =   0
         Width           =   1440
      End
      Begin VB.Shape BagRing 
         BackColor       =   &H8000000D&
         BorderColor     =   &H00FFFFFF&
         FillColor       =   &H8000000D&
         FillStyle       =   0  'Solid
         Height          =   465
         Index           =   0
         Left            =   5040
         Shape           =   5  'Rounded Square
         Top             =   375
         Width           =   465
      End
      Begin VB.Shape BagRingAlarm 
         BackColor       =   &H008080FF&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00000000&
         Height          =   465
         Index           =   0
         Left            =   150
         Shape           =   5  'Rounded Square
         Top             =   450
         Visible         =   0   'False
         Width           =   465
      End
      Begin VB.Shape shpStatus 
         BackColor       =   &H00404040&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00808080&
         Height          =   540
         Index           =   0
         Left            =   6525
         Top             =   1200
         Width           =   315
      End
      Begin VB.Image picFIFO 
         Height          =   315
         Index           =   0
         Left            =   6450
         Picture         =   "Maindis0.frx":B99E54
         Top             =   2700
         Width           =   315
      End
      Begin VB.Image picFIFO 
         Height          =   315
         Index           =   1
         Left            =   6750
         Picture         =   "Maindis0.frx":B9A3D6
         Top             =   2700
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   1
         Left            =   5250
         Picture         =   "Maindis0.frx":B9A958
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   3
         Left            =   4500
         Picture         =   "Maindis0.frx":B9AEDA
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   2
         Left            =   4875
         Picture         =   "Maindis0.frx":B9B45C
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   1
         Left            =   5250
         Picture         =   "Maindis0.frx":B9B9DE
         Top             =   2625
         Width           =   315
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   2
         Left            =   4875
         Picture         =   "Maindis0.frx":B9BF60
         Top             =   2625
         Width           =   315
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   3
         Left            =   4500
         Picture         =   "Maindis0.frx":B9C4E2
         Top             =   2625
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   0
         Left            =   3225
         Picture         =   "Maindis0.frx":B9CA64
         Top             =   2250
         Width           =   480
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   0
         Left            =   3225
         Picture         =   "Maindis0.frx":B9D286
         Top             =   2625
         Width           =   480
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   4
         Left            =   4125
         Picture         =   "Maindis0.frx":B9DAA8
         Top             =   2625
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   4
         Left            =   4125
         Picture         =   "Maindis0.frx":B9E02A
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   5
         Left            =   3750
         Picture         =   "Maindis0.frx":B9E5AC
         Top             =   2625
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   5
         Left            =   3750
         Picture         =   "Maindis0.frx":B9EB2E
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picX 
         Height          =   165
         Index           =   3
         Left            =   4215
         Picture         =   "Maindis0.frx":B9F0B0
         Top             =   960
         Width           =   105
      End
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   51
      Left            =   27195
      TabIndex        =   74
      Top             =   225
      Width           =   465
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "9"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   59
      Left            =   24915
      TabIndex        =   61
      Top             =   3210
      Width           =   465
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   8
      Left            =   19980
      Picture         =   "Maindis0.frx":B9F408
      Top             =   3765
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   9
      Left            =   26955
      Picture         =   "Maindis0.frx":B9F98A
      Top             =   10425
      Width           =   315
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   102
      Left            =   5970
      Picture         =   "Maindis0.frx":B9FF0C
      Tag             =   "203"
      Top             =   20340
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   101
      Left            =   19875
      Picture         =   "Maindis0.frx":BA0264
      Tag             =   "412"
      Top             =   21240
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   100
      Left            =   25830
      Picture         =   "Maindis0.frx":BA05BC
      Tag             =   "409"
      Top             =   21240
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   99
      Left            =   22185
      Picture         =   "Maindis0.frx":BA0914
      Tag             =   "516"
      Top             =   3855
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   49
      Left            =   22080
      Picture         =   "Maindis0.frx":BA0C6C
      Tag             =   "604"
      Top             =   10920
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   29
      Left            =   13950
      Picture         =   "Maindis0.frx":BA0FC3
      Tag             =   "104"
      Top             =   20700
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   98
      Left            =   26820
      Picture         =   "Maindis0.frx":BA132F
      Tag             =   "401"
      Top             =   12375
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   97
      Left            =   26865
      Picture         =   "Maindis0.frx":BA1687
      Tag             =   "405"
      Top             =   14490
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   96
      Left            =   26850
      Picture         =   "Maindis0.frx":BA19DF
      Tag             =   "406"
      Top             =   15030
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   95
      Left            =   26850
      Picture         =   "Maindis0.frx":BA1D37
      Tag             =   "403"
      Top             =   13425
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   94
      Left            =   26850
      Picture         =   "Maindis0.frx":BA208F
      Tag             =   "402"
      Top             =   12915
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   93
      Left            =   26850
      Picture         =   "Maindis0.frx":BA23E7
      Tag             =   "404"
      Top             =   13965
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   92
      Left            =   15825
      Picture         =   "Maindis0.frx":BA273F
      Tag             =   "703"
      Top             =   19635
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   91
      Left            =   15480
      Picture         =   "Maindis0.frx":BA2A96
      Tag             =   "101"
      Top             =   20340
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   90
      Left            =   12525
      Picture         =   "Maindis0.frx":BA2DEE
      Tag             =   "107"
      Top             =   20310
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   89
      Left            =   2685
      Picture         =   "Maindis0.frx":BA3146
      Tag             =   "209"
      Top             =   20715
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   88
      Left            =   9630
      Picture         =   "Maindis0.frx":BA349E
      Tag             =   "113"
      Top             =   20340
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   87
      Left            =   6120
      Picture         =   "Maindis0.frx":BA37F6
      Tag             =   "1011"
      Top             =   21240
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   86
      Left            =   12645
      Picture         =   "Maindis0.frx":BA3B4E
      Tag             =   "1010"
      Top             =   21255
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   85
      Left            =   5505
      Picture         =   "Maindis0.frx":BA3EA6
      Tag             =   "1104"
      Top             =   19260
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   84
      Left            =   11790
      Picture         =   "Maindis0.frx":BA41FE
      Tag             =   "104"
      Top             =   19230
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   83
      Left            =   555
      Picture         =   "Maindis0.frx":BA4556
      Tag             =   "212"
      Top             =   17520
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   82
      Left            =   3135
      Picture         =   "Maindis0.frx":BA48AE
      Tag             =   "707"
      Top             =   17520
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   81
      Left            =   20655
      Picture         =   "Maindis0.frx":BA4C06
      Tag             =   "411"
      Top             =   20565
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   80
      Left            =   27630
      Picture         =   "Maindis0.frx":BA4F5D
      Tag             =   "813"
      Top             =   15450
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   79
      Left            =   27645
      Picture         =   "Maindis0.frx":BA52B4
      Tag             =   "316"
      Top             =   12045
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   78
      Left            =   27660
      Picture         =   "Maindis0.frx":BA560B
      Tag             =   "312"
      Top             =   6405
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   77
      Left            =   22860
      Picture         =   "Maindis0.frx":BA5962
      Tag             =   "413"
      Top             =   8640
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   76
      Left            =   23880
      Picture         =   "Maindis0.frx":BA5CB9
      Tag             =   "415"
      Top             =   8640
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   73
      Left            =   22920
      Picture         =   "Maindis0.frx":BA6010
      Tag             =   "611"
      Top             =   4605
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   72
      Left            =   23895
      Picture         =   "Maindis0.frx":BA6367
      Tag             =   "607"
      Top             =   4575
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   71
      Left            =   23505
      Picture         =   "Maindis0.frx":BA66BE
      Tag             =   "906"
      Top             =   2595
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   70
      Left            =   22875
      Picture         =   "Maindis0.frx":BA6A16
      Tag             =   "814"
      Top             =   810
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   62
      Left            =   23805
      Picture         =   "Maindis0.frx":BA6D6D
      Tag             =   "815"
      Top             =   825
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   59
      Left            =   19875
      Picture         =   "Maindis0.frx":BA70C4
      Tag             =   "811"
      Top             =   1755
      Width           =   105
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   10
      Left            =   19845
      Picture         =   "Maindis0.frx":BA741C
      Tag             =   "811"
      Top             =   1920
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   100
      Left            =   21375
      Picture         =   "Maindis0.frx":BA749D
      Tag             =   "516"
      Top             =   1920
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   58
      Left            =   21375
      Picture         =   "Maindis0.frx":BA77FE
      Tag             =   "903"
      Top             =   1800
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   57
      Left            =   17805
      Picture         =   "Maindis0.frx":BA7B56
      Tag             =   "615"
      Top             =   1755
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   56
      Left            =   21945
      Picture         =   "Maindis0.frx":BA7EAE
      Tag             =   "904"
      Top             =   1620
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   55
      Left            =   20625
      Picture         =   "Maindis0.frx":BA8205
      Tag             =   "1003"
      Top             =   8310
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   53
      Left            =   19080
      Picture         =   "Maindis0.frx":BA855C
      Tag             =   "807"
      Top             =   11070
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   51
      Left            =   18510
      Picture         =   "Maindis0.frx":BA88B4
      Tag             =   "802"
      Top             =   14040
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   50
      Left            =   16305
      Picture         =   "Maindis0.frx":BA8C0C
      Tag             =   "1006"
      Top             =   14055
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   480
      Index           =   48
      Left            =   24255
      Picture         =   "Maindis0.frx":BA8F64
      Tag             =   "1504"
      Top             =   90
      Width           =   480
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   19
      Left            =   0
      Picture         =   "Maindis0.frx":BA94BB
      Tag             =   "1002"
      Top             =   0
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   480
      Index           =   7
      Left            =   24285
      Picture         =   "Maindis0.frx":BA9812
      Tag             =   "1508"
      Top             =   690
      Width           =   480
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10025
      Left            =   1125
      Shape           =   5  'Rounded Square
      Top             =   19290
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10024
      Left            =   7185
      Shape           =   5  'Rounded Square
      Top             =   19275
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10023
      Left            =   8685
      Shape           =   5  'Rounded Square
      Top             =   19305
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10022
      Left            =   5670
      Shape           =   5  'Rounded Square
      Top             =   19305
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10021
      Left            =   2220
      Shape           =   5  'Rounded Square
      Top             =   19275
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10020
      Left            =   0
      Shape           =   5  'Rounded Square
      Top             =   19035
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10019
      Left            =   15795
      Shape           =   5  'Rounded Square
      Top             =   14070
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10018
      Left            =   20295
      Shape           =   5  'Rounded Square
      Top             =   9375
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10017
      Left            =   18450
      Shape           =   5  'Rounded Square
      Top             =   12585
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10016
      Left            =   17100
      Shape           =   5  'Rounded Square
      Top             =   14055
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10014
      Left            =   4725
      Shape           =   5  'Rounded Square
      Top             =   16455
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10011
      Left            =   18825
      Shape           =   5  'Rounded Square
      Top             =   1770
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   99
      Left            =   16935
      Picture         =   "Maindis0.frx":BA9D69
      Tag             =   "705"
      Top             =   20370
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   98
      Left            =   13635
      Picture         =   "Maindis0.frx":BAA0CD
      Tag             =   "106"
      Top             =   20385
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   97
      Left            =   10530
      Picture         =   "Maindis0.frx":BAA431
      Tag             =   "112"
      Top             =   20415
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   96
      Left            =   7680
      Picture         =   "Maindis0.frx":BAA795
      Tag             =   "202"
      Top             =   20370
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   95
      Left            =   4020
      Picture         =   "Maindis0.frx":BAAAF9
      Tag             =   "208"
      Top             =   20355
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   78
      Left            =   765
      Picture         =   "Maindis0.frx":BAAE5D
      Tag             =   "214"
      Top             =   20790
      Width           =   165
   End
   Begin VB.Label Label6 
      BackColor       =   &H00C0C0C0&
      Caption         =   "VIKING 5"
      Height          =   225
      Left            =   13695
      TabIndex        =   144
      Top             =   19620
      Width           =   840
   End
   Begin VB.Label Label5 
      BackColor       =   &H00C0C0C0&
      Caption         =   "VIKING 4"
      Height          =   225
      Left            =   10605
      TabIndex        =   143
      Top             =   19635
      Width           =   810
   End
   Begin VB.Label Label4 
      BackColor       =   &H00C0C0C0&
      Caption         =   "VIKING 3"
      Height          =   180
      Left            =   7710
      TabIndex        =   142
      Top             =   19635
      Width           =   795
   End
   Begin VB.Label Label3 
      BackColor       =   &H00C0C0C0&
      Caption         =   "VIKING 2"
      Height          =   240
      Left            =   4035
      TabIndex        =   141
      Top             =   19635
      Width           =   825
   End
   Begin VB.Label Label2 
      BackColor       =   &H00C0C0C0&
      Caption         =   "VIKING 1"
      Height          =   195
      Left            =   990
      TabIndex        =   140
      Top             =   19995
      Width           =   870
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   94
      Left            =   26340
      Picture         =   "Maindis0.frx":BAB1C1
      Tag             =   "1307"
      Top             =   3780
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   93
      Left            =   26340
      Picture         =   "Maindis0.frx":BAB522
      Tag             =   "1306"
      Top             =   3105
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   92
      Left            =   26310
      Picture         =   "Maindis0.frx":BAB883
      Tag             =   "1305"
      Top             =   2520
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   91
      Left            =   26340
      Picture         =   "Maindis0.frx":BABBE4
      Tag             =   "1208"
      Top             =   1965
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   90
      Left            =   26325
      Picture         =   "Maindis0.frx":BABF45
      Tag             =   "1207"
      Top             =   1365
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   89
      Left            =   26325
      Picture         =   "Maindis0.frx":BAC2A6
      Tag             =   "1206"
      Top             =   720
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   88
      Left            =   26340
      Picture         =   "Maindis0.frx":BAC607
      Tag             =   "1205"
      Top             =   120
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   87
      Left            =   26160
      Picture         =   "Maindis0.frx":BAC968
      Tag             =   "1506"
      Top             =   720
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   86
      Left            =   26175
      Picture         =   "Maindis0.frx":BACCC9
      Tag             =   "1507"
      Top             =   135
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   85
      Left            =   26160
      Picture         =   "Maindis0.frx":BAD02A
      Tag             =   "1405"
      Top             =   3780
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   84
      Left            =   26160
      Picture         =   "Maindis0.frx":BAD38B
      Tag             =   "1505"
      Top             =   1365
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   83
      Left            =   26160
      Picture         =   "Maindis0.frx":BAD6EC
      Tag             =   "1406"
      Top             =   3120
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   82
      Left            =   26145
      Picture         =   "Maindis0.frx":BADA4D
      Tag             =   "1407"
      Top             =   2520
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   81
      Left            =   26175
      Picture         =   "Maindis0.frx":BADDAE
      Tag             =   "1408"
      Top             =   1980
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   28
      Left            =   8745
      Picture         =   "Maindis0.frx":BAE10F
      Tag             =   "1016"
      Top             =   14205
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   27
      Left            =   4920
      Picture         =   "Maindis0.frx":BAE190
      Tag             =   "713"
      Top             =   16065
      Width           =   165
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   10
      Left            =   1575
      Picture         =   "Maindis0.frx":BAE211
      Top             =   16995
      Width           =   315
   End
   Begin VB.Image picY 
      Height          =   180
      Index           =   79
      Left            =   23385
      Picture         =   "Maindis0.frx":BAE793
      Tag             =   "604"
      Top             =   4680
      Width           =   375
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   12
      Left            =   17235
      Picture         =   "Maindis0.frx":BAEB65
      Tag             =   "704"
      Top             =   19650
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   11
      Left            =   11535
      Picture         =   "Maindis0.frx":BAEEEB
      Tag             =   "111"
      Top             =   19920
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   10
      Left            =   14640
      Picture         =   "Maindis0.frx":BAF271
      Tag             =   "105"
      Top             =   19935
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   9
      Left            =   8670
      Picture         =   "Maindis0.frx":BAF5F7
      Tag             =   "201"
      Top             =   19890
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   8
      Left            =   4980
      Picture         =   "Maindis0.frx":BAF97D
      Tag             =   "207"
      Top             =   19875
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   180
      Index           =   77
      Left            =   16755
      Picture         =   "Maindis0.frx":BAFD03
      Tag             =   "708"
      Top             =   21000
      Width           =   1260
   End
   Begin VB.Image picY 
      Height          =   180
      Index           =   76
      Left            =   10320
      Picture         =   "Maindis0.frx":BB0915
      Tag             =   "111"
      Top             =   21000
      Width           =   1260
   End
   Begin VB.Image picY 
      Height          =   315
      Index           =   75
      Left            =   13425
      Picture         =   "Maindis0.frx":BB1527
      Tag             =   "105"
      Top             =   20895
      Width           =   1260
   End
   Begin VB.Image picY 
      Height          =   315
      Index           =   74
      Left            =   7395
      Picture         =   "Maindis0.frx":BB2A15
      Tag             =   "201"
      Top             =   20940
      Width           =   1260
   End
   Begin VB.Image picY 
      Height          =   315
      Index           =   73
      Left            =   3795
      Picture         =   "Maindis0.frx":BB3F03
      Tag             =   "207"
      Top             =   20970
      Width           =   1260
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   166
      Left            =   10110
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   43
      Left            =   9585
      Picture         =   "Maindis0.frx":BB53F1
      Top             =   21840
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   4
      Left            =   26520
      Picture         =   "Maindis0.frx":BB5973
      Top             =   12000
      Width           =   315
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   72
      Left            =   20430
      Picture         =   "Maindis0.frx":BB5EF5
      Tag             =   "808"
      Top             =   3075
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   40
      Left            =   20460
      Picture         =   "Maindis0.frx":BB6258
      Tag             =   "809"
      Top             =   2790
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   12
      Left            =   21420
      Picture         =   "Maindis0.frx":BB65B9
      Tag             =   "614"
      Top             =   2430
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   11
      Left            =   21405
      Picture         =   "Maindis0.frx":BB6927
      Tag             =   "614"
      Top             =   3000
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   47
      Left            =   22155
      Picture         =   "Maindis0.frx":BB6C93
      Tag             =   "516"
      Top             =   3675
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   9
      Left            =   24390
      Picture         =   "Maindis0.frx":BB6D14
      Tag             =   "515"
      Top             =   3810
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   8
      Left            =   23730
      Picture         =   "Maindis0.frx":BB7077
      Tag             =   "508"
      Top             =   9435
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   3
      Left            =   22725
      Picture         =   "Maindis0.frx":BB73DA
      Tag             =   "509"
      Top             =   9435
      Width           =   165
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   5
      Left            =   23205
      Picture         =   "Maindis0.frx":BB773D
      Top             =   12000
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   13
      Left            =   21795
      Picture         =   "Maindis0.frx":BB7CBF
      Top             =   2145
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   11
      Left            =   24090
      Picture         =   "Maindis0.frx":BB8241
      Top             =   5835
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   12
      Left            =   22080
      Picture         =   "Maindis0.frx":BB87C3
      Top             =   5415
      Width           =   315
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   3401
      Left            =   26145
      Picture         =   "Maindis0.frx":BB8D45
      Tag             =   "1402"
      Top             =   3285
      Width           =   165
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   14
      Left            =   20190
      Picture         =   "Maindis0.frx":BB8DC6
      Top             =   19905
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   2
      Left            =   27195
      Picture         =   "Maindis0.frx":BB9348
      Top             =   4290
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   33
      Left            =   25185
      Picture         =   "Maindis0.frx":BB98CA
      Top             =   4320
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   27
      Left            =   8355
      Picture         =   "Maindis0.frx":BB9E4C
      Top             =   19815
      Width           =   315
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   45
      Left            =   15645
      Picture         =   "Maindis0.frx":BBA3CE
      Tag             =   "703"
      Top             =   19590
      Width           =   165
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   69
      Left            =   23625
      Shape           =   5  'Rounded Square
      Top             =   4170
      Width           =   375
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   46
      Left            =   21915
      Picture         =   "Maindis0.frx":BBA44F
      Tag             =   "604"
      Top             =   10890
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   71
      Left            =   23895
      Picture         =   "Maindis0.frx":BBA4D0
      Tag             =   "602"
      Top             =   5145
      Width           =   300
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   70
      Left            =   23370
      Picture         =   "Maindis0.frx":BBA83E
      Tag             =   "602"
      Top             =   5145
      Width           =   300
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   69
      Left            =   22920
      Picture         =   "Maindis0.frx":BBABAA
      Tag             =   "608"
      Top             =   5145
      Width           =   300
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   68
      Left            =   22395
      Picture         =   "Maindis0.frx":BBAF18
      Tag             =   "608"
      Top             =   5145
      Width           =   300
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   74
      Left            =   5085
      Picture         =   "Maindis0.frx":BBB284
      Tag             =   "713"
      Top             =   16110
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   69
      Left            =   22470
      Picture         =   "Maindis0.frx":BBB5DB
      Tag             =   "602"
      Top             =   12765
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   68
      Left            =   21750
      Picture         =   "Maindis0.frx":BBB937
      Tag             =   "902"
      Top             =   12135
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   67
      Left            =   23820
      Picture         =   "Maindis0.frx":BBBC93
      Tag             =   "606"
      Top             =   4770
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   66
      Left            =   22470
      Picture         =   "Maindis0.frx":BBBFEA
      Tag             =   "603"
      Top             =   12015
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   65
      Left            =   22830
      Picture         =   "Maindis0.frx":BBC341
      Tag             =   "610"
      Top             =   4800
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   64
      Left            =   21810
      Picture         =   "Maindis0.frx":BBC698
      Tag             =   "601"
      Top             =   13305
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   63
      Left            =   3465
      Picture         =   "Maindis0.frx":BBC9EF
      Tag             =   "206"
      Top             =   20175
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   61
      Left            =   21930
      Picture         =   "Maindis0.frx":BBCD47
      Tag             =   "613"
      Top             =   2955
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   60
      Left            =   21030
      Picture         =   "Maindis0.frx":BBD09F
      Tag             =   "614"
      Top             =   2940
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   52
      Left            =   8790
      Picture         =   "Maindis0.frx":BBD3F7
      Tag             =   "1016"
      Top             =   14055
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   46
      Left            =   18675
      Picture         =   "Maindis0.frx":BBD74F
      Tag             =   "809"
      Top             =   2070
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   45
      Left            =   20085
      Picture         =   "Maindis0.frx":BBDAA7
      Tag             =   "915"
      Top             =   11070
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   44
      Left            =   18510
      Picture         =   "Maindis0.frx":BBDDFF
      Tag             =   "810"
      Top             =   1905
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   180
      Index           =   67
      Left            =   22365
      Picture         =   "Maindis0.frx":BBE157
      Tag             =   "610"
      Top             =   4695
      Width           =   375
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   66
      Left            =   24045
      Picture         =   "Maindis0.frx":BBE529
      Tag             =   "603"
      Top             =   4815
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   65
      Left            =   22485
      Picture         =   "Maindis0.frx":BBE88A
      Tag             =   "1111"
      Top             =   12585
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   315
      Index           =   64
      Left            =   510
      Picture         =   "Maindis0.frx":BBEBEB
      Tag             =   "213"
      Top             =   21435
      Width           =   1260
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   63
      Left            =   7605
      Picture         =   "Maindis0.frx":BC00D9
      Tag             =   "815"
      Top             =   19440
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   62
      Left            =   22785
      Picture         =   "Maindis0.frx":BC043A
      Tag             =   "512"
      Top             =   3675
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   61
      Left            =   21000
      Picture         =   "Maindis0.frx":BC079B
      Tag             =   "701"
      Top             =   2790
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   60
      Left            =   27885
      Picture         =   "Maindis0.frx":BC0AFC
      Tag             =   "1101"
      Top             =   11535
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   59
      Left            =   20880
      Picture         =   "Maindis0.frx":BC0E5D
      Tag             =   "803"
      Top             =   3675
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   43
      Left            =   1530
      Picture         =   "Maindis0.frx":BC11BE
      Tag             =   "1107"
      Top             =   19275
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   42
      Left            =   945
      Picture         =   "Maindis0.frx":BC1516
      Tag             =   "1106"
      Top             =   19260
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   41
      Left            =   1725
      Picture         =   "Maindis0.frx":BC186E
      Tag             =   "1108"
      Top             =   19290
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   58
      Left            =   2655
      Picture         =   "Maindis0.frx":BC1BC6
      Tag             =   "205"
      Top             =   19545
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   57
      Left            =   6075
      Picture         =   "Maindis0.frx":BC1F30
      Tag             =   "115"
      Top             =   19590
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   56
      Left            =   9135
      Picture         =   "Maindis0.frx":BC229A
      Tag             =   "109"
      Top             =   19560
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   40
      Left            =   9675
      Picture         =   "Maindis0.frx":BC2604
      Tag             =   "1014"
      Top             =   19305
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   39
      Left            =   7665
      Picture         =   "Maindis0.frx":BC295C
      Tag             =   "1102"
      Top             =   19290
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   38
      Left            =   2535
      Picture         =   "Maindis0.frx":BC2CB4
      Tag             =   "706"
      Top             =   17580
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   37
      Left            =   4530
      Picture         =   "Maindis0.frx":BC300C
      Tag             =   "709"
      Top             =   17835
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   36
      Left            =   7080
      Picture         =   "Maindis0.frx":BC3364
      Tag             =   "1101"
      Top             =   19275
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   35
      Left            =   1575
      Picture         =   "Maindis0.frx":BC36BC
      Tag             =   "705"
      Top             =   17820
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   34
      Left            =   7860
      Picture         =   "Maindis0.frx":BC3A14
      Tag             =   "1103"
      Top             =   19305
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   55
      Left            =   4335
      Picture         =   "Maindis0.frx":BC3D6C
      Tag             =   "206"
      Top             =   20700
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   54
      Left            =   4335
      Picture         =   "Maindis0.frx":BC40D8
      Tag             =   "206"
      Top             =   20115
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   33
      Left            =   15390
      Picture         =   "Maindis0.frx":BC4446
      Tag             =   "914"
      Top             =   14055
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   32
      Left            =   16860
      Picture         =   "Maindis0.frx":BC479E
      Tag             =   "715"
      Top             =   14340
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   31
      Left            =   4005
      Picture         =   "Maindis0.frx":BC4AF6
      Tag             =   "205"
      Top             =   20610
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   30
      Left            =   17025
      Picture         =   "Maindis0.frx":BC4E4E
      Tag             =   "801"
      Top             =   14400
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   29
      Left            =   16650
      Picture         =   "Maindis0.frx":BC51A6
      Tag             =   "714"
      Top             =   14100
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   28
      Left            =   20970
      Picture         =   "Maindis0.frx":BC54FE
      Tag             =   "1004"
      Top             =   3795
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   27
      Left            =   5520
      Picture         =   "Maindis0.frx":BC5856
      Tag             =   "216"
      Top             =   21285
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   26
      Left            =   17610
      Picture         =   "Maindis0.frx":BC5BAE
      Tag             =   "716"
      Top             =   14385
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   25
      Left            =   5340
      Picture         =   "Maindis0.frx":BC5F06
      Tag             =   "1012"
      Top             =   21420
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   24
      Left            =   11610
      Picture         =   "Maindis0.frx":BC625E
      Tag             =   "1008"
      Top             =   21285
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   22
      Left            =   4920
      Picture         =   "Maindis0.frx":BC65B6
      Tag             =   "204"
      Top             =   20355
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   21
      Left            =   5160
      Picture         =   "Maindis0.frx":BC690E
      Tag             =   "1013"
      Top             =   21270
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   20
      Left            =   11985
      Picture         =   "Maindis0.frx":BC6C66
      Tag             =   "1009"
      Top             =   21285
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   0
      Left            =   3060
      Picture         =   "Maindis0.frx":BC6FBE
      Tag             =   "1105"
      Top             =   19320
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   53
      Left            =   14355
      Picture         =   "Maindis0.frx":BC7316
      Tag             =   "102"
      Top             =   20490
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   52
      Left            =   9555
      Picture         =   "Maindis0.frx":BC7677
      Tag             =   "1014"
      Top             =   19425
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   51
      Left            =   7575
      Picture         =   "Maindis0.frx":BC79D8
      Tag             =   "115"
      Top             =   20490
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   50
      Left            =   2955
      Picture         =   "Maindis0.frx":BC7D39
      Tag             =   "1016"
      Top             =   19425
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   49
      Left            =   11940
      Picture         =   "Maindis0.frx":BC809A
      Tag             =   "215"
      Top             =   21405
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   465
      Index           =   48
      Left            =   2550
      Picture         =   "Maindis0.frx":BC83FB
      Tag             =   "712"
      Top             =   17805
      Width           =   180
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   47
      Left            =   1545
      Picture         =   "Maindis0.frx":BC8899
      Tag             =   "210"
      Top             =   20895
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   46
      Left            =   21885
      Picture         =   "Maindis0.frx":BC8BFA
      Tag             =   "613"
      Top             =   2790
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   45
      Left            =   5460
      Picture         =   "Maindis0.frx":BC8F5B
      Tag             =   "216"
      Top             =   21420
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   44
      Left            =   6075
      Picture         =   "Maindis0.frx":BC92BC
      Tag             =   "1015"
      Top             =   19425
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   43
      Left            =   9870
      Picture         =   "Maindis0.frx":BC961D
      Tag             =   "1003"
      Top             =   21420
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   42
      Left            =   22995
      Picture         =   "Maindis0.frx":BC997E
      Tag             =   "609"
      Top             =   4845
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   41
      Left            =   13515
      Picture         =   "Maindis0.frx":BC9CDF
      Tag             =   "103"
      Top             =   20490
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   39
      Left            =   6315
      Picture         =   "Maindis0.frx":BCA040
      Tag             =   "1004"
      Top             =   21420
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   38
      Left            =   10440
      Picture         =   "Maindis0.frx":BCA3A1
      Tag             =   "109"
      Top             =   20490
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   37
      Left            =   4380
      Picture         =   "Maindis0.frx":BCA702
      Tag             =   "814"
      Top             =   21420
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   36
      Left            =   8475
      Picture         =   "Maindis0.frx":BCAA63
      Tag             =   "114"
      Top             =   20490
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   35
      Left            =   4875
      Picture         =   "Maindis0.frx":BCADC4
      Tag             =   "204"
      Top             =   20475
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   34
      Left            =   690
      Picture         =   "Maindis0.frx":BCB125
      Tag             =   "211"
      Top             =   20895
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   33
      Left            =   3930
      Picture         =   "Maindis0.frx":BCB486
      Tag             =   "205"
      Top             =   20490
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   32
      Left            =   16860
      Picture         =   "Maindis0.frx":BCB7E7
      Tag             =   "707"
      Top             =   20475
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   31
      Left            =   10845
      Picture         =   "Maindis0.frx":BCBB48
      Tag             =   "813"
      Top             =   21420
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   30
      Left            =   11415
      Picture         =   "Maindis0.frx":BCBEA9
      Tag             =   "108"
      Top             =   20490
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   28
      Left            =   13965
      Picture         =   "Maindis0.frx":BCC20A
      Tag             =   "104"
      Top             =   20130
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   27
      Left            =   10830
      Picture         =   "Maindis0.frx":BCC578
      Tag             =   "110"
      Top             =   20730
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   26
      Left            =   10845
      Picture         =   "Maindis0.frx":BCC8E4
      Tag             =   "110"
      Top             =   20160
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   24
      Left            =   7965
      Picture         =   "Maindis0.frx":BCCC52
      Tag             =   "116"
      Top             =   20700
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   17
      Left            =   7980
      Picture         =   "Maindis0.frx":BCCFBE
      Tag             =   "116"
      Top             =   20130
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   16
      Left            =   1080
      Picture         =   "Maindis0.frx":BCD32C
      Tag             =   "212"
      Top             =   21150
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   15
      Left            =   1095
      Picture         =   "Maindis0.frx":BCD698
      Tag             =   "212"
      Top             =   20550
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   25
      Left            =   26520
      Picture         =   "Maindis0.frx":BCDA06
      Tag             =   "311"
      Top             =   6000
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   311
      Left            =   26760
      Picture         =   "Maindis0.frx":BCDD67
      Tag             =   "310"
      Top             =   5895
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   75
      Index           =   302
      Left            =   25470
      Picture         =   "Maindis0.frx":BCE0D1
      Tag             =   "302"
      Top             =   5025
      Width           =   750
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   18
      Left            =   23655
      Picture         =   "Maindis0.frx":BCE442
      Tag             =   "505"
      Top             =   14520
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   14
      Left            =   23655
      Picture         =   "Maindis0.frx":BCE79A
      Tag             =   "506"
      Top             =   15030
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   23
      Left            =   23580
      Picture         =   "Maindis0.frx":BCEAF2
      Tag             =   "504"
      Top             =   14145
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   22
      Left            =   23580
      Picture         =   "Maindis0.frx":BCEE53
      Tag             =   "505"
      Top             =   14670
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   21
      Left            =   23595
      Picture         =   "Maindis0.frx":BCF1B4
      Tag             =   "506"
      Top             =   15195
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   20
      Left            =   23580
      Picture         =   "Maindis0.frx":BCF515
      Tag             =   "503"
      Top             =   13620
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   19
      Left            =   23580
      Picture         =   "Maindis0.frx":BCF876
      Tag             =   "502"
      Top             =   13080
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   18
      Left            =   23580
      Picture         =   "Maindis0.frx":BCFBD7
      Tag             =   "501"
      Top             =   12570
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   404
      Left            =   27180
      Picture         =   "Maindis0.frx":BCFF38
      Top             =   14145
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   405
      Left            =   27165
      Picture         =   "Maindis0.frx":BD0299
      Top             =   14670
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   406
      Left            =   27180
      Picture         =   "Maindis0.frx":BD05FA
      Top             =   15195
      Width           =   165
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   68
      Left            =   20280
      Shape           =   5  'Rounded Square
      Top             =   4620
      Width           =   465
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   903
      Left            =   17250
      Picture         =   "Maindis0.frx":BD095B
      Tag             =   "704"
      Top             =   20145
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   14
      Left            =   17235
      Picture         =   "Maindis0.frx":BD0CC9
      Tag             =   "704"
      Top             =   20715
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   303
      Left            =   22830
      Picture         =   "Maindis0.frx":BD1035
      Top             =   1905
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   904
      Left            =   27060
      Picture         =   "Maindis0.frx":BD138C
      Tag             =   "911"
      Top             =   21345
      Width           =   105
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   34
      Left            =   23715
      Picture         =   "Maindis0.frx":BD16E4
      Tag             =   "607"
      Top             =   4545
      Width           =   165
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10012
      Left            =   1950
      Shape           =   5  'Rounded Square
      Top             =   17550
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   611
      Left            =   22875
      Picture         =   "Maindis0.frx":BD1765
      Tag             =   "609"
      Top             =   5985
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   13
      Left            =   2100
      Picture         =   "Maindis0.frx":BD1AC1
      Tag             =   "710"
      Top             =   17940
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   1107
      Left            =   2115
      Picture         =   "Maindis0.frx":BD1E2D
      Tag             =   "710"
      Top             =   17355
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   3402
      Left            =   26160
      Picture         =   "Maindis0.frx":BD219B
      Tag             =   "1403"
      Top             =   2700
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   3301
      Left            =   26355
      Picture         =   "Maindis0.frx":BD221C
      Tag             =   "1303"
      Top             =   3915
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   3302
      Left            =   26340
      Picture         =   "Maindis0.frx":BD229D
      Tag             =   "1302"
      Top             =   3285
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   3303
      Left            =   26160
      Picture         =   "Maindis0.frx":BD231E
      Tag             =   "1401"
      Top             =   3915
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   3304
      Left            =   26145
      Picture         =   "Maindis0.frx":BD239F
      Tag             =   "1502"
      Top             =   885
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   3201
      Left            =   26340
      Picture         =   "Maindis0.frx":BD2420
      Tag             =   "1203"
      Top             =   1545
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   3202
      Left            =   26340
      Picture         =   "Maindis0.frx":BD24A1
      Tag             =   "1202"
      Top             =   885
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   3203
      Left            =   26340
      Picture         =   "Maindis0.frx":BD2522
      Tag             =   "1301"
      Top             =   2715
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   3204
      Left            =   26340
      Picture         =   "Maindis0.frx":BD25A3
      Tag             =   "1204"
      Top             =   2130
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   3104
      Left            =   26160
      Picture         =   "Maindis0.frx":BD2624
      Tag             =   "1503"
      Top             =   300
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   3103
      Left            =   26340
      Picture         =   "Maindis0.frx":BD26A5
      Tag             =   "1201"
      Top             =   300
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   3102
      Left            =   26160
      Picture         =   "Maindis0.frx":BD2726
      Tag             =   "1404"
      Top             =   2130
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   3101
      Left            =   26160
      Picture         =   "Maindis0.frx":BD27A7
      Tag             =   "1501"
      Top             =   1560
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1502
      Left            =   23430
      Picture         =   "Maindis0.frx":BD2828
      Tag             =   "510"
      Top             =   9780
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1412
      Left            =   22440
      Picture         =   "Maindis0.frx":BD2B89
      Tag             =   "510"
      Top             =   9780
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   409
      Left            =   27465
      Picture         =   "Maindis0.frx":BD2EEA
      Top             =   15180
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1413
      Left            =   25800
      Picture         =   "Maindis0.frx":BD324E
      Tag             =   "1113"
      Top             =   4335
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1409
      Left            =   26685
      Picture         =   "Maindis0.frx":BD35B2
      Tag             =   "1114"
      Top             =   4320
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   313
      Left            =   4560
      Picture         =   "Maindis0.frx":BD3916
      Tag             =   "313"
      Top             =   17700
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1405
      Left            =   1575
      Picture         =   "Maindis0.frx":BD3C77
      Tag             =   "709"
      Top             =   17700
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1408
      Left            =   2535
      Picture         =   "Maindis0.frx":BD3FD8
      Tag             =   "713"
      Top             =   17700
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1503
      Left            =   975
      Picture         =   "Maindis0.frx":BD4339
      Tag             =   "1016"
      Top             =   19425
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1406
      Left            =   15600
      Picture         =   "Maindis0.frx":BD469A
      Tag             =   "101"
      Top             =   21150
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1403
      Left            =   22710
      Picture         =   "Maindis0.frx":BD49FD
      Tag             =   "805"
      Top             =   540
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   401
      Left            =   27165
      Picture         =   "Maindis0.frx":BD4D61
      Top             =   12570
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   613
      Left            =   23835
      Picture         =   "Maindis0.frx":BD50C2
      Tag             =   "514"
      Top             =   4080
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   316
      Left            =   1845
      Picture         =   "Maindis0.frx":BD5419
      Tag             =   "213"
      Top             =   20280
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   612
      Left            =   25440
      Picture         =   "Maindis0.frx":BD579F
      Tag             =   "305"
      Top             =   5175
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   604
      Left            =   17460
      Picture         =   "Maindis0.frx":BD5AF6
      Tag             =   "513"
      Top             =   21420
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   410
      Left            =   21420
      Picture         =   "Maindis0.frx":BD5E4E
      Top             =   21300
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   911
      Left            =   20550
      Picture         =   "Maindis0.frx":BD61A6
      Tag             =   "1005"
      Top             =   4095
      Width           =   165
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   67
      Left            =   15510
      Shape           =   5  'Rounded Square
      Top             =   18060
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   66
      Left            =   20280
      Shape           =   5  'Rounded Square
      Top             =   7380
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   65
      Left            =   9375
      Shape           =   5  'Rounded Square
      Top             =   14085
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   64
      Left            =   10755
      Shape           =   5  'Rounded Square
      Top             =   14085
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   63
      Left            =   10290
      Shape           =   5  'Rounded Square
      Top             =   14085
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   62
      Left            =   9825
      Shape           =   5  'Rounded Square
      Top             =   14085
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   60
      Left            =   8910
      Shape           =   5  'Rounded Square
      Top             =   14085
      Width           =   465
   End
   Begin VB.Image picX 
      Height          =   75
      Index           =   307
      Left            =   26385
      Picture         =   "Maindis0.frx":BD6502
      Tag             =   "307"
      Top             =   5025
      Width           =   750
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   307
      Left            =   23610
      Picture         =   "Maindis0.frx":BD6875
      Tag             =   "806"
      Top             =   540
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   306
      Left            =   23610
      Picture         =   "Maindis0.frx":BD6BD9
      Top             =   1920
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   308
      Left            =   23745
      Picture         =   "Maindis0.frx":BD6F3D
      Tag             =   "308"
      Top             =   1890
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   315
      Left            =   28095
      Picture         =   "Maindis0.frx":BD7294
      Top             =   11160
      Width           =   165
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   165
      Left            =   21795
      Shape           =   5  'Rounded Square
      Top             =   13365
      Width           =   465
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   302
      Left            =   22710
      Picture         =   "Maindis0.frx":BD75EB
      Top             =   1935
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   907
      Left            =   18090
      Picture         =   "Maindis0.frx":BD794F
      Tag             =   "1104"
      Top             =   20490
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   30
      Left            =   3075
      Picture         =   "Maindis0.frx":BD7CB0
      Tag             =   "707"
      Top             =   17700
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   18
      Left            =   5940
      Picture         =   "Maindis0.frx":BD7D31
      Tag             =   "203"
      Top             =   20490
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   312
      Left            =   27465
      Picture         =   "Maindis0.frx":BD7DB2
      Top             =   10740
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   906
      Left            =   27465
      Picture         =   "Maindis0.frx":BD8116
      Tag             =   "1103"
      Top             =   11850
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   33
      Left            =   22740
      Picture         =   "Maindis0.frx":BD847A
      Tag             =   "611"
      Top             =   4575
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   32
      Left            =   11760
      Picture         =   "Maindis0.frx":BD84FB
      Tag             =   "104"
      Top             =   19440
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   905
      Left            =   23835
      Picture         =   "Maindis0.frx":BD857C
      Tag             =   "605"
      Top             =   5925
      Width           =   165
   End
   Begin VB.Image picX_NC 
      Height          =   930
      Index           =   616
      Left            =   10185
      Picture         =   "Maindis0.frx":BD88D3
      Tag             =   "1116"
      Top             =   15570
      Width           =   2430
   End
   Begin VB.Image picStartStop 
      Height          =   165
      Index           =   104
      Left            =   27015
      Picture         =   "Maindis0.frx":BDFF45
      Top             =   14160
      Width           =   165
   End
   Begin VB.Image picStartStop 
      Height          =   165
      Index           =   106
      Left            =   27015
      Picture         =   "Maindis0.frx":BE02A7
      Top             =   15195
      Width           =   165
   End
   Begin VB.Image picStartStop 
      Height          =   165
      Index           =   103
      Left            =   27030
      Picture         =   "Maindis0.frx":BE0609
      Top             =   13635
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1115
      Left            =   26970
      Picture         =   "Maindis0.frx":BE096B
      Tag             =   "310"
      Top             =   5520
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1004
      Left            =   16905
      Picture         =   "Maindis0.frx":BE0CC2
      Tag             =   "702"
      Top             =   20595
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   805
      Left            =   7650
      Picture         =   "Maindis0.frx":BE101A
      Tag             =   "115"
      Top             =   20625
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   413
      Left            =   18930
      Picture         =   "Maindis0.frx":BE1372
      Top             =   20490
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1101
      Left            =   4755
      Picture         =   "Maindis0.frx":BE16D3
      Tag             =   "712"
      Top             =   16965
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1104
      Left            =   4800
      Picture         =   "Maindis0.frx":BE1A2A
      Tag             =   "710"
      Top             =   17130
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1103
      Left            =   4755
      Picture         =   "Maindis0.frx":BE1D81
      Tag             =   "711"
      Top             =   16320
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1402
      Left            =   12855
      Picture         =   "Maindis0.frx":BE20D8
      Tag             =   "107"
      Top             =   21090
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1109
      Left            =   15540
      Picture         =   "Maindis0.frx":BE243B
      Tag             =   "414"
      Top             =   14790
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   910
      Left            =   27300
      Picture         =   "Maindis0.frx":BE2792
      Top             =   21165
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   416
      Left            =   27465
      Picture         =   "Maindis0.frx":BE2AE9
      Top             =   21135
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   716
      Left            =   22845
      Picture         =   "Maindis0.frx":BE2E4D
      Tag             =   "513"
      Top             =   4125
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   305
      Left            =   25785
      Picture         =   "Maindis0.frx":BE31A4
      Tag             =   "305"
      Top             =   5655
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   902
      Left            =   27885
      Picture         =   "Maindis0.frx":BE3508
      Tag             =   "1102"
      Top             =   11280
      Width           =   165
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10013
      Left            =   19575
      Shape           =   5  'Rounded Square
      Top             =   2640
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10005
      Left            =   22230
      Shape           =   5  'Rounded Square
      Top             =   0
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   301
      Left            =   11460
      Picture         =   "Maindis0.frx":BE3869
      Tag             =   "108"
      Top             =   20370
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1308
      Left            =   23220
      Picture         =   "Maindis0.frx":BE3BC1
      Tag             =   "604"
      Top             =   4680
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1309
      Left            =   19380
      Picture         =   "Maindis0.frx":BE3F22
      Tag             =   "1106"
      Top             =   1935
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1304
      Left            =   20100
      Picture         =   "Maindis0.frx":BE4283
      Tag             =   "316"
      Top             =   11235
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   812
      Left            =   21105
      Picture         =   "Maindis0.frx":BE45E4
      Tag             =   "615"
      Top             =   2580
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   811
      Left            =   24480
      Picture         =   "Maindis0.frx":BE4948
      Tag             =   "416"
      Top             =   5070
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   710
      Left            =   18825
      Picture         =   "Maindis0.frx":BE4C9F
      Tag             =   "510"
      Top             =   20505
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   705
      Left            =   14400
      Picture         =   "Maindis0.frx":BE4FF7
      Tag             =   "102"
      Top             =   20385
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   309
      Left            =   26730
      Picture         =   "Maindis0.frx":BE534F
      Tag             =   "309"
      Top             =   5655
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   43
      Left            =   21780
      Picture         =   "Maindis0.frx":BE56B3
      Tag             =   "904"
      Top             =   1590
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   42
      Left            =   17775
      Picture         =   "Maindis0.frx":BE5734
      Tag             =   "615"
      Top             =   1920
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   37
      Left            =   16275
      Picture         =   "Maindis0.frx":BE57B5
      Tag             =   "1006"
      Top             =   14205
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   23
      Left            =   27465
      Picture         =   "Maindis0.frx":BE5836
      Tag             =   "813"
      Top             =   15405
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   314
      Left            =   18645
      Picture         =   "Maindis0.frx":BE58B7
      Tag             =   "1109"
      Top             =   12465
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   314
      Left            =   28095
      Picture         =   "Maindis0.frx":BE5C1B
      Top             =   11730
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   306
      Left            =   20565
      Picture         =   "Maindis0.frx":BE5F77
      Tag             =   "916"
      Top             =   10065
      Width           =   165
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   53
      Left            =   20280
      Shape           =   5  'Rounded Square
      Top             =   6915
      Width           =   465
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   604
      Left            =   4905
      Picture         =   "Maindis0.frx":BE62D3
      Tag             =   "1107"
      Top             =   16425
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   411
      Left            =   6330
      Picture         =   "Maindis0.frx":BE6637
      Tag             =   "203"
      Top             =   21075
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   407
      Left            =   20625
      Picture         =   "Maindis0.frx":BE699A
      Top             =   21090
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   415
      Left            =   135
      Picture         =   "Maindis0.frx":BE6CFD
      Tag             =   "211"
      Top             =   19530
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   414
      Left            =   9930
      Picture         =   "Maindis0.frx":BE7060
      Tag             =   "113"
      Top             =   21060
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   505
      Left            =   18840
      Picture         =   "Maindis0.frx":BE73C3
      Tag             =   "806"
      Top             =   12990
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   503
      Left            =   18840
      Picture         =   "Maindis0.frx":BE771A
      Tag             =   "805"
      Top             =   12375
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   504
      Left            =   20580
      Picture         =   "Maindis0.frx":BE7A71
      Tag             =   "1002"
      Top             =   9105
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   502
      Left            =   20595
      Picture         =   "Maindis0.frx":BE7DC8
      Tag             =   "1001"
      Top             =   9900
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   503
      Left            =   21915
      Picture         =   "Maindis0.frx":BE811F
      Tag             =   "1112"
      Top             =   11940
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   501
      Left            =   20430
      Picture         =   "Maindis0.frx":BE8482
      Tag             =   "804"
      Top             =   3990
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   502
      Left            =   21915
      Picture         =   "Maindis0.frx":BE87E5
      Tag             =   "511"
      Top             =   13185
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   509
      Left            =   18645
      Picture         =   "Maindis0.frx":BE8B48
      Tag             =   "315"
      Top             =   13260
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   507
      Left            =   22725
      Picture         =   "Maindis0.frx":BE8EAB
      Tag             =   "611"
      Top             =   4725
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   505
      Left            =   21780
      Picture         =   "Maindis0.frx":BE920E
      Tag             =   "807"
      Top             =   555
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   506
      Left            =   23715
      Picture         =   "Maindis0.frx":BE9571
      Tag             =   "601"
      Top             =   5865
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   504
      Left            =   22740
      Picture         =   "Maindis0.frx":BE98D4
      Tag             =   "607"
      Top             =   5910
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   508
      Left            =   23715
      Picture         =   "Maindis0.frx":BE9C37
      Tag             =   "605"
      Top             =   4695
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   311
      Left            =   23625
      Picture         =   "Maindis0.frx":BE9F9A
      Tag             =   "502"
      Top             =   12885
      Width           =   105
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   21
      Left            =   22320
      Picture         =   "Maindis0.frx":BEA2F2
      Top             =   8550
      Width           =   315
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1112
      Left            =   25440
      Picture         =   "Maindis0.frx":BEA874
      Tag             =   "304"
      Top             =   5460
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   20
      Left            =   25800
      Picture         =   "Maindis0.frx":BEABCB
      Tag             =   "409"
      Top             =   21420
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   508
      Left            =   21900
      Picture         =   "Maindis0.frx":BEAC4C
      Tag             =   "816"
      Top             =   645
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   305
      Left            =   27060
      Picture         =   "Maindis0.frx":BEAFA3
      Tag             =   "309"
      Top             =   5175
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1116
      Left            =   17220
      Picture         =   "Maindis0.frx":BEB2FF
      Tag             =   "512"
      Top             =   21240
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   309
      Left            =   23640
      Picture         =   "Maindis0.frx":BEB657
      Tag             =   "504"
      Top             =   13995
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   312
      Left            =   23595
      Picture         =   "Maindis0.frx":BEB9AF
      Tag             =   "501"
      Top             =   12405
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   807
      Left            =   765
      Picture         =   "Maindis0.frx":BEBD07
      Tag             =   "211"
      Top             =   21030
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1110
      Left            =   15525
      Picture         =   "Maindis0.frx":BEC05F
      Tag             =   "1001"
      Top             =   21420
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1407
      Left            =   16680
      Picture         =   "Maindis0.frx":BEC3C0
      Tag             =   "314"
      Top             =   14205
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   19
      Left            =   2655
      Picture         =   "Maindis0.frx":BEC721
      Tag             =   "209"
      Top             =   20895
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   15
      Left            =   15435
      Picture         =   "Maindis0.frx":BEC7A2
      Tag             =   "101"
      Top             =   20490
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1005
      Left            =   12870
      Picture         =   "Maindis0.frx":BEC823
      Tag             =   "1002"
      Top             =   21420
      Width           =   165
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   22
      Left            =   23295
      Picture         =   "Maindis0.frx":BECB84
      Top             =   8535
      Width           =   315
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   808
      Left            =   8535
      Picture         =   "Maindis0.frx":BED106
      Tag             =   "114"
      Top             =   20385
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   408
      Left            =   20610
      Picture         =   "Maindis0.frx":BED45E
      Top             =   21420
      Width           =   165
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   18
      Left            =   5730
      Picture         =   "Maindis0.frx":BED7BF
      Top             =   19815
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   28
      Left            =   4665
      Picture         =   "Maindis0.frx":BEDD41
      Top             =   19815
      Width           =   315
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   24
      Left            =   19845
      Picture         =   "Maindis0.frx":BEE2C3
      Tag             =   "412"
      Top             =   21420
      Width           =   165
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   17
      Left            =   9210
      Picture         =   "Maindis0.frx":BEE344
      Top             =   19935
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   25
      Left            =   14325
      Picture         =   "Maindis0.frx":BEE8C6
      Top             =   19815
      Width           =   315
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   808
      Left            =   22470
      Picture         =   "Maindis0.frx":BEEE48
      Tag             =   "1110"
      Top             =   12165
      Width           =   165
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   50
      Left            =   28440
      Shape           =   5  'Rounded Square
      Top             =   12420
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   49
      Left            =   29820
      Shape           =   5  'Rounded Square
      Top             =   12420
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   48
      Left            =   29355
      Shape           =   5  'Rounded Square
      Top             =   12420
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   47
      Left            =   28890
      Shape           =   5  'Rounded Square
      Top             =   12420
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   46
      Left            =   12150
      Shape           =   5  'Rounded Square
      Top             =   14085
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   45
      Left            =   11685
      Shape           =   5  'Rounded Square
      Top             =   14085
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   44
      Left            =   11220
      Shape           =   5  'Rounded Square
      Top             =   14085
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   43
      Left            =   12600
      Shape           =   5  'Rounded Square
      Top             =   14085
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   39
      Left            =   13050
      Shape           =   5  'Rounded Square
      Top             =   14085
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   21
      Left            =   14445
      Shape           =   5  'Rounded Square
      Top             =   14085
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   20
      Left            =   13980
      Shape           =   5  'Rounded Square
      Top             =   14085
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   17
      Left            =   13515
      Shape           =   5  'Rounded Square
      Top             =   14085
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   9
      Left            =   14895
      Shape           =   5  'Rounded Square
      Top             =   14085
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   8
      Left            =   15510
      Shape           =   5  'Rounded Square
      Top             =   16665
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   5
      Left            =   15510
      Shape           =   5  'Rounded Square
      Top             =   17130
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   0
      Left            =   15510
      Shape           =   5  'Rounded Square
      Top             =   17595
      Width           =   465
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   29
      Left            =   1530
      Picture         =   "Maindis0.frx":BEF1A9
      Top             =   20190
      Width           =   315
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1302
      Left            =   15375
      Picture         =   "Maindis0.frx":BEF72B
      Tag             =   "411"
      Top             =   14205
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1307
      Left            =   22230
      Picture         =   "Maindis0.frx":BEFA8C
      Tag             =   "610"
      Top             =   4725
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   507
      Left            =   27360
      Picture         =   "Maindis0.frx":BEFDED
      Top             =   11910
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   801
      Left            =   2400
      Picture         =   "Maindis0.frx":BF0144
      Tag             =   "711"
      Top             =   17790
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1114
      Left            =   17850
      Picture         =   "Maindis0.frx":BF04A8
      Tag             =   "511"
      Top             =   21300
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   708
      Left            =   18735
      Picture         =   "Maindis0.frx":BF0800
      Tag             =   "509"
      Top             =   20370
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   909
      Left            =   26865
      Picture         =   "Maindis0.frx":BF0B58
      Top             =   21240
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   908
      Left            =   18300
      Picture         =   "Maindis0.frx":BF0EB0
      Tag             =   "808"
      Top             =   1800
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   908
      Left            =   18300
      Picture         =   "Maindis0.frx":BF1208
      Tag             =   "415"
      Top             =   1920
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   304
      Left            =   13590
      Picture         =   "Maindis0.frx":BF1569
      Tag             =   "103"
      Top             =   20610
      Width           =   105
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   214
      Left            =   25575
      Shape           =   5  'Rounded Square
      Top             =   165
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   213
      Left            =   25575
      Shape           =   5  'Rounded Square
      Top             =   765
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   212
      Left            =   25575
      Shape           =   5  'Rounded Square
      Top             =   1380
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   211
      Left            =   25575
      Shape           =   5  'Rounded Square
      Top             =   1950
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   210
      Left            =   25575
      Shape           =   5  'Rounded Square
      Top             =   2565
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   209
      Left            =   25575
      Shape           =   5  'Rounded Square
      Top             =   3150
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   208
      Left            =   25575
      Shape           =   5  'Rounded Square
      Top             =   3765
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   207
      Left            =   26565
      Shape           =   5  'Rounded Square
      Top             =   3720
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   205
      Left            =   26565
      Shape           =   5  'Rounded Square
      Top             =   2550
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   204
      Left            =   26565
      Shape           =   5  'Rounded Square
      Top             =   1935
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   203
      Left            =   26565
      Shape           =   5  'Rounded Square
      Top             =   1350
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   206
      Left            =   26565
      Shape           =   5  'Rounded Square
      Top             =   3135
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   201
      Left            =   26565
      Shape           =   5  'Rounded Square
      Top             =   135
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   164
      Left            =   27075
      Shape           =   5  'Rounded Square
      Top             =   5820
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   163
      Left            =   26565
      Shape           =   5  'Rounded Square
      Top             =   4515
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   162
      Left            =   25635
      Shape           =   5  'Rounded Square
      Top             =   4515
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   161
      Left            =   26565
      Shape           =   5  'Rounded Square
      Top             =   5115
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00808000&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   148
      Left            =   18885
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   158
      Left            =   21855
      Shape           =   5  'Rounded Square
      Top             =   9750
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   157
      Left            =   4545
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   159
      Left            =   24255
      Shape           =   5  'Rounded Square
      Top             =   4260
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   151
      Left            =   5610
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   147
      Left            =   18450
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   146
      Left            =   17985
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   144
      Left            =   25275
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   143
      Left            =   24810
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   142
      Left            =   24345
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   141
      Left            =   23880
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   152
      Left            =   11070
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   155
      Left            =   22545
      Shape           =   5  'Rounded Square
      Top             =   14955
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   153
      Left            =   12120
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   154
      Left            =   16710
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00C0C000&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   149
      Left            =   19350
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00808000&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   160
      Left            =   25665
      Shape           =   5  'Rounded Square
      Top             =   5145
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   156
      Left            =   21795
      Shape           =   5  'Rounded Square
      Top             =   12240
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   8
      Left            =   24210
      Shape           =   5  'Rounded Square
      Top             =   12945
      Width           =   465
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1115
      Left            =   26145
      Picture         =   "Maindis0.frx":BF18C1
      Tag             =   "1115"
      Top             =   21420
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1311
      Left            =   15645
      Picture         =   "Maindis0.frx":BF1C22
      Tag             =   "410"
      Top             =   14685
      Width           =   165
   End
   Begin VB.Image picStartStop 
      Height          =   165
      Index           =   201
      Left            =   23415
      Picture         =   "Maindis0.frx":BF1F85
      Top             =   12555
      Width           =   165
   End
   Begin VB.Image picStartStop 
      Height          =   165
      Index           =   202
      Left            =   23415
      Picture         =   "Maindis0.frx":BF22E7
      Top             =   13095
      Width           =   165
   End
   Begin VB.Image picStartStop 
      Height          =   165
      Index           =   203
      Left            =   23415
      Picture         =   "Maindis0.frx":BF2649
      Top             =   13620
      Width           =   165
   End
   Begin VB.Image picStartStop 
      Height          =   165
      Index           =   205
      Left            =   23415
      Picture         =   "Maindis0.frx":BF29AB
      Top             =   14670
      Width           =   165
   End
   Begin VB.Image picStartStop 
      Height          =   165
      Index           =   206
      Left            =   23415
      Picture         =   "Maindis0.frx":BF2D0D
      Top             =   15195
      Width           =   165
   End
   Begin VB.Image picStartStop 
      Height          =   165
      Index           =   204
      Left            =   23415
      Picture         =   "Maindis0.frx":BF306F
      Top             =   14145
      Width           =   165
   End
   Begin VB.Image picStartStop 
      Height          =   165
      Index           =   105
      Left            =   27015
      Picture         =   "Maindis0.frx":BF33D1
      Top             =   14685
      Width           =   165
   End
   Begin VB.Image picStartStop 
      Height          =   165
      Index           =   102
      Left            =   27000
      Picture         =   "Maindis0.frx":BF3733
      Top             =   13095
      Width           =   165
   End
   Begin VB.Image picStartStop 
      Height          =   165
      Index           =   11
      Left            =   1020
      Picture         =   "Maindis0.frx":BF3A95
      Top             =   -300
      Width           =   165
   End
   Begin VB.Image picStartStop 
      Height          =   165
      Index           =   101
      Left            =   26985
      Picture         =   "Maindis0.frx":BF3DF7
      Top             =   12570
      Width           =   165
   End
   Begin VB.Shape shp_LoadingHighlight 
      BackColor       =   &H0000FF00&
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   525
      Index           =   201
      Left            =   26520
      Shape           =   4  'Rounded Rectangle
      Top             =   105
      Width           =   525
   End
   Begin VB.Shape shp_LoadingHighlight 
      BackColor       =   &H0000FF00&
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   525
      Index           =   203
      Left            =   26520
      Shape           =   4  'Rounded Rectangle
      Top             =   1320
      Width           =   525
   End
   Begin VB.Shape shp_LoadingHighlight 
      BackColor       =   &H0000FF00&
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   525
      Index           =   205
      Left            =   26520
      Shape           =   4  'Rounded Rectangle
      Top             =   2505
      Width           =   525
   End
   Begin VB.Shape shp_LoadingHighlight 
      BackColor       =   &H0000FF00&
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   525
      Index           =   207
      Left            =   26520
      Shape           =   4  'Rounded Rectangle
      Top             =   3675
      Width           =   525
   End
   Begin VB.Shape shp_LoadingHighlight 
      BackColor       =   &H0000FF00&
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   525
      Index           =   209
      Left            =   25545
      Shape           =   4  'Rounded Rectangle
      Top             =   3120
      Width           =   525
   End
   Begin VB.Shape shp_LoadingHighlight 
      BackColor       =   &H0000FF00&
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   525
      Index           =   211
      Left            =   25545
      Shape           =   4  'Rounded Rectangle
      Top             =   1935
      Width           =   525
   End
   Begin VB.Shape shp_LoadingHighlight 
      BackColor       =   &H0000FF00&
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   525
      Index           =   213
      Left            =   25545
      Shape           =   4  'Rounded Rectangle
      Top             =   720
      Width           =   525
   End
   Begin VB.Shape shp_LoadingHighlight 
      BackColor       =   &H0000FF00&
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   525
      Index           =   204
      Left            =   26520
      Shape           =   4  'Rounded Rectangle
      Top             =   1905
      Width           =   525
   End
   Begin VB.Shape shp_LoadingHighlight 
      BackColor       =   &H0000FF00&
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   525
      Index           =   206
      Left            =   26520
      Shape           =   4  'Rounded Rectangle
      Top             =   3105
      Width           =   525
   End
   Begin VB.Shape shp_LoadingHighlight 
      BackColor       =   &H0000FF00&
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   525
      Index           =   208
      Left            =   25545
      Shape           =   4  'Rounded Rectangle
      Top             =   3720
      Width           =   525
   End
   Begin VB.Shape shp_LoadingHighlight 
      BackColor       =   &H0000FF00&
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   525
      Index           =   210
      Left            =   25545
      Shape           =   4  'Rounded Rectangle
      Top             =   2535
      Width           =   525
   End
   Begin VB.Shape shp_LoadingHighlight 
      BackColor       =   &H0000FF00&
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   525
      Index           =   212
      Left            =   25545
      Shape           =   4  'Rounded Rectangle
      Top             =   1335
      Width           =   525
   End
   Begin VB.Shape shp_LoadingHighlight 
      BackColor       =   &H0000FF00&
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   525
      Index           =   214
      Left            =   25545
      Shape           =   4  'Rounded Rectangle
      Top             =   135
      Width           =   525
   End
   Begin VB.Shape shp_LoadingHighlight 
      BackColor       =   &H0000FF00&
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   525
      Index           =   202
      Left            =   26520
      Shape           =   4  'Rounded Rectangle
      Top             =   705
      Width           =   525
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   18
      Left            =   26070
      Shape           =   5  'Rounded Square
      Top             =   13470
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   136
      Left            =   21540
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   26
      Left            =   6075
      Picture         =   "Maindis0.frx":BF4159
      Tag             =   "1011"
      Top             =   21420
      Width           =   165
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   17
      Left            =   25605
      Shape           =   5  'Rounded Square
      Top             =   13470
      Width           =   465
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   44
      Left            =   19050
      Picture         =   "Maindis0.frx":BF41DA
      Tag             =   "807"
      Top             =   11235
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   412
      Left            =   21345
      Picture         =   "Maindis0.frx":BF425B
      Top             =   21420
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   22
      Left            =   27465
      Picture         =   "Maindis0.frx":BF45BC
      Tag             =   "316"
      Top             =   12015
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   31
      Left            =   510
      Picture         =   "Maindis0.frx":BF463D
      Tag             =   "212"
      Top             =   17700
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   402
      Left            =   27165
      Picture         =   "Maindis0.frx":BF46BE
      Top             =   13080
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   609
      Left            =   16485
      Picture         =   "Maindis0.frx":BF4A1F
      Tag             =   "1105"
      Top             =   21405
      Width           =   165
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   202
      Left            =   26565
      Shape           =   5  'Rounded Square
      Top             =   735
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   5
      Left            =   25605
      Shape           =   5  'Rounded Square
      Top             =   12435
      Width           =   465
   End
   Begin VB.Label lblWeight 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   201
      Left            =   27690
      TabIndex        =   88
      Top             =   225
      Width           =   465
   End
   Begin VB.Label lblWeight 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   203
      Left            =   27690
      TabIndex        =   87
      Top             =   1425
      Width           =   465
   End
   Begin VB.Label lblWeight 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   205
      Left            =   27690
      TabIndex        =   86
      Top             =   2655
      Width           =   465
   End
   Begin VB.Label lblWeight 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   207
      Left            =   27690
      TabIndex        =   85
      Top             =   3795
      Width           =   465
   End
   Begin VB.Label lblWeight 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   202
      Left            =   27690
      TabIndex        =   84
      Top             =   825
      Width           =   465
   End
   Begin VB.Label lblWeight 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   204
      Left            =   27690
      TabIndex        =   83
      Top             =   1980
      Width           =   465
   End
   Begin VB.Label lblWeight 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   206
      Left            =   27690
      TabIndex        =   82
      Top             =   3225
      Width           =   465
   End
   Begin VB.Label lblWeight 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   208
      Left            =   24885
      TabIndex        =   81
      Top             =   3585
      Width           =   465
   End
   Begin VB.Label lblWeight 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   214
      Left            =   24855
      TabIndex        =   80
      Top             =   30
      Width           =   465
   End
   Begin VB.Label lblWeight 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   212
      Left            =   24900
      TabIndex        =   79
      Top             =   1215
      Width           =   465
   End
   Begin VB.Label lblWeight 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   210
      Left            =   24885
      TabIndex        =   78
      Top             =   2430
      Width           =   465
   End
   Begin VB.Label lblWeight 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   213
      Left            =   24900
      TabIndex        =   77
      Top             =   630
      Width           =   465
   End
   Begin VB.Label lblWeight 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   211
      Left            =   24885
      TabIndex        =   76
      Top             =   1800
      Width           =   465
   End
   Begin VB.Label lblWeight 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Index           =   209
      Left            =   24885
      TabIndex        =   75
      Top             =   3015
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1
      Left            =   23745
      Shape           =   5  'Rounded Square
      Top             =   12435
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   2
      Left            =   24210
      Shape           =   5  'Rounded Square
      Top             =   12435
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   3
      Left            =   24675
      Shape           =   5  'Rounded Square
      Top             =   12435
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   4
      Left            =   25140
      Shape           =   5  'Rounded Square
      Top             =   12435
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   10
      Left            =   25140
      Shape           =   5  'Rounded Square
      Top             =   12945
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   11
      Left            =   25605
      Shape           =   5  'Rounded Square
      Top             =   12945
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   12
      Left            =   26070
      Shape           =   5  'Rounded Square
      Top             =   12945
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   13
      Left            =   23745
      Shape           =   5  'Rounded Square
      Top             =   13470
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   14
      Left            =   24210
      Shape           =   5  'Rounded Square
      Top             =   13470
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   19
      Left            =   23745
      Shape           =   5  'Rounded Square
      Top             =   13980
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   20
      Left            =   24210
      Shape           =   5  'Rounded Square
      Top             =   13980
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   21
      Left            =   24675
      Shape           =   5  'Rounded Square
      Top             =   13980
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   22
      Left            =   25140
      Shape           =   5  'Rounded Square
      Top             =   13980
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   23
      Left            =   25605
      Shape           =   5  'Rounded Square
      Top             =   13980
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   24
      Left            =   26070
      Shape           =   5  'Rounded Square
      Top             =   13980
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   25
      Left            =   23745
      Shape           =   5  'Rounded Square
      Top             =   14520
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   28
      Left            =   25140
      Shape           =   5  'Rounded Square
      Top             =   14520
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   29
      Left            =   25605
      Shape           =   5  'Rounded Square
      Top             =   14520
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   30
      Left            =   26070
      Shape           =   5  'Rounded Square
      Top             =   14520
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   31
      Left            =   23745
      Shape           =   5  'Rounded Square
      Top             =   15060
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   32
      Left            =   24210
      Shape           =   5  'Rounded Square
      Top             =   15060
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   33
      Left            =   24675
      Shape           =   5  'Rounded Square
      Top             =   15060
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   34
      Left            =   25140
      Shape           =   5  'Rounded Square
      Top             =   15060
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   7
      Left            =   23745
      Shape           =   5  'Rounded Square
      Top             =   12945
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   36
      Left            =   26070
      Shape           =   5  'Rounded Square
      Top             =   15060
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   50
      Left            =   23565
      Shape           =   5  'Rounded Square
      Top             =   4965
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   51
      Left            =   23580
      Shape           =   5  'Rounded Square
      Top             =   6030
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   52
      Left            =   23580
      Shape           =   5  'Rounded Square
      Top             =   6480
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   53
      Left            =   23580
      Shape           =   5  'Rounded Square
      Top             =   6945
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   54
      Left            =   23580
      Shape           =   5  'Rounded Square
      Top             =   7395
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   55
      Left            =   23580
      Shape           =   5  'Rounded Square
      Top             =   7860
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   60
      Left            =   22575
      Shape           =   5  'Rounded Square
      Top             =   4995
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   61
      Left            =   22590
      Shape           =   5  'Rounded Square
      Top             =   6090
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   62
      Left            =   22590
      Shape           =   5  'Rounded Square
      Top             =   6525
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   63
      Left            =   22590
      Shape           =   5  'Rounded Square
      Top             =   6975
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00C0C000&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   140
      Left            =   23415
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00808000&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   129
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   17910
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   134
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   15600
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   133
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   16050
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   132
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   16515
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   64
      Left            =   22590
      Shape           =   5  'Rounded Square
      Top             =   7425
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   65
      Left            =   22590
      Shape           =   5  'Rounded Square
      Top             =   7860
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   70
      Left            =   21255
      Shape           =   5  'Rounded Square
      Top             =   2640
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   71
      Left            =   22035
      Shape           =   5  'Rounded Square
      Top             =   2640
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   72
      Left            =   22485
      Shape           =   5  'Rounded Square
      Top             =   2640
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   73
      Left            =   22950
      Shape           =   5  'Rounded Square
      Top             =   2640
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   75
      Left            =   17085
      Shape           =   5  'Rounded Square
      Top             =   20355
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   76
      Left            =   18225
      Shape           =   5  'Rounded Square
      Top             =   20355
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   77
      Left            =   19110
      Shape           =   5  'Rounded Square
      Top             =   20355
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   78
      Left            =   19575
      Shape           =   5  'Rounded Square
      Top             =   20355
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   79
      Left            =   20040
      Shape           =   5  'Rounded Square
      Top             =   20355
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   80
      Left            =   13785
      Shape           =   5  'Rounded Square
      Top             =   20340
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   81
      Left            =   14505
      Shape           =   5  'Rounded Square
      Top             =   20340
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   82
      Left            =   14970
      Shape           =   5  'Rounded Square
      Top             =   20340
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   85
      Left            =   10680
      Shape           =   5  'Rounded Square
      Top             =   20325
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   86
      Left            =   11565
      Shape           =   5  'Rounded Square
      Top             =   20325
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   87
      Left            =   12015
      Shape           =   5  'Rounded Square
      Top             =   20325
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   90
      Left            =   7830
      Shape           =   5  'Rounded Square
      Top             =   20340
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   91
      Left            =   8640
      Shape           =   5  'Rounded Square
      Top             =   20340
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   92
      Left            =   9105
      Shape           =   5  'Rounded Square
      Top             =   20340
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   95
      Left            =   4170
      Shape           =   5  'Rounded Square
      Top             =   20340
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   96
      Left            =   5025
      Shape           =   5  'Rounded Square
      Top             =   20340
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   97
      Left            =   5490
      Shape           =   5  'Rounded Square
      Top             =   20340
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   100
      Left            =   930
      Shape           =   5  'Rounded Square
      Top             =   20730
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   101
      Left            =   1710
      Shape           =   5  'Rounded Square
      Top             =   20730
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   102
      Left            =   2175
      Shape           =   5  'Rounded Square
      Top             =   20730
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   110
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   10260
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   111
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   9795
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   112
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   9330
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   113
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   8880
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   114
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   8430
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   115
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   7965
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   116
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   7500
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   117
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   7020
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   118
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   6555
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   120
      Left            =   27345
      Shape           =   5  'Rounded Square
      Top             =   11265
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   121
      Left            =   27345
      Shape           =   5  'Rounded Square
      Top             =   12165
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   123
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   20685
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   124
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   20220
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   125
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   19770
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   126
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   19305
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1
      Left            =   15510
      Shape           =   5  'Rounded Square
      Top             =   16200
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   3
      Left            =   20280
      Shape           =   5  'Rounded Square
      Top             =   5085
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   4
      Left            =   20280
      Shape           =   5  'Rounded Square
      Top             =   5535
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   375
      Index           =   6
      Left            =   22635
      Shape           =   5  'Rounded Square
      Top             =   4155
      Width           =   375
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   7
      Left            =   20280
      Shape           =   5  'Rounded Square
      Top             =   6450
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   10
      Left            =   20280
      Shape           =   5  'Rounded Square
      Top             =   6000
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   11
      Left            =   20280
      Shape           =   5  'Rounded Square
      Top             =   4170
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   13
      Left            =   15510
      Shape           =   5  'Rounded Square
      Top             =   15750
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   14
      Left            =   15510
      Shape           =   5  'Rounded Square
      Top             =   15300
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   15
      Left            =   15510
      Shape           =   5  'Rounded Square
      Top             =   14850
      Width           =   465
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   510
      Left            =   22725
      Picture         =   "Maindis0.frx":BF4D80
      Tag             =   "513"
      Top             =   4020
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   511
      Left            =   23730
      Picture         =   "Maindis0.frx":BF50E3
      Tag             =   "512"
      Top             =   3960
      Width           =   165
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   6
      Left            =   26070
      Shape           =   5  'Rounded Square
      Top             =   12435
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   15
      Left            =   24675
      Shape           =   5  'Rounded Square
      Top             =   13470
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   127
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   18840
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   35
      Left            =   25605
      Shape           =   5  'Rounded Square
      Top             =   15060
      Width           =   465
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   809
      Left            =   17520
      Picture         =   "Maindis0.frx":BF5446
      Tag             =   "1108"
      Top             =   14220
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   308
      Left            =   27045
      Picture         =   "Maindis0.frx":BF57A7
      Tag             =   "308"
      Top             =   5295
      Width           =   300
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1305
      Left            =   20415
      Picture         =   "Maindis0.frx":BF5B15
      Tag             =   "1116"
      Top             =   9195
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   601
      Left            =   22875
      Picture         =   "Maindis0.frx":BF5E79
      Tag             =   "507"
      Top             =   13020
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   501
      Left            =   18975
      Picture         =   "Maindis0.frx":BF61DD
      Tag             =   "508"
      Top             =   20625
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   707
      Left            =   11775
      Picture         =   "Maindis0.frx":BF6535
      Tag             =   "1007"
      Top             =   21420
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   709
      Left            =   1575
      Picture         =   "Maindis0.frx":BF688D
      Tag             =   "210"
      Top             =   20760
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   310
      Left            =   23625
      Picture         =   "Maindis0.frx":BF6BE5
      Tag             =   "503"
      Top             =   13455
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   510
      Left            =   18780
      Picture         =   "Maindis0.frx":BF6F3D
      Tag             =   "803"
      Top             =   13350
      Width           =   165
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   135
      Left            =   26355
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   403
      Left            =   27165
      Picture         =   "Maindis0.frx":BF7294
      Top             =   13620
      Width           =   165
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   131
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   16980
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   27
      Left            =   24675
      Shape           =   5  'Rounded Square
      Top             =   14520
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   9
      Left            =   24675
      Shape           =   5  'Rounded Square
      Top             =   12945
      Width           =   465
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   304
      Left            =   25320
      Picture         =   "Maindis0.frx":BF75F5
      Tag             =   "304"
      Top             =   5295
      Width           =   300
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   139
      Left            =   22935
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   138
      Left            =   22470
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   137
      Left            =   22005
      Shape           =   5  'Rounded Square
      Top             =   21255
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   16
      Left            =   25140
      Shape           =   5  'Rounded Square
      Top             =   13470
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00808000&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   26
      Left            =   24210
      Shape           =   5  'Rounded Square
      Top             =   14520
      Width           =   465
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1114
      Left            =   17790
      Picture         =   "Maindis0.frx":BF7961
      Tag             =   "414"
      Top             =   21420
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   806
      Left            =   10485
      Picture         =   "Maindis0.frx":BF7CC2
      Tag             =   "109"
      Top             =   20640
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1113
      Left            =   495
      Picture         =   "Maindis0.frx":BF801A
      Tag             =   "1013"
      Top             =   19440
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   313
      Left            =   27615
      Picture         =   "Maindis0.frx":BF837B
      Top             =   10755
      Width           =   165
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00FFFF00&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   128
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   18375
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   130
      Left            =   27330
      Shape           =   5  'Rounded Square
      Top             =   17445
      Width           =   465
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   506
      Left            =   18780
      Picture         =   "Maindis0.frx":BF86D2
      Tag             =   "804"
      Top             =   13170
      Width           =   165
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   16
      Left            =   12135
      Picture         =   "Maindis0.frx":BF8A29
      Top             =   19920
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   19
      Left            =   2580
      Picture         =   "Maindis0.frx":BF8FAB
      Top             =   20190
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   20
      Left            =   20415
      Picture         =   "Maindis0.frx":BF952D
      Top             =   21840
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   15
      Left            =   15150
      Picture         =   "Maindis0.frx":BF9AAF
      Top             =   19815
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   23
      Left            =   24840
      Picture         =   "Maindis0.frx":BFA031
      Top             =   8535
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   225
      Index           =   26
      Left            =   11220
      Picture         =   "Maindis0.frx":BFA5B3
      Top             =   19830
      Width           =   225
   End
   Begin VB.Image picCAN 
      Height          =   240
      Index           =   1
      Left            =   23490
      Picture         =   "Maindis0.frx":BFA6AD
      Top             =   5550
      Width           =   240
   End
   Begin VB.Image picCAN 
      Height          =   240
      Index           =   2
      Left            =   21855
      Picture         =   "Maindis0.frx":BFA7AF
      Top             =   5430
      Width           =   240
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   1
      Left            =   26805
      Picture         =   "Maindis0.frx":BFA8B1
      Tag             =   "401"
      Top             =   12570
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   2
      Left            =   26805
      Picture         =   "Maindis0.frx":BFA932
      Tag             =   "402"
      Top             =   13095
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   3
      Left            =   26805
      Picture         =   "Maindis0.frx":BFA9B3
      Tag             =   "403"
      Top             =   13620
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   4
      Left            =   26805
      Picture         =   "Maindis0.frx":BFAA34
      Tag             =   "404"
      Top             =   14145
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   5
      Left            =   26805
      Picture         =   "Maindis0.frx":BFAAB5
      Tag             =   "405"
      Top             =   14655
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   6
      Left            =   26805
      Picture         =   "Maindis0.frx":BFAB36
      Tag             =   "406"
      Top             =   15195
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   38
      Left            =   18630
      Picture         =   "Maindis0.frx":BFABB7
      Tag             =   "802"
      Top             =   14040
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   9
      Left            =   27465
      Picture         =   "Maindis0.frx":BFAC38
      Tag             =   "312"
      Top             =   6375
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   11
      Left            =   23715
      Picture         =   "Maindis0.frx":BFACB9
      Tag             =   "415"
      Top             =   8595
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   12
      Left            =   22710
      Picture         =   "Maindis0.frx":BFAD3A
      Tag             =   "413"
      Top             =   8595
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   13
      Left            =   23490
      Picture         =   "Maindis0.frx":BFADBB
      Tag             =   "906"
      Top             =   2775
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   14
      Left            =   20490
      Picture         =   "Maindis0.frx":BFAE3C
      Tag             =   "411"
      Top             =   20535
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   41
      Left            =   20430
      Picture         =   "Maindis0.frx":BFAEBD
      Tag             =   "1003"
      Top             =   8280
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   17
      Left            =   9585
      Picture         =   "Maindis0.frx":BFAF3E
      Tag             =   "113"
      Top             =   20490
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   16
      Left            =   12495
      Picture         =   "Maindis0.frx":BFAFBF
      Tag             =   "107"
      Top             =   20490
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   36
      Left            =   23610
      Picture         =   "Maindis0.frx":BFB040
      Tag             =   "815"
      Top             =   780
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   25
      Left            =   12600
      Picture         =   "Maindis0.frx":BFB0C1
      Tag             =   "1010"
      Top             =   21420
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   29
      Left            =   5460
      Picture         =   "Maindis0.frx":BFB142
      Tag             =   "1104"
      Top             =   19425
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   21
      Left            =   21915
      Picture         =   "Maindis0.frx":BFB1C3
      Tag             =   "901"
      Top             =   13830
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   35
      Left            =   22710
      Picture         =   "Maindis0.frx":BFB244
      Tag             =   "814"
      Top             =   780
      Width           =   165
   End
   Begin VB.Label lblProject 
      BackColor       =   &H00DBD9D4&
      Caption         =   "UEM Edgenta SE7502"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   1440
      TabIndex        =   20
      Top             =   -780
      Width           =   5055
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10015
      Left            =   28410
      Shape           =   5  'Rounded Square
      Top             =   13140
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Image picY 
      Height          =   465
      Index           =   80
      Left            =   20955
      Picture         =   "Maindis0.frx":BFB2C5
      Tag             =   "616"
      Top             =   2385
      Width           =   180
   End
End
Attribute VB_Name = "maindisp0_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim SetArrow As Boolean
Dim BagInfoPopUp As Boolean
Dim LeftPosn As Integer
Dim TopPosn As Integer

'The following are used with Bag Mouse Move
Dim PLCStn As Integer
Dim FilterCus As Long
Dim FilterCat As Long
Dim FilterGrp As Integer
Dim FilterWgt As Long
Dim FilterCnt As Integer
Dim OldDisplayOption1 As Integer
Dim OldDisplayOption2 As Integer
Dim OldColourOption1 As Integer
Dim OldColourOption2 As Integer
Dim OldEditStorage As Boolean
Dim OldMoveStorage As Boolean
Dim PieceWt(2) As Long
Dim ID As Integer

'Overview
Public OverviewForm     As Boolean

'Bag Declerations
Public BagDropIndex     As Integer
Public BagDropCopy      As Boolean
Public BagDraging       As Boolean
Public ExtraInfo        As Boolean

'New PopUp
Dim MyPopUpType         As Integer
Dim MyPopUpIndex        As Integer
Dim MyPopUpLeft         As Long
Dim MyPopUpTop          As Long
Dim MyPopUpHeight       As Long
Dim MyPopUpWidth        As Long

Dim MyPopUpTypeOld      As Integer
Dim MyPopUpIndexOld     As Integer
Dim MyBagGlowIndex      As Integer
Private Declare Function SetParent Lib "user32" (ByVal hWndChild As Long, ByVal hWndNewParent As Long) As Long

Private Sub BcScanner_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
     Call SetPopUp(PopUpBcScanner, Index)
End Sub
Private Sub SetLanguage()
        
    Me.lblGroup.Text = TextWord(676)
    Me.lblCustomer.Text = TextWord(33)
    Me.lblCategory.Text = TextWord(35)
    Me.lblKg.Text = TextWord(224)
    Me.lblCount.Text = TextWord(215)
    Me.lblDestination.Text = TextWord(262)
    Me.lblDay.Text = TextWord(474)
    Me.cmd_Exit.Caption = TextWord(42)
    Me.fraFilters.Caption = TextWord(486)

    
            
End Sub


Private Sub BagData_DragDrop(Index As Integer, Source As Control, X As Single, Y As Single)
     
     Dim DropIndex  As Integer
     Dim DropPLC    As Integer
     
     Dim NewIndex   As Integer
     Dim NewPLC     As Integer
     
     Call PLCIndexEncodeDecode(ModeTviewToPLC, BagDropIndex, DropIndex, DropPLC)
     
     If BagCat(DropIndex, DropPLC) <> 0 And Index <> BagDropIndex And BagDropIndex <> 0 And Not OverviewForm Then
        
        Dim Grp     As Integer
        Dim Dst     As Integer
        Dim Wgt     As Integer
        Dim Cnt     As Integer
        Dim Ur1     As Integer
        Dim Bid     As Long
        Dim Cat     As Long
        Dim MIS     As Long
        Dim Cus     As Long
        Dim Ur2     As Long
        Dim TimeStamp As Long
        
        Dim FromStn As Boolean
        
        Dim GrpID   As Integer
        
        Grp = BagGrp(DropIndex, DropPLC)
        Dst = BagDst(DropIndex, DropPLC)
        Wgt = BagWgt(DropIndex, DropPLC)
        Cnt = BagCnt(DropIndex, DropPLC)
        Ur1 = BagUr1(DropIndex, DropPLC)
        Bid = BagBid(DropIndex, DropPLC)
        Cat = BagCat(DropIndex, DropPLC)
        MIS = BagMis(DropIndex, DropPLC)
        Cus = BagCus(DropIndex, DropPLC)
        Ur2 = BagUr2(DropIndex, DropPLC)
        TimeStamp = BagTimestamp(DropIndex, DropPLC)
                   
        'Write new data to PLC
        DisplayForm wait_frm
        Screen.MousePointer = vbHourglass
                 
        'If bag copied from sorting station then use SP2 for dropped bag weight
        FromStn = (BagDropIndex >= StationBagsStart And BagDropIndex <= StationBagsStart + (MaxStations - 1))
        If FromStn Then
            Call dbGetID(EditGrp, CLng(Grp), GrpID)
            Wgt = GrpSP2(GrpID) * 10
        End If
                
        'Write to PLC the Bag ID
        Call PLCIndexEncodeDecode(ModeTviewToPLC, Index, NewIndex, NewPLC)
               
        'If bag being copied then use new edited ID for bag and Clear SQL server ID
        If BagDropCopy Then
            Bid = 0
            MIS = 0
            'Allocation of edit Bag ID
            EditBagID(PLCStn) = db_uspSettingGet("SettingsNetwork", "Config", "EditBagID" & Str(PLCStn), 1, PCNum)
            Bid = EditBagID(PLCStn)
            EditBagID(PLCStn) = (Bid + 1)
            If (EditBagID(PLCStn) > 999) Then
                EditBagID(PLCStn) = 1
            End If
            db_uspSettingSave "SettingsNetwork", "Config", "EditBagID" & Str(PLCStn), EditBagID(PLCStn), PCNum
                  
        End If
            
        'Move existing bag
        If Not BagDropCopy Then
            Call WriteBag(NewPLC, NewIndex, CInt(Grp), Dst, Wgt, Cnt, Ur1, Bid, Cat, MIS, Cus, Ur2, TimeStamp)
        Else 'Create new bag
            'New indirect edit
            Data32(0) = Grp
            Data32(1) = Dst
            Data32(2) = Wgt
            Data32(3) = Cnt
            Data32(4) = Ur1
            Data32(5) = Bid
            Data32(6) = Cat
            Data32(7) = 0 'MIS
            Data32(8) = Cus
            Data32(9) = Ur2
            Data32(10) = TimeStamp
            Data32(11) = 0
            Data32(12) = 0
            Data32(13) = 0
            Data32(14) = NewIndex       'Posn Now
            Data32(15) = NewIndex        'Posn New
            Data32(16) = 0              'Mode 0=Edit
            Data32(17) = AccessLevel    'TrackView access level
            Data32(18) = 1              'Status 1=Execute
                     
            Call WriteD32(PLCStn, 501, 19, Data32())
        
        End If


        'If Bag Within Sorting area then send Lines, Setpoints Etc
        'Check if SortingStation
        Dim Station As Integer
        Dim StnBank As Integer
        If Index >= StationBagsStart And Index <= StationBagsStart + (MaxStations - 1) Then
            Station = ((Index - StationBagsStart) + 1)
            SendStationPLC NewPLC, Station, Cat, Cus
        End If
                              
        If Demo Then
            BagGrp(NewIndex, NewPLC) = BagGrp(DropIndex, DropPLC)
            BagDst(NewIndex, NewPLC) = BagDst(DropIndex, DropPLC)
            BagWgt(NewIndex, NewPLC) = BagWgt(DropIndex, DropPLC)
            BagCnt(NewIndex, NewPLC) = BagCnt(DropIndex, DropPLC)
            BagUr1(NewIndex, NewPLC) = BagUr1(DropIndex, DropPLC)
            BagBid(NewIndex, NewPLC) = BagBid(DropIndex, DropPLC)
            BagCat(NewIndex, NewPLC) = BagCat(DropIndex, DropPLC)
            BagMis(NewIndex, NewPLC) = BagMis(DropIndex, DropPLC)
            BagCus(NewIndex, NewPLC) = BagCus(DropIndex, DropPLC)
            BagUr2(NewIndex, NewPLC) = BagUr2(DropIndex, DropPLC)
            BagTimestamp(NewIndex, NewPLC) = BagTimestamp(DropIndex, DropPLC)
        End If
                               
        If Not BagDropCopy And Not FromStn Then
            
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
                        
            'Clear Original Bag
            Call WriteBag(DropPLC, DropIndex, CInt(Grp), Dst, Wgt, Cnt, Ur1, Bid, Cat, MIS, Cus, Ur2, TimeStamp)
      
            If BagDropIndex >= StationBagsStart And BagDropIndex <= StationBagsStart + (MaxStations - 1) Then
                Station = ((BagDropIndex - StationBagsStart) + 1)
                SendStationPLC DropPLC, Station, 0, 0
            End If
                       
            If Demo Then
                BagGrp(DropIndex, DropPLC) = 0
                BagDst(DropIndex, DropPLC) = 0
                BagWgt(DropIndex, DropPLC) = 0
                BagCnt(DropIndex, DropPLC) = 0
                BagUr1(DropIndex, DropPLC) = 0
                BagBid(DropIndex, DropPLC) = 0
                BagCat(DropIndex, DropPLC) = 0
                BagMis(DropIndex, DropPLC) = 0
                BagCus(DropIndex, DropPLC) = 0
                BagUr2(DropIndex, DropPLC) = 0
                BagTimestamp(DropIndex, DropPLC) = 0
            End If
                                        
        End If
        
        BagDraging = False
        
        Screen.MousePointer = vbArrow
       
        
    End If
End Sub
Private Sub BagData_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    BagDropIndex = Index
    If MoveStorage Then
        BagDropCopy = ((Shift = vbShiftMask) And (AccessLevel >= accEngineer)) 'Engineer or above to copy a bag
        BagData1(Index).Drag vbBeginDrag
        BagDraging = True
        pic_BagInfo.Visible = False
    End If
End Sub

Private Sub BagData_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If MoveStorage Then
        BagData1(Index).Drag vbEndDrag
        Screen.MousePointer = vbArrow
    ElseIf (Index = BagDropIndex) Then
        Dim ChangeEnabled As Boolean
        'ChangeEnabled = (EditStorage Or (Index >= StationBagsStart And Index <= StationBagsStart + (MaxStations - 1)))
        ChangeEnabled = True
        pic_BagInfo.Visible = False
        If OperatorEdit Or AccessLevel > 0 And Not OverviewForm Then
            Edit2_frm.Config Index, (AccessLevel <= accSupervisor)
            DisplayForm Edit2_frm
        End If
    End If
    BagDraging = False
End Sub

Private Sub BagData_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
        
    ExtraInfo = ((Shift = vbShiftMask) And (AccessLevel >= accSupervisor) And SQLServerUse) 'Extra Bag data from SQL Server?
    Call SetPopUp(PopUpBag, Index)
    
    
    
End Sub


Public Sub UpdateBag(Index As Integer, PLCStn As Integer)
        
    On Error GoTo UpdateBagError
        
    Dim SortingBag          As Boolean
           
    Dim BagBackColor        As ColorConstants
    Dim BagForeColor        As ColorConstants
    Dim BagBorderColor      As ColorConstants
    
    Dim ShowColour          As Boolean
    Dim Grp                 As Long
    Dim GrpID               As Integer
    Dim Cat                 As Long
    Dim CatID               As Integer
    Dim Cus                 As Long
    Dim CusID               As Integer
    Dim Wgt                 As Integer
    Dim Dst                 As Integer
    Dim LongStr             As String
      
       
    Dim BagIndex            As Integer
    Dim BagID               As Long
    Dim MisID               As Long
    Dim Ur1                 As Integer
    
    Dim BagText1            As String
    Dim BagMaxLen1          As Integer
    Dim BagFont1            As String
    Dim BagFontSize1        As Integer
    Dim BagHeight1          As Integer
    Dim BagFontBold1        As Boolean
    
    Dim BagText2            As String
    Dim BagMaxLen2          As Integer
    Dim BagFont2            As String
    Dim BagFontSize2        As Integer
    Dim BagHeight2          As Integer
    Dim BagFontBold2        As Boolean
    
    Dim Terminal_6_Limit    As Integer
    Dim Arial_8_Limit       As Integer
    Dim Arial_10_Limit      As Integer
    Dim Arial_12_Limit      As Integer
    
    Dim ExtendBagData1toBagData2 As Boolean
    
    Call PLCIndexEncodeDecode(ModePLCToTview, BagIndex, Index, PLCStn)
                 
    Grp = BagGrp(Index, PLCStn)
    Cat = BagCat(Index, PLCStn)
    Cus = BagCus(Index, PLCStn)
    Wgt = BagWgt(Index, PLCStn)
    Dst = BagDst(Index, PLCStn)
    BagID = BagBid(Index, PLCStn)
    MisID = BagMis(Index, PLCStn)
    Ur1 = BagUr1(Index, PLCStn)
    
    If dbCatUsed Then
        Call dbGetID(EditCat, Cat, CatID)
        Grp = CatGroup(CatID)
    Else
        'Do Nothing Grp is direct from PLC
    End If
    
    Call dbGetID(EditGrp, Grp, GrpID)
    Call dbGetID(EditCus, Cus, CusID)
      
    
    
    'Bag Sizes - Char Limit for each font
    'Small - 375 * 465 or 465 * 375 (Setting 465 for Height or Width ensures centering)
    'Standard - 465 * 465
    'Medium - 540 * 615 or 615 * 540 (Setting 615 for Height or Width ensures centering)
    'Large - 615 * 615
    If ((BagRing(BagIndex).Height = 375) Or (BagRing(BagIndex).Width = 375)) Then
        Terminal_6_Limit = 3
        Arial_8_Limit = 3
        Arial_10_Limit = 0
        Arial_12_Limit = 0
    ElseIf ((BagRing(BagIndex).Height = 465) Or (BagRing(BagIndex).Width = 465)) Then
        Terminal_6_Limit = 4
        Arial_8_Limit = 4
        Arial_10_Limit = 3
        Arial_12_Limit = 2
    ElseIf ((BagRing(BagIndex).Height = 540) Or (BagRing(BagIndex).Width = 540)) Then
        Terminal_6_Limit = 5
        Arial_8_Limit = 4
        Arial_10_Limit = 3
        Arial_12_Limit = 3
    ElseIf ((BagRing(BagIndex).Height = 615) Or (BagRing(BagIndex).Width = 615)) Then
        Terminal_6_Limit = 6
        Arial_8_Limit = 5
        Arial_10_Limit = 4
        Arial_12_Limit = 3
    Else '375
        Terminal_6_Limit = 3
        Arial_8_Limit = 3
        Arial_10_Limit = 2
        Arial_12_Limit = 0
    End If
            
    Select Case DisplayOption1
        Case myGrp
            BagText1 = Format(Grp)
            BagMaxLen1 = Len(Format$(MaxGrp))
            If Grp = MaxGrp Then BagText1 = TextWord(139) 'Empty Bag
        Case myCat
            BagText1 = Cat
            BagMaxLen1 = Len(Format$(MaxCat))
            If Cat = MaxCat Then BagText1 = TextWord(139) 'Empty Bag
        Case myCus
           BagText1 = Cus
           BagMaxLen1 = Len(Format$(MaxCus))
           If Cus = MaxCus Then BagText2 = TextWord(139) 'Empty Bag
        Case myDst
            BagText1 = Format(Dst)
            BagMaxLen1 = Len(Format$(MaxDestinations))
        Case myGrpLong
            BagText1 = GrpLong(GrpID)
            BagMaxLen1 = dbSettingValue(GrpDbLongIDMax)
        Case myCatLong
            BagText1 = CatLong(CatID)
            BagMaxLen1 = dbSettingValue(CatDbLongIDMax)
        Case myCusLong
            BagText1 = CusLong(CusID)
            BagMaxLen1 = dbSettingValue(CusDbLongIDMax)
        Case myWashProg
            If (dbSettingValue(GrpDbUseWashCodes) <> "0") Then
                BagText1 = GrpWash(GrpID)
            ElseIf (dbSettingValue(CatDbUseWashCodes) <> "0") Then
                BagText1 = CatWash(CatID)
            Else
                BagText1 = "--"
            End If
            BagMaxLen1 = Len(Format$(Washcode_Max_Value))
        Case myLot
            BagText1 = Left$(Format(CusLong(CusID), "0000"), 1)
            BagMaxLen1 = 1
        Case myBagIndex
            BagText1 = Format$(BagIndex)
        Case myBagID
            BagText1 = Format$(BagID)
            BagMaxLen1 = 10
        Case myMisID
            BagText1 = Format$(MisID)
            BagMaxLen1 = 10
        
    End Select
    
    Select Case DisplayOption2
        Case myNone
            'Use as extended from DisplayOption1
            
        Case myGrp
            BagText2 = Format(Grp)
            BagMaxLen2 = Len(Format$(MaxGrp))
            If Grp = MaxGrp Then BagText2 = TextWord(139) 'Empty Bag
        Case myCat
            BagText2 = Cat
            BagMaxLen2 = Len(Format$(MaxCat))
            If Cat = MaxCat Then BagText2 = TextWord(139) 'Empty Bag
        Case myCus
            BagText2 = Cus
            BagMaxLen2 = Len(Format$(MaxCus))
            If Cus = MaxCus Then BagText2 = TextWord(139) 'Empty Bag
        Case myDst
            BagText2 = Format(Dst)
            BagMaxLen2 = Len(Format$(MaxDestinations))
        Case myGrpLong
            BagText2 = GrpLong(GrpID)
            BagMaxLen2 = dbSettingValue(GrpDbLongIDMax)
        Case myCatLong
            BagText2 = CatLong(CatID)
            BagMaxLen2 = dbSettingValue(CatDbLongIDMax)
        Case myCusLong
            BagText2 = CusLong(CusID)
            BagMaxLen2 = dbSettingValue(CusDbLongIDMax)
        Case myWashProg
            If (dbSettingValue(GrpDbUseWashCodes) <> "0") Then
                BagText2 = GrpWash(GrpID)
            ElseIf (dbSettingValue(CatDbUseWashCodes) <> "0") Then
                BagText2 = CatWash(CatID)
            Else
                BagText2 = "--"
            End If
            BagMaxLen2 = Len(Format$(Washcode_Max_Value))
        Case myLot
            BagText2 = Left$(Format(CusLong(CusID), "0000"), 1)
            BagMaxLen2 = 1
        Case myBagIndex
            BagText2 = Format$(BagIndex)
    
    End Select
    
    ExtendBagData1toBagData2 = False
    
    'Bag text Sizing 2nd bottom label
    If (BagMaxLen2 <= Arial_10_Limit) Then
        BagFont2 = "Arial"
        BagFontSize2 = 10
        BagHeight2 = 240
        BagFontBold2 = True
    ElseIf (BagMaxLen2 <= Arial_8_Limit) Then
        BagFont2 = "Arial"
        BagFontSize2 = 8
        BagHeight2 = 205
        BagFontBold2 = False
    Else
        BagFont2 = "Terminal"
        BagFontSize2 = 6
        BagHeight2 = 105
        BagFontBold2 = False
        BagText2 = Left$(BagText2, Terminal_6_Limit)
    End If
        
    'Bag text Sizing 1st (Main) Label
    If (BagMaxLen1 <= Arial_12_Limit) Then
        BagFont1 = "Arial"
        BagFontSize1 = 12
        BagHeight1 = 270
        BagFontBold1 = True
    ElseIf (BagMaxLen1 <= Arial_10_Limit) Then
        BagFont1 = "Arial"
        BagFontSize1 = 10
        BagHeight1 = 240
        BagFontBold1 = False
    ElseIf (BagMaxLen1 <= Arial_8_Limit) Then
        BagFont1 = "Arial"
        BagFontSize1 = 8
        BagHeight1 = 205
        BagFontBold1 = False
    ElseIf (DisplayOption2 = myNone) And (BagMaxLen1 <= (Arial_8_Limit * 2)) Then
        'Use BagData2 to Extend BagData1 text
        BagFont2 = "Arial"
        BagFontSize2 = 8
        BagHeight2 = 205
        BagFontBold2 = False
        BagText2 = Mid$(BagText1, Arial_8_Limit + 1, Arial_8_Limit)
        BagFont1 = "Arial"
        BagFontSize1 = 8
        BagHeight1 = 205
        BagFontBold1 = False
        BagText1 = Mid$(BagText1, 1, Arial_8_Limit)
        ExtendBagData1toBagData2 = True
    ElseIf (DisplayOption2 = myNone) And (BagMaxLen1 <= (Terminal_6_Limit * 2)) Then
        'Use BagData2 to Extend BagData1 text
        BagFont2 = "Terminal"
        BagFontSize2 = 6
        BagHeight2 = 105
        BagFontBold2 = False
        BagText2 = Mid$(BagText1, Terminal_6_Limit + 1, Terminal_6_Limit)
        BagFont1 = "Terminal"
        BagFontSize1 = 6
        BagHeight1 = 105
        BagFontBold1 = False
        BagText1 = Mid$(BagText1, 1, Terminal_6_Limit)
        ExtendBagData1toBagData2 = False
    Else
        BagFont1 = "Terminal"
        BagFontSize1 = 6
        BagHeight1 = 105
        BagFontBold1 = False
        BagText1 = Left$(BagText1, Terminal_6_Limit)
    End If
    
    BagData1(BagIndex).Caption = BagText1
    BagData2(BagIndex).Caption = BagText2
    
    
    'Bag Data 1
    With BagData1(BagIndex)
        
        'Bag Colours
        ShowColour = True
        If FilterGrp > 0 And FilterGrp <> Grp Then ShowColour = False
        If FilterCat > 0 And FilterCat <> Cat Then ShowColour = False
        If FilterCus > 0 And FilterCus <> Cus Then ShowColour = False
        
        If ShowColour And (Grp > 0) Then
            Select Case ColourOption1 '0=No Color, 1=Category, 2=Cusotmer, 3=Cat or Cus
                Case ColourGrp
                    BagForeColour = GrpColF(GrpID)
                    BagBackColour = GrpColB(GrpID)
                Case ColourCat
                    BagForeColour = CatColF(CatID)
                    BagBackColour = CatColB(CatID)
                Case ColourCus
                    BagForeColour = CusColF(CusID)
                    BagBackColour = CusColB(CusID)
                'Case ColourDay
                '    BagForeColour = Me.lblDeliveryDay(Day).BackColor
                '    BagBackColour = Me.lblDeliveryDay(Day).ForeColor
                Case Else
                    BagBackColour = colkgBlue
                    BagForeColour = vbWhite
            End Select
                        
        Else
            BagForeColour = vbWhite
            If MoveStorage Then BagBackColour = &HE0E0E0 Else BagBackColour = vbDarkGrey
        End If
        
        'Destinations
        If (Dst > 0) Then
            BagBorderColour = &H80FF80   '&HFF00&     'BagForeColour
            shpGlowDest(BagIndex).BorderColor = &HC000&    '&H8000&
            shpGlowDest(BagIndex).Visible = True
        Else
            BagBorderColour = &H808080   'BagBackColour
            shpGlowDest(BagIndex).Visible = False
        End If
        
        SortingBag = (BagIndex >= StationBagsStart And BagIndex < StationBagsStart + MaxStations)
        .Visible = (Cat > 0) Or SortingBag Or EditStorage Or MoveStorage
        
        If .Visible Then
            BagRing(BagIndex).FillStyle = vbFSSolid
            If Not BagRing(BagIndex).Visible Then BagRing(BagIndex).Visible = True
        Else
            'Show all bag positions with grey circle exept bags in transit
            'where the Backcolor is set to vbRed H255 at design time
            BagRing(BagIndex).FillStyle = vbFSTransparent
            BagBorderColour = vbDarkGrey
            
            If BagRing(BagIndex).BackColor = vbRed Then
                BagRing(BagIndex).Visible = False
            End If
        End If
                 
        'Set any colour changes
        If BagBackColour <> BagRing(BagIndex).FillColor Then BagRing(BagIndex).FillColor = BagBackColour
        If BagForeColour <> .ForeColor Then .ForeColor = BagForeColour
        If BagBorderColour <> BagRing(BagIndex).BorderColor Then BagRing(BagIndex).BorderColor = BagBorderColour
               
        
             
    End With
    
    'Bag Data 2
    Allow2ndBagColour = True
    
    With BagData2(BagIndex)
            
        If ShowColour And (Grp > 0) And Allow2ndBagColour And Not ExtendBagData1toBagData2 Then
            Select Case ColourOption2 '0=No Color, 1=Category, 2=Cusotmer, 3=Cat or Cus
                Case ColourGrp
                    BagForeColour = GrpColF(GrpID)
                    BagBackColour = GrpColB(GrpID)
                Case ColourCat
                    BagForeColour = CatColF(CatID)
                    BagBackColour = CatColB(CatID)
                Case ColourCus
                    BagForeColour = CusColF(CusID)
                    BagBackColour = CusColB(CusID)
                'Case ColourDay
                '    BagForeColour = Me.lblDeliveryDay(Day).BackColor
                '    BagBackColour = Me.lblDeliveryDay(Day).ForeColor
                Case Else
                    BagBackColour = colkgBlue
                    BagForeColour = vbWhite
            End Select
        Else
            BagForeColour = BagData1(BagIndex).ForeColor
        End If
    
        .Visible = (BagData1(BagIndex).Visible And ((DisplayOption2 <> myNone) Or ExtendBagData1toBagData2))
        shpBagCol2(BagIndex).Visible = .Visible And Not ExtendBagData1toBagData2
                
        'Set any colour changes
        If BagBackColour <> shpBagCol2(BagIndex).BackColor Then shpBagCol2(BagIndex).BackColor = BagBackColour
        If BagForeColour <> .ForeColor Then .ForeColor = BagForeColour
                
    End With
             
    'Display Option has been changed then re-position / change fonts of BagData1 and BagData2
    If (DisplayOption1 <> OldDisplayOption1) Or (DisplayOption2 <> OldDisplayOption2) Then
        
        'Note Bag Sizes - 375*465 465*375 465*465 540*615 615*540 615*615
        If BagRing(BagIndex).Height = 375 And BagRing(BagIndex).Width = 465 Then
            BagRingHeight = BagRing(BagIndex).Height
            BagRingTop = BagRing(BagIndex).Top
        ElseIf BagRing(BagIndex).Height = 465 And BagRing(BagIndex).Width = 375 Then
            BagRingHeight = BagRing(BagIndex).Width
            BagRingTop = BagRing(BagIndex).Top + 45
        ElseIf BagRing(BagIndex).Height = 465 And BagRing(BagIndex).Width = 465 Then
            BagRingHeight = BagRing(BagIndex).Height
            BagRingTop = BagRing(BagIndex).Top
        ElseIf BagRing(BagIndex).Height = 540 And BagRing(BagIndex).Width = 615 Then
            BagRingHeight = BagRing(BagIndex).Height
            BagRingTop = BagRing(BagIndex).Top
        ElseIf BagRing(BagIndex).Height = 615 And BagRing(BagIndex).Width = 540 Then
            BagRingHeight = BagRing(BagIndex).Width
            BagRingTop = BagRing(BagIndex).Top + 45
        ElseIf BagRing(BagIndex).Height = 615 And BagRing(BagIndex).Width = 615 Then
            BagRingHeight = BagRing(BagIndex).Height
            BagRingTop = BagRing(BagIndex).Top
        End If
               
        With BagData1(BagIndex)
                        
            .Height = BagHeight1
            .Font = BagFont1
            .FontSize = BagFontSize1
            .FontBold = BagFontBold1
                     
         
            If (DisplayOption2 <> myNone) Or ExtendBagData1toBagData2 Then
                .Top = BagRingTop + (((shpBagCol2(BagIndex).Top - BagRingTop) / 2) - (.Height / 2)) 'Center in top half of bag shape
            Else
                .Top = BagRingTop + ((BagRingHeight - .Height) / 2) 'Center in bag shape
            End If
            
        End With
        
        With BagData2(BagIndex)
                       
            .Height = BagHeight2
            .Font = BagFont2
            .FontSize = BagFontSize2
            .FontBold = BagFontBold2
              
            .Top = ((BagRingTop + (BagRingHeight / 2) + ((BagRingHeight / 4)) - (.Height / 2))) '- 15 'Center in bottom half of bag shape
                              
        End With
        
        
        
    End If
        
    
    

Exit Sub

UpdateBagError:
    If Err = 340 Then 'Element Does Not Exist
        Exit Sub
    Else
        ErrorHandler Err, "MaindDsp 0 TrackView UpdateBag", Err.Description & "  Bag =" & Str(BagIndex), False
        Debug.Print Err.Description & "  Bag =" & Str(BagIndex)
        Resume Next
    End If
End Sub
Public Sub UpdateAllBags()
    
    'Added 21/09/2004
    'Comms DecodeCD used to call UpdateBag for each data arrival
    'This sub is called by the highlight form when the highlight changes
    
    On Error GoTo UpdateAllBagsError
    
    Dim Bag         As Shape
    Dim n           As Integer
    Dim Grp         As Integer
    Dim Cat         As Long
    Dim Cus         As Long
    Dim Index       As Integer
    Dim PLCStn      As Integer
    
    FilterWgt = 0
    FilterCnt = 0
    
    For Each Bag In BagRing()
        
        'DoEvents
                       
        Call PLCIndexEncodeDecode(ModeTviewToPLC, Bag.Index, Index, PLCStn)
        Call UpdateBag(Index, PLCStn)
        
        'Total / Filter Weight
        Grp = BagGrp(Index, PLCStn)
        Cat = BagCat(Index, PLCStn)
        Cus = BagCus(Index, PLCStn)
        
        If (((FilterGrp = 0) Or (FilterGrp = Grp)) And ((FilterCat = 0) Or (FilterCat = Cat)) And ((FilterCus = 0) Or (FilterCus = Cus))) Then
            FilterWgt = FilterWgt + BagWgt(Index, PLCStn)
        End If
        
    Next Bag
    
    'Calculate Pieces
    If dbSettingValue(CatDbUsePieceWeight) <> "0" Then
        If (FilterCat > 0) Then
            PieceWt(0) = FilterWgt                      'Weight
            PieceWt(0) = PieceWt(0) * 100               'Make grams
            PieceWt(1) = CatPiece(FilterCat)            'Piece wt for this category
            If ((PieceWt(0) > 0) And (PieceWt(1) > 0)) Then
                If (PieceWt(0) / PieceWt(1) < 32000) Then
                    FilterCnt = PieceWt(0) / PieceWt(1)
                End If
            Else
                FilterCnt = 0
            End If
        Else
            FilterCnt = 0
        End If
    End If

    'Show Weight and Pieces
    txtFilterWeight.Text = Format$(FilterWgt / 10, "00.0") & TextWord(224)
    txtFilterCount.Text = Format$(FilterCnt, "00")

    
Exit Sub
UpdateAllBagsError:
    ErrorHandler Err, "TrackView UpdateAllBags", Err.Description, False
    Resume Next

End Sub


Private Sub BagData1_DragDrop(Index As Integer, Source As Control, X As Single, Y As Single)
    Call BagData_DragDrop(Index, Source, X, Y)
End Sub



Private Sub BagData1_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call BagData_MouseDown(Index, Button, Shift, X, Y)
End Sub

Private Sub BagData1_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call BagData_MouseMove(Index, Button, Shift, X, Y)
End Sub

Private Sub BagData1_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call BagData_MouseUp(Index, Button, Shift, X, Y)
End Sub

Private Sub BagData2_DragDrop(Index As Integer, Source As Control, X As Single, Y As Single)
    Call BagData_DragDrop(Index, Source, X, Y)
End Sub

Private Sub BagData2_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call BagData_MouseDown(Index, Button, Shift, X, Y)
End Sub

Private Sub BagData2_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call BagData_MouseMove(Index, Button, Shift, X, Y)
End Sub

Private Sub BagData2_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call BagData_MouseUp(Index, Button, Shift, X, Y)
End Sub

Private Sub cmbCat_Click()
    txtFilterCat.Text = CmbGetNum(cmbCat, EditCat)
End Sub

Private Sub cmbCus_Click()
    txtFilterCus.Text = CmbGetNum(cmbCus, EditCus)
End Sub

Private Sub cmbGrp_Click()
    txtFilterGrp.Text = CmbGetNum(cmbGrp, EditGrp)
End Sub

Private Sub Cmd_CusFIFO_Click()
    CustFIFO_frm.Config PLCStn, (AccessLevel > accOperator)
    DisplayForm CustFIFO_frm
End Sub

Private Sub cmd_Exit_Click()
    Unload Me
End Sub



Private Sub cmdVNC_Click(Index As Integer)
    
    On Error GoTo cmdVNCError
       
    X = Shell(VNCPath & " " & VNCCmd(Index))
    
Exit Sub
cmdVNCError:
    ErrorHandler Err, "cmdVNCError", Err.Description, True
   
End Sub

Private Sub cmdVNC_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call SetPopUp(PopUpVNC, Index)
End Sub




Private Sub Form_Activate()
    BagInfoPopUp = True
    CurrentSeqPLC = PLCStn
    UpdateAllBags
End Sub
Private Sub Form_Deactivate()
    BagInfoPopUp = False
End Sub

Private Sub Form_Load()
        
    On Error GoTo FormLoadError
    
    PLCStn = PLC_Stn_maindisp0_frm
        
    '---------------------------------
    'Programmer Set to Required Values
    '---------------------------------
       
    OverviewForm = False
      
    Me.Left = -200
    'CenterForm Me
    Me.Top = 0
        
    'Running Hours
    '-------------
    Set lblHours.Container = Me
    
    lblHours.Top = lblProject.Top + lblProject.Height + 500
    'lblHours.Left = lblProject.Left
    lblHours.Left = 500
    lblHours.ZOrder 0
   
    
    
    '---------------------------------
    
    Me.Caption = TextWord(169)
 
    
    SetLanguage
    
    SetArrow = False
    'EditStorage = False
              
    Dim Bag As Shape
    For Each Bag In BagRing()
        If Bag.Index <> 0 Then
   
            Load BagData1(Bag.Index)
            Set BagData1(Bag.Index).Container = BagRing(Bag.Index).Container
            BagData1(Bag.Index).Visible = False
                        
            Load BagData2(Bag.Index)
            Set BagData2(Bag.Index).Container = BagRing(Bag.Index).Container
            BagData2(Bag.Index).Visible = False
                   
            
            Load shpBagCol2(Bag.Index)
            Set shpBagCol2(Bag.Index).Container = BagRing(Bag.Index).Container
            shpBagCol2(Bag.Index).Visible = False
            
            
            Load shpGlowDest(Bag.Index)
            Set shpGlowDest(Bag.Index).Container = BagRing(Bag.Index).Container
            shpGlowDest(Bag.Index).Visible = False
            shpGlowDest(Bag.Index).Height = BagRing(Bag.Index).Height + 30
            shpGlowDest(Bag.Index).Width = BagRing(Bag.Index).Width + 30
            shpGlowDest(Bag.Index).Left = BagRing(Bag.Index).Left - 15
            shpGlowDest(Bag.Index).Top = BagRing(Bag.Index).Top - 15
            
            BagRing(Bag.Index).ZOrder vbBringToFront 'vbSendToBack
            shpBagCol2(Bag.Index).ZOrder vbBringToFront
            BagData1(Bag.Index).ZOrder vbBringToFront
            BagData2(Bag.Index).ZOrder vbBringToFront
            
            
            'Position BagData Labels
            BagData1(Bag.Index).Width = BagRing(Bag.Index).Width
            BagData1(Bag.Index).Left = BagRing(Bag.Index).Left
            BagData2(Bag.Index).Width = BagRing(Bag.Index).Width
            BagData2(Bag.Index).Left = BagRing(Bag.Index).Left
            
            'Note Bag Sizes - 375*465 465*375 465*465 540*615 615*540 615*615
            If BagRing(Bag.Index).Height = 375 And BagRing(Bag.Index).Width = 465 Then
                shpBagCol2(Bag.Index).Top = BagRing(Bag.Index).Top + 210 '180
                shpBagCol2(Bag.Index).Left = BagData2(Bag.Index).Left + 75
                shpBagCol2(Bag.Index).Height = 150
                shpBagCol2(Bag.Index).Width = 330
            ElseIf BagRing(Bag.Index).Height = 465 And BagRing(Bag.Index).Width = 375 Then
                shpBagCol2(Bag.Index).Top = BagRing(Bag.Index).Top + 255 '225
                shpBagCol2(Bag.Index).Left = BagData2(Bag.Index).Left + 30
                shpBagCol2(Bag.Index).Height = 150
                shpBagCol2(Bag.Index).Width = 330
            ElseIf BagRing(Bag.Index).Height = 465 And BagRing(Bag.Index).Width = 465 Then
                shpBagCol2(Bag.Index).Top = BagRing(Bag.Index).Top + 255
                shpBagCol2(Bag.Index).Left = BagData2(Bag.Index).Left + 30
                shpBagCol2(Bag.Index).Height = 200
                shpBagCol2(Bag.Index).Width = 420
            ElseIf BagRing(Bag.Index).Height = 540 And BagRing(Bag.Index).Width = 615 Then
                shpBagCol2(Bag.Index).Top = BagRing(Bag.Index).Top + 285
                shpBagCol2(Bag.Index).Left = BagData2(Bag.Index).Left + 60
                shpBagCol2(Bag.Index).Height = 245
                shpBagCol2(Bag.Index).Width = 495
            ElseIf BagRing(Bag.Index).Height = 615 And BagRing(Bag.Index).Width = 540 Then
                shpBagCol2(Bag.Index).Top = BagRing(Bag.Index).Top + 315
                shpBagCol2(Bag.Index).Left = BagData2(Bag.Index).Left + 30
                shpBagCol2(Bag.Index).Height = 245 '230
                shpBagCol2(Bag.Index).Width = 500 '480
            ElseIf BagRing(Bag.Index).Height = 615 And BagRing(Bag.Index).Width = 615 Then
                shpBagCol2(Bag.Index).Top = BagRing(Bag.Index).Top + 330
                shpBagCol2(Bag.Index).Left = BagData2(Bag.Index).Left + 30
                shpBagCol2(Bag.Index).Height = 270 '300
                shpBagCol2(Bag.Index).Width = 570
            End If
            
         
            
       End If
        
    Next Bag
    
    'Ensure the Glow is onf front of everything
    For Each Bag In BagRing()
        If Bag.Index <> 0 Then
            shpGlowDest(Bag.Index).ZOrder vbBringToFront
        End If
    Next Bag
    
    shpGlowInside.Visible = False
    shpGlowOutside.Visible = False
    Set shpGlowInside.Container = Me
    Set shpGlowOutside.Container = Me
    
    
    'Show Empty bag positions
    For Each Bag In shpEmpty()
        
        shpEmpty(Bag.Index).FillStyle = vbFSTransparent
        shpEmpty(Bag.Index).BorderStyle = vbBSDot
                
    Next Bag
    
    'Set the Sequence Buttons
    '------------------------
    Dim SeqBtn As CommandButton
    For Each SeqBtn In SeqButton()
        If AccessLevel >= accEngineer Then
            SeqButton(SeqBtn.Index).Enabled = True
        Else
            SeqButton(SeqBtn.Index).Enabled = False
        End If
    Next SeqBtn
    
    Screen.MousePointer = 0
    
    'Ensure the 'No Entry' Start Stops are behind the output images
    Dim SSPic As Image
    For Each SSPic In picStartStop()
        picStartStop(SSPic.Index).ZOrder vbSendToBack
        If Demo Then Start_Stop(SSPic.Index, PLCStn) = 1 'Show Green
    Next SSPic
    
    'Show the system running if Demo
    For Each SSPic In StartStopPic()
        If Demo Then Start_Stop(SSPic.Index, PLCStn) = 1 'Show Green
    Next SSPic
    
    'Bring Output images to the front
    Dim OutputPic As Image
    For Each OutputPic In picY()
        picY(OutputPic.Index).ZOrder vbBringToFront
    Next OutputPic
    
    'Ensure smaller input images are at the front of the output images
    Dim InputPic As Image
    For Each InputPic In picX()
        picX(InputPic.Index).ZOrder vbBringToFront
    Next InputPic
    
    'Put myToolTipText onto maindisplay - Do last to ensure zorder
    Set Me.picMyToolTipText.Container = Me
    Set Me.picMyToolTipTextShadow.Container = Me
    Me.picMyToolTipTextShadow.Visible = False
    Me.picMyToolTipText.Visible = False
    Me.picMyToolTipTextShadow.ZOrder vbBringToFront
    Me.picMyToolTipText.ZOrder vbBringToFront
    
    'Position the Bag PopUp
    Set Me.pic_BagInfo.Container = Me
    Me.pic_BagInfo.ZOrder vbBringToFront
    
    OldDisplayOption1 = -1 'Display Option 0 is valid so make old different
    
    SetupFilters
    
    'loadDataEntry (100)
    
    
Exit Sub

FormLoadError:
    ErrorHandler Err, "TrackView Maindisp0 FormLoad", Err.Description, False
    Resume Next
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'DoEvents
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call SetPopUp(PopUpNone)
End Sub




Private Sub lblCat_GotFocus()
    Me.lblHidden.SetFocus
End Sub

Private Sub lblCategory_GotFocus()
    Me.lblHidden.SetFocus
End Sub

Private Sub lblCatNo_GotFocus()
    Me.lblHidden.SetFocus
End Sub

Private Sub lblCount_GotFocus()
    Me.lblHidden.SetFocus
End Sub

Private Sub lblCusNo_GotFocus()
    Me.lblHidden.SetFocus
End Sub

Private Sub lblCustomer_GotFocus()
    Me.lblHidden.SetFocus
End Sub

Private Sub lblDay_GotFocus()
    Me.lblHidden.SetFocus
End Sub

Private Sub lblDestination_GotFocus()
    Me.lblHidden.SetFocus
End Sub

Private Sub lblDst_GotFocus()
    Me.lblHidden.SetFocus
End Sub

Private Sub lblDstNo_GotFocus()
    Me.lblHidden.SetFocus
End Sub

Private Sub lblHours_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    lblHours.ToolTipText = TextWord(637)
End Sub

Private Sub lblKg_GotFocus()
    Me.lblHidden.SetFocus
End Sub

Private Sub lblGrp_GotFocus()
    Me.lblHidden.SetFocus
End Sub

Private Sub lblGrpNo_GotFocus()
    Me.lblHidden.SetFocus
End Sub

Private Sub lblProgram_GotFocus()
    Me.lblHidden.SetFocus
End Sub

Private Sub lblWgt_GotFocus()
    Me.lblHidden.SetFocus
End Sub

Private Sub picCAN_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call SetPopUp(PopUpCAN, Index)
End Sub

Private Sub picFIFO_Click(Index As Integer)
    CustFIFO_frm.Config PLCStn, (AccessLevel >= accSupervisor)
    DisplayForm CustFIFO_frm
End Sub

Private Sub picMsgType_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call SetPopUp(PopUpMachine, Index)
End Sub

Private Sub picStartStop_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call SetPopUp(PopUpPicStartStop, Index)
End Sub






Private Sub picX_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
     Call SetPopUp(PopUpInput, Index)
End Sub

Private Sub picX_NC_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call SetPopUp(PopUpInputNC, Index)
End Sub

Private Sub picY_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call SetPopUp(PopUpOutput, Index)
End Sub

Private Sub SeqButton_Click(Index As Integer)
    CurrentSeq = Index
    CurrentSeqPLC = PLCStn
    If AccessLevel > accSupervisor Then
        Dim FrmOpen As Boolean
        FrmOpen = CheckFormOpen("Sequences_frm", "")
        'If FrmOpen Then
        DisplayForm Sequences_frm
    End If
End Sub

Private Sub SeqButton_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call SetPopUp(PopUpSequence, Index)
End Sub


Private Sub picStartStop_Click(Index As Integer)
    
    '---------------------------------------------
    'Index should be between 1 and 63 / 101 - 299!
    '---------------------------------------------
    
    'D1 to 63 and D7700 to D7899
    
    If ((Index >= 1) And (Index <= 63)) Or ((Index >= 101) And (Index <= 299)) Then
    
        'Set the button picture
        Start_Stop(Index, PLCStn) = Not Start_Stop(Index, PLCStn)
        If Start_Stop(Index, PLCStn) Then
            picStartStop(Index).Picture = Me.picStartStopNone.Picture
            Data(0) = 1
        Else
            picStartStop(Index).Picture = Me.picStartStopNoEntry.Picture
            Data(0) = 0
        End If
        'Start_Stop_ReadEnable(Index, PLCStn) = False
        
        If Index < 100 Then
            Comms_frm.WritePLC PLCStn, "D", Index, 1, Data(), DebugToErrorFile, "StartStop"
        Else
            Comms_frm.WritePLC PLCStn, "D", Index + 7600, 1, Data(), DebugToErrorFile, "StartStop"
        End If
    Else
        MsgBox "Invalid Index", vbCritical, "Start Stop Click"
    End If
    
    
End Sub

Private Sub tmr_BagInfo_Timer()
    
    Dim Index As Integer
    
    If Not BagDraging And BagMoveNow = BagMoveLast And BagMoveNow <> 0 And BagInfoPopUp Then
        'Ensure correct Left Position is read When this form looses the Focus
        'Its correct left position will be updated when it gets focus again.
        Blank_frm.Show
        Blank_frm.Hide
          
        Me.ZOrder vbBringToFront
          
        Index = BagMoveNow
        
        'Top Position
        If BagData1(Index).Top + (BagData1(Index).Height / 2) > (Screen.Height / 2) Then
            TopPosn = pic_BagInfo.Height
        Else
            TopPosn = 0
        End If
        pic_BagInfo.Top = BagData1(Index).Top + (BagData1(Index).Height / 2) - TopPosn
            
        'Left Position
        Dim HalfBagInfo As Long
        BagCenter = BagData1(Index).Left + (BagData1(Index).Width / 2) + Me.Left
        HalfBagInfo = (pic_BagInfo.Width / 2)
        'If BagCenter + HalfBagInfo < Screen.Width And BagCenter - HalfBagInfo > 0 Then
        '    LeftPosn = HalfBagInfo          'Center
        'ElseIf BagCenter > (Screen.Width / 2) Then
        If BagCenter > (Screen.Width / 2) Then
            LeftPosn = pic_BagInfo.Width    'Right
        Else
            LeftPosn = 0                    'Left
        End If
        pic_BagInfo.Left = BagCenter - LeftPosn - Me.Left
               
        pic_BagInfo.Visible = True
        
    Else
        pic_BagInfo.Visible = False
    End If
    
    BagMoveLast = BagMoveNow
    
End Sub


Private Sub StartStopPic_Click(Index As Integer)
    '---------------------------------
    'Index should be between 1 and 63!
    '---------------------------------
    
    'Set the button picture
    Start_Stop(Index, PLCStn) = Not Start_Stop(Index, PLCStn)
    If Start_Stop(Index, PLCStn) Then
        StartStopPic(Index).Picture = Me.picW7Green(4).Picture
        Data(0) = 1
    Else
        StartStopPic(Index).Picture = Me.picW7Red(4).Picture
        Data(0) = 0
    End If
        
    Comms_frm.WritePLC PLCStn, "D", Index, 1, Data(), DebugToErrorFile, "StartStopPic"
    
End Sub

Private Sub StartStopPic_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call SetPopUp(PopUpStartStopPic, Index)
End Sub



Private Sub tmr_update_Timer() 'update w/stns. and ongoing
                 
    On Error GoTo tmr_update_Error
                
    If DisplayOption1 <> OldDisplayOption1 Or DisplayOption2 <> OldDisplayOption2 Or ColourOption1 <> OldColourOption1 Or ColourOption2 <> OldColourOption2 Then
        UpdateAllBags
        OldDisplayOption1 = DisplayOption1
        OldDisplayOption2 = DisplayOption2
        OldColourOption1 = ColourOption1
        OldColourOption2 = ColourOption2
    End If
    If EditStorage <> OldEditStorage Then
        UpdateAllBags
        OldEditStorage = EditStorage
    End If
    If MoveStorage <> OldMoveStorage Then
        UpdateAllBags
        OldMoveStorage = MoveStorage
    End If
        
    AlarmCheck
    'Hide static bag data if it is the same as the Sorting station
    
'    Dim pic As PictureBox
'    For Each pic In pic_HideBag
'
'        Dim MatchCat As Boolean
'        Dim MatchPrg As Boolean
'        Dim MatchCus As Boolean
'        MatchCat = False
'        MatchPrg = False
'        MatchCus = False
'        If (BagCat(400 + pic.Index, PLCStn) = BagCat(200 + pic.Index, PLCStn)) Then
'            MatchCat = True
'        End If
'        If (BagGrp(400 + pic.Index, PLCStn) = BagGrp(200 + pic.Index, PLCStn)) Then
'            MatchPrg = True
'        End If
'        If (BagCus(400 + pic.Index, PLCStn) = BagCus(200 + pic.Index, PLCStn)) Then
'            MatchCus = True
'        End If
'        If MatchCat And MatchPrg And MatchCus Then
'            pic.Visible = True
'            pic.BackColor = &HDBD9D4
'            pic.Width = BagRing(400 + pic.Index).Width
'            pic.Height = BagRing(400 + pic.Index).Height
'            pic.Top = BagRing(400 + pic.Index).Top
'            pic.Left = BagRing(400 + pic.Index).Left
'            pic.BorderStyle = 0
'            'Pic.ZOrder = vbBringToFront
'        ElseIf Shp.Visible = True Then
'            pic.Visible = False
'        End If
'
'    Next pic
    
    Dim Shp As Shape
    Dim SelectedBank As Integer
    Dim SearchIndex As Integer
    Dim test As Boolean
    OffSet = 0
    
    SelectedBank = 0
    For Each Shp In shp_LoadingHighlight
        If OffSet = 0 And Shp.Index <> 0 Then OffSet = Shp.Index - 1
        SearchIndex = ((Shp.Index - StationBagsStart) + 1)
        For n = 1 To MaxStationBanks
            If SearchIndex >= Loading_StartStn(n) And SearchIndex <= Loading_EndStn(n) Then
                SelectedBank = n
                Exit For
            End If
        Next n
        If StnInQ(Shp.Index - OffSet) = 0 Then 'Or (SequenceStep(SelectedBank + StationReleasedRegOffest, PLCStn) <> (Shp.Index - OffSet)) Then
            If (Shp.Index > 0) Then
                shp_LoadingHighlight(Shp.Index).Visible = False
            End If
        End If
        
        If OffSet = 0 And Shp.Index <> 0 Then OffSet = Shp.Index - 1
        If (Shp.Index >= StationBagsStart) And (SelectedBank > 0) Then
            If SequenceStep(98, PLCStn) > 0 Then 'Calibrate is selected
                shp_LoadingHighlight(Shp.Index).BorderColor = vbRed    'Red
                shp_LoadingHighlight(Shp.Index).Visible = True
           ' ElseIf (PurgeOn(PLCStn) = 1) And test And PurgeStn((Shp.Index - OffSet), PLCStn) Then
          '      shp_LoadingHighlight(Shp.Index).BorderColor = &HFF0000    ' Dark Blue
          '      shp_LoadingHighlight(Shp.Index).Visible = True
          '  ElseIf (PurgeOn(PLCStn) = 2) And PurgeStn((Shp.Index - OffSet), PLCStn) Then  'Reverse
          '      shp_LoadingHighlight(Shp.Index).BorderColor = &HFFFF00    ' Light Blue
          '      shp_LoadingHighlight(Shp.Index).Visible = True
            ElseIf (PurgeOn(PLCStn) = 0) And (SequenceStep(SelectedBank + StationReleasedRegOffest, PLCStn) = (Shp.Index - OffSet)) Then
                shp_LoadingHighlight(Shp.Index).BorderColor = &HFF00&    ' Green
                shp_LoadingHighlight(Shp.Index).Visible = True
            ElseIf StnInQ(Shp.Index - OffSet) > 0 Then
                    shp_LoadingHighlight(Shp.Index).BorderColor = &H80FF&     'orange
                    shp_LoadingHighlight(Shp.Index).Visible = True
            ElseIf Not SequenceStep(SelectedBank, PLCStn) = (Shp.Index - OffSet) Then
                '    shp_LoadingHighlight(Shp.Index).Visible = False
            End If
        End If
        
    Next Shp

    
       
    'If Sequence is disabled then display in red
    Dim cmdSeq As CommandButton
    For Each cmdSeq In SeqButton()
        If AccessLevel < accEngineer Then cmdSeq.Enabled = False Else cmdSeq.Enabled = True
        If SequenceStep(cmdSeq.Index, PLCStn) = 0 Then
            SeqButton(cmdSeq.Index).BackColor = vbRed
        Else
            SeqButton(cmdSeq.Index).BackColor = LightGrey 'vbButtonFace
        End If
    Next cmdSeq
        
    'Display Weight Labels (the index should be the same as the bag number)
    Dim Wgt As Label
  
    OffSet = 0
    For Each Wgt In lblWeight()
        If OffSet = 0 And Wgt.Index <> 0 Then OffSet = Wgt.Index - 1
        lblWeight(Wgt.Index).Caption = Format$(BagWgt(Wgt.Index, PLCStn) / 10, "00") & TextWord(224)
        'Show weight labels in White if in the Q
        If StnInQ(Wgt.Index - OffSet) > 0 Then
            If lblWeight(Wgt.Index).ForeColor <> vbWhite Then lblWeight(Wgt.Index).ForeColor = vbWhite
        Else
            If lblWeight(Wgt.Index).ForeColor <> vbHighlight Then lblWeight(Wgt.Index).ForeColor = vbHighlight
        End If
        'DoEvents
    Next Wgt
    
    'Machine Status
    '--------------
    
    'Machine Status
    '--------------
    
    'McnStatus
    Dim mcnShape     As Shape
    Dim mcnIndex    As Integer
    Dim mcnPLCStn   As Integer
    
    For Each mcnShape In shpStatus()
        
        Call PLCIndexEncodeDecode(ModeTviewToPLC, mcnShape.Index, mcnIndex, mcnPLCStn)
                
        'Machine Status
        If Mcn(mcnIndex, mcnPLCStn).MACHINE_STATUS And 1 Then
            picMcnStatus(mcnShape.Index).Picture = picLampGreen
        ElseIf Mcn(mcnIndex, mcnPLCStn).MACHINE_STATUS And 2 Then
            picMcnStatus(mcnShape.Index).Picture = picLampGreen
        Else
            picMcnStatus(mcnShape.Index).Picture = picLampGrey
        End If
        
        'Machine Message Type
        If Mcn(mcnIndex, mcnPLCStn).MACHINE_STATUS And 2 Then
            If Mcn(mcnIndex, mcnPLCStn).MSG_TYPE And 2 Then
                picMsgType(mcnShape.Index).Picture = picLampRed
            Else
                picMsgType(mcnShape.Index).Picture = picLampAmber
            End If
        Else
            picMsgType(mcnShape.Index).Picture = picLampGrey
        End If
                   
    Next mcnShape
    
    Dim cmdVNCButton As CommandButton
    For Each cmdVNCButton In cmdVNC()
        cmdVNC(cmdVNCButton.Index).Visible = (AccessLevel > accOperator)
    Next cmdVNCButton
    
    
    'Indication Pictures
    '-------------------
    Dim FullPic As Image
    For Each FullPic In picIndication()
        picIndication(FullPic.Index).Visible = Indication(FullPic.Index, PLCStn)
    Next FullPic
    
    'PLC Inputs and Outputs
    '----------------------
    Dim Card        As Integer
    Dim InputNum    As Integer
        
    Dim Temp$
    
    Dim InputPic As Image
    For Each InputPic In picX()
        'Get the Card Number and Input Number from the index
        'Debug.Print "InputPic.Index = " & InputPic.Index
        If Val(InputPic.Tag) > 0 Then
            StringBuild = Format$(InputPic.Tag)
        Else
            StringBuild = Format$(InputPic.Index)
        End If
        Do Until Len(StringBuild) = 5
            StringBuild = "0" & StringBuild
        Loop
        Temp$ = Right$(StringBuild, 2)
        InputNum = Val(Temp$)
        Temp$ = Left$(StringBuild, 3)
        Card = Val(Temp$)
        If InputNum <= 16 Then
            picX(InputPic.Index).Visible = PLCx(Card, InputNum, PLCStn) Or ShowAllIO
        End If
        'DoEvents
    Next InputPic
    
    'NC Inputs like VC over-travel
     For Each InputPic In picX_NC()
        'Get the Card Number and Input Number from the index
        'Debug.Print "InputPic.Index = " & InputPic.Index
        If Val(InputPic.Tag) > 0 Then
            StringBuild = Format$(InputPic.Tag)
        Else
            StringBuild = Format$(InputPic.Index)
        End If
        Do Until Len(StringBuild) = 5
            StringBuild = "0" & StringBuild
        Loop
        Temp$ = Right$(StringBuild, 2)
        InputNum = Val(Temp$)
        Temp$ = Left$(StringBuild, 3)
        Card = Val(Temp$)
        If InputNum <= 16 Then
            picX_NC(InputPic.Index).Visible = (Not PLCx(Card, InputNum, PLCStn)) Or ShowAllIO
        End If
        'DoEvents
    Next InputPic
    
    Dim OutputPic As Image
    For Each OutputPic In picY()
        'Get the Card Number and Input Number from the index
        If Val(OutputPic.Tag) > 0 Then
            StringBuild = Format$(OutputPic.Tag)
        Else
            StringBuild = Format$(OutputPic.Index)
        End If
        Do Until Len(StringBuild) = 5
            StringBuild = "0" & StringBuild
        Loop
        Temp$ = Right$(StringBuild, 2)
        InputNum = Val(Temp$)
        Temp$ = Left$(StringBuild, 3)
        Card = Val(Temp$)
        If InputNum <= 16 Then
            picY(OutputPic.Index).Visible = PLCy(Card, InputNum, PLCStn) Or ShowAllIO
        End If
        'DoEvents
    Next OutputPic
    
    
     
    'CAN Lives's
    '-----------
    Dim LivePic As Image
    For Each LivePic In picCAN()
        picCAN(LivePic.Index).Visible = Not CANLive(LivePic.Index, PLCStn)
    Next LivePic
    
    'Show trip counts
    '----------------
    Dim Trip As Image
    For Each Trip In TripCount()
        Select Case CounterValue(Trip.Index, PLCStn)
            Case 0
                TripCount(Trip.Index).Picture = picTrip0.Picture
            Case 1
                TripCount(Trip.Index).Picture = picTrip1.Picture
            Case 2
                TripCount(Trip.Index).Picture = picTrip2.Picture
        End Select
        'DoEvents
    Next Trip
    

     
    'Start/Stop Pictures (Large On/Off)
    Dim SSPic As Image
    
    For Each SSPic In StartStopPic()
        'Only Update when not doing PopUp
        If (MyPopUpType <> PopUpStartStopPic) Then
            If Start_Stop(SSPic.Index, PLCStn) Then
                If StartStopPic(SSPic.Index).Picture <> Me.picW7Green(1).Picture Then StartStopPic(SSPic.Index).Picture = Me.picW7Green(1).Picture
            Else
                If StartStopPic(SSPic.Index).Picture <> Me.picW7Red(1).Picture Then StartStopPic(SSPic.Index).Picture = Me.picW7Red(1).Picture
            End If
        End If
        If Start_Stop(15, PLCStn > 0) Then
            Text1 = "Run Belt"
            Text1.ForeColor = &HC000&
        Else
            Text1 = "Stop Belt"
            Text1.ForeColor = &HFF&
             
        End If
    Next SSPic
    
    'Start/Stop Pictures (Storage On/Off)
    For Each SSPic In picStartStop()
        'Set the button picture
        If Start_Stop(SSPic.Index, PLCStn) Then
            picStartStop(SSPic.Index).Picture = Me.picStartStopNone.Picture
        ElseIf Not Start_Stop(SSPic.Index, PLCStn) Then
            picStartStop(SSPic.Index).Picture = Me.picStartStopNoEntry.Picture
            
        End If
    Next SSPic
    
    lblHours.Caption = Format$(SysRunHoursK(PLCStn)) & Format$(SysRunHours(PLCStn), "000") & ":" & Format$(SysRunMinutes(PLCStn), "00") '& ":" & Format$(SysRunSeconds(PLCStn), "00")
       
    SetArrow = True
    
Exit Sub
tmr_update_Error:
    ErrorHandler Err, "maindisp0 tmr_update", Err.Description, False
    Resume Next
         
End Sub
Public Sub AlarmCheck()
        
    If TrapErrors Then On Error GoTo Error_AlarmCheck
    
    Dim AlarmBagFound As Boolean
    AlarmBagFound = False
    
    If Alarm(PLCStn) > 0 Then
        
        'Display No.0 Alarms
        Dim Bag As Shape
        For Each Bag In BagRing()
            If Alarm(PLCStn) = Bag.Index Then
                AlarmBagFound = True
                Alarm_pic.Visible = Not Alarm_pic.Visible
                Set Alarm_pic.Container = BagRing(Alarm(PLCStn)).Container
                Alarm_pic.ZOrder vbBringToFront
                Alarm_pic.Top = BagRing(Alarm(PLCStn)).Top
                Alarm_pic.Left = BagRing(Alarm(PLCStn)).Left
                'DoEvents
            End If
        Next Bag
        
        Dim BagAlarm As Shape
        For Each BagAlarm In BagRingAlarm()
            If Alarm(PLCStn) = BagAlarm.Index Then
                AlarmBagFound = True
                Alarm_pic.Visible = Not Alarm_pic.Visible
                Set Alarm_pic.Container = BagRingAlarm(Alarm(PLCStn)).Container
                Alarm_pic.ZOrder vbBringToFront
                Alarm_pic.Top = BagRingAlarm(Alarm(PLCStn)).Top
                Alarm_pic.Left = BagRingAlarm(Alarm(PLCStn)).Left
                'DoEvents
            End If
        Next BagAlarm
        If AlarmBagFound = False Then
            Alarm_pic.Visible = False
        End If
    Else
        Alarm_pic.Visible = False
    End If
Exit Sub

Error_AlarmCheck:

    ErrorHandler Err, "maindisp0 AlarmCheck", Err.Description, False

End Sub

Private Sub tmrHours_Timer()
     
End Sub



Private Sub TripCount_Click(Index As Integer)
    CurrentCnt = Index
    CurrentCntPLC = PLCStn
    If AccessLevel > accSupervisor Then
        Dim FrmOpen As Boolean
        FrmOpen = CheckFormOpen("Counters_frm", "")
        'If FrmOpen Then
        DisplayForm Counters_frm
    End If
End Sub



Private Sub TripCount_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    Call SetPopUp(PopUpCounter, Index)
       
End Sub

Private Sub txtFilterCat_Change()
    
    cmbCat.Text = dbGetNameFromNum(txtFilterCat, EditCat, TextWord(481))
    
    Call dbGetIDFromLongID(EditCat, txtFilterCat, ID)
    FilterCat = CatNum(ID)
    
    UpdateAllBags
    
End Sub

Private Sub txtFilterCat_KeyDown(KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txtFilterCat, KeyCode)
End Sub

Private Sub txtFilterCat_KeyPress(KeyAscii As Integer)
   BoxKeyPress txtFilterCat, KeyAscii, EditCat
End Sub

Private Sub txtFilterCus_Change()
              
    cmbCus.Text = dbGetNameFromNum(txtFilterCus, EditCus, TextWord(480))

    If UBound(CusNum) > ID Then

        Call dbGetIDFromLongID(EditCus, txtFilterCus, ID)
        FilterCus = CusNum(ID)

    End If
    UpdateAllBags
       
End Sub

Private Sub txtFilterCus_KeyDown(KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txtFilterCus, KeyCode)
End Sub

Private Sub txtFilterCus_KeyPress(KeyAscii As Integer)
    BoxKeyPress txtFilterCus, KeyAscii, EditCus
End Sub
Private Sub txtFilterGrp_Change()
    
    cmbGrp.Text = dbGetNameFromNum(txtFilterGrp, EditGrp, TextWord(678))
    
    Call dbGetIDFromLongID(EditGrp, txtFilterGrp, ID)
    FilterGrp = GrpNum(ID)
    
    UpdateAllBags
End Sub
Private Sub txtFilterGrp_KeyDown(KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txtFilterGrp, KeyCode)
End Sub
Private Sub txtFilterGrp_KeyPress(KeyAscii As Integer)
    BoxKeyPress txtFilterGrp, KeyAscii, EditGrp
End Sub

Private Sub SetupFilters()
    
    lblFilterWeight.Caption = TextWord(214)
    lblFilterCount.Caption = TextWord(205)
    
    FilterGrp = 0
    FilterCat = 0
    FilterCus = 0
    
    'Add Names to Program Selection Combo
    PopulateGroupCombo cmbGrp, TextWord(678)
    txtFilterGrp.Text = "0"
    
    'Add Names to Category Selection Combo
    PopulateCategoryCombo cmbCat, TextWord(481)
    txtFilterCat.Text = "0"
    
    'Add Names to Customer Selection Combo
    PopulateCustomerCombo cmbCus, TextWord(480)
    txtFilterCus.Text = "0"
    
    cmbCat.Visible = dbCatUsed
    txtFilterCat.Visible = dbCatUsed
    If Not dbCatUsed Then
        txtFilterGrp.Top = txtFilterCat.Top
        cmbGrp.Top = cmbCat.Top
   End If
End Sub



Private Sub DriersDisplay()

    On Error Resume Next
    
    Dim Index As Integer
    
    Index = 109 'Bag 109 Contains the Drier Data
    lblDriersCusNo.Caption = Format$(BagCus(Index, PLCStn))
    lblDriersCatNo.Caption = Format$(BagCat(Index, PLCStn))
    lblDriersCustomer.Caption = CusName(Val(lblDriersCusNo.Caption))
    lblDriersCategory.Caption = GrpName(Val(lblDriersCatNo.Caption))
    
  
End Sub

Public Sub SetPopUp(ControlType As Integer, Optional Index As Integer, Optional Tag As Integer)
       
    Dim SS As Image
    Dim ULDPic As Image
     
    'If New control then stop the current timer
    If (ControlType <> MyPopUpType) Or (Index <> MyPopUpIndex) Then
        Me.tmrMyPopUp.Enabled = False
        MyPopUpIndex = 0
    End If
    
    'Highlight bag
    If (ControlType = PopUpBag) Then
        If MyBagGlowIndex <> Index Then
            Call ShapeGlowShow(BagRing(Index))
            MyBagGlowIndex = Index
        End If
    Else
        Call ShapeGlowHide
        MyBagGlowIndex = 0
    End If
        
 
       
    'Check if editing a bag
    Dim EditFormOpen As Boolean
    EditFormOpen = CheckFormOpen("Edit2_frm")
        
   'Set all start/stop buttons back to the basic appearance
    For Each SS In StartStopPic()
        If (ControlType <> PopUpStartStopPic) Or ((ControlType = PopUpStartStopPic) And (Index <> MyPopUpIndex)) Then
            If Start_Stop(SS.Index, PLCStn) Then
                If StartStopPic(SS.Index).Picture <> Me.picW7Green(1).Picture Then StartStopPic(SS.Index).Picture = Me.picW7Green(1).Picture
            Else
                If StartStopPic(SS.Index).Picture <> Me.picW7Red(1).Picture Then StartStopPic(SS.Index).Picture = Me.picW7Red(1).Picture
            End If
        End If
    Next SS
    If (ControlType = PopUpStartStopPic) And (Index = MyPopUpIndex) Then
        If Start_Stop(Index, PLCStn) Then
            If StartStopPic(Index).Picture <> Me.picW7Green(4).Picture Then StartStopPic(Index).Picture = Me.picW7Green(4).Picture
        Else
            If StartStopPic(Index).Picture <> Me.picW7Red(4).Picture Then StartStopPic(Index).Picture = Me.picW7Red(4).Picture
        End If
    End If
           
    If ((ControlType <> PopUpNone) And Not EditFormOpen) Then
        MyPopUpIndex = Index
        MyPopUpType = ControlType
        Me.tmrMyPopUp.Enabled = True
    Else
        Me.picMyToolTipText.Visible = False
        Me.picMyToolTipTextShadow.Visible = False
        Me.pic_BagInfo.Visible = False
    End If
    
    
   
    
    
End Sub
Private Sub DoPopUp()
    
    On Error GoTo DoPopUpError
    
    Dim StringBuild         As String
    Dim IONum               As Integer
    Dim Card                As Integer
    Dim InputDescription    As String
    Dim CounterDescription  As String
    Dim Tag                 As String
    Dim Num                 As Integer
    Dim GrpID               As Integer
    Dim GrpNum              As Long
    Dim PLCGrpID            As Integer
    Dim PLCGrpNum           As Long
    Dim CatID               As Integer
    Dim CatNum              As Long
    Dim CusID               As Integer
    Dim CusNum              As Long
    Dim Failed              As Boolean
    Dim Dest                As Integer
    Dim LeftPosn            As Integer
    Dim TopPosn             As Integer
    
    Dim BagPLC              As Integer
    Dim Index               As Integer
    
    Dim mcnShape            As Shape
    Dim mcnIndex            As Integer
    Dim mcnPLCStn           As Integer
    
    Dim Ur1ID       As Integer
    Dim Ur1Num      As Long
    
    Dim Ur2ID       As Integer
    Dim Ur2Num      As Long
    
    'Ensure correct Left Position is read When this form looses the Focus
    'Its correct left position will be updated when it gets focus again.
    'Blank_frm.Show
    'Blank_frm.Hide
    
    'Set Correct Size
    If ExtraInfo Then
        pic_BagInfo.Height = lstCat.Top + lstCat.Height + 100
        lstCat.Visible = True
        lstCus.Visible = True
        lstWgt.Visible = True
    Else
        pic_BagInfo.Height = lblBag.Top + lblBag.Height + 100
        lstCat.Visible = False
        lstCus.Visible = False
        lstWgt.Visible = False
    End If
    
    Select Case MyPopUpType
        Case PopUpBag
                                
            Call PLCIndexEncodeDecode(ModeTviewToPLC, MyPopUpIndex, Index, BagPLC)
                                 
            CatNum = BagCat(Index, BagPLC)
            Call dbGetID(EditCat, CatNum, CatID)
                         
            CusNum = BagCus(Index, BagPLC)
            Call dbGetID(EditCus, CusNum, CusID)
                         
            If dbCatUsed Then
                GrpNum = CatGroup(CatID)
            Else
                GrpNum = BagGrp(Index, BagPLC)
            End If
            Call dbGetID(EditGrp, GrpNum, GrpID)
                         
            'Category Group
            If (dbSettingValue(GrpDbLongEntry) <> "0") Then
                lblGrpNo.Text = GrpLong(GrpID)
            Else
                lblGrpNo.Text = Format$(GrpNum)
            End If
            lblGrp.Text = " " & GrpName(GrpID)
                   
            'PLC Program is not the same as allocated to the Category
            PLCGrpNum = BagGrp(Index, BagPLC)
            If GrpNum <> PLCGrpNum Then
                Call dbGetID(EditGrp, PLCGrpNum, PLCGrpID)
                lblGrpError.Caption = TextWord(689) & " " & TextWord(690) & " = " & Format(PLCGrpNum) & " " & GrpName(PLCGrpID)
                lblGrpError.Visible = True
            Else
                lblGrpError.Visible = False
            End If
                   
            'Category
            If (dbSettingValue(CatDbLongEntry) <> "0") Then
                lblCatNo.Text = CatLong(CatID)
            Else
                lblCatNo.Text = Format$(CatNum)
            End If
            lblCat.Text = " " & CatName(CatID)
            
            'Customer
            If (dbSettingValue(CusDbLongEntry) <> "0") Then
                lblCusNo.Text = CusLong(CusID)
            Else
                lblCusNo.Text = Format$(CusNum)
            End If
            lblCus.Text = " " & CusName(CusID)
            
            lblWgt.Text = " " & Format$(BagWgt(Index, BagPLC) / 10, "00.0")
            lblCnt.Text = " " & Format$(BagCnt(Index, BagPLC))
            lblDayNo.Text = " " & Format$(BagDay(Index, BagPLC))
                        
            Dest = BagDst(Index, BagPLC)
            If Dest <= MaxDestinations Then
                lblDst.Text = " " & DestinationText(Dest, BagPLC)
            Else
                lblDst.Text = " " & Format$(Dest)
            End If
            lblDstNo.Text = Format$(Dest)
            lblDstNo.Visible = (Not OverviewOnly)
            lblDest.Visible = (Not OverviewOnly)
            lblDestination.Visible = (Not OverviewOnly)
                              
            lblCount.Visible = Counting
            lblCnt.Visible = Counting
            lblKg.Visible = Weighing
            lblWgt.Visible = Weighing
            lblDay.Visible = UseDay
            lblDayNo.Visible = UseDay
                           
            lblBag.Visible = (AccessLevel >= accProgrammer)
                           
            lblBag.Caption = "PLC=" & Format$(BagPLC) & " " & TextWord(44) & "=" & Index 'Format$(MyPopUpIndex)
            lblBagID.Caption = TextWord(44) & " " & "ID=" & Format$(BagBid(Index, BagPLC))
            lblBatchID.Caption = TextWord(520) & " " & "ID=" & Format$(BagMis(Index, BagPLC))
            lblBatchID.Visible = True
            
            'Category Not Used
            lblCategory.Visible = dbCatUsed
            lblCatNo.Visible = dbCatUsed
            lblCat.Visible = dbCatUsed
            If Not dbCatUsed Then
                lblGroup.Top = lblCategory.Top
                lblGrpNo.Top = lblCatNo.Top
                lblGrp.Top = lblCat.Top
            End If
                         
                          
            If BagTimestamp(Index, BagPLC) > 0 Then
                lbl_Timestamp.Caption = DateAdd("s", BagTimestamp(Index, BagPLC), TimeStampDateStart)
            Else
                lbl_Timestamp.Caption = "00/00/0000 00:00:00"
            End If
            
            'UR1
            Ur1Num = BagUr1(Index, PLCStn)
            lblUser1.Text = TextWord(615) & " "
            lblUr1.Text = TextWord(750 + Ur1Num)
            lblUr1No.Text = Format$(Ur1Num)
            

'            Ur2Num = BagUr2(Index, BagPLC)
'            Call dbGetID(EditCleanDest, Ur2Num, Ur2ID)
'
'            lblUser2.Text = TextWord(510) & " "
'            lblUr2.Text = ClnDstName(Ur2ID)
'            lblUr2No.Text = Format$(Ur2Num)
            
                       
            
            If ExtraInfo Then
                lstCat.Clear
                lstCus.Clear
                lstWgt.Clear
                
                Call MISSQLServer_uspGetBatchContents(BagMis(Index, PLCStn))
    
                If (GetBatchContentsRecords > 0) Then
                    For n = 1 To GetBatchContentsRecords
                        
                        CatNum = GetBatchContents(n).CategoryID
                        Call dbGetID(EditCat, CatNum, CatID)
                         
                        CusNum = GetBatchContents(n).CustID
                        Call dbGetID(EditCus, CusNum, CusID)
                                              
                        lstCat.AddItem Format$(CatNum) & " " & Format$(CatName(CatID))
                        lstCus.AddItem Format$(CusNum) & " " & Format$(CusName(CusID))
                        lstWgt.AddItem Format$(GetBatchContents(n).Weight / 10) & TextWord(224)
                    Next n
                Else
                    lstCat.AddItem ("-")
                End If
            
            
            End If
             
            MyPopUpLeft = Me.BagData1(MyPopUpIndex).Left
            MyPopUpTop = Me.BagData1(MyPopUpIndex).Top
            MyPopUpWidth = Me.BagData1(MyPopUpIndex).Width
            MyPopUpHeight = Me.BagData1(MyPopUpIndex).Height
        
        Case PopUpBcScanner
            Me.lblMyToolTipText.Caption = BCScannerIPText(MyPopUpIndex, PLCStn)
            
            MyPopUpLeft = Me.BcScanner(MyPopUpIndex).Left
            MyPopUpTop = Me.BcScanner(MyPopUpIndex).Top
            MyPopUpWidth = Me.BcScanner(MyPopUpIndex).Width
            MyPopUpHeight = Me.BcScanner(MyPopUpIndex).Height
        Case PopUpInput
            If Val(picX(MyPopUpIndex).Tag) = 0 Then
                StringBuild = Format$(MyPopUpIndex)
            Else
                StringBuild = Format$(picX(MyPopUpIndex).Tag)
            End If
            Do Until Len(StringBuild) = 5
                StringBuild = "0" & StringBuild
            Loop
            Temp$ = Right$(StringBuild, 2)
            IONum = Val(Temp$)
            Temp$ = Left$(StringBuild, 3)
            Card = Val(Temp$)
            If IONum <= 16 Then
                Me.lblMyToolTipText.Caption = " X" & Format$(StringBuild) & " - " & PLCInputDesc(Card, IONum, PLCStn) & " "
            Else
                Me.lblMyToolTipText.Caption = " X"
            End If
            
            MyPopUpLeft = Me.picX(MyPopUpIndex).Left
            MyPopUpTop = Me.picX(MyPopUpIndex).Top
            MyPopUpWidth = Me.picX(MyPopUpIndex).Width
            MyPopUpHeight = Me.picX(MyPopUpIndex).Height
        
        Case PopUpInputNC
            If Val(picX_NC(MyPopUpIndex).Tag) = 0 Then
                StringBuild = Format$(MyPopUpIndex)
            Else
                StringBuild = Format$(picX_NC(MyPopUpIndex).Tag)
            End If
            Do Until Len(StringBuild) = 5
                StringBuild = "0" & StringBuild
            Loop
            Temp$ = Right$(StringBuild, 2)
            IONum = Val(Temp$)
            Temp$ = Left$(StringBuild, 3)
            Card = Val(Temp$)
            If IONum <= 16 Then
                Me.lblMyToolTipText.Caption = " X" & Format$(StringBuild) & " - " & PLCInputDesc(Card, IONum, PLCStn) & " "
            Else
                Me.lblMyToolTipText.Caption = " X"
            End If
            
            MyPopUpLeft = Me.picX_NC(MyPopUpIndex).Left
            MyPopUpTop = Me.picX_NC(MyPopUpIndex).Top
            MyPopUpWidth = Me.picX_NC(MyPopUpIndex).Width
            MyPopUpHeight = Me.picX_NC(MyPopUpIndex).Height
        
        Case PopUpOutput
            If Val(picY(MyPopUpIndex).Tag) = 0 Then
                StringBuild = Format$(MyPopUpIndex)
            Else
                StringBuild = Format$(picY(MyPopUpIndex).Tag)
            End If
            Do Until Len(StringBuild) = 5
                StringBuild = "0" & StringBuild
            Loop
            Temp$ = Right$(StringBuild, 2)
            IONum = Val(Temp$)
            Temp$ = Left$(StringBuild, 3)
            Card = Val(Temp$)
            If IONum <= 16 Then
                Me.lblMyToolTipText.Caption = " Y" & Format$(StringBuild) & " - " & PLCOutputDesc(Card, IONum, PLCStn) & " "
            Else
                Me.lblMyToolTipText.Caption = " Y "
            End If
            
            MyPopUpLeft = Me.picY(MyPopUpIndex).Left
            MyPopUpTop = Me.picY(MyPopUpIndex).Top
            MyPopUpWidth = Me.picY(MyPopUpIndex).Width
            MyPopUpHeight = Me.picY(MyPopUpIndex).Height
            
        Case PopUpCounter
            Tag = TripCount(MyPopUpIndex).Tag
            StringBuild = Tag
            Do Until Len(StringBuild) = 5
                StringBuild = "0" & StringBuild
            Loop
            Temp$ = Right$(StringBuild, 2)
            IONum = Val(Temp$)
            Temp$ = Left$(StringBuild, 3)
            Card = Val(Temp$)
            If IONum <= 16 And Tag <> "" Then
                InputDescription = "     X" & Tag & " - " & PLCInputDesc(Card, IONum, PLCStn)
            Else
                InputDescription = ""
            End If
            CounterDescription = TextWord(215) & " = " & TextWord(600 + CounterValue(MyPopUpIndex, PLCStn))
            Me.lblMyToolTipText.Caption = " " & CounterDescription & InputDescription & " "
            
            MyPopUpLeft = Me.TripCount(MyPopUpIndex).Left
            MyPopUpTop = Me.TripCount(MyPopUpIndex).Top
            MyPopUpWidth = Me.TripCount(MyPopUpIndex).Width
            MyPopUpHeight = Me.TripCount(MyPopUpIndex).Height
        
        Case PopUpSequence
            
            Me.lblMyToolTipText.Caption = " " & TextWord(38) & " " & SequenceDescription(MyPopUpIndex, SequenceStep(MyPopUpIndex, PLCStn), PLCStn) & " "
    
            MyPopUpLeft = Me.SeqButton(MyPopUpIndex).Left
            MyPopUpTop = Me.SeqButton(MyPopUpIndex).Top
            MyPopUpWidth = Me.SeqButton(MyPopUpIndex).Width
            MyPopUpHeight = Me.SeqButton(MyPopUpIndex).Height
        
        Case PopUpStnLamp
            'Not Used on TrackView
            
        
        Case PopUpLdgProg
            'Not Used on TrackView
            
         Case PopUpCAN
            
            Me.lblMyToolTipText.Caption = " " & TextWord(724) & Str(MyPopUpIndex) & " "
            
            MyPopUpLeft = Me.picCAN(MyPopUpIndex).Left
            MyPopUpTop = Me.picCAN(MyPopUpIndex).Top
            MyPopUpWidth = Me.picCAN(MyPopUpIndex).Width
            MyPopUpHeight = Me.picCAN(MyPopUpIndex).Height
        
        Case PopUpVNC
            
            Me.lblMyToolTipText.Caption = " " & "VNC" & Str(MyPopUpIndex) & " - " & VNCName(MyPopUpIndex) & " "
            
            MyPopUpLeft = Me.cmdVNC(MyPopUpIndex).Left
            MyPopUpTop = Me.cmdVNC(MyPopUpIndex).Top
            MyPopUpWidth = Me.cmdVNC(MyPopUpIndex).Width
            MyPopUpHeight = Me.cmdVNC(MyPopUpIndex).Height
          
         Case PopUpPicStartStop
            
            If Start_Stop(MyPopUpIndex, PLCStn) Then
                Me.lblMyToolTipText.Caption = " " & TextWord(122) & "? "
            Else
                Me.lblMyToolTipText.Caption = " " & TextWord(123) & "? "
            End If
            
            MyPopUpLeft = Me.picStartStop(MyPopUpIndex).Left
            MyPopUpTop = Me.picStartStop(MyPopUpIndex).Top
            MyPopUpWidth = Me.picStartStop(MyPopUpIndex).Width
            MyPopUpHeight = Me.picStartStop(MyPopUpIndex).Height
            
         Case PopUpMachine
               
            Call PLCIndexEncodeDecode(ModeTviewToPLC, MyPopUpIndex, mcnIndex, mcnPLCStn)
            
            If AccessLevel >= accProgrammer Then
                Me.lblMyToolTipText.Caption = " index=" & MyPopUpIndex & " "
            End If
            Me.lblMyToolTipText.Caption = Me.lblMyToolTipText.Caption & " " & TextWord(39) & " = " & Mcn(mcnIndex, mcnPLCStn).MACHINE_NO & " "
            
            MyPopUpLeft = Me.picMcnStatus(MyPopUpIndex).Left
            MyPopUpTop = Me.picMcnStatus(MyPopUpIndex).Top
            MyPopUpWidth = Me.picMcnStatus(MyPopUpIndex).Width
            MyPopUpHeight = Me.picMcnStatus(MyPopUpIndex).Height
        
        Case PopUpStartStopPic
            
            If Start_Stop(MyPopUpIndex, PLCStn) Then
                Me.lblMyToolTipText.Caption = " " & TextWord(122) & "? "
            Else
                Me.lblMyToolTipText.Caption = " " & TextWord(123) & "? "
            End If
            
            MyPopUpLeft = Me.StartStopPic(MyPopUpIndex).Left
            MyPopUpTop = Me.StartStopPic(MyPopUpIndex).Top
            MyPopUpWidth = Me.StartStopPic(MyPopUpIndex).Width
            MyPopUpHeight = Me.StartStopPic(MyPopUpIndex).Height
            
    
        
    End Select
    
    
    'If MyPopUpType <> PopUpBag And (Not Me.picMyToolTipText.Visible Or (MyPopUpTypeOld <> MyPopUpType) Or (MyPopUpIndexOld <> MyPopUpIndex)) Then
        
    If ((MyPopUpType <> PopUpBag) And ((MyPopUpTypeOld <> MyPopUpType) Or (MyPopUpIndexOld <> MyPopUpIndex))) Then
        
        MyPopUpTypeOld = MyPopUpType
        MyPopUpIndexOld = MyPopUpIndex
        
        Me.picMyToolTipText.Left = MyPopUpLeft
        Me.picMyToolTipText.Width = Me.lblMyToolTipText.Width + 200
        Me.lblMyToolTipText.Left = 100
               
        'Top Position
        If MyPopUpTop + (MyPopUpHeight / 2) > (Screen.Height / 2) Then
            TopPosn = Me.picMyToolTipText.Height
        Else
            TopPosn = 0
        End If
        Me.picMyToolTipText.Top = MyPopUpTop + (MyPopUpHeight / 2) - TopPosn
            
        'Left Position
        BagCenter = MyPopUpLeft + (MyPopUpWidth / 2) + Me.Left
        If BagCenter > (Screen.Width / 2) Then
            LeftPosn = Me.picMyToolTipText.Width    'Right
        Else
            LeftPosn = 0                            'Left
        End If
        Me.picMyToolTipText.Left = BagCenter - LeftPosn - Me.Left
        
        'Set Shadow position
        Me.picMyToolTipTextShadow.Top = Me.picMyToolTipText.Top + 45
        Me.picMyToolTipTextShadow.Left = Me.picMyToolTipText.Left + 45
        Me.picMyToolTipTextShadow.Width = Me.picMyToolTipText.Width
        Me.picMyToolTipTextShadow.Height = Me.picMyToolTipText.Height
        
        'Me.picMyToolTipTextShadow.ZOrder vbBringToFront
        'Me.picMyToolTipText.ZOrder vbBringToFront
        
        Me.picMyToolTipText.Visible = True
        Me.picMyToolTipTextShadow.Visible = True
        Me.pic_BagInfo.Visible = False
        
    ElseIf MyPopUpType = PopUpBag And Not BagDraging Then 'And Not Me.pic_BagInfo.Visible Then
                
        'Top Position
        If BagData1(MyPopUpIndex).Top + (BagData1(MyPopUpIndex).Height / 2) > (Me.Height / 2) Then
            TopPosn = pic_BagInfo.Height
        Else
            TopPosn = 0
        End If
        pic_BagInfo.Top = BagData1(MyPopUpIndex).Top + (BagData1(MyPopUpIndex).Height / 2) - TopPosn
            
        'Left Position
        BagCenter = BagData1(MyPopUpIndex).Left + (BagData1(MyPopUpIndex).Width / 2) + Me.Left
        If (BagCenter + pic_BagInfo.Width) > (Me.Left + Me.Width) Then
            LeftPosn = pic_BagInfo.Width    'Right
        Else
            LeftPosn = 0                    'Left
        End If
        pic_BagInfo.Left = BagCenter - LeftPosn - Me.Left
        
        
        Me.pic_BagInfo.Visible = True
        Me.picMyToolTipText.Visible = False
        Me.picMyToolTipTextShadow.Visible = False
    
    End If
         
Exit Sub
DoPopUpError:
    ErrorHandler Err, "System_frm DoPopUp", Err.Description, False
    Resume Next
End Sub
Private Sub tmrMyPopUp_Timer()
    
    Me.tmrMyPopUp.Enabled = False
    DoPopUp
    
End Sub

Private Sub ShapeGlowShow(myShape As Shape)
    
    If Me.shpGlowInside.Shape <> myShape.Shape Then Me.shpGlowInside.Shape = myShape.Shape
    If Me.shpGlowOutside.Shape <> myShape.Shape Then Me.shpGlowOutside.Shape = myShape.Shape
    If Me.shpGlowInside.Width <> myShape.Width Then Me.shpGlowInside.Width = myShape.Width '+ 30
    If Me.shpGlowInside.Height <> myShape.Height Then Me.shpGlowInside.Height = myShape.Height '+ 30
    If Me.shpGlowOutside.Width <> myShape.Width + 30 Then Me.shpGlowOutside.Width = myShape.Width + 30
    If Me.shpGlowOutside.Height <> myShape.Height + 30 Then Me.shpGlowOutside.Height = myShape.Height + 30
    If Me.shpGlowInside.Top <> myShape.Top Then Me.shpGlowInside.Top = myShape.Top '- 15
    If Me.shpGlowInside.Left <> myShape.Left Then Me.shpGlowInside.Left = myShape.Left '- 15
    If Me.shpGlowOutside.Top <> myShape.Top Then Me.shpGlowOutside.Top = myShape.Top - 15
    If Me.shpGlowOutside.Left <> myShape.Left - 15 Then Me.shpGlowOutside.Left = myShape.Left - 15
    
    If Not Me.shpGlowInside.Visible Then
        Me.shpGlowInside.Visible = True
        Me.shpGlowOutside.Visible = True
        Me.shpGlowInside.ZOrder vbBringToFront
        Me.shpGlowOutside.ZOrder vbBringToFront
    End If
    
End Sub
Private Sub ShapeGlowHide()
        
    Me.shpGlowInside.Visible = False
    Me.shpGlowOutside.Visible = False
End Sub


Private Sub loadDataEntry(Bag As Integer)
    Dim DataEntry As New DataEntry_frm
    DataEntry.Config (Bag)
    DataEntry.Show
    
    SetParent DataEntry.hWnd, pic_DataEntry.hWnd
    DataEntry.Move 0, 0, pic_DataEntry.ScaleWidth, pic_DataEntry.ScaleHeight

End Sub



