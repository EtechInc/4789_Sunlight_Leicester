VERSION 5.00
Begin VB.Form maindisp2_frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "10019"
   ClientHeight    =   14325
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   21195
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
   Palette         =   "Maindis2.frx":0000
   Picture         =   "Maindis2.frx":70D6FA
   ScaleHeight     =   14325
   ScaleWidth      =   21195
   Visible         =   0   'False
   Begin VB.Frame Fra_Tools 
      BackColor       =   &H00DBD9D4&
      Caption         =   "TrackView Tools"
      ForeColor       =   &H00800000&
      Height          =   5910
      Left            =   1260
      TabIndex        =   0
      Top             =   11460
      Visible         =   0   'False
      Width           =   13545
      Begin VB.PictureBox pic_BagInfo 
         Appearance      =   0  'Flat
         BackColor       =   &H00DBD9D4&
         ForeColor       =   &H00C0C0C0&
         Height          =   3180
         Left            =   420
         ScaleHeight     =   3150
         ScaleWidth      =   7695
         TabIndex        =   32
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
            TabIndex        =   60
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
            TabIndex        =   59
            Top             =   2805
            Width           =   2790
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
            TabIndex        =   58
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
            TabIndex        =   57
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
            TabIndex        =   56
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
            TabIndex        =   55
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
            TabIndex        =   54
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
            TabIndex        =   53
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
            TabIndex        =   52
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
            TabIndex        =   51
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
            TabIndex        =   50
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
            TabIndex        =   49
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
            TabIndex        =   48
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
            TabIndex        =   47
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
            TabIndex        =   46
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
            TabIndex        =   45
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
            TabIndex        =   44
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
            TabIndex        =   43
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
            TabIndex        =   42
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
            TabIndex        =   41
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
            TabIndex        =   40
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
            TabIndex        =   39
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
            TabIndex        =   38
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
            TabIndex        =   37
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
            TabIndex        =   36
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
            TabIndex        =   35
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
            TabIndex        =   34
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
            TabIndex        =   33
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
            TabIndex        =   65
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
            TabIndex        =   64
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
            TabIndex        =   63
            Top             =   75
            Width           =   6690
         End
         Begin VB.Image Image1 
            Height          =   480
            Left            =   150
            Picture         =   "Maindis2.frx":AE9EDC
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
            TabIndex        =   62
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
            TabIndex        =   61
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
         Left            =   975
         ScaleHeight     =   390
         ScaleWidth      =   2265
         TabIndex        =   6
         Top             =   1275
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
         Picture         =   "Maindis2.frx":AEA31E
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
         Left            =   825
         Picture         =   "Maindis2.frx":AEABE8
         ScaleHeight     =   465
         ScaleWidth      =   465
         TabIndex        =   1
         Top             =   525
         Width           =   465
      End
      Begin VB.Image BcScanner 
         Height          =   660
         Index           =   0
         Left            =   9720
         Picture         =   "Maindis2.frx":AEAE5A
         Top             =   1140
         Width           =   660
      End
      Begin VB.Image picX 
         Height          =   750
         Index           =   11
         Left            =   11460
         Picture         =   "Maindis2.frx":AEB50C
         Top             =   420
         Width           =   1290
      End
      Begin VB.Image picX 
         Height          =   810
         Index           =   10
         Left            =   10380
         Picture         =   "Maindis2.frx":AEBE9C
         Top             =   420
         Width           =   825
      End
      Begin VB.Image picX 
         Height          =   795
         Index           =   9
         Left            =   9420
         Picture         =   "Maindis2.frx":AEC97B
         Top             =   360
         Width           =   750
      End
      Begin VB.Image picX 
         Height          =   1500
         Index           =   6
         Left            =   9000
         Picture         =   "Maindis2.frx":AED243
         Top             =   300
         Width           =   435
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
         Picture         =   "Maindis2.frx":AEDE0A
         Top             =   675
         Width           =   315
      End
      Begin VB.Shape shpBagCol2 
         BackColor       =   &H00FFFFFF&
         BackStyle       =   1  'Opaque
         BorderStyle     =   0  'Transparent
         Height          =   240
         Index           =   0
         Left            =   6000
         Shape           =   4  'Rounded Rectangle
         Top             =   600
         Width           =   540
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
         Picture         =   "Maindis2.frx":AEE38C
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picW7Red 
         Height          =   315
         Index           =   3
         Left            =   7050
         Picture         =   "Maindis2.frx":AEE90E
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picW7Red 
         Height          =   315
         Index           =   2
         Left            =   6750
         Picture         =   "Maindis2.frx":AEEE90
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picW7Red 
         Height          =   315
         Index           =   1
         Left            =   6450
         Picture         =   "Maindis2.frx":AEF412
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picW7Green 
         Height          =   315
         Index           =   4
         Left            =   7350
         Picture         =   "Maindis2.frx":AEF994
         Top             =   1950
         Width           =   315
      End
      Begin VB.Image picW7Green 
         Height          =   315
         Index           =   3
         Left            =   7050
         Picture         =   "Maindis2.frx":AEFF16
         Top             =   1950
         Width           =   315
      End
      Begin VB.Image picW7Green 
         Height          =   315
         Index           =   2
         Left            =   6750
         Picture         =   "Maindis2.frx":AF0498
         Top             =   1950
         Width           =   315
      End
      Begin VB.Image picW7Green 
         Height          =   315
         Index           =   1
         Left            =   6450
         Picture         =   "Maindis2.frx":AF0A1A
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
         Left            =   1125
         TabIndex        =   17
         Top             =   2025
         Width           =   1815
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   10
         Left            =   4350
         Picture         =   "Maindis2.frx":AF0F9C
         Top             =   1725
         Width           =   165
      End
      Begin VB.Image picX_NC 
         Height          =   165
         Index           =   8
         Left            =   3975
         Picture         =   "Maindis2.frx":AF1306
         Top             =   675
         Width           =   105
      End
      Begin VB.Image picX_NC 
         Height          =   105
         Index           =   7
         Left            =   4125
         Picture         =   "Maindis2.frx":AF165E
         Top             =   525
         Width           =   165
      End
      Begin VB.Image picStartStop 
         Height          =   165
         Index           =   0
         Left            =   6150
         Picture         =   "Maindis2.frx":AF19B5
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
         Picture         =   "Maindis2.frx":AF1D17
         Top             =   2250
         Width           =   165
      End
      Begin VB.Image picStartStopGreen 
         Height          =   255
         Left            =   825
         Picture         =   "Maindis2.frx":AF2079
         Top             =   2850
         Width           =   225
      End
      Begin VB.Image picStartStopRed 
         Height          =   255
         Left            =   825
         Picture         =   "Maindis2.frx":AF23EB
         Top             =   2475
         Width           =   225
      End
      Begin VB.Image picMsgType 
         Height          =   165
         Index           =   0
         Left            =   6600
         Picture         =   "Maindis2.frx":AF275D
         Top             =   1500
         Width           =   165
      End
      Begin VB.Image picMcnStatus 
         Height          =   165
         Index           =   0
         Left            =   6600
         Picture         =   "Maindis2.frx":AF2AB7
         Top             =   1275
         Width           =   165
      End
      Begin VB.Image picLampRed 
         Height          =   165
         Left            =   525
         Picture         =   "Maindis2.frx":AF2E11
         Top             =   3150
         Width           =   165
      End
      Begin VB.Image picLampGrey 
         Height          =   165
         Left            =   525
         Picture         =   "Maindis2.frx":AF316B
         Top             =   2925
         Width           =   165
      End
      Begin VB.Image picLampGreen 
         Height          =   165
         Left            =   525
         Picture         =   "Maindis2.frx":AF34C5
         Top             =   2700
         Width           =   165
      End
      Begin VB.Image picLampAmber 
         Height          =   165
         Left            =   525
         Picture         =   "Maindis2.frx":AF381F
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
         Picture         =   "Maindis2.frx":AF3B79
         Top             =   2475
         Width           =   165
      End
      Begin VB.Image picTrip1 
         Height          =   165
         Left            =   300
         Picture         =   "Maindis2.frx":AF3BFA
         Top             =   2775
         Width           =   165
      End
      Begin VB.Image picTrip2 
         Height          =   165
         Left            =   300
         Picture         =   "Maindis2.frx":AF3C7B
         Top             =   3075
         Width           =   165
      End
      Begin VB.Image picCAN 
         Height          =   240
         Index           =   0
         Left            =   5175
         Picture         =   "Maindis2.frx":AF3CFC
         Top             =   1650
         Width           =   240
      End
      Begin VB.Image picIndication 
         Height          =   165
         Index           =   0
         Left            =   5175
         Picture         =   "Maindis2.frx":AF3DFE
         Top             =   900
         Width           =   165
      End
      Begin VB.Image TripCount 
         Height          =   165
         Index           =   0
         Left            =   5175
         Picture         =   "Maindis2.frx":AF3E7F
         Top             =   600
         Width           =   165
      End
      Begin VB.Image picX 
         Height          =   165
         Index           =   1
         Left            =   4380
         Picture         =   "Maindis2.frx":AF3F00
         Top             =   600
         Width           =   105
      End
      Begin VB.Image picX 
         Height          =   105
         Index           =   2
         Left            =   4575
         Picture         =   "Maindis2.frx":AF4258
         Top             =   600
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   7
         Left            =   3900
         Picture         =   "Maindis2.frx":AF45B4
         Top             =   1275
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   6
         Left            =   3900
         Picture         =   "Maindis2.frx":AF491E
         Top             =   1500
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   5
         Left            =   3900
         Picture         =   "Maindis2.frx":AF4C7F
         Top             =   1725
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   4
         Left            =   4125
         Picture         =   "Maindis2.frx":AF4FE9
         Top             =   1725
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   2
         Left            =   4350
         Picture         =   "Maindis2.frx":AF534D
         Top             =   1500
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   1
         Left            =   4350
         Picture         =   "Maindis2.frx":AF56AE
         Top             =   1275
         Width           =   165
      End
      Begin VB.Image picY 
         Height          =   165
         Index           =   0
         Left            =   4125
         Picture         =   "Maindis2.frx":AF5A18
         Top             =   1275
         Width           =   165
      End
      Begin VB.Shape shpEmpty 
         BorderColor     =   &H00808080&
         FillColor       =   &H0080FF80&
         FillStyle       =   0  'Solid
         Height          =   465
         Index           =   41
         Left            =   3450
         Shape           =   5  'Rounded Square
         Top             =   450
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
         Left            =   825
         TabIndex        =   7
         Top             =   225
         Width           =   1440
      End
      Begin VB.Shape BagRing 
         BackColor       =   &H8000000D&
         BorderColor     =   &H00FFFFFF&
         FillColor       =   &H8000000D&
         FillStyle       =   0  'Solid
         Height          =   465
         Index           =   0
         Left            =   5850
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
         Picture         =   "Maindis2.frx":AF5D7B
         Top             =   2700
         Width           =   315
      End
      Begin VB.Image picFIFO 
         Height          =   315
         Index           =   1
         Left            =   6750
         Picture         =   "Maindis2.frx":AF62FD
         Top             =   2700
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   1
         Left            =   5250
         Picture         =   "Maindis2.frx":AF687F
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   3
         Left            =   4500
         Picture         =   "Maindis2.frx":AF6E01
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   2
         Left            =   4875
         Picture         =   "Maindis2.frx":AF7383
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   1
         Left            =   5250
         Picture         =   "Maindis2.frx":AF7905
         Top             =   2625
         Width           =   315
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   2
         Left            =   4875
         Picture         =   "Maindis2.frx":AF7E87
         Top             =   2625
         Width           =   315
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   3
         Left            =   4500
         Picture         =   "Maindis2.frx":AF8409
         Top             =   2625
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   0
         Left            =   3225
         Picture         =   "Maindis2.frx":AF898B
         Top             =   2250
         Width           =   480
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   0
         Left            =   3225
         Picture         =   "Maindis2.frx":AF91AD
         Top             =   2625
         Width           =   480
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   4
         Left            =   4125
         Picture         =   "Maindis2.frx":AF99CF
         Top             =   2625
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   4
         Left            =   4125
         Picture         =   "Maindis2.frx":AF9F51
         Top             =   2250
         Width           =   315
      End
      Begin VB.Image picULDBlue 
         Height          =   315
         Index           =   5
         Left            =   3750
         Picture         =   "Maindis2.frx":AFA4D3
         Top             =   2625
         Width           =   315
      End
      Begin VB.Image picULDNormal 
         Height          =   315
         Index           =   5
         Left            =   3750
         Picture         =   "Maindis2.frx":AFAA55
         Top             =   2250
         Width           =   315
      End
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "PIC4"
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
      Left            =   11550
      TabIndex        =   78
      Top             =   10425
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "PIC3"
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
      Left            =   15000
      TabIndex        =   77
      Top             =   10350
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "PDC6"
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
      Left            =   17625
      TabIndex        =   76
      Top             =   4650
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "PIC5"
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
      Left            =   7800
      TabIndex        =   75
      Top             =   6225
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "PP4"
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
      Left            =   9825
      TabIndex        =   74
      Top             =   9600
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "PUP2"
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
      Left            =   13200
      TabIndex        =   73
      Top             =   10425
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "PUP1"
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
      Left            =   16575
      TabIndex        =   72
      Top             =   10425
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "PPF1"
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
      Left            =   17775
      TabIndex        =   71
      Top             =   6600
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "PDC2"
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
      Left            =   20175
      TabIndex        =   70
      Top             =   5775
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "PPN1"
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
      Left            =   300
      TabIndex        =   69
      Top             =   5025
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "PIC1"
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
      Left            =   12225
      TabIndex        =   68
      Top             =   4575
      Width           =   690
   End
   Begin VB.CommandButton SeqButton 
      Caption         =   "PUP1"
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
      Left            =   15825
      TabIndex        =   67
      Top             =   4575
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
      Left            =   18825
      TabIndex        =   66
      Top             =   11625
      Width           =   1215
   End
   Begin VB.Frame fraFilters 
      BackColor       =   &H00DBD9D4&
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
      Left            =   225
      TabIndex        =   20
      Top             =   975
      Width           =   4635
      Begin VB.PictureBox Picture1 
         Appearance      =   0  'Flat
         BackColor       =   &H00DBD9D4&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   1440
         Left            =   165
         ScaleHeight     =   1440
         ScaleWidth      =   4365
         TabIndex        =   21
         Top             =   225
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
            TabIndex        =   31
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
            TabIndex        =   28
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
            TabIndex        =   27
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
            TabIndex        =   26
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
            TabIndex        =   25
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
            TabIndex        =   24
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
            TabIndex        =   23
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
            Left            =   1275
            Sorted          =   -1  'True
            TabIndex        =   22
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
            TabIndex        =   30
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
            Left            =   1140
            TabIndex        =   29
            Top             =   1140
            Width           =   2115
         End
      End
   End
   Begin VB.Image picFIFO 
      Height          =   315
      Index           =   2
      Left            =   525
      Picture         =   "Maindis2.frx":AFAFD7
      Top             =   5550
      Width           =   315
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2245
      Left            =   1080
      Shape           =   4  'Rounded Rectangle
      Top             =   5550
      Width           =   615
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10011
      Left            =   10200
      Shape           =   5  'Rounded Square
      Top             =   9075
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10013
      Left            =   17400
      Shape           =   5  'Rounded Square
      Top             =   5025
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10012
      Left            =   7275
      Shape           =   5  'Rounded Square
      Top             =   5775
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   5
      Left            =   18450
      Picture         =   "Maindis2.frx":AFB559
      Top             =   6600
      Width           =   315
   End
   Begin VB.Image StartStopPic 
      Height          =   315
      Index           =   4
      Left            =   975
      Picture         =   "Maindis2.frx":AFBADB
      Top             =   5025
      Width           =   315
   End
   Begin VB.Image picStartStop 
      Height          =   165
      Index           =   42
      Left            =   18375
      Picture         =   "Maindis2.frx":AFC05D
      Top             =   7275
      Width           =   165
   End
   Begin VB.Image picStartStop 
      Height          =   165
      Index           =   43
      Left            =   18375
      Picture         =   "Maindis2.frx":AFC3BF
      Top             =   8025
      Width           =   165
   End
   Begin VB.Image picStartStop 
      Height          =   165
      Index           =   22
      Left            =   1875
      Picture         =   "Maindis2.frx":AFC721
      Top             =   7275
      Width           =   165
   End
   Begin VB.Image picStartStop 
      Height          =   165
      Index           =   23
      Left            =   1875
      Picture         =   "Maindis2.frx":AFCA83
      Top             =   8025
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   795
      Index           =   206
      Left            =   16875
      Picture         =   "Maindis2.frx":AFCDE5
      Top             =   4200
      Width           =   750
   End
   Begin VB.Image picX 
      Height          =   795
      Index           =   205
      Left            =   6675
      Picture         =   "Maindis2.frx":AFD6AD
      Top             =   6150
      Width           =   750
   End
   Begin VB.Image picX 
      Height          =   795
      Index           =   204
      Left            =   11550
      Picture         =   "Maindis2.frx":AFDF75
      Top             =   10725
      Width           =   750
   End
   Begin VB.Image picX 
      Height          =   795
      Index           =   203
      Left            =   15000
      Picture         =   "Maindis2.frx":AFE83D
      Top             =   10725
      Width           =   750
   End
   Begin VB.Image picX 
      Height          =   795
      Index           =   202
      Left            =   20175
      Picture         =   "Maindis2.frx":AFF105
      Top             =   6525
      Width           =   750
   End
   Begin VB.Image picX 
      Height          =   795
      Index           =   201
      Left            =   11475
      Picture         =   "Maindis2.frx":AFF9CD
      Top             =   4125
      Width           =   750
   End
   Begin VB.Image picX 
      Height          =   795
      Index           =   106
      Left            =   15300
      Picture         =   "Maindis2.frx":B00295
      Top             =   5700
      Width           =   750
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2250
      Left            =   19500
      Shape           =   5  'Rounded Square
      Top             =   4650
      Width           =   615
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   10208
      Left            =   18825
      Picture         =   "Maindis2.frx":B00B5D
      Top             =   7350
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   10207
      Left            =   18525
      Picture         =   "Maindis2.frx":B00EC0
      Top             =   7275
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   10202
      Left            =   18000
      Picture         =   "Maindis2.frx":B01221
      Top             =   7950
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   10204
      Left            =   18150
      Picture         =   "Maindis2.frx":B01579
      Top             =   7950
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   10201
      Left            =   18000
      Picture         =   "Maindis2.frx":B018D1
      Top             =   7200
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   10203
      Left            =   18150
      Picture         =   "Maindis2.frx":B01C29
      Top             =   7200
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   10206
      Left            =   18000
      Picture         =   "Maindis2.frx":B01F81
      Top             =   8025
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   10205
      Left            =   18000
      Picture         =   "Maindis2.frx":B022E2
      Top             =   7275
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   90
      Index           =   21203
      Left            =   14775
      Picture         =   "Maindis2.frx":B02643
      Tag             =   "33908"
      Top             =   8025
      Width           =   315
   End
   Begin VB.Image picX 
      Height          =   90
      Index           =   21201
      Left            =   14775
      Picture         =   "Maindis2.frx":B0299B
      Tag             =   "33908"
      Top             =   7275
      Width           =   315
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   21206
      Left            =   14400
      Picture         =   "Maindis2.frx":B02CF3
      Top             =   8025
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   21205
      Left            =   14400
      Picture         =   "Maindis2.frx":B03054
      Top             =   7275
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   90
      Index           =   10104
      Left            =   2250
      Picture         =   "Maindis2.frx":B033B5
      Tag             =   "33908"
      Top             =   8025
      Width           =   315
   End
   Begin VB.Image picX 
      Height          =   90
      Index           =   10103
      Left            =   2250
      Picture         =   "Maindis2.frx":B0370D
      Tag             =   "33908"
      Top             =   7275
      Width           =   315
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   10102
      Left            =   2100
      Picture         =   "Maindis2.frx":B03A65
      Top             =   7950
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   10101
      Left            =   2100
      Picture         =   "Maindis2.frx":B03DBD
      Top             =   7200
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   10107
      Left            =   1575
      Picture         =   "Maindis2.frx":B04115
      Top             =   7275
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   10108
      Left            =   1275
      Picture         =   "Maindis2.frx":B04476
      Top             =   7350
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   11003
      Left            =   1650
      Picture         =   "Maindis2.frx":B047DA
      Top             =   5250
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   11001
      Left            =   1800
      Picture         =   "Maindis2.frx":B04B32
      Top             =   5250
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   11005
      Left            =   1725
      Picture         =   "Maindis2.frx":B04E8A
      Top             =   5175
      Width           =   165
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2251
      Left            =   19500
      Shape           =   5  'Rounded Square
      Top             =   7200
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2270
      Left            =   13200
      Shape           =   5  'Rounded Square
      Top             =   9750
      Width           =   615
   End
   Begin VB.Image picX 
      Height          =   90
      Index           =   10303
      Left            =   17175
      Picture         =   "Maindis2.frx":B051EB
      Tag             =   "33908"
      Top             =   8850
      Width           =   315
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2272
      Left            =   16725
      Shape           =   5  'Rounded Square
      Top             =   8550
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2271
      Left            =   16125
      Shape           =   5  'Rounded Square
      Top             =   8550
      Width           =   615
   End
   Begin VB.Image picX 
      Height          =   90
      Index           =   10304
      Left            =   18225
      Picture         =   "Maindis2.frx":B05544
      Tag             =   "33908"
      Top             =   10050
      Width           =   315
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2261
      Left            =   17775
      Shape           =   5  'Rounded Square
      Top             =   9750
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2260
      Left            =   16575
      Shape           =   5  'Rounded Square
      Top             =   9750
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2259
      Left            =   19500
      Shape           =   5  'Rounded Square
      Top             =   9000
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2253
      Left            =   19500
      Shape           =   5  'Rounded Square
      Top             =   6000
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2252
      Left            =   19500
      Shape           =   5  'Rounded Square
      Top             =   6600
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2249
      Left            =   18600
      Shape           =   4  'Rounded Rectangle
      Top             =   5850
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2244
      Left            =   1080
      Shape           =   4  'Rounded Rectangle
      Top             =   6150
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2213
      Left            =   12075
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2212
      Left            =   11475
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2211
      Left            =   10875
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17305
      Left            =   14625
      Picture         =   "Maindis2.frx":B0589D
      Top             =   10050
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17405
      Left            =   11400
      Picture         =   "Maindis2.frx":B05BF5
      Top             =   9975
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   404
      Left            =   11700
      Picture         =   "Maindis2.frx":B05F4D
      Top             =   9975
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   403
      Left            =   15150
      Picture         =   "Maindis2.frx":B062AE
      Top             =   9975
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   10307
      Left            =   18825
      Picture         =   "Maindis2.frx":B0660F
      Top             =   9750
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   10308
      Left            =   18900
      Picture         =   "Maindis2.frx":B06979
      Top             =   9975
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   10403
      Left            =   9825
      Picture         =   "Maindis2.frx":B06CDA
      Top             =   9300
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   10402
      Left            =   11100
      Picture         =   "Maindis2.frx":B07032
      Top             =   9300
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   10401
      Left            =   10800
      Picture         =   "Maindis2.frx":B0738A
      Top             =   9750
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   10405
      Left            =   10650
      Picture         =   "Maindis2.frx":B076E2
      Top             =   9450
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   10406
      Left            =   10800
      Picture         =   "Maindis2.frx":B07A4C
      Top             =   9225
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17301
      Left            =   15375
      Picture         =   "Maindis2.frx":B07DAD
      Top             =   10125
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17304
      Left            =   15525
      Picture         =   "Maindis2.frx":B08105
      Top             =   10050
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17303
      Left            =   15825
      Picture         =   "Maindis2.frx":B0845D
      Top             =   10050
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   17306
      Left            =   15750
      Picture         =   "Maindis2.frx":B087B5
      Top             =   9975
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17401
      Left            =   12000
      Picture         =   "Maindis2.frx":B08B16
      Top             =   10125
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17404
      Left            =   12150
      Picture         =   "Maindis2.frx":B08E6E
      Top             =   10050
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17403
      Left            =   12450
      Picture         =   "Maindis2.frx":B091C6
      Top             =   10050
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   17406
      Left            =   12375
      Picture         =   "Maindis2.frx":B0951E
      Top             =   9975
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   25203
      Left            =   12900
      Picture         =   "Maindis2.frx":B0987F
      Top             =   10050
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   25202
      Left            =   13125
      Picture         =   "Maindis2.frx":B09BD7
      Top             =   10050
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   25206
      Left            =   13050
      Picture         =   "Maindis2.frx":B09F2F
      Top             =   9750
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   25205
      Left            =   13050
      Picture         =   "Maindis2.frx":B0A293
      Top             =   9975
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   25207
      Left            =   15900
      Picture         =   "Maindis2.frx":B0A5F4
      Top             =   8850
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   25201
      Left            =   16050
      Picture         =   "Maindis2.frx":B0A94C
      Top             =   8850
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   25204
      Left            =   15975
      Picture         =   "Maindis2.frx":B0ACA4
      Top             =   8775
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   10301
      Left            =   17475
      Picture         =   "Maindis2.frx":B0B005
      Top             =   8850
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   10302
      Left            =   18525
      Picture         =   "Maindis2.frx":B0B35D
      Top             =   10050
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   25103
      Left            =   16275
      Picture         =   "Maindis2.frx":B0B6B5
      Top             =   10050
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   25102
      Left            =   16500
      Picture         =   "Maindis2.frx":B0BA0D
      Top             =   10050
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   25107
      Left            =   17550
      Picture         =   "Maindis2.frx":B0BD65
      Top             =   10050
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   25101
      Left            =   17700
      Picture         =   "Maindis2.frx":B0C0BD
      Top             =   10050
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   25106
      Left            =   16425
      Picture         =   "Maindis2.frx":B0C415
      Top             =   9750
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   25105
      Left            =   16425
      Picture         =   "Maindis2.frx":B0C779
      Top             =   9975
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   25104
      Left            =   17625
      Picture         =   "Maindis2.frx":B0CADA
      Top             =   9975
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   315
      Index           =   17205
      Left            =   19800
      Picture         =   "Maindis2.frx":B0CE3B
      Top             =   8400
      Width           =   90
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   17207
      Left            =   19800
      Picture         =   "Maindis2.frx":B0D194
      Top             =   8250
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   17204
      Left            =   19800
      Picture         =   "Maindis2.frx":B0D4F0
      Top             =   5625
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   17202
      Left            =   19800
      Picture         =   "Maindis2.frx":B0D84C
      Top             =   5400
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   17203
      Left            =   19800
      Picture         =   "Maindis2.frx":B0DBA8
      Top             =   5250
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   105
      Index           =   17201
      Left            =   19875
      Picture         =   "Maindis2.frx":B0DF04
      Top             =   5775
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   402
      Left            =   19725
      Picture         =   "Maindis2.frx":B0E260
      Top             =   7875
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   17206
      Left            =   19725
      Picture         =   "Maindis2.frx":B0E5C4
      Top             =   5250
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17502
      Left            =   6300
      Picture         =   "Maindis2.frx":B0E928
      Top             =   5850
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17504
      Left            =   6750
      Picture         =   "Maindis2.frx":B0EC80
      Top             =   5850
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17501
      Left            =   7050
      Picture         =   "Maindis2.frx":B0EFD8
      Top             =   5775
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17505
      Left            =   8325
      Picture         =   "Maindis2.frx":B0F330
      Top             =   5850
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   17506
      Left            =   6300
      Picture         =   "Maindis2.frx":B0F688
      Top             =   5925
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   405
      Left            =   7800
      Picture         =   "Maindis2.frx":B0F9E9
      Top             =   5925
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   21402
      Left            =   18750
      Picture         =   "Maindis2.frx":B0FD4A
      Top             =   5250
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   21401
      Left            =   18525
      Picture         =   "Maindis2.frx":B100A2
      Top             =   5850
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   21405
      Left            =   18300
      Picture         =   "Maindis2.frx":B103FA
      Top             =   5925
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   8
      Left            =   17550
      Picture         =   "Maindis2.frx":B1075B
      Top             =   5325
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   7
      Left            =   17700
      Picture         =   "Maindis2.frx":B10AB3
      Top             =   5175
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17603
      Left            =   18075
      Picture         =   "Maindis2.frx":B10E0B
      Top             =   5250
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   17606
      Left            =   18000
      Picture         =   "Maindis2.frx":B11163
      Top             =   5175
      Width           =   165
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   506
      Left            =   17250
      Picture         =   "Maindis2.frx":B114C4
      Top             =   5175
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17605
      Left            =   16950
      Picture         =   "Maindis2.frx":B11825
      Top             =   5250
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   5
      Left            =   16575
      Picture         =   "Maindis2.frx":B11B7D
      Tag             =   "33903"
      Top             =   5250
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   8
      Left            =   16500
      Picture         =   "Maindis2.frx":B11ED5
      Tag             =   "33907"
      Top             =   5175
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   4
      Left            =   15750
      Picture         =   "Maindis2.frx":B12236
      Tag             =   "33902"
      Top             =   5250
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   3
      Left            =   15675
      Picture         =   "Maindis2.frx":B1258E
      Tag             =   "33905"
      Top             =   5175
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   3
      Left            =   15525
      Picture         =   "Maindis2.frx":B128EF
      Tag             =   "33904"
      Top             =   5250
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   90
      Index           =   0
      Left            =   15225
      Picture         =   "Maindis2.frx":B12C47
      Tag             =   "33908"
      Top             =   5250
      Width           =   315
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   501
      Left            =   10725
      Picture         =   "Maindis2.frx":B12FA0
      Top             =   5175
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17101
      Left            =   12900
      Picture         =   "Maindis2.frx":B13301
      Top             =   5325
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17104
      Left            =   13125
      Picture         =   "Maindis2.frx":B13659
      Top             =   5250
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17102
      Left            =   13350
      Picture         =   "Maindis2.frx":B139B1
      Top             =   5250
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17103
      Left            =   13500
      Picture         =   "Maindis2.frx":B13D09
      Top             =   5250
      Width           =   105
   End
   Begin VB.Image picY 
      Height          =   165
      Index           =   17106
      Left            =   13425
      Picture         =   "Maindis2.frx":B14061
      Top             =   5175
      Width           =   165
   End
   Begin VB.Image picX 
      Height          =   165
      Index           =   17107
      Left            =   10425
      Picture         =   "Maindis2.frx":B143C2
      Top             =   5250
      Width           =   105
   End
   Begin VB.Image picX 
      Height          =   90
      Index           =   17105
      Left            =   10125
      Picture         =   "Maindis2.frx":B1471A
      Top             =   5250
      Width           =   315
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2221
      Left            =   1875
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2222
      Left            =   2475
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2223
      Left            =   3075
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2224
      Left            =   3675
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2225
      Left            =   4275
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2234
      Left            =   9675
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2233
      Left            =   9075
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2232
      Left            =   8475
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2231
      Left            =   7875
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2230
      Left            =   7275
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2229
      Left            =   6675
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2228
      Left            =   6075
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2227
      Left            =   5475
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2226
      Left            =   4875
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2207
      Left            =   14775
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2206
      Left            =   14175
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2205
      Left            =   13575
      Shape           =   5  'Rounded Square
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2201
      Left            =   15825
      Shape           =   4  'Rounded Rectangle
      Top             =   4950
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2075
      Left            =   2400
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2074
      Left            =   3000
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2073
      Left            =   3600
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2072
      Left            =   4200
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2071
      Left            =   4800
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2070
      Left            =   5400
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2069
      Left            =   6000
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2068
      Left            =   6600
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2067
      Left            =   7200
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2066
      Left            =   7800
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2065
      Left            =   8400
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2064
      Left            =   9000
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2063
      Left            =   9600
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2062
      Left            =   10200
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2061
      Left            =   10800
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2060
      Left            =   11400
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2059
      Left            =   12000
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2058
      Left            =   12600
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2057
      Left            =   13200
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2056
      Left            =   13800
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2055
      Left            =   15000
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2054
      Left            =   15600
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2053
      Left            =   16200
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2052
      Left            =   16800
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2051
      Left            =   17400
      Shape           =   5  'Rounded Square
      Top             =   7800
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2050
      Left            =   2400
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2049
      Left            =   3000
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2048
      Left            =   3600
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2047
      Left            =   4200
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2046
      Left            =   4800
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2045
      Left            =   5400
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2044
      Left            =   6000
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2043
      Left            =   6600
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2042
      Left            =   7200
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2041
      Left            =   7800
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2040
      Left            =   8400
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2039
      Left            =   9000
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2038
      Left            =   9600
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2037
      Left            =   10200
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2036
      Left            =   10800
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2035
      Left            =   11400
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2034
      Left            =   12000
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2033
      Left            =   12600
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2032
      Left            =   13200
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2031
      Left            =   13800
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2030
      Left            =   15000
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2029
      Left            =   15600
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2028
      Left            =   16200
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2027
      Left            =   16800
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H8000000D&
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H8000000D&
      FillStyle       =   0  'Solid
      Height          =   615
      Index           =   2026
      Left            =   17400
      Shape           =   5  'Rounded Square
      Top             =   7050
      Width           =   615
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10010
      Left            =   11625
      Shape           =   5  'Rounded Square
      Top             =   9825
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Shape BagRingAlarm 
      BackColor       =   &H008080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      Height          =   465
      Index           =   10009
      Left            =   15075
      Shape           =   5  'Rounded Square
      Top             =   9825
      Visible         =   0   'False
      Width           =   465
   End
End
Attribute VB_Name = "maindisp2_frm"
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
    If (((BagRing(BagIndex).Height = 375) Or (BagRing(BagIndex).Width = 375)) And Not OverviewForm) Then
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
    ElseIf (BagRing(BagIndex).Height = 375) And OverviewForm Then
        Terminal_6_Limit = 4
        Arial_8_Limit = 3
        Arial_10_Limit = 0
        Arial_12_Limit = 0
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
    ElseIf (BagMaxLen2 <= Arial_8_Limit + 1) And OverviewForm Then
        BagFont2 = "Arial"
        BagFontSize2 = 7
        BagHeight2 = 180
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
        
        SortingBag = False '(BagIndex >= StationBagsStart And BagIndex < StationBagsStart + MaxStations)
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
        
        If BagRing(BagIndex).Height = 375 And BagRing(BagIndex).Width = 375 Then
            BagRingHeight = BagRing(BagIndex).Height
            BagRingTop = BagRing(BagIndex).Top 'Note Bag Sizes - 375*465 465*375 465*465 540*615 615*540 615*615
        ElseIf BagRing(BagIndex).Height = 375 And BagRing(BagIndex).Width = 465 Then
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
        ElseIf BagRing(BagIndex).Height = 375 And OverviewForm Then
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
        ErrorHandler Err, "MainDsp 2 TrackView UpdateBag", Err.Description & "  Bag =" & Str(BagIndex), False
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
    
    PLCStn = PLC_Stn_maindisp2_frm
        
    '---------------------------------
    'Programmer Set to Required Values
    '---------------------------------
     
    lblRouteInfo.Visible = (AccessLevel >= accSQLsa)
     
    OverviewForm = False
      
    If OverviewForm Then
        Me.WindowState = vbMaximized
    Else
        Me.Left = 0
        CenterForm Me
        Me.Top = 100
    End If
          
    'Running Hours
    '-------------
    lblHours.Visible = False
'    Set lblHours.Container = Me
'    lblHours.Top = 50
'    lblHours.Left = ((Me.Width / 2) - (lblHours.Width / 2))
'
    
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
            If BagRing(Bag.Index).Height = 375 And BagRing(Bag.Index).Width = 375 Then
                shpBagCol2(Bag.Index).Top = BagRing(Bag.Index).Top + 210 '180
                shpBagCol2(Bag.Index).Left = BagData2(Bag.Index).Left + 22
                shpBagCol2(Bag.Index).Height = 150
                shpBagCol2(Bag.Index).Width = 330
            ElseIf BagRing(Bag.Index).Height = 375 And BagRing(Bag.Index).Width = 465 Then
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
             ElseIf BagRing(Bag.Index).Height = 375 And OverviewForm Then
                shpBagCol2(Bag.Index).Top = BagRing(Bag.Index).Top + 195 '180
                shpBagCol2(Bag.Index).Left = BagData2(Bag.Index).Left + 57
                shpBagCol2(Bag.Index).Height = 180
                shpBagCol2(Bag.Index).Width = 500
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
Private Sub cmbExpress_Click()
    Data(0) = cmbExpress.ItemData(cmbExpress.ListIndex)
    Comms_frm.WritePLC CurrentSeqPLC, "D", 993, 1, Data(), DebugToErrorFile
    cmbExpress.Visible = False
End Sub
Private Sub lblExpress_Click()
    cmbExpress.Text = lblExpress.Text
    cmbExpress.Visible = True
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
   On Error Resume Next
    Call SetPopUp(PopUpCAN, Index, Val(picCAN(Index).Tag))
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
            Comms_frm.WritePLC PLCStn, "D", Index, 1, Data(), DebugToErrorFile, "StartStop", PLCWriteNonCritical
        Else
            Comms_frm.WritePLC PLCStn, "D", Index + 7600, 1, Data(), DebugToErrorFile, "StartStop", PLCWriteNonCritical
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
    Me.lblHidden.SetFocus
End Sub

Private Sub tmr_update_Timer() 'update w/stns. and ongoing
                 
    On Error GoTo tmr_update_Error
                
    'Special Alsco
    'Display Get Route info
    Dim RouteInfo As String
    RouteInfo = ""
'    RouteInfo = RouteInfo & GetRouteLastCus & vbCr & vbLf
'    RouteInfo = RouteInfo & GetRouteLastPic & vbCr & vbLf
'    RouteInfo = RouteInfo & GetRouteLastDel & vbCr & vbLf
'    RouteInfo = RouteInfo & GetRouteLastRte & vbCr & vbLf
'    RouteInfo = RouteInfo & GetRouteLastErr & vbCr & vbLf
'    If lblRouteInfo.Caption <> RouteInfo Then lblRouteInfo.Caption = RouteInfo
    
                
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
        If InputNum <= 8 Then
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
        If InputNum <= 8 Then
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
        If InputNum <= 8 Then
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
       
    If SpecialAlsco Then
        Select Case SequenceStep(93, PLCStn)
            Case 0
                lblExpress.Text = TextWord(513)
            Case 1
                lblExpress.Text = TextWord(514)
            Case 2
                lblExpress.Text = TextWord(515)
            Case 3
                lblExpress.Text = TextWord(516)
            Case Else
                lblExpress.Text = "--"
        End Select
    End If
       
    SetArrow = True
    
Exit Sub
tmr_update_Error:
    ErrorHandler Err, "maindisp2 tmr_update", Err.Description, False
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

Private Sub txtExpress_Click()
    lblHidden.SetFocus
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

