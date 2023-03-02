VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form Options_db 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Database Options"
   ClientHeight    =   8880
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   11970
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   8880
   ScaleWidth      =   11970
   ShowInTaskbar   =   0   'False
   Begin VB.Frame Frame7 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Category Database Options"
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
      Height          =   3960
      Left            =   4050
      TabIndex        =   49
      Top             =   1350
      Width           =   3840
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Wash Codes"
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
         Height          =   240
         Index           =   60
         Left            =   150
         TabIndex        =   55
         Top             =   2175
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Setpoints"
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
         Height          =   240
         Index           =   59
         Left            =   150
         TabIndex        =   54
         Top             =   825
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Category Type"
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
         Height          =   240
         Index           =   58
         Left            =   150
         TabIndex        =   53
         Top             =   2400
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Long ID / Abbrevation"
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
         Height          =   240
         Index           =   50
         Left            =   150
         TabIndex        =   52
         Top             =   375
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Piece Weigths"
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
         Height          =   240
         Index           =   57
         Left            =   150
         TabIndex        =   51
         Top             =   600
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Use Colours"
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
         Height          =   240
         Index           =   51
         Left            =   150
         TabIndex        =   50
         Top             =   2625
         Width           =   3540
      End
   End
   Begin VB.Frame Frame6 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Category Long ID"
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
      Height          =   2790
      Left            =   4050
      TabIndex        =   40
      Top             =   5430
      Width           =   3840
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Display in Bag "
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
         Height          =   240
         Index           =   52
         Left            =   150
         TabIndex        =   47
         Top             =   375
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Long ID Bag Display Left Chrs"
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
         Index           =   53
         Left            =   150
         TabIndex        =   46
         Top             =   600
         Visible         =   0   'False
         Width           =   3540
      End
      Begin VB.TextBox txtCatLongIDMax 
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
         Left            =   150
         TabIndex        =   45
         Text            =   "0"
         Top             =   900
         Width           =   465
      End
      Begin VB.OptionButton optCatLongChrAllow 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Numeric 0-9 Only"
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
         Left            =   150
         TabIndex        =   44
         Top             =   1275
         Width           =   3540
      End
      Begin VB.OptionButton optCatLongChrAllow 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Alpha A-Z Only"
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
         Index           =   1
         Left            =   150
         TabIndex        =   43
         Top             =   1575
         Width           =   3540
      End
      Begin VB.OptionButton optCatLongChrAllow 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Alpha-Numeric 0-9  A-Z Only"
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
         Index           =   2
         Left            =   150
         TabIndex        =   42
         Top             =   1875
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Long ID Enter instead of Cat Num"
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
         Height          =   240
         Index           =   56
         Left            =   150
         TabIndex        =   41
         Top             =   2325
         Width           =   3540
      End
      Begin VB.Label lblCatMaxChr 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Max Characters"
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
         Left            =   675
         TabIndex        =   48
         Top             =   975
         Width           =   3015
      End
   End
   Begin VB.Frame Frame5 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Customer Long ID"
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
      Height          =   2790
      Left            =   8025
      TabIndex        =   30
      Top             =   5430
      Width           =   3840
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Display in Bag"
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
         Height          =   240
         Index           =   42
         Left            =   150
         TabIndex        =   37
         Top             =   375
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Long ID Bag Display Left Chrs"
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
         Index           =   43
         Left            =   150
         TabIndex        =   36
         Top             =   600
         Visible         =   0   'False
         Width           =   3540
      End
      Begin VB.TextBox txtCusLongIDMax 
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
         Left            =   150
         TabIndex        =   35
         Text            =   "0"
         Top             =   900
         Width           =   465
      End
      Begin VB.OptionButton optCusLongChrAllow 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Numeric 0-9 Only"
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
         Left            =   150
         TabIndex        =   34
         Top             =   1275
         Width           =   3540
      End
      Begin VB.OptionButton optCusLongChrAllow 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Alpha A-Z Only"
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
         Index           =   1
         Left            =   150
         TabIndex        =   33
         Top             =   1575
         Width           =   3540
      End
      Begin VB.OptionButton optCusLongChrAllow 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Alpha-Numeric 0-9  A-Z Only"
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
         Index           =   2
         Left            =   150
         TabIndex        =   32
         Top             =   1875
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Long ID Enter instead of Cus Num"
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
         Height          =   240
         Index           =   46
         Left            =   150
         TabIndex        =   31
         Top             =   2325
         Width           =   3540
      End
      Begin VB.Label Label1 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Max Characters"
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
         Left            =   675
         TabIndex        =   38
         Top             =   975
         Width           =   3015
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Customer Database Options"
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
      Height          =   3960
      Left            =   8040
      TabIndex        =   27
      Top             =   1350
      Width           =   3840
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Pool Customers"
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
         Height          =   240
         Index           =   49
         Left            =   150
         TabIndex        =   63
         Top             =   840
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Loading Program"
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
         Height          =   240
         Index           =   48
         Left            =   150
         TabIndex        =   60
         Top             =   600
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Long ID / Abbrevation"
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
         Height          =   240
         Index           =   40
         Left            =   150
         TabIndex        =   29
         Top             =   360
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Use Colours"
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
         Height          =   240
         Index           =   41
         Left            =   150
         TabIndex        =   28
         Top             =   2625
         Width           =   3540
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Service Options"
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
      Height          =   1065
      Left            =   4050
      TabIndex        =   23
      Top             =   150
      Width           =   5415
      Begin VB.CommandButton cmdBackupNow 
         Appearance      =   0  'Flat
         BackColor       =   &H00DBD9D4&
         Caption         =   "Backup Now"
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
         Left            =   3675
         TabIndex        =   56
         Top             =   375
         Width           =   1590
      End
      Begin MSComCtl2.DTPicker dtStartTime 
         Height          =   390
         Left            =   2475
         TabIndex        =   24
         Top             =   375
         Width           =   1065
         _ExtentX        =   1879
         _ExtentY        =   688
         _Version        =   393216
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         CustomFormat    =   "HH:mm"
         Format          =   122159107
         UpDown          =   -1  'True
         CurrentDate     =   37176
         MinDate         =   36892
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Backup Databases at :"
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
         Height          =   240
         Index           =   32
         Left            =   150
         TabIndex        =   25
         Top             =   450
         Width           =   2940
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Group Long ID"
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
      Height          =   2790
      Left            =   75
      TabIndex        =   5
      Top             =   5430
      Width           =   3840
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Long ID Enter instead of Prg Num"
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
         Height          =   240
         Index           =   24
         Left            =   150
         TabIndex        =   26
         Top             =   2325
         Width           =   3540
      End
      Begin VB.OptionButton optGrpLongChrAllow 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Alpha-Numeric 0-9  A-Z Only"
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
         Index           =   2
         Left            =   150
         TabIndex        =   11
         Top             =   1875
         Width           =   3540
      End
      Begin VB.OptionButton optGrpLongChrAllow 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Alpha A-Z Only"
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
         Index           =   1
         Left            =   150
         TabIndex        =   10
         Top             =   1575
         Width           =   3540
      End
      Begin VB.OptionButton optGrpLongChrAllow 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Numeric 0-9 Only"
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
         Left            =   150
         TabIndex        =   9
         Top             =   1275
         Width           =   3540
      End
      Begin VB.TextBox txtGrpLongIDMax 
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
         Left            =   150
         TabIndex        =   8
         Text            =   "0"
         Top             =   900
         Width           =   465
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Long ID Bag Display Left Chrs"
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
         Index           =   21
         Left            =   150
         TabIndex        =   7
         Top             =   600
         Visible         =   0   'False
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Display in Bag "
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
         Height          =   240
         Index           =   20
         Left            =   150
         TabIndex        =   6
         Top             =   375
         Width           =   3540
      End
      Begin VB.Label lblLongIDMax 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Max Characters"
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
         Left            =   675
         TabIndex        =   12
         Top             =   975
         Width           =   3015
      End
   End
   Begin VB.Frame fraGroupOptions 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Group Database Options"
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
      Height          =   3960
      Left            =   75
      TabIndex        =   4
      Top             =   1350
      Width           =   3840
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Primary Lines / Area"
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
         Height          =   240
         Index           =   15
         Left            =   150
         TabIndex        =   62
         Top             =   3180
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Primary Lines / Area = 2 "
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
         Height          =   240
         Index           =   16
         Left            =   150
         TabIndex        =   61
         Top             =   3405
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Cat db Used"
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
         Height          =   240
         Index           =   61
         Left            =   150
         TabIndex        =   59
         Top             =   2940
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Use pictures"
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
         Height          =   240
         Index           =   25
         Left            =   150
         TabIndex        =   58
         Top             =   2719
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Piece Weigths"
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
         Height          =   240
         Index           =   7
         Left            =   150
         TabIndex        =   57
         Top             =   1823
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Use Colours"
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
         Height          =   240
         Index           =   10
         Left            =   150
         TabIndex        =   22
         Top             =   2495
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Clean Lines / Area = 2 "
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
         Height          =   240
         Index           =   5
         Left            =   150
         TabIndex        =   21
         Top             =   1375
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Batch Size"
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
         Height          =   240
         Index           =   6
         Left            =   150
         TabIndex        =   20
         Top             =   1599
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Wash Codes"
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
         Height          =   240
         Index           =   9
         Left            =   150
         TabIndex        =   19
         Top             =   2047
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Clean Lines / Area"
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
         Height          =   240
         Index           =   4
         Left            =   150
         TabIndex        =   18
         Top             =   1151
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Setpoints"
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
         Height          =   240
         Index           =   3
         Left            =   150
         TabIndex        =   17
         Top             =   927
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Soiled Lines / Area"
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
         Height          =   240
         Index           =   1
         Left            =   150
         TabIndex        =   16
         Top             =   479
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Long ID / Abbrevation"
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
         Height          =   240
         Index           =   0
         Left            =   150
         TabIndex        =   15
         Top             =   255
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Soiled Lines / Area = 2 "
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
         Height          =   240
         Index           =   2
         Left            =   150
         TabIndex        =   14
         Top             =   703
         Width           =   3540
      End
      Begin VB.CheckBox chkDB 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Group Type"
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
         Height          =   240
         Index           =   8
         Left            =   150
         TabIndex        =   13
         Top             =   2271
         Width           =   3540
      End
   End
   Begin VB.CommandButton Cmd_exit 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      Caption         =   "Exit"
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
      Left            =   10650
      TabIndex        =   2
      Top             =   8355
      Width           =   1215
   End
   Begin VB.CommandButton cmd_cancel 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      Caption         =   "Cancel"
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
      Left            =   9225
      TabIndex        =   1
      Top             =   8355
      Width           =   1215
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H00DBD9D4&
      Caption         =   "General Options"
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
      Height          =   1065
      Left            =   75
      TabIndex        =   0
      Top             =   150
      Width           =   3840
      Begin VB.CommandButton cmdShowBagID 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Show Bag ID"
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
         Left            =   2025
         TabIndex        =   39
         Top             =   375
         Width           =   1590
      End
      Begin VB.CommandButton cmdLanguage 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Lang Show ID"
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
         Left            =   150
         TabIndex        =   3
         Top             =   375
         Width           =   1590
      End
   End
End
Attribute VB_Name = "Options_db"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim GrpLongCharAllow  As Integer
Dim CusLongCharAllow  As Integer
Dim CatLongCharAllow  As Integer
Dim GrpLongIDMax   As Integer
Dim CusLongIDMax   As Integer
Dim CatLongIDMax   As Integer

Private Sub chkDB_Click(Index As Integer)
    If (Index = CatDbCatEqualGroup) Then
        dbCatUsed = chkDB(Index).Value
        EnableCatDbSettings
    End If
End Sub

Private Sub cmd_cancel_Click()
    
    Unload Me
    
End Sub

Private Sub cmd_Exit_Click()
    
    On Error GoTo Cmd_ExitError
    
    Screen.MousePointer = vbHourglass
    
    Dim chk     As CheckBox
    Dim Index   As Integer
    dbConnect
    For Each chk In chkDB()
        
                       
        dbSettingValue(chk.Index) = Format$(chkDB(chk.Index).Value)
        db_uspSettingSave "SettingsNetwork", "dbOptions", dbSettingName(chk.Index), dbSettingValue(chk.Index), PCNum, True, False
        
        
        'Debug.Print "chk.index = " & chk.Index
                
    Next chk
   'CusDbCusIsRoute
    dbSettingValue(GrpDbLongCharAllow) = Format$(GrpLongCharAllow)
    db_uspSettingSave "SettingsNetwork", "dbOptions", dbSettingName(GrpDbLongCharAllow), Format$(GrpLongCharAllow), PCNum, True, False
    dbSettingValue(GrpDbLongIDMax) = GrpLongIDMax
    db_uspSettingSave "SettingsNetwork", "dbOptions", dbSettingName(GrpDbLongIDMax), GrpLongIDMax, PCNum, True, False
    
    dbSettingValue(CatDbLongCharAllow) = Format$(CatLongCharAllow)
    db_uspSettingSave "SettingsNetwork", "dbOptions", dbSettingName(CatDbLongCharAllow), Format$(CatLongCharAllow), PCNum, True, False
    dbSettingValue(CatDbLongIDMax) = CatLongIDMax
    db_uspSettingSave "SettingsNetwork", "dbOptions", dbSettingName(CatDbLongIDMax), CatLongIDMax, PCNum, True, False
    
    dbSettingValue(CusDbLongCharAllow) = Format$(CusLongCharAllow)
    db_uspSettingSave "SettingsNetwork", "dbOptions", dbSettingName(CusDbLongCharAllow), Format$(CusLongCharAllow), PCNum, True, False
    dbSettingValue(CusDbLongIDMax) = CusLongIDMax
    db_uspSettingSave "SettingsNetwork", "dbOptions", dbSettingName(CusDbLongIDMax), CusLongIDMax, PCNum, True, False
    
    dbSettingValue(dbBackupTimeValue) = Format$(Now, "DD/MM/YYYY") & " " & Format$(dtStartTime.Value, "HH:mm")
    db_uspSettingSave "SettingsNetwork", "dbOptions", dbSettingName(dbBackupTimeValue), Format$(Now, "DD/MM/YYYY") & " " & Format$(dtStartTime.Value, "HH:mm"), PCNum, False, False
    'Convert dtPicker (date time) values to Hour and Minutes
    dbBackupTime = Format$(dtStartTime.Value, "HH:mm")
    
    'dbCatUsed = db_uspSettingGet("SettingsNetwork", "dbOptions", dbSettingName(CatDbCatEqualGroup), True, PCNum)
    dbDisconnect
    
    Screen.MousePointer = vbNormal
    
    Unload Me

Exit Sub
Cmd_ExitError:
    ErrorHandler Err, "dbOptions Cmd_Exit", Err.Description, True
    
End Sub

Private Sub cmdBackupNow_Click()
    
    On Error GoTo cmdBackupNowError
    
    Dim CompName As String
    Dim myPath As String
    CompName = GetCompName
    'myPath = "\\" & CompName & "\" & App.Path & "\dbBackups\"
    'myPath = "C:\dbBackups\"
    myPath = App.path & "\dbBackups\"
    Call db_uspBackupDataBase(myPath & "SUPDB1 " & Format(Now, "YYYY MM DD HHMM ") & ".bak")
    
Exit Sub
cmdBackupNowError:
    ErrorHandler Err, "cmdBackupNow_Click", Err.Description, True
End Sub

Private Sub cmdLanguage_Click()
    Const ShowID = True
    db_uspLanguageRead CurrentLanguage, ShowID
End Sub

Private Sub cmdShowBagID_Click()
    DisplayOption1 = myBagIndex
End Sub

Private Sub Form_Load()
     
    On Error GoTo Form_Load_Error
     
    CenterForm Me
    Me.Top = 500
          
    'To Add Settings make sure "SettingsName" Array is Correct Size
    'Set chkDB and Set index to same as setting name
          
    
    'Get Setting for each checkbox
    Dim chk     As CheckBox
    
    
    For Each chk In chkDB()
                      
        chkDB(chk.Index).Value = db_uspSettingGet("SettingsNetwork", "dbOptions", dbSettingName(chk.Index), 0, PCNum)
        'Debug.Print "Chk.index = " & chk.Index
        
    Next chk

    'Program Other Options
    GrpLongCharAllow = db_uspSettingGet("SettingsNetwork", "dbOptions", dbSettingName(GrpDbLongCharAllow), 0, PCNum)
    optGrpLongChrAllow(GrpLongCharAllow) = True
    Me.txtGrpLongIDMax.Text = db_uspSettingGet("SettingsNetwork", "dbOptions", dbSettingName(GrpDbLongIDMax), "5", PCNum)
       
    'Category Other Options
    CatLongCharAllow = db_uspSettingGet("SettingsNetwork", "dbOptions", dbSettingName(CatDbLongCharAllow), 0, PCNum)
    optCatLongChrAllow(CatLongCharAllow) = True
    Me.txtCatLongIDMax.Text = db_uspSettingGet("SettingsNetwork", "dbOptions", dbSettingName(CatDbLongIDMax), "5", PCNum)
       
    'Customer Other Options
    CusLongCharAllow = db_uspSettingGet("SettingsNetwork", "dbOptions", dbSettingName(CusDbLongCharAllow), 0, PCNum)
    optCusLongChrAllow(CusLongCharAllow) = True
    Me.txtCusLongIDMax.Text = db_uspSettingGet("SettingsNetwork", "dbOptions", dbSettingName(CusDbLongIDMax), "5", PCNum)
    
    Me.dtStartTime.Value = db_uspSettingGet("SettingsNetwork", "dbOptions", dbSettingName(dbBackupTimeValue), Format$(Now, "dd/mm/yyyy HH:mm"), PCNum)
      
    EnableCatDbSettings
      
Exit Sub
Form_Load_Error:
       
    ErrorHandler Err, "Options_db Form_Load", Err.Description, False
    Resume Next
End Sub

Private Sub optCatLongChrAllow_Click(Index As Integer)
    CatLongCharAllow = Index
End Sub

Private Sub optGrpLongChrAllow_Click(Index As Integer)
    GrpLongCharAllow = Index
End Sub

Private Sub optCusLongChrAllow_Click(Index As Integer)
    CusLongCharAllow = Index
End Sub

Private Sub txtCatLongIDMax_Change()
    If Val(txtCatLongIDMax.Text) > MaxLong Then
        txtCatLongIDMax.Text = 0
    End If
    CatLongIDMax = Val(txtCatLongIDMax.Text)
End Sub

Private Sub txtCatLongIDMax_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyBack Then
        If txtCatLongIDMax.SelStart > 0 And txtCatLongIDMax.SelLength = 0 Then
            txtCatLongIDMax.SelStart = txtCatLongIDMax.SelStart - 1
            KeyCode = vbKeyDelete
        End If
    End If
End Sub

Private Sub txtCatLongIDMax_KeyPress(KeyAscii As Integer)
    If (InStr(Numeric, Chr(KeyAscii)) = 0) Then KeyAscii = 0
End Sub

Private Sub txtGrpLongIDMax_Change()
    If Val(txtGrpLongIDMax.Text) > MaxLong Then
        txtGrpLongIDMax.Text = 0
    End If
    GrpLongIDMax = Val(txtGrpLongIDMax.Text)
End Sub

Private Sub txtGrpLongIDMax_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyBack Then
        If txtGrpLongIDMax.SelStart > 0 And txtGrpLongIDMax.SelLength = 0 Then
            txtGrpLongIDMax.SelStart = txtGrpLongIDMax.SelStart - 1
            KeyCode = vbKeyDelete
        End If
    End If
End Sub

Private Sub txtGrpLongIDMax_KeyPress(KeyAscii As Integer)
    If (InStr(Numeric, Chr(KeyAscii)) = 0) Then KeyAscii = 0
End Sub
Private Sub txtCusLongIDMax_Change()
    If Val(txtCusLongIDMax.Text) > MaxLong Then
        txtCusLongIDMax.Text = 0
    End If
    CusLongIDMax = Val(txtCusLongIDMax.Text)
End Sub

Private Sub txtCusLongIDMax_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyBack Then
        If txtCusLongIDMax.SelStart > 0 And txtCusLongIDMax.SelLength = 0 Then
            txtCusLongIDMax.SelStart = txtCusLongIDMax.SelStart - 1
            KeyCode = vbKeyDelete
        End If
    End If
End Sub

Private Sub txtCusLongIDMax_KeyPress(KeyAscii As Integer)
    If (InStr(Numeric, Chr(KeyAscii)) = 0) Then KeyAscii = 0
End Sub
Private Sub EnableCatDbSettings()
    'Category Database Not Used
    
    chkDB(CatDbUseLongID).Enabled = dbCatUsed
    chkDB(CatDbUseBagColour).Enabled = dbCatUsed
    chkDB(CatDbLongIDInBag).Enabled = dbCatUsed
    chkDB(CatDbLongIDShowLeft).Enabled = dbCatUsed
    'chkDB(CatDbLongCharAllow).Enabled = dbCatUsed
    'chkDB(CatDbLongIDMax).Enabled = dbCatUsed
    chkDB(CatDbLongEntry).Enabled = dbCatUsed
    chkDB(CatDbUsePieceWeight).Enabled = dbCatUsed
    chkDB(CatDbUseType).Enabled = dbCatUsed
    chkDB(CatDbUseSetpoints).Enabled = dbCatUsed
    chkDB(CatDbUseWashCodes).Enabled = dbCatUsed
    optCatLongChrAllow(0).Enabled = dbCatUsed
    optCatLongChrAllow(1).Enabled = dbCatUsed
    optCatLongChrAllow(2).Enabled = dbCatUsed
    Me.txtCatLongIDMax.Enabled = dbCatUsed
    Me.lblCatMaxChr.Enabled = dbCatUsed
    
End Sub
