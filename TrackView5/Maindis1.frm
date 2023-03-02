VERSION 5.00
Begin VB.Form maindisp1_frm 
   BackColor       =   &H00808080&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "maindisp1"
   ClientHeight    =   21630
   ClientLeft      =   45
   ClientTop       =   225
   ClientWidth     =   21795
   FillColor       =   &H00E0E0E0&
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00404040&
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   Palette         =   "Maindis1.frx":0000
   Picture         =   "Maindis1.frx":356D02
   ScaleHeight     =   21630
   ScaleWidth      =   21795
   ShowInTaskbar   =   0   'False
   Tag             =   "15203"
   Begin VB.CommandButton SeqButton 
      Caption         =   "CVC6"
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
      Left            =   2415
      TabIndex        =   98
      Top             =   15720
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CVC5"
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
      Left            =   8955
      TabIndex        =   97
      Top             =   17430
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CSR4"
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
      Left            =   6225
      TabIndex        =   96
      Top             =   18270
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CPR3"
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
      Left            =   360
      TabIndex        =   95
      Top             =   18210
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CPR2"
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
      Left            =   19140
      TabIndex        =   94
      Top             =   17790
      Width           =   690
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
      Index           =   31
      Left            =   18420
      TabIndex        =   93
      Top             =   11415
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP14"
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
      Left            =   19980
      TabIndex        =   92
      Top             =   10950
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP6"
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
      Left            =   16800
      TabIndex        =   91
      Top             =   17040
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP5"
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
      Left            =   16890
      TabIndex        =   90
      Top             =   11805
      Width           =   690
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
      Index           =   24
      Left            =   16155
      TabIndex        =   89
      Top             =   20655
      Width           =   690
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
      Index           =   25
      Left            =   18810
      TabIndex        =   88
      Top             =   18765
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP1"
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
      Left            =   15360
      TabIndex        =   87
      Top             =   7665
      Width           =   690
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
      Index           =   27
      Left            =   13575
      TabIndex        =   86
      Top             =   10635
      Width           =   690
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
      Index           =   23
      Left            =   13305
      TabIndex        =   85
      Top             =   18315
      Width           =   690
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
      Index           =   21
      Left            =   4470
      TabIndex        =   84
      Top             =   4305
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP13"
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
      Left            =   6465
      TabIndex        =   83
      Top             =   6330
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP10"
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
      Left            =   2325
      TabIndex        =   82
      Top             =   14775
      Width           =   690
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
      Index           =   18
      Left            =   10335
      TabIndex        =   81
      Top             =   16050
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CP7"
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
      Left            =   10455
      TabIndex        =   80
      Top             =   9495
      Width           =   690
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
      Index           =   16
      Left            =   10485
      TabIndex        =   79
      Top             =   2535
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CVC4"
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
      Left            =   12540
      TabIndex        =   78
      Top             =   1245
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CVC3"
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
      Left            =   15540
      TabIndex        =   77
      Top             =   5940
      Width           =   690
   End
   Begin VB.Frame Fra_Tools 
      BackColor       =   &H00DBD9D4&
      Caption         =   "TrackView Tools"
      ForeColor       =   &H00800000&
      Height          =   11460
      Left            =   -270
      TabIndex        =   0
      Top             =   21060
      Visible         =   0   'False
      Width           =   16080
      Begin VB.PictureBox pic_BagInfo 
         Appearance      =   0  'Flat
         BackColor       =   &H00DBD9D4&
         ForeColor       =   &H00C0C0C0&
         Height          =   3180
         Left            =   300
         ScaleHeight     =   3150
         ScaleWidth      =   7695
         TabIndex        =   33
         Top             =   3900
         Visible         =   0   'False
         Width           =   7725
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
            TabIndex        =   61
            Top             =   2805
            Width           =   1215
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
            TabIndex        =   60
            Top             =   2805
            Width           =   2790
         End
         Begin VB.TextBox lblWgt 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
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
            TabIndex        =   59
            Text            =   "99999999"
            Top             =   1500
            Width           =   1140
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
            TabIndex        =   58
            Text            =   "Kg"
            Top             =   1500
            Width           =   2715
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
            TabIndex        =   57
            Text            =   "Ur1"
            Top             =   5775
            Width           =   2865
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
            TabIndex        =   56
            Text            =   "99999999"
            Top             =   5775
            Width           =   1140
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
            TabIndex        =   55
            Text            =   "Ur1"
            Top             =   5775
            Width           =   2715
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
            TabIndex        =   54
            Text            =   "Ur2"
            Top             =   6150
            Width           =   2865
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
            TabIndex        =   53
            Text            =   "Dst"
            Top             =   1200
            Width           =   2865
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
            TabIndex        =   52
            Text            =   "99999999"
            Top             =   6150
            Width           =   1140
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
            TabIndex        =   51
            Text            =   "Ur2"
            Top             =   6150
            Width           =   2715
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
            TabIndex        =   50
            Text            =   "Cus"
            Top             =   900
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
            TabIndex        =   49
            Text            =   "Cat"
            Top             =   600
            Width           =   2865
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
            TabIndex        =   48
            Text            =   "Prg"
            Top             =   300
            Width           =   2865
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
            TabIndex        =   47
            Text            =   "99999999"
            Top             =   5400
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
            TabIndex        =   46
            Text            =   "99999999"
            Top             =   5025
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
            TabIndex        =   45
            Text            =   "99999999"
            Top             =   1200
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
            TabIndex        =   44
            Text            =   "99999999"
            Top             =   900
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
            TabIndex        =   43
            Text            =   "99999999"
            Top             =   600
            Width           =   1140
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
            TabIndex        =   42
            Text            =   "99999999"
            Top             =   300
            Width           =   1140
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
            TabIndex        =   41
            Text            =   "Hidden"
            Top             =   5625
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
            TabIndex        =   40
            Text            =   "Count"
            Top             =   5400
            Width           =   2640
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
            TabIndex        =   39
            Text            =   "Day"
            Top             =   5025
            Width           =   2640
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
            TabIndex        =   38
            Text            =   "Destination"
            Top             =   1200
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
            TabIndex        =   37
            Text            =   "Customer"
            Top             =   900
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
            TabIndex        =   36
            Text            =   "Category"
            Top             =   600
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
            TabIndex        =   35
            Text            =   "Category Group"
            Top             =   300
            Width           =   2715
         End
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
            TabIndex        =   34
            Top             =   2805
            Width           =   2715
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
            TabIndex        =   66
            Top             =   2175
            Width           =   2640
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
            TabIndex        =   65
            Top             =   2175
            Width           =   2640
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
            TabIndex        =   64
            Top             =   75
            Width           =   6690
         End
         Begin VB.Image Image1 
            Height          =   480
            Left            =   150
            Picture         =   "Maindis1.frx":55A190
            Top             =   150
            Width           =   480
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
            TabIndex        =   63
            Top             =   1875
            Width           =   2640
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
            TabIndex        =   62
            Top             =   1575
            Width           =   2640
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
         Left            =   9720
         ScaleHeight     =   390
         ScaleWidth      =   2265
         TabIndex        =   6
         Top             =   3060
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
         Picture         =   "Maindis1.frx":55A5D2
         Style           =   1  'Graphical
         TabIndex        =   5
         Top             =   1200
         Width           =   690
      End
      Begin VB.PictureBox picMyToolTipText 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H80000008&
         Height          =   390
         Left            =   1125
         ScaleHeight     =   360
         ScaleWidth      =   2235
         TabIndex        =   3
         Top             =   1200
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
         Left            =   2025
         TabIndex        =   2
         Top             =   600
         Width           =   690
      End
      Begin VB.Timer tmr_update 
         Interval        =   500
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
         Left            =   840
         Picture         =   "Maindis1.frx":55AE9C
         ScaleHeight     =   465
         ScaleWidth      =   465
         TabIndex        =   1
         Top             =   525
         Width           =   465
      End
      Begin VB.Image TripCount 
         Height          =   165
         Index           =   0
         Left            =   5280
         Picture         =   "Maindis1.frx":55B10E
         Top             =   1260
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   0
         Left            =   4125
         Picture         =   "Maindis1.frx":55B18F
         Top             =   1275
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   1
         Left            =   4380
         Picture         =   "Maindis1.frx":55B4F2
         Top             =   1275
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   2
         Left            =   4380
         Picture         =   "Maindis1.frx":55B85C
         Top             =   1500
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   4
         Left            =   4125
         Picture         =   "Maindis1.frx":55BBBD
         Top             =   1725
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   5
         Left            =   3900
         Picture         =   "Maindis1.frx":55BF21
         Top             =   1725
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   6
         Left            =   3900
         Picture         =   "Maindis1.frx":55C28B
         Top             =   1500
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   7
         Left            =   3900
         Picture         =   "Maindis1.frx":55C5EC
         Top             =   1275
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   10
         Left            =   4380
         Picture         =   "Maindis1.frx":55C956
         Top             =   1725
         Width           =   165
      End
      Begin VB.Image BcScanner 
         Height          =   660
         Index           =   0
         Left            =   9120
         Picture         =   "Maindis1.frx":55CCC0
         Top             =   1080
         Width           =   660
      End
      Begin VB.Image picX 
         Height          =   750
         Index           =   6
         Left            =   10860
         Picture         =   "Maindis1.frx":55D372
         Top             =   360
         Width           =   1290
      End
      Begin VB.Image picX 
         Height          =   810
         Index           =   5
         Left            =   9780
         Picture         =   "Maindis1.frx":55DD02
         Top             =   360
         Width           =   825
      End
      Begin VB.Image picX 
         Height          =   795
         Index           =   4
         Left            =   8820
         Picture         =   "Maindis1.frx":55E7E1
         Top             =   300
         Width           =   750
      End
      Begin VB.Image picX 
         Height          =   1500
         Index           =   0
         Left            =   8400
         Picture         =   "Maindis1.frx":55F0A9
         Top             =   240
         Width           =   435
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   113
         Left            =   1980
         Picture         =   "Maindis1.frx":55FC70
         Top             =   780
         Width           =   165
      End
      Begin VB.Image picStartStop 
         Height          =   165
         Index           =   33
         Left            =   4425
         Picture         =   "Maindis1.frx":55FFD4
         Top             =   675
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
         Picture         =   "Maindis1.frx":560336
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
         Left            =   6150
         Shape           =   5  'Rounded Square
         Top             =   375
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
         Picture         =   "Maindis1.frx":5608B8
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picW7Red 
         Height          =   315
         Index           =   3
         Left            =   7050
         Picture         =   "Maindis1.frx":560E3A
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picW7Red 
         Height          =   315
         Index           =   2
         Left            =   6750
         Picture         =   "Maindis1.frx":5613BC
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picW7Red 
         Height          =   315
         Index           =   1
         Left            =   6450
         Picture         =   "Maindis1.frx":56193E
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picW7Green 
         Height          =   315
         Index           =   4
         Left            =   7350
         Picture         =   "Maindis1.frx":561EC0
         Top             =   1950
         Width           =   315
      End
      Begin VB.Image picW7Green 
         Height          =   315
         Index           =   3
         Left            =   7050
         Picture         =   "Maindis1.frx":562442
         Top             =   1950
         Width           =   315
      End
      Begin VB.Image picW7Green 
         Height          =   315
         Index           =   2
         Left            =   6750
         Picture         =   "Maindis1.frx":5629C4
         Top             =   1950
         Width           =   315
      End
      Begin VB.Image picW7Green 
         Height          =   315
         Index           =   1
         Left            =   6450
         Picture         =   "Maindis1.frx":562F46
         Top             =   1950
         Width           =   315
      End
      Begin VB.Label lblHours 
         Alignment       =   2  'Center
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
         Left            =   3840
         TabIndex        =   17
         Top             =   180
         Width           =   1815
      End
      Begin VB.Image picX_NC 
         Height          =   165
         Index           =   8
         Left            =   3975
         Picture         =   "Maindis1.frx":5634C8
         Top             =   675
         Width           =   105
      End
      Begin VB.Image picX_NC 
         Height          =   105
         Index           =   7
         Left            =   4125
         Picture         =   "Maindis1.frx":563820
         Top             =   525
         Width           =   165
      End
      Begin VB.Image picStartStop 
         Height          =   165
         Index           =   0
         Left            =   6150
         Picture         =   "Maindis1.frx":563B77
         Top             =   1650
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
         Picture         =   "Maindis1.frx":563ED9
         Top             =   2250
         Width           =   165
      End
      Begin VB.Image picStartStopGreen 
         Height          =   255
         Left            =   825
         Picture         =   "Maindis1.frx":56423B
         Top             =   2850
         Width           =   225
      End
      Begin VB.Image picStartStopRed 
         Height          =   255
         Left            =   825
         Picture         =   "Maindis1.frx":5645AD
         Top             =   2475
         Width           =   225
      End
      Begin VB.Image picMsgType 
         Height          =   165
         Index           =   0
         Left            =   6600
         Picture         =   "Maindis1.frx":56491F
         Top             =   1500
         Width           =   165
      End
      Begin VB.Image picMcnStatus 
         Height          =   165
         Index           =   0
         Left            =   6600
         Picture         =   "Maindis1.frx":564C79
         Top             =   1275
         Width           =   165
      End
      Begin VB.Image picLampRed 
         Height          =   165
         Left            =   525
         Picture         =   "Maindis1.frx":564FD3
         Top             =   3150
         Width           =   165
      End
      Begin VB.Image picLampGrey 
         Height          =   165
         Left            =   525
         Picture         =   "Maindis1.frx":56532D
         Top             =   2925
         Width           =   165
      End
      Begin VB.Image picLampGreen 
         Height          =   165
         Left            =   525
         Picture         =   "Maindis1.frx":565687
         Top             =   2700
         Width           =   165
      End
      Begin VB.Image picLampAmber 
         Height          =   165
         Left            =   525
         Picture         =   "Maindis1.frx":5659E1
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
         Picture         =   "Maindis1.frx":565D3B
         Top             =   2475
         Width           =   165
      End
      Begin VB.Image picTrip1 
         Height          =   165
         Left            =   300
         Picture         =   "Maindis1.frx":565DBC
         Top             =   2775
         Width           =   165
      End
      Begin VB.Image picTrip2 
         Height          =   165
         Left            =   300
         Picture         =   "Maindis1.frx":565E3D
         Top             =   3075
         Width           =   165
      End
      Begin VB.Image picCAN 
         Height          =   240
         Index           =   0
         Left            =   5175
         Picture         =   "Maindis1.frx":565EBE
         Top             =   1650
         Width           =   240
      End
      Begin VB.Image picIndication 
         Height          =   165
         Index           =   0
         Left            =   5175
         Picture         =   "Maindis1.frx":565FC0
         Top             =   900
         Width           =   165
      End
      Begin VB.Image picX 
         Height          =   165
         Index           =   1
         Left            =   4200
         Picture         =   "Maindis1.frx":566041
         Top             =   900
         Width           =   105
      End
      Begin VB.Image picX 
         Height          =   105
         Index           =   2
         Left            =   4560
         Picture         =   "Maindis1.frx":566399
         Top             =   900
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
         Left            =   1650
         TabIndex        =   8
         Top             =   1725
         Width           =   465
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         Caption         =   "Do not remove!"
         ForeColor       =   &H000000FF&
         Height          =   240
         Left            =   1950
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
         Left            =   11025
         Picture         =   "Maindis1.frx":5666F5
         Top             =   2430
         Width           =   315
      End
      Begin VB.Image picFIFO 
         Height          =   315
         Index           =   1
         Left            =   9990
         Picture         =   "Maindis1.frx":566C77
         Top             =   2415
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   1
         Left            =   5250
         Picture         =   "Maindis1.frx":5671F9
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   3
         Left            =   4500
         Picture         =   "Maindis1.frx":56777B
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   2
         Left            =   4875
         Picture         =   "Maindis1.frx":567CFD
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   1
         Left            =   5250
         Picture         =   "Maindis1.frx":56827F
         Top             =   2625
         Width           =   315
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   2
         Left            =   4875
         Picture         =   "Maindis1.frx":568801
         Top             =   2625
         Width           =   315
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   3
         Left            =   4500
         Picture         =   "Maindis1.frx":568D83
         Top             =   2625
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   0
         Left            =   3225
         Picture         =   "Maindis1.frx":569305
         Top             =   2250
         Width           =   480
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   0
         Left            =   3225
         Picture         =   "Maindis1.frx":569B27
         Top             =   2625
         Width           =   480
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   4
         Left            =   4125
         Picture         =   "Maindis1.frx":56A349
         Top             =   2625
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   4
         Left            =   4140
         Picture         =   "Maindis1.frx":56A8CB
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   5
         Left            =   3750
         Picture         =   "Maindis1.frx":56AE4D
         Top             =   2625
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   5
         Left            =   3750
         Picture         =   "Maindis1.frx":56B3CF
         Top             =   2250
         Width           =   315
      End
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
      Left            =   1035
      TabIndex        =   76
      Top             =   10080
      Width           =   690
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
      Left            =   2475
      TabIndex        =   75
      Top             =   7650
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "CVC2"
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
      Left            =   18480
      TabIndex        =   74
      Top             =   10305
      Width           =   690
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
      Left            =   5505
      TabIndex        =   73
      Top             =   14685
      Width           =   690
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
      Left            =   15465
      TabIndex        =   72
      Top             =   14835
      Width           =   690
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
      Left            =   15330
      TabIndex        =   71
      Top             =   12375
      Width           =   690
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
      Left            =   13545
      TabIndex        =   70
      Top             =   8010
      Width           =   690
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
      Left            =   12525
      TabIndex        =   69
      Top             =   5400
      Width           =   690
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
      Left            =   14985
      TabIndex        =   68
      Top             =   17790
      Width           =   690
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
      Index           =   1
      Left            =   15765
      TabIndex        =   67
      Top             =   9630
      Width           =   690
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
      Left            =   19635
      TabIndex        =   32
      Top             =   19785
      Width           =   1215
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
      Left            =   3390
      TabIndex        =   20
      Top             =   975
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
         TabIndex        =   21
         Top             =   300
         Width           =   4365
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
            Left            =   1275
            Sorted          =   -1  'True
            TabIndex        =   29
            Text            =   "cmbCus"
            Top             =   750
            Width           =   3090
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
            TabIndex        =   28
            Text            =   "cmbCat"
            Top             =   375
            Width           =   3090
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
            TabIndex        =   27
            Text            =   "100Kg"
            Top             =   1125
            Width           =   1065
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
            TabIndex        =   26
            Top             =   375
            Width           =   1140
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
            TabIndex        =   25
            Top             =   750
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
            TabIndex        =   24
            Text            =   "0"
            Top             =   1650
            Width           =   1065
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
            TabIndex        =   23
            Top             =   0
            Width           =   1140
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
            Left            =   1275
            Sorted          =   -1  'True
            TabIndex        =   22
            Text            =   "cmbGrp"
            Top             =   0
            Width           =   3090
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
            TabIndex        =   31
            Top             =   1200
            Width           =   2115
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
            TabIndex        =   30
            Top             =   1650
            Width           =   2115
         End
      End
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   10
      Left            =   10725
      Picture         =   "Maindis1.frx":56B951
      Top             =   15735
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   9
      Left            =   10140
      Picture         =   "Maindis1.frx":56BED3
      Top             =   9480
      Width           =   315
   End
   Begin VB.Image picX 
      Height          =   300
      Index           =   806
      Left            =   13980
      Picture         =   "Maindis1.frx":56C455
      Top             =   17490
      Width           =   1185
   End
   Begin VB.Image picX 
      Height          =   300
      Index           =   714
      Left            =   14850
      Picture         =   "Maindis1.frx":56D757
      Top             =   15180
      Width           =   1185
   End
   Begin VB.Image picX 
      Height          =   300
      Index           =   706
      Left            =   15060
      Picture         =   "Maindis1.frx":56EA59
      Top             =   12015
      Width           =   1185
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1311
      Left            =   6270
      Picture         =   "Maindis1.frx":56FD5B
      Top             =   6960
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   903
      Left            =   2160
      Picture         =   "Maindis1.frx":5700B7
      Top             =   9000
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   904
      Left            =   2175
      Picture         =   "Maindis1.frx":57040E
      Top             =   13620
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   911
      Left            =   3645
      Picture         =   "Maindis1.frx":570765
      Top             =   12630
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   810
      Left            =   6315
      Picture         =   "Maindis1.frx":570ABC
      Top             =   11640
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   811
      Left            =   3975
      Picture         =   "Maindis1.frx":570E13
      Tag             =   "1307"
      Top             =   13965
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1412
      Left            =   19920
      Picture         =   "Maindis1.frx":57116B
      Top             =   16845
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1410
      Left            =   19185
      Picture         =   "Maindis1.frx":5714C2
      Top             =   12285
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1406
      Left            =   18120
      Picture         =   "Maindis1.frx":571819
      Top             =   17715
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1511
      Left            =   16305
      Picture         =   "Maindis1.frx":571B70
      Top             =   17580
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   602
      Left            =   12030
      Picture         =   "Maindis1.frx":571EC7
      Top             =   3810
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1312
      Left            =   6300
      Picture         =   "Maindis1.frx":57221E
      Top             =   6120
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   611
      Left            =   13065
      Picture         =   "Maindis1.frx":572575
      Top             =   6390
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1808
      Left            =   14850
      Picture         =   "Maindis1.frx":5728CC
      Top             =   8625
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1316
      Left            =   1020
      Picture         =   "Maindis1.frx":572C23
      Top             =   5460
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   804
      Left            =   13800
      Picture         =   "Maindis1.frx":572F7A
      Tag             =   "1307"
      Top             =   16860
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1603
      Left            =   11085
      Picture         =   "Maindis1.frx":5732D2
      Top             =   14325
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1207
      Left            =   10530
      Picture         =   "Maindis1.frx":573629
      Tag             =   "1307"
      Top             =   16485
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1112
      Left            =   11625
      Picture         =   "Maindis1.frx":573981
      Tag             =   "1307"
      Top             =   285
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1601
      Left            =   11100
      Picture         =   "Maindis1.frx":573CD9
      Top             =   4185
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   710
      Left            =   14025
      Picture         =   "Maindis1.frx":574030
      Tag             =   "1307"
      Top             =   13635
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1806
      Left            =   17070
      Picture         =   "Maindis1.frx":574388
      Top             =   9945
      Width           =   165
   End
   Begin VB.Image picX_NC 
      Height          =   930
      Index           =   0
      Left            =   7980
      Picture         =   "Maindis1.frx":5746DF
      Tag             =   "1515"
      Top             =   8235
      Width           =   2295
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   52
      Left            =   1845
      Shape           =   5  'Rounded Square
      Top             =   8190
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   51
      Left            =   1845
      Shape           =   5  'Rounded Square
      Top             =   7740
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   50
      Left            =   1845
      Shape           =   5  'Rounded Square
      Top             =   7290
      Width           =   465
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   19
      Left            =   1995
      Picture         =   "Maindis1.frx":57B689
      Tag             =   "903"
      Top             =   8970
      Width           =   165
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   1
      Left            =   21390
      Shape           =   5  'Rounded Square
      Top             =   4050
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10010
      Left            =   16380
      Shape           =   5  'Rounded Square
      Top             =   16575
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10009
      Left            =   13125
      Shape           =   5  'Rounded Square
      Top             =   10785
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10007
      Left            =   17055
      Shape           =   5  'Rounded Square
      Top             =   20265
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10006
      Left            =   13380
      Shape           =   5  'Rounded Square
      Top             =   17850
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10005
      Left            =   4530
      Shape           =   5  'Rounded Square
      Top             =   4635
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   25
      Left            =   6135
      Picture         =   "Maindis1.frx":57B70A
      Tag             =   "811"
      Top             =   14130
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   8
      Left            =   6135
      Picture         =   "Maindis1.frx":57BA6B
      Tag             =   "809"
      Top             =   14220
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   809
      Left            =   5730
      Picture         =   "Maindis1.frx":57BDC3
      Top             =   14280
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   22
      Left            =   5730
      Picture         =   "Maindis1.frx":57C12F
      Tag             =   "809"
      Top             =   13815
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   21
      Left            =   6030
      Picture         =   "Maindis1.frx":57C49D
      Tag             =   "810"
      Top             =   14010
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   808
      Left            =   5085
      Picture         =   "Maindis1.frx":57C801
      Top             =   14010
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   808
      Left            =   5085
      Picture         =   "Maindis1.frx":57CB59
      Top             =   14145
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   802
      Left            =   15375
      Picture         =   "Maindis1.frx":57CEBA
      Top             =   18465
      Width           =   300
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   19
      Left            =   15870
      Picture         =   "Maindis1.frx":57D226
      Tag             =   "802"
      Top             =   18450
      Width           =   300
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   18
      Left            =   15675
      Picture         =   "Maindis1.frx":57D594
      Tag             =   "804"
      Top             =   18855
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   7
      Left            =   15780
      Picture         =   "Maindis1.frx":57D8F8
      Tag             =   "802"
      Top             =   18855
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   16
      Left            =   15585
      Picture         =   "Maindis1.frx":57DC54
      Tag             =   "803"
      Top             =   18765
      Width           =   165
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   49
      Left            =   15555
      Shape           =   5  'Rounded Square
      Top             =   19305
      Width           =   465
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   803
      Left            =   15855
      Picture         =   "Maindis1.frx":57DFB5
      Top             =   19155
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   25
      Left            =   15690
      Picture         =   "Maindis1.frx":57E30C
      Tag             =   "803"
      Top             =   19125
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   909
      Left            =   3630
      Picture         =   "Maindis1.frx":57E38D
      Top             =   7875
      Width           =   300
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   15
      Left            =   3195
      Picture         =   "Maindis1.frx":57E6FB
      Tag             =   "909"
      Top             =   7875
      Width           =   300
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   902
      Left            =   2130
      Picture         =   "Maindis1.frx":57EA67
      Top             =   10245
      Width           =   300
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   14
      Left            =   1695
      Picture         =   "Maindis1.frx":57EDD5
      Tag             =   "902"
      Top             =   10245
      Width           =   300
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   3
      Left            =   7260
      Picture         =   "Maindis1.frx":57F141
      Tag             =   "1307"
      Top             =   16500
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   735
      Index           =   816
      Left            =   11235
      Picture         =   "Maindis1.frx":57F499
      Top             =   12000
      Width           =   225
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   816
      Left            =   11265
      Picture         =   "Maindis1.frx":57F869
      Top             =   11880
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   735
      Index           =   815
      Left            =   11235
      Picture         =   "Maindis1.frx":57FBC5
      Top             =   3360
      Width           =   225
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   815
      Left            =   11265
      Picture         =   "Maindis1.frx":57FF95
      Top             =   3240
      Width           =   165
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   20
      Left            =   10170
      Picture         =   "Maindis1.frx":5802F1
      Top             =   2535
      Width           =   315
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1035
      Left            =   14865
      Shape           =   5  'Rounded Square
      Top             =   7590
      Width           =   465
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   711
      Left            =   16410
      Picture         =   "Maindis1.frx":580873
      Top             =   15225
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   711
      Left            =   16605
      Picture         =   "Maindis1.frx":580BD4
      Top             =   15315
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   712
      Left            =   16500
      Picture         =   "Maindis1.frx":580F30
      Top             =   15315
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   17
      Left            =   16695
      Picture         =   "Maindis1.frx":581294
      Tag             =   "710"
      Top             =   14910
      Width           =   300
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   710
      Left            =   16200
      Picture         =   "Maindis1.frx":581602
      Top             =   14925
      Width           =   300
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   801
      Left            =   15360
      Picture         =   "Maindis1.frx":58196E
      Top             =   17040
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   801
      Left            =   15375
      Picture         =   "Maindis1.frx":581CCF
      Top             =   17145
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   709
      Left            =   15600
      Picture         =   "Maindis1.frx":582027
      Top             =   13815
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   709
      Left            =   15600
      Picture         =   "Maindis1.frx":582388
      Top             =   13935
      Width           =   105
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   40
      Left            =   16500
      Picture         =   "Maindis1.frx":5826E0
      Tag             =   "712"
      Top             =   15720
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   712
      Left            =   16665
      Picture         =   "Maindis1.frx":582761
      Top             =   15750
      Width           =   165
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10013
      Left            =   17430
      Shape           =   5  'Rounded Square
      Top             =   12405
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1508
      Left            =   17760
      Picture         =   "Maindis1.frx":582AB8
      Top             =   13500
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   37
      Left            =   17595
      Picture         =   "Maindis1.frx":582E0F
      Tag             =   "1508"
      Top             =   13455
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   703
      Left            =   17055
      Picture         =   "Maindis1.frx":582E90
      Top             =   12840
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   703
      Left            =   15915
      Picture         =   "Maindis1.frx":5831E7
      Top             =   12945
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   13
      Left            =   15615
      Picture         =   "Maindis1.frx":58354B
      Tag             =   "702"
      Top             =   12750
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   300
      Index           =   11
      Left            =   15615
      Picture         =   "Maindis1.frx":5838B9
      Tag             =   "702"
      Top             =   13215
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   701
      Left            =   14565
      Picture         =   "Maindis1.frx":583C25
      Top             =   12840
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   701
      Left            =   14520
      Picture         =   "Maindis1.frx":583F7D
      Top             =   12975
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1501
      Left            =   13125
      Picture         =   "Maindis1.frx":5842E7
      Top             =   10545
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   612
      Left            =   13425
      Picture         =   "Maindis1.frx":584651
      Top             =   9360
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   38
      Left            =   13245
      Picture         =   "Maindis1.frx":5849A8
      Tag             =   "612"
      Top             =   9330
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   611
      Left            =   13425
      Picture         =   "Maindis1.frx":584A29
      Top             =   8595
      Width           =   300
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   9
      Left            =   12930
      Picture         =   "Maindis1.frx":584D97
      Tag             =   "611"
      Top             =   8610
      Width           =   300
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   8
      Left            =   12420
      Picture         =   "Maindis1.frx":585103
      Tag             =   "602"
      Top             =   5985
      Width           =   300
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   602
      Left            =   11925
      Picture         =   "Maindis1.frx":585471
      Top             =   6000
      Width           =   300
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   604
      Left            =   12390
      Picture         =   "Maindis1.frx":5857DD
      Top             =   6555
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   31
      Left            =   12225
      Picture         =   "Maindis1.frx":585B34
      Tag             =   "604"
      Top             =   6525
      Width           =   165
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   8
      Left            =   2850
      Picture         =   "Maindis1.frx":585BB5
      Top             =   7965
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   7
      Left            =   1425
      Picture         =   "Maindis1.frx":586137
      Top             =   10395
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   6
      Left            =   5205
      Picture         =   "Maindis1.frx":5866B9
      Top             =   14685
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   5
      Left            =   15360
      Picture         =   "Maindis1.frx":586C3B
      Top             =   17490
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   3
      Left            =   15015
      Picture         =   "Maindis1.frx":5871BD
      Top             =   12375
      Width           =   315
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   39
      Left            =   16890
      Picture         =   "Maindis1.frx":58773F
      Tag             =   "703"
      Top             =   12810
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1507
      Left            =   16890
      Picture         =   "Maindis1.frx":5877C0
      Top             =   12495
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1507
      Left            =   16770
      Picture         =   "Maindis1.frx":587B23
      Top             =   12615
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1014
      Left            =   14775
      Picture         =   "Maindis1.frx":587E7F
      Top             =   18540
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1714
      Left            =   1230
      Picture         =   "Maindis1.frx":5881D6
      Top             =   17835
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1215
      Left            =   8385
      Picture         =   "Maindis1.frx":58852E
      Top             =   17805
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1214
      Left            =   6240
      Picture         =   "Maindis1.frx":588886
      Top             =   18015
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   22
      Left            =   1185
      Picture         =   "Maindis1.frx":588BE7
      Tag             =   "1714"
      Top             =   18030
      Width           =   165
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   110
      Left            =   16365
      Shape           =   5  'Rounded Square
      Top             =   15885
      Width           =   465
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1510
      Left            =   16365
      Picture         =   "Maindis1.frx":588C68
      Top             =   16350
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1510
      Left            =   16485
      Picture         =   "Maindis1.frx":588FC4
      Top             =   16350
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1509
      Left            =   17460
      Picture         =   "Maindis1.frx":589328
      Top             =   15555
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1509
      Left            =   17580
      Picture         =   "Maindis1.frx":589684
      Top             =   15555
      Width           =   165
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   109
      Left            =   17490
      Shape           =   5  'Rounded Square
      Top             =   13680
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   108
      Left            =   17490
      Shape           =   5  'Rounded Square
      Top             =   14160
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   107
      Left            =   17475
      Shape           =   5  'Rounded Square
      Top             =   14610
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   106
      Left            =   17475
      Shape           =   5  'Rounded Square
      Top             =   15060
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   105
      Left            =   16680
      Shape           =   5  'Rounded Square
      Top             =   11145
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   104
      Left            =   16230
      Shape           =   5  'Rounded Square
      Top             =   11130
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   103
      Left            =   15765
      Shape           =   5  'Rounded Square
      Top             =   11115
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   102
      Left            =   15300
      Shape           =   5  'Rounded Square
      Top             =   11100
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   101
      Left            =   14865
      Shape           =   5  'Rounded Square
      Top             =   11100
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   100
      Left            =   14415
      Shape           =   5  'Rounded Square
      Top             =   11085
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   99
      Left            =   18870
      Shape           =   5  'Rounded Square
      Top             =   12420
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   98
      Left            =   18855
      Shape           =   5  'Rounded Square
      Top             =   12870
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   97
      Left            =   18855
      Shape           =   5  'Rounded Square
      Top             =   13320
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   96
      Left            =   18870
      Shape           =   5  'Rounded Square
      Top             =   13770
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   95
      Left            =   18855
      Shape           =   5  'Rounded Square
      Top             =   14220
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   94
      Left            =   18855
      Shape           =   5  'Rounded Square
      Top             =   14670
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   93
      Left            =   18855
      Shape           =   5  'Rounded Square
      Top             =   15150
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   92
      Left            =   18840
      Shape           =   5  'Rounded Square
      Top             =   15600
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   91
      Left            =   18840
      Shape           =   5  'Rounded Square
      Top             =   16050
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   90
      Left            =   19560
      Shape           =   5  'Rounded Square
      Top             =   12060
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   89
      Left            =   19545
      Shape           =   5  'Rounded Square
      Top             =   12510
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   88
      Left            =   19545
      Shape           =   5  'Rounded Square
      Top             =   12960
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   87
      Left            =   19560
      Shape           =   5  'Rounded Square
      Top             =   13410
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   86
      Left            =   19545
      Shape           =   5  'Rounded Square
      Top             =   13860
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   85
      Left            =   19545
      Shape           =   5  'Rounded Square
      Top             =   14310
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   84
      Left            =   19545
      Shape           =   5  'Rounded Square
      Top             =   14790
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   83
      Left            =   19530
      Shape           =   5  'Rounded Square
      Top             =   15240
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   82
      Left            =   19530
      Shape           =   5  'Rounded Square
      Top             =   15690
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   81
      Left            =   18150
      Shape           =   5  'Rounded Square
      Top             =   12465
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   80
      Left            =   18135
      Shape           =   5  'Rounded Square
      Top             =   12915
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   79
      Left            =   18135
      Shape           =   5  'Rounded Square
      Top             =   13365
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   78
      Left            =   18150
      Shape           =   5  'Rounded Square
      Top             =   13815
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   77
      Left            =   18135
      Shape           =   5  'Rounded Square
      Top             =   14265
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   76
      Left            =   18135
      Shape           =   5  'Rounded Square
      Top             =   14715
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   75
      Left            =   18135
      Shape           =   5  'Rounded Square
      Top             =   15195
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   74
      Left            =   18120
      Shape           =   5  'Rounded Square
      Top             =   15645
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   73
      Left            =   18120
      Shape           =   5  'Rounded Square
      Top             =   16095
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   72
      Left            =   11715
      Shape           =   5  'Rounded Square
      Top             =   17870
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   71
      Left            =   11250
      Shape           =   5  'Rounded Square
      Top             =   17870
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   70
      Left            =   10815
      Shape           =   5  'Rounded Square
      Top             =   17870
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   69
      Left            =   10365
      Shape           =   5  'Rounded Square
      Top             =   17870
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   68
      Left            =   9900
      Shape           =   5  'Rounded Square
      Top             =   17870
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   67
      Left            =   9435
      Shape           =   5  'Rounded Square
      Top             =   17870
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   66
      Left            =   9000
      Shape           =   5  'Rounded Square
      Top             =   17870
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   65
      Left            =   8550
      Shape           =   5  'Rounded Square
      Top             =   17870
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   64
      Left            =   4545
      Shape           =   5  'Rounded Square
      Top             =   17870
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   63
      Left            =   4080
      Shape           =   5  'Rounded Square
      Top             =   17870
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   62
      Left            =   3645
      Shape           =   5  'Rounded Square
      Top             =   17870
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   61
      Left            =   3195
      Shape           =   5  'Rounded Square
      Top             =   17870
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   60
      Left            =   2730
      Shape           =   5  'Rounded Square
      Top             =   17870
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   59
      Left            =   2265
      Shape           =   5  'Rounded Square
      Top             =   17870
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   58
      Left            =   1830
      Shape           =   5  'Rounded Square
      Top             =   17870
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   57
      Left            =   1380
      Shape           =   5  'Rounded Square
      Top             =   17870
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   48
      Left            =   6000
      Shape           =   5  'Rounded Square
      Top             =   5625
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   47
      Left            =   6000
      Shape           =   5  'Rounded Square
      Top             =   5205
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   46
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   5670
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   45
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   6120
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   44
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   6570
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   43
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   7020
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   42
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   7470
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   40
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   7950
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   39
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   8400
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   38
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   8850
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   37
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   9315
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   36
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   9765
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   35
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   10215
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   34
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   10665
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   33
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   11115
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   32
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   11565
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   31
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   12045
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   30
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   12495
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   29
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   12945
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   28
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   13410
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   27
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   13860
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   26
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   14310
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   25
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   14760
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   24
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   15210
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   19
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   15660
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   18
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   16140
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   17
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   16590
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   16
      Left            =   695
      Shape           =   5  'Rounded Square
      Top             =   17040
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   15
      Left            =   12105
      Shape           =   5  'Rounded Square
      Top             =   6690
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   14
      Left            =   12105
      Shape           =   5  'Rounded Square
      Top             =   7140
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   13
      Left            =   12105
      Shape           =   5  'Rounded Square
      Top             =   7590
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   12
      Left            =   12105
      Shape           =   5  'Rounded Square
      Top             =   8025
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   11
      Left            =   12105
      Shape           =   5  'Rounded Square
      Top             =   8475
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   10
      Left            =   12105
      Shape           =   5  'Rounded Square
      Top             =   8925
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   9
      Left            =   6000
      Shape           =   5  'Rounded Square
      Top             =   7065
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   8
      Left            =   6000
      Shape           =   5  'Rounded Square
      Top             =   7515
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   7
      Left            =   6000
      Shape           =   5  'Rounded Square
      Top             =   7965
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   6
      Left            =   6000
      Shape           =   5  'Rounded Square
      Top             =   8415
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   5
      Left            =   6000
      Shape           =   5  'Rounded Square
      Top             =   8865
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   4
      Left            =   6000
      Shape           =   5  'Rounded Square
      Top             =   9315
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   3
      Left            =   6015
      Shape           =   5  'Rounded Square
      Top             =   9795
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   2
      Left            =   6015
      Shape           =   5  'Rounded Square
      Top             =   10245
      Width           =   465
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1
      Left            =   6015
      Shape           =   5  'Rounded Square
      Top             =   10695
      Width           =   465
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1103
      Left            =   15180
      Picture         =   "Maindis1.frx":5899E8
      Top             =   7245
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   32
      Left            =   17835
      Picture         =   "Maindis1.frx":589D3F
      Tag             =   "1816"
      Top             =   9405
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1907
      Left            =   18720
      Picture         =   "Maindis1.frx":589DC0
      Top             =   9885
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1906
      Left            =   18525
      Picture         =   "Maindis1.frx":58A124
      Top             =   9915
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1905
      Left            =   18930
      Picture         =   "Maindis1.frx":58A488
      Top             =   9900
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   35
      Left            =   15030
      Picture         =   "Maindis1.frx":58A7EB
      Tag             =   "1106"
      Top             =   5070
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   33
      Left            =   15030
      Picture         =   "Maindis1.frx":58A86C
      Tag             =   "1808"
      Top             =   8580
      Width           =   165
   End
   Begin VB.Image picCAN 
      Height          =   240
      Index           =   2
      Left            =   18180
      Picture         =   "Maindis1.frx":58A8ED
      Top             =   10320
      Width           =   240
   End
   Begin VB.Image picCAN 
      Height          =   240
      Index           =   1
      Left            =   15465
      Picture         =   "Maindis1.frx":58A9EF
      Top             =   9645
      Width           =   240
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   30
      Left            =   16875
      Picture         =   "Maindis1.frx":58AAF1
      Tag             =   "1806"
      Top             =   9915
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   28
      Left            =   19020
      Picture         =   "Maindis1.frx":58AB72
      Tag             =   "1410"
      Top             =   12255
      Width           =   165
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   27
      Left            =   16455
      Picture         =   "Maindis1.frx":58ABF3
      Top             =   20070
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   26
      Left            =   15630
      Picture         =   "Maindis1.frx":58B175
      Top             =   20070
      Width           =   315
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   24
      Left            =   14955
      Picture         =   "Maindis1.frx":58B6F7
      Tag             =   "1014"
      Top             =   18495
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   23
      Left            =   8370
      Picture         =   "Maindis1.frx":58B778
      Tag             =   "1215"
      Top             =   18015
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   29
      Left            =   19740
      Picture         =   "Maindis1.frx":58B7F9
      Tag             =   "1412"
      Top             =   16815
      Width           =   165
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1079
      Left            =   1890
      Shape           =   5  'Rounded Square
      Top             =   14265
      Width           =   465
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   2003
      Left            =   8775
      Picture         =   "Maindis1.frx":58B87A
      Top             =   16680
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1209
      Left            =   8820
      Picture         =   "Maindis1.frx":58BBDB
      Top             =   16545
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1603
      Left            =   11505
      Picture         =   "Maindis1.frx":58BF33
      Top             =   9960
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   12
      Left            =   11265
      Picture         =   "Maindis1.frx":58C29D
      Tag             =   "1601"
      Top             =   4140
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   2006
      Left            =   2010
      Picture         =   "Maindis1.frx":58C31E
      Tag             =   "2006"
      Top             =   15300
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1614
      Left            =   3480
      Picture         =   "Maindis1.frx":58C681
      Top             =   13755
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1312
      Left            =   6120
      Picture         =   "Maindis1.frx":58C9E4
      Top             =   5025
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1613
      Left            =   1995
      Picture         =   "Maindis1.frx":58CD47
      Top             =   13920
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1701
      Left            =   3480
      Picture         =   "Maindis1.frx":58D0AA
      Top             =   6975
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1102
      Left            =   15030
      Picture         =   "Maindis1.frx":58D40D
      Top             =   8115
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   2001
      Left            =   9330
      Picture         =   "Maindis1.frx":58D770
      Top             =   17070
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1901
      Left            =   16170
      Picture         =   "Maindis1.frx":58DAD3
      Top             =   9240
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1305
      Left            =   1380
      Picture         =   "Maindis1.frx":58DE36
      Tag             =   "1305"
      Top             =   16125
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1106
      Left            =   14895
      Picture         =   "Maindis1.frx":58E192
      Top             =   5115
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1306
      Left            =   1380
      Picture         =   "Maindis1.frx":58E4E9
      Tag             =   "1306"
      Top             =   15480
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1816
      Left            =   17970
      Picture         =   "Maindis1.frx":58E845
      Top             =   9375
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1809
      Left            =   18435
      Picture         =   "Maindis1.frx":58EB9C
      Top             =   10125
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1803
      Left            =   16020
      Picture         =   "Maindis1.frx":58EEF4
      Top             =   9435
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1810
      Left            =   19065
      Picture         =   "Maindis1.frx":58F24C
      Top             =   10125
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1208
      Left            =   9915
      Picture         =   "Maindis1.frx":58F5A4
      Top             =   16530
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1403
      Left            =   16365
      Picture         =   "Maindis1.frx":58F8FC
      Top             =   19800
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1405
      Left            =   18180
      Picture         =   "Maindis1.frx":58FC58
      Top             =   18465
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1409
      Left            =   18195
      Picture         =   "Maindis1.frx":58FFB4
      Top             =   12345
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1411
      Left            =   19155
      Picture         =   "Maindis1.frx":590310
      Top             =   17205
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1807
      Left            =   16740
      Picture         =   "Maindis1.frx":59066C
      Top             =   9255
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1705
      Left            =   19875
      Picture         =   "Maindis1.frx":5909C8
      Top             =   11940
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1303
      Left            =   2115
      Picture         =   "Maindis1.frx":590D24
      Tag             =   "1303"
      Top             =   15345
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1304
      Left            =   2145
      Picture         =   "Maindis1.frx":591080
      Top             =   14835
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1313
      Left            =   6285
      Picture         =   "Maindis1.frx":5913DC
      Top             =   5130
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   2004
      Left            =   1590
      Picture         =   "Maindis1.frx":591738
      Tag             =   "2004"
      Top             =   15525
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1406
      Left            =   18000
      Picture         =   "Maindis1.frx":591A99
      Top             =   18855
      Width           =   300
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1407
      Left            =   18225
      Picture         =   "Maindis1.frx":591E05
      Top             =   18540
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1404
      Left            =   15990
      Picture         =   "Maindis1.frx":592166
      Top             =   20415
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   46
      Left            =   16815
      Picture         =   "Maindis1.frx":5924C7
      Tag             =   "1404"
      Top             =   20430
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   45
      Left            =   18495
      Picture         =   "Maindis1.frx":592828
      Tag             =   "1406"
      Top             =   18840
      Width           =   300
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   2007
      Left            =   14055
      Picture         =   "Maindis1.frx":592B96
      Top             =   18015
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1612
      Left            =   2355
      Picture         =   "Maindis1.frx":592EF7
      Top             =   14145
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1615
      Left            =   3525
      Picture         =   "Maindis1.frx":593258
      Top             =   14145
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   36
      Left            =   11595
      Picture         =   "Maindis1.frx":5935B9
      Tag             =   "1112"
      Top             =   450
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   21
      Left            =   825
      Picture         =   "Maindis1.frx":59363A
      Tag             =   "1316"
      Top             =   5415
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   20
      Left            =   6135
      Picture         =   "Maindis1.frx":5936BB
      Tag             =   "1312"
      Top             =   6090
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   27
      Left            =   18315
      Picture         =   "Maindis1.frx":59373C
      Tag             =   "1406"
      Top             =   17685
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   10
      Left            =   13935
      Picture         =   "Maindis1.frx":5937BD
      Tag             =   "1504"
      Top             =   11265
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   26
      Left            =   16485
      Picture         =   "Maindis1.frx":59383E
      Tag             =   "1511"
      Top             =   17535
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1903
      Left            =   15765
      Picture         =   "Maindis1.frx":5938BF
      Top             =   9255
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1605
      Left            =   11265
      Picture         =   "Maindis1.frx":593C23
      Top             =   13845
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   2002
      Left            =   9060
      Picture         =   "Maindis1.frx":593F87
      Top             =   17040
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1411
      Left            =   19020
      Picture         =   "Maindis1.frx":5942EB
      Top             =   17205
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1403
      Left            =   16500
      Picture         =   "Maindis1.frx":59464F
      Top             =   19785
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1713
      Left            =   825
      Picture         =   "Maindis1.frx":5949B3
      Top             =   17520
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1402
      Left            =   15690
      Picture         =   "Maindis1.frx":594D17
      Top             =   19785
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1401
      Left            =   14955
      Picture         =   "Maindis1.frx":59507B
      Top             =   19785
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1212
      Left            =   9555
      Picture         =   "Maindis1.frx":5953DF
      Top             =   17265
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1013
      Left            =   13095
      Picture         =   "Maindis1.frx":595737
      Top             =   18180
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1012
      Left            =   12855
      Picture         =   "Maindis1.frx":595A8F
      Top             =   18000
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1801
      Left            =   15765
      Picture         =   "Maindis1.frx":595DE7
      Top             =   9465
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1211
      Left            =   8970
      Picture         =   "Maindis1.frx":59613F
      Top             =   17265
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1011
      Left            =   12150
      Picture         =   "Maindis1.frx":596497
      Top             =   18180
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1802
      Left            =   16305
      Picture         =   "Maindis1.frx":5967EF
      Top             =   9450
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1314
      Left            =   5430
      Picture         =   "Maindis1.frx":596B47
      Top             =   4800
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1214
      Left            =   5880
      Picture         =   "Maindis1.frx":596E9F
      Top             =   18015
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1506
      Left            =   17115
      Picture         =   "Maindis1.frx":5971F7
      Top             =   11415
      Width           =   105
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   8
      Left            =   3480
      Picture         =   "Maindis1.frx":59754F
      Tag             =   "911"
      Top             =   12570
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   7
      Left            =   1995
      Picture         =   "Maindis1.frx":5975D0
      Tag             =   "904"
      Top             =   13575
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   6
      Left            =   3945
      Picture         =   "Maindis1.frx":597651
      Tag             =   "811"
      Top             =   14130
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   5
      Left            =   13770
      Picture         =   "Maindis1.frx":5976D2
      Tag             =   "804"
      Top             =   17040
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1310
      Left            =   5715
      Picture         =   "Maindis1.frx":597753
      Top             =   6675
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1213
      Left            =   5025
      Picture         =   "Maindis1.frx":597AB4
      Top             =   18015
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1702
      Left            =   3435
      Picture         =   "Maindis1.frx":597E15
      Top             =   6660
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1011
      Left            =   12180
      Picture         =   "Maindis1.frx":598176
      Top             =   18015
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1606
      Left            =   11610
      Picture         =   "Maindis1.frx":5984D7
      Top             =   13830
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1506
      Left            =   17115
      Picture         =   "Maindis1.frx":598838
      Top             =   11265
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1908
      Left            =   18270
      Picture         =   "Maindis1.frx":598B99
      Top             =   9510
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1812
      Left            =   18375
      Picture         =   "Maindis1.frx":598EFA
      Top             =   9375
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1703
      Left            =   2115
      Picture         =   "Maindis1.frx":599252
      Top             =   7215
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   28
      Left            =   2160
      Picture         =   "Maindis1.frx":5995AE
      Tag             =   "901"
      Top             =   10680
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   24
      Left            =   3600
      Picture         =   "Maindis1.frx":59990A
      Tag             =   "908"
      Top             =   8685
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1115
      Left            =   14880
      Picture         =   "Maindis1.frx":599C66
      Top             =   4515
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   909
      Left            =   3585
      Picture         =   "Maindis1.frx":599FBD
      Top             =   7380
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1401
      Left            =   14805
      Picture         =   "Maindis1.frx":59A319
      Top             =   19800
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1402
      Left            =   15540
      Picture         =   "Maindis1.frx":59A675
      Top             =   19800
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   902
      Left            =   2115
      Picture         =   "Maindis1.frx":59A9D1
      Top             =   9795
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1713
      Left            =   705
      Picture         =   "Maindis1.frx":59AD2D
      Top             =   17520
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   23
      Left            =   1995
      Picture         =   "Maindis1.frx":59B089
      Tag             =   "901"
      Top             =   10605
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1703
      Left            =   1995
      Picture         =   "Maindis1.frx":59B3EC
      Top             =   7095
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1705
      Left            =   19725
      Picture         =   "Maindis1.frx":59B74F
      Top             =   10620
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   20
      Left            =   3480
      Picture         =   "Maindis1.frx":59BAB2
      Tag             =   "908"
      Top             =   8580
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1807
      Left            =   16875
      Picture         =   "Maindis1.frx":59BE15
      Top             =   9180
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1409
      Left            =   18315
      Picture         =   "Maindis1.frx":59C178
      Top             =   12225
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1311
      Left            =   6135
      Picture         =   "Maindis1.frx":59C4DB
      Top             =   6870
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1405
      Left            =   18330
      Picture         =   "Maindis1.frx":59C83E
      Top             =   18465
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1707
      Left            =   19725
      Picture         =   "Maindis1.frx":59CBA1
      Top             =   11850
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   911
      Left            =   3480
      Picture         =   "Maindis1.frx":59CF04
      Top             =   7290
      Width           =   165
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1230
      Left            =   13095
      Shape           =   5  'Rounded Square
      Top             =   1830
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1183
      Left            =   14220
      Shape           =   5  'Rounded Square
      Top             =   13680
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1211
      Left            =   1830
      Shape           =   5  'Rounded Square
      Top             =   10770
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1212
      Left            =   1830
      Shape           =   5  'Rounded Square
      Top             =   11235
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1213
      Left            =   1830
      Shape           =   5  'Rounded Square
      Top             =   11700
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1202
      Left            =   4140
      Shape           =   5  'Rounded Square
      Top             =   13995
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1182
      Left            =   14685
      Shape           =   5  'Rounded Square
      Top             =   13680
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1181
      Left            =   15120
      Shape           =   5  'Rounded Square
      Top             =   13680
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1201
      Left            =   4605
      Shape           =   5  'Rounded Square
      Top             =   13995
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1214
      Left            =   1830
      Shape           =   5  'Rounded Square
      Top             =   12180
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1215
      Left            =   1830
      Shape           =   5  'Rounded Square
      Top             =   12645
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1216
      Left            =   1830
      Shape           =   5  'Rounded Square
      Top             =   13110
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1221
      Left            =   3315
      Shape           =   5  'Rounded Square
      Top             =   8760
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1222
      Left            =   3315
      Shape           =   5  'Rounded Square
      Top             =   9240
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1223
      Left            =   3315
      Shape           =   5  'Rounded Square
      Top             =   9705
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1070
      Left            =   9075
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
      Index           =   1227
      Left            =   3315
      Shape           =   5  'Rounded Square
      Top             =   11595
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1228
      Left            =   3315
      Shape           =   5  'Rounded Square
      Top             =   12060
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1080
      Left            =   1830
      Shape           =   5  'Rounded Square
      Top             =   15630
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1224
      Left            =   3315
      Shape           =   5  'Rounded Square
      Top             =   10185
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1225
      Left            =   3315
      Shape           =   5  'Rounded Square
      Top             =   10650
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1226
      Left            =   3315
      Shape           =   5  'Rounded Square
      Top             =   11115
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1090
      Left            =   6735
      Shape           =   5  'Rounded Square
      Top             =   16530
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1089
      Left            =   6270
      Shape           =   5  'Rounded Square
      Top             =   16530
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1088
      Left            =   5820
      Shape           =   5  'Rounded Square
      Top             =   16530
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1081
      Left            =   2610
      Shape           =   5  'Rounded Square
      Top             =   16530
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1084
      Left            =   4005
      Shape           =   5  'Rounded Square
      Top             =   16530
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1083
      Left            =   3540
      Shape           =   5  'Rounded Square
      Top             =   16530
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1082
      Left            =   3075
      Shape           =   5  'Rounded Square
      Top             =   16530
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1087
      Left            =   5370
      Shape           =   5  'Rounded Square
      Top             =   16530
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1086
      Left            =   4920
      Shape           =   5  'Rounded Square
      Top             =   16530
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1085
      Left            =   4470
      Shape           =   5  'Rounded Square
      Top             =   16530
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1061
      Left            =   11115
      Shape           =   5  'Rounded Square
      Top             =   1200
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1190
      Left            =   15540
      Shape           =   5  'Rounded Square
      Top             =   18285
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1193
      Left            =   13950
      Shape           =   5  'Rounded Square
      Top             =   16890
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1075
      Left            =   11100
      Shape           =   5  'Rounded Square
      Top             =   15390
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1072
      Left            =   11115
      Shape           =   5  'Rounded Square
      Top             =   16215
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1077
      Left            =   11100
      Shape           =   5  'Rounded Square
      Top             =   14475
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1076
      Left            =   11100
      Shape           =   5  'Rounded Square
      Top             =   14940
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1192
      Left            =   14415
      Shape           =   5  'Rounded Square
      Top             =   16890
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1191
      Left            =   14895
      Shape           =   5  'Rounded Square
      Top             =   16890
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1071
      Left            =   10020
      Shape           =   5  'Rounded Square
      Top             =   16515
      Width           =   465
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1502
      Left            =   13245
      Picture         =   "Maindis1.frx":59D267
      Top             =   10020
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1502
      Left            =   13350
      Picture         =   "Maindis1.frx":59D5CB
      Top             =   10020
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   12
      Left            =   14220
      Picture         =   "Maindis1.frx":59D927
      Top             =   9420
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   14
      Left            =   14325
      Picture         =   "Maindis1.frx":59DC8B
      Top             =   9420
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1504
      Left            =   12240
      Picture         =   "Maindis1.frx":59DFE7
      Top             =   9405
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1501
      Left            =   12345
      Picture         =   "Maindis1.frx":59E34B
      Top             =   9405
      Width           =   165
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1180
      Left            =   16350
      Shape           =   5  'Rounded Square
      Top             =   14760
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1220
      Left            =   3330
      Shape           =   5  'Rounded Square
      Top             =   7605
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1210
      Left            =   1845
      Shape           =   5  'Rounded Square
      Top             =   10020
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1200
      Left            =   5610
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
      Index           =   1060
      Left            =   11115
      Shape           =   5  'Rounded Square
      Top             =   4335
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1059
      Left            =   11115
      Shape           =   5  'Rounded Square
      Top             =   4800
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1058
      Left            =   11115
      Shape           =   5  'Rounded Square
      Top             =   5265
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1051
      Left            =   11115
      Shape           =   5  'Rounded Square
      Top             =   8535
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1054
      Left            =   11115
      Shape           =   5  'Rounded Square
      Top             =   7155
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1053
      Left            =   11115
      Shape           =   5  'Rounded Square
      Top             =   7620
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1052
      Left            =   11115
      Shape           =   5  'Rounded Square
      Top             =   8085
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1057
      Left            =   11115
      Shape           =   5  'Rounded Square
      Top             =   5745
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1056
      Left            =   11115
      Shape           =   5  'Rounded Square
      Top             =   6210
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1055
      Left            =   11115
      Shape           =   5  'Rounded Square
      Top             =   6675
      Width           =   465
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1108
      Left            =   14430
      Picture         =   "Maindis1.frx":59E6A7
      Top             =   5670
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1107
      Left            =   14430
      Picture         =   "Maindis1.frx":59EA03
      Top             =   6435
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1110
      Left            =   15180
      Picture         =   "Maindis1.frx":59ED5F
      Top             =   1110
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1105
      Left            =   15150
      Picture         =   "Maindis1.frx":59F0BB
      Top             =   5625
      Width           =   165
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1032
      Left            =   16950
      Shape           =   5  'Rounded Square
      Top             =   8505
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1031
      Left            =   16515
      Shape           =   5  'Rounded Square
      Top             =   8085
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1038
      Left            =   14880
      Shape           =   5  'Rounded Square
      Top             =   6720
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1033
      Left            =   17385
      Shape           =   5  'Rounded Square
      Top             =   8955
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1030
      Left            =   18555
      Shape           =   5  'Rounded Square
      Top             =   9390
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1020
      Left            =   15825
      Shape           =   5  'Rounded Square
      Top             =   8685
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1047
      Left            =   14895
      Shape           =   5  'Rounded Square
      Top             =   3990
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1050
      Left            =   12645
      Shape           =   5  'Rounded Square
      Top             =   285
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1040
      Left            =   14880
      Shape           =   5  'Rounded Square
      Top             =   5850
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1044
      Left            =   14895
      Shape           =   5  'Rounded Square
      Top             =   2610
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1045
      Left            =   14895
      Shape           =   5  'Rounded Square
      Top             =   3075
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1046
      Left            =   14895
      Shape           =   5  'Rounded Square
      Top             =   3540
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1041
      Left            =   14895
      Shape           =   5  'Rounded Square
      Top             =   1200
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1042
      Left            =   14895
      Shape           =   5  'Rounded Square
      Top             =   1665
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1043
      Left            =   14895
      Shape           =   5  'Rounded Square
      Top             =   2130
      Width           =   465
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   613
      Left            =   13245
      Picture         =   "Maindis1.frx":59F417
      Top             =   9030
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   613
      Left            =   13350
      Picture         =   "Maindis1.frx":59F77B
      Top             =   9030
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   604
      Left            =   12225
      Picture         =   "Maindis1.frx":59FAD7
      Top             =   6360
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   603
      Left            =   12330
      Picture         =   "Maindis1.frx":59FE3B
      Top             =   6360
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   610
      Left            =   13260
      Picture         =   "Maindis1.frx":5A0197
      Top             =   7995
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   610
      Left            =   13365
      Picture         =   "Maindis1.frx":5A04FB
      Top             =   7995
      Width           =   165
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1173
      Left            =   13215
      Shape           =   5  'Rounded Square
      Top             =   11700
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1172
      Left            =   13635
      Shape           =   5  'Rounded Square
      Top             =   12120
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1171
      Left            =   14085
      Shape           =   5  'Rounded Square
      Top             =   12540
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1170
      Left            =   15450
      Shape           =   5  'Rounded Square
      Top             =   12915
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1163
      Left            =   13095
      Shape           =   5  'Rounded Square
      Top             =   6585
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1162
      Left            =   13095
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1161
      Left            =   13095
      Shape           =   5  'Rounded Square
      Top             =   7515
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1160
      Left            =   13110
      Shape           =   5  'Rounded Square
      Top             =   8460
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1153
      Left            =   12075
      Shape           =   5  'Rounded Square
      Top             =   3975
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1152
      Left            =   12075
      Shape           =   5  'Rounded Square
      Top             =   4440
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1151
      Left            =   12075
      Shape           =   5  'Rounded Square
      Top             =   4905
      Width           =   465
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   465
      Index           =   1150
      Left            =   12075
      Shape           =   5  'Rounded Square
      Top             =   5820
      Width           =   465
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   702
      Left            =   16020
      Picture         =   "Maindis1.frx":5A0857
      Top             =   13155
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1111
      Left            =   12390
      Picture         =   "Maindis1.frx":5A0BAF
      Top             =   300
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1113
      Left            =   13035
      Picture         =   "Maindis1.frx":5A0F07
      Top             =   1065
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1114
      Left            =   12570
      Picture         =   "Maindis1.frx":5A125F
      Top             =   1065
      Width           =   105
   End
   Begin VB.Image picCAN 
      Height          =   285
      Index           =   21
      Left            =   6240
      Picture         =   "Maindis1.frx":5A15B7
      Top             =   22035
      Width           =   345
   End
   Begin VB.Image picFIFO 
      Height          =   315
      Index           =   2
      Left            =   21835
      Picture         =   "Maindis1.frx":5A171D
      Top             =   6885
      Width           =   315
   End
   Begin VB.Image picX 
      Height          =   750
      Index           =   15104
      Left            =   22335
      Picture         =   "Maindis1.frx":5A1C9F
      Top             =   1770
      Width           =   75
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10012
      Left            =   18150
      Shape           =   5  'Rounded Square
      Top             =   18705
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10011
      Left            =   5985
      Shape           =   5  'Rounded Square
      Top             =   6255
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10008
      Left            =   19575
      Shape           =   5  'Rounded Square
      Top             =   10905
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Image picX 
      Height          =   1845
      Index           =   205
      Left            =   6690
      Picture         =   "Maindis1.frx":5A2013
      Top             =   21060
      Width           =   780
   End
   Begin VB.Image picX 
      Height          =   795
      Index           =   107
      Left            =   22275
      Picture         =   "Maindis1.frx":5A2E52
      Top             =   2835
      Width           =   750
   End
   Begin VB.Image picX 
      Height          =   795
      Index           =   105
      Left            =   4515
      Picture         =   "Maindis1.frx":5A371A
      Top             =   22035
      Width           =   750
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   2
      Left            =   13575
      Picture         =   "Maindis1.frx":5A3FE2
      Top             =   7665
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   1
      Left            =   12540
      Picture         =   "Maindis1.frx":5A4564
      Top             =   5100
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   25
      Left            =   14880
      Picture         =   "Maindis1.frx":5A4AE6
      Top             =   20070
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   4
      Left            =   15795
      Picture         =   "Maindis1.frx":5A5068
      Top             =   14505
      Width           =   315
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1602
      Left            =   11400
      Picture         =   "Maindis1.frx":5A55EA
      Top             =   9015
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1608
      Left            =   11265
      Picture         =   "Maindis1.frx":5A5946
      Top             =   16680
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   18
      Left            =   6135
      Picture         =   "Maindis1.frx":5A5CAA
      Tag             =   "810"
      Top             =   11595
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1302
      Left            =   2505
      Picture         =   "Maindis1.frx":5A5D2B
      Tag             =   "1302"
      Top             =   16785
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1910
      Left            =   14610
      Picture         =   "Maindis1.frx":5A6083
      Top             =   6105
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   17
      Left            =   1990
      Picture         =   "Maindis1.frx":5A63E4
      Tag             =   "1304"
      Top             =   14790
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   21101
      Left            =   23970
      Picture         =   "Maindis1.frx":5A6465
      Top             =   6270
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   15205
      Left            =   11265
      Picture         =   "Maindis1.frx":5A67C1
      Tag             =   "1708"
      Top             =   1905
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   16
      Left            =   7215
      Picture         =   "Maindis1.frx":5A6B25
      Tag             =   "1307"
      Top             =   16680
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   601
      Left            =   12330
      Picture         =   "Maindis1.frx":5A6BA6
      Top             =   5355
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1104
      Left            =   15165
      Picture         =   "Maindis1.frx":5A6F02
      Top             =   6600
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   7110
      Left            =   12225
      Picture         =   "Maindis1.frx":5A725E
      Tag             =   "1514"
      Top             =   3195
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1811
      Left            =   18750
      Picture         =   "Maindis1.frx":5A75C2
      Top             =   10140
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   704
      Left            =   16020
      Picture         =   "Maindis1.frx":5A791A
      Top             =   13065
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1315
      Left            =   5280
      Picture         =   "Maindis1.frx":5A7C7B
      Top             =   4980
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1504
      Left            =   13950
      Picture         =   "Maindis1.frx":5A7FD3
      Top             =   11100
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1911
      Left            =   15030
      Picture         =   "Maindis1.frx":5A832B
      Top             =   5520
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1915
      Left            =   4080
      Picture         =   "Maindis1.frx":5A868E
      Top             =   4800
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   2005
      Left            =   1575
      Picture         =   "Maindis1.frx":5A89EF
      Tag             =   "2005"
      Top             =   15870
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1706
      Left            =   19350
      Picture         =   "Maindis1.frx":5A8D50
      Top             =   10725
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   13
      Left            =   11250
      Picture         =   "Maindis1.frx":5A90B1
      Tag             =   "1603"
      Top             =   14310
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1804
      Left            =   15645
      Picture         =   "Maindis1.frx":5A9132
      Top             =   8700
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1904
      Left            =   15525
      Picture         =   "Maindis1.frx":5A948A
      Top             =   8835
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   14
      Left            =   10500
      Picture         =   "Maindis1.frx":5A97EB
      Tag             =   "1207"
      Top             =   16665
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1101
      Left            =   16290
      Picture         =   "Maindis1.frx":5A986C
      Top             =   8040
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1601
      Left            =   11250
      Picture         =   "Maindis1.frx":5A9BCD
      Top             =   10005
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1602
      Left            =   11265
      Picture         =   "Maindis1.frx":5A9F31
      Top             =   9000
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   7107
      Left            =   11260
      Picture         =   "Maindis1.frx":5AA295
      Tag             =   "1512"
      Top             =   3000
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1104
      Left            =   15045
      Picture         =   "Maindis1.frx":5AA5F9
      Top             =   6540
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1101
      Left            =   16380
      Picture         =   "Maindis1.frx":5AA95C
      Top             =   8160
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   601
      Left            =   12225
      Picture         =   "Maindis1.frx":5AACB4
      Top             =   5355
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1912
      Left            =   12645
      Picture         =   "Maindis1.frx":5AB018
      Top             =   840
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1902
      Left            =   15960
      Picture         =   "Maindis1.frx":5AB37C
      Top             =   9225
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1609
      Left            =   10890
      Picture         =   "Maindis1.frx":5AB6E0
      Top             =   16665
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1110
      Left            =   15030
      Picture         =   "Maindis1.frx":5ABA41
      Top             =   1035
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   15101
      Left            =   22860
      Picture         =   "Maindis1.frx":5ABDA4
      Top             =   2220
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   15102
      Left            =   21735
      Picture         =   "Maindis1.frx":5AC0FC
      Top             =   2220
      Width           =   105
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   11
      Left            =   15030
      Picture         =   "Maindis1.frx":5AC454
      Tag             =   "1115"
      Top             =   4470
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   1
      Left            =   12225
      Picture         =   "Maindis1.frx":5AC4D5
      Tag             =   "602"
      Top             =   3780
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   10108
      Left            =   21820
      Picture         =   "Maindis1.frx":5AC556
      Top             =   5040
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1914
      Left            =   12315
      Picture         =   "Maindis1.frx":5AC8B9
      Top             =   450
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1208
      Left            =   9870
      Picture         =   "Maindis1.frx":5ACC1A
      Top             =   16665
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1302
      Left            =   2460
      Picture         =   "Maindis1.frx":5ACF7B
      Tag             =   "1302"
      Top             =   16680
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   1213
      Left            =   4980
      Picture         =   "Maindis1.frx":5AD2DC
      Top             =   17880
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   1610
      Left            =   11355
      Picture         =   "Maindis1.frx":5AD634
      Top             =   15855
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1610
      Left            =   11280
      Picture         =   "Maindis1.frx":5AD990
      Top             =   15855
      Width           =   165
   End
   Begin VB.Image picX_NC 
      Height          =   165
      Index           =   3203
      Left            =   5265
      Picture         =   "Maindis1.frx":5ADCF4
      Top             =   21735
      Width           =   105
   End
   Begin VB.Image picX_NC 
      Height          =   165
      Index           =   3201
      Left            =   6240
      Picture         =   "Maindis1.frx":5AE04C
      Top             =   21735
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   3204
      Left            =   5790
      Picture         =   "Maindis1.frx":5AE3A4
      Top             =   21735
      Width           =   105
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   23
      Left            =   23670
      Shape           =   5  'Rounded Square
      Top             =   5670
      Width           =   615
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   22
      Left            =   23670
      Shape           =   5  'Rounded Square
      Top             =   5070
      Width           =   615
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   21
      Left            =   23670
      Shape           =   5  'Rounded Square
      Top             =   4470
      Width           =   615
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   20
      Left            =   23670
      Shape           =   5  'Rounded Square
      Top             =   3870
      Width           =   615
   End
   Begin VB.Shape shpEmpty 
      BorderColor     =   &H00808080&
      FillColor       =   &H0080FF80&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   0
      Left            =   23250
      Shape           =   5  'Rounded Square
      Top             =   2700
      Width           =   615
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   910
      Left            =   3420
      Picture         =   "Maindis1.frx":5AE6FC
      Top             =   7425
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   7109
      Left            =   11625
      Picture         =   "Maindis1.frx":5AEA5D
      Tag             =   "1513"
      Top             =   2880
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1909
      Left            =   14610
      Picture         =   "Maindis1.frx":5AEDBE
      Top             =   5835
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   1913
      Left            =   12900
      Picture         =   "Maindis1.frx":5AF11F
      Top             =   825
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   904
      Left            =   1995
      Picture         =   "Maindis1.frx":5AF482
      Top             =   9705
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   4
      Left            =   14010
      Picture         =   "Maindis1.frx":5AF7E5
      Tag             =   "710"
      Top             =   13815
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   903
      Left            =   1905
      Picture         =   "Maindis1.frx":5AF866
      Top             =   9855
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   3
      Left            =   13110
      Picture         =   "Maindis1.frx":5AFBC7
      Tag             =   "704"
      Top             =   11550
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   15206
      Left            =   11625
      Picture         =   "Maindis1.frx":5AFC48
      Tag             =   "1709"
      Top             =   1965
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   2
      Left            =   13230
      Picture         =   "Maindis1.frx":5AFFA9
      Tag             =   "611"
      Top             =   6375
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   612
      Left            =   13155
      Picture         =   "Maindis1.frx":5B002A
      Top             =   8940
      Width           =   165
   End
   Begin VB.Image TripCount 
      Height          =   165
      Index           =   34
      Left            =   15015
      Picture         =   "Maindis1.frx":5B038B
      Tag             =   "1103"
      Top             =   7200
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   7111
      Left            =   12255
      Picture         =   "Maindis1.frx":5B040C
      Tag             =   "1515"
      Top             =   2895
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   603
      Left            =   12120
      Picture         =   "Maindis1.frx":5B076D
      Top             =   6285
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   195
      Index           =   1408
      Left            =   18480
      Picture         =   "Maindis1.frx":5B0ACE
      Top             =   18405
      Width           =   255
   End
End
Attribute VB_Name = "maindisp1_frm"
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

Private Sub SetLanguage()
        
    Me.lblGroup.Text = TextWord(676)
    Me.lblCustomer.Text = TextWord(33)
    Me.lblCategory.Text = TextWord(35)
    Me.lblKg.Text = TextWord(224)
    Me.lblCount.Text = TextWord(215)
    Me.lblDestination.Text = TextWord(262)
    Me.lblDay.Text = TextWord(474)
    Me.Cmd_exit.Caption = TextWord(42)
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
            Edit2_frm.Config Index, (AccessLevel < accEngineer)
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
                    BagForeColour = GrpColF(Grp)
                    BagBackColour = GrpColB(Grp)
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
        ErrorHandler Err, "MainDsp 1 TrackView UpdateBag", Err.Description & "  Bag =" & Str(BagIndex), False
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





Private Sub BcScanner_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
     Call SetPopUp(PopUpBcScanner, Index)
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


Private Sub cmdRB_Click(Index As Integer)
    Options_rb.Config PLCStn, Index
    DisplayForm Options_rb
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

Private Sub FIFO_Click()

    CustFIFO_frm.Config PLCStn, (AccessLevel > accOperator)
    DisplayForm CustFIFO_frm

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
    
    PLCStn = PLC_Stn_maindisp1_frm
        
    '---------------------------------
    'Programmer Set to Required Values
    '---------------------------------
      
       
    OverviewForm = False
      
    Me.Left = 0
    'CenterForm Me
    Me.Top = 0
        
        
    'Running Hours
    '-------------
    Set lblHours.Container = Me
    lblHours.Top = 50
    lblHours.Left = ((Me.Width / 2) - (lblHours.Width / 2))
    
    
    '---------------------------------
    
    Me.Caption = TextWord(611) 'TextWord(610)
 
    
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

Private Sub Text1_GotFocus()
    'Me.lblHidden.SetFocus
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
    Dim OffSet As Integer
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
    ErrorHandler Err, "maindisp1 tmr_update", Err.Description, False
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
    
    Call dbGetIDFromLongID(EditCus, txtFilterCus, ID)
    FilterCus = CusNum(ID)
        
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
'            Ur1Num = BagUr1(Index, BagPLC)
'            Call dbGetID(EditSpecialTreat, Ur1Num, Ur1ID)
'
'            lblUser1.Text = TextWord(504) & " "
'            lblUr1.Text = SpcTreatName(Ur1ID)
'            lblUr1No.Text = Format$(Ur1Num)
'
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

