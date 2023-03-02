VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Options_frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Options"
   ClientHeight    =   10035
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9705
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   10035
   ScaleWidth      =   9705
   ShowInTaskbar   =   0   'False
   Begin VB.Frame fr_CustChange 
      BackColor       =   &H00DBD9D4&
      Caption         =   "On Cus change Cus No. by  "
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
      Height          =   1425
      Left            =   6300
      TabIndex        =   77
      Top             =   4128
      Width           =   3315
      Begin VB.OptionButton opt_CusChange 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Look up Pool Cus"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   204
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   80
         Top             =   960
         Width           =   2775
      End
      Begin VB.OptionButton opt_CusChange 
         BackColor       =   &H00DBD9D4&
         Caption         =   "New Customer number"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   204
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   79
         Top             =   660
         Width           =   2775
      End
      Begin VB.OptionButton opt_CusChange 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Loading Program"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   204
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   78
         Top             =   360
         Width           =   2775
      End
   End
   Begin VB.Frame Frame9 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Network Update Path"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   120
      TabIndex        =   75
      Top             =   9240
      Width           =   6075
      Begin VB.TextBox txt_NetworkUpdatePath 
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
         Height          =   315
         Left            =   120
         TabIndex        =   76
         Top             =   300
         Width           =   5745
      End
   End
   Begin VB.Frame Frame7 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Menu Options"
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
      Height          =   645
      Left            =   6300
      TabIndex        =   72
      Top             =   6696
      Width           =   3315
      Begin VB.CheckBox chk_UseEasisortPulses 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Pulse Easi-Sort belts"
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
         Left            =   300
         TabIndex        =   73
         ToolTipText     =   "Turns off all Loading Program Menus"
         Top             =   300
         Width           =   2265
      End
   End
   Begin VB.Frame Frame5 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Maintenance Package"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   120
      TabIndex        =   69
      Top             =   8460
      Width           =   6075
      Begin VB.TextBox Txt_MaintPath 
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
         Height          =   315
         Left            =   120
         TabIndex        =   71
         Top             =   300
         Width           =   5745
      End
      Begin VB.CheckBox chk_Maint 
         BackColor       =   &H00DBD9D4&
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
         Left            =   2640
         TabIndex        =   70
         Top             =   0
         Width           =   240
      End
   End
   Begin VB.PictureBox Picture5 
      BackColor       =   &H00DBD9D4&
      BorderStyle     =   0  'None
      Height          =   990
      Left            =   150
      ScaleHeight     =   990
      ScaleWidth      =   5940
      TabIndex        =   44
      Top             =   300
      Width           =   5940
      Begin VB.TextBox txtPCDescription 
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
         Left            =   2250
         TabIndex        =   48
         Text            =   "Master"
         Top             =   300
         Width           =   3540
      End
      Begin VB.TextBox txtPCNum 
         Alignment       =   2  'Center
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
         Left            =   75
         TabIndex        =   47
         Text            =   "0"
         Top             =   300
         Width           =   465
      End
      Begin VB.TextBox txtNetBiosName 
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
         Left            =   600
         TabIndex        =   46
         Text            =   "Master"
         Top             =   300
         Width           =   1590
      End
      Begin VB.CheckBox chkThisPC 
         BackColor       =   &H00DBD9D4&
         Caption         =   "This PC"
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
         Left            =   75
         TabIndex        =   45
         Top             =   675
         Width           =   2115
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Num"
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
         Left            =   75
         TabIndex        =   51
         Top             =   75
         Width           =   465
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Network Name"
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
         Left            =   600
         TabIndex        =   50
         Top             =   75
         Width           =   1590
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Description"
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
         Left            =   2250
         TabIndex        =   49
         Top             =   75
         Width           =   3615
      End
   End
   Begin VB.PictureBox Picture4 
      BackColor       =   &H00DBD9D4&
      BorderStyle     =   0  'None
      Height          =   990
      Left            =   225
      ScaleHeight     =   990
      ScaleWidth      =   5790
      TabIndex        =   39
      Top             =   6000
      Width           =   5790
      Begin VB.ComboBox cmbReportsPrinter 
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
         Height          =   315
         Left            =   0
         Style           =   2  'Dropdown List
         TabIndex        =   41
         Top             =   0
         Width           =   3990
      End
      Begin VB.ComboBox cmbTicketPrinter 
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
         Height          =   315
         Left            =   0
         Style           =   2  'Dropdown List
         TabIndex        =   40
         Top             =   375
         Width           =   3990
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Reports Printer"
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
         Left            =   4050
         TabIndex        =   43
         Top             =   75
         Width           =   1500
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Ticket Printer"
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
         Left            =   4050
         TabIndex        =   42
         Top             =   450
         Width           =   1500
      End
   End
   Begin VB.PictureBox Picture2 
      BackColor       =   &H00DBD9D4&
      BorderStyle     =   0  'None
      Height          =   690
      Left            =   225
      ScaleHeight     =   690
      ScaleWidth      =   5865
      TabIndex        =   38
      Top             =   7575
      Width           =   5865
      Begin VB.CommandButton cmdRunProg 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Browse"
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
         Left            =   4500
         TabIndex        =   54
         Top             =   0
         Width           =   1215
      End
      Begin VB.TextBox txtRunProgMenuText 
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
         Height          =   315
         Left            =   0
         TabIndex        =   53
         Top             =   375
         Width           =   4365
      End
      Begin VB.TextBox lblRunProg 
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
         Height          =   315
         Left            =   0
         TabIndex        =   52
         Top             =   0
         Width           =   4365
      End
      Begin VB.Label lblMisc 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Menu Text"
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
         Left            =   4500
         TabIndex        =   55
         Top             =   450
         Width           =   1290
      End
   End
   Begin VB.TextBox lblHidden 
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
      Height          =   315
      Left            =   -5000
      TabIndex        =   37
      Text            =   "Hidden"
      Top             =   8550
      Width           =   4365
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Start-Up Display"
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
      Left            =   6300
      TabIndex        =   33
      Top             =   5592
      Width           =   3315
      Begin VB.ComboBox cmbStartUp 
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
         Height          =   315
         Left            =   150
         Style           =   2  'Dropdown List
         TabIndex        =   34
         Top             =   450
         Width           =   3015
      End
   End
   Begin VB.CommandButton cmdLoad 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      Caption         =   "Load"
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
      Left            =   6780
      TabIndex        =   32
      Top             =   9000
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Frame fraPC 
      BackColor       =   &H00DBD9D4&
      Caption         =   "PC Options"
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
      Height          =   1290
      Left            =   75
      TabIndex        =   29
      Top             =   75
      Width           =   6090
   End
   Begin VB.CommandButton cmdSetMaster 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      Caption         =   "Set Master"
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
      Left            =   6705
      TabIndex        =   28
      Top             =   9525
      Width           =   1365
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Run Another Program "
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
      Height          =   1215
      Left            =   75
      TabIndex        =   25
      Top             =   7200
      Width           =   6090
      Begin VB.CheckBox chkRunProg 
         BackColor       =   &H00DBD9D4&
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   2550
         TabIndex        =   26
         Top             =   0
         Width           =   240
      End
   End
   Begin VB.Frame fraPrinters 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Printers"
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
      Height          =   1515
      Left            =   75
      TabIndex        =   22
      Top             =   5625
      Width           =   6090
   End
   Begin VB.Frame Frame8 
      BackColor       =   &H00DBD9D4&
      Caption         =   "PLC Names"
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
      Height          =   1515
      Left            =   6300
      TabIndex        =   20
      Top             =   7380
      Width           =   3315
      Begin VB.PictureBox Picture3 
         BackColor       =   &H00DBD9D4&
         BorderStyle     =   0  'None
         Height          =   1140
         Left            =   150
         ScaleHeight     =   1140
         ScaleWidth      =   3090
         TabIndex        =   56
         Top             =   300
         Width           =   3090
         Begin VB.TextBox txt_PLCName 
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   2
            Left            =   0
            TabIndex        =   59
            Text            =   "PLC 2"
            Top             =   675
            Width           =   3015
         End
         Begin VB.TextBox txt_PLCName 
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   1
            Left            =   0
            TabIndex        =   58
            Text            =   "PLC 1"
            Top             =   375
            Width           =   3015
         End
         Begin VB.TextBox txt_PLCName 
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   0
            Left            =   0
            TabIndex        =   57
            Text            =   "PLC 0"
            Top             =   75
            Width           =   3015
         End
      End
   End
   Begin VB.Frame Frame6 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Sorting Station Names"
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
      Height          =   3015
      Left            =   6300
      TabIndex        =   18
      Top             =   75
      Width           =   3315
      Begin VB.PictureBox Picture1 
         BackColor       =   &H00DBD9D4&
         BorderStyle     =   0  'None
         Height          =   2565
         Left            =   150
         ScaleHeight     =   2565
         ScaleWidth      =   3090
         TabIndex        =   60
         Top             =   375
         Width           =   3090
         Begin VB.TextBox txt_StnName 
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
            Height          =   315
            Index           =   8
            Left            =   0
            TabIndex        =   68
            Top             =   2100
            Visible         =   0   'False
            Width           =   3015
         End
         Begin VB.TextBox txt_StnName 
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
            Height          =   315
            Index           =   7
            Left            =   0
            TabIndex        =   67
            Top             =   1800
            Visible         =   0   'False
            Width           =   3015
         End
         Begin VB.TextBox txt_StnName 
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
            Height          =   315
            Index           =   6
            Left            =   0
            TabIndex        =   66
            Top             =   1500
            Width           =   3015
         End
         Begin VB.TextBox txt_StnName 
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
            Height          =   315
            Index           =   5
            Left            =   0
            TabIndex        =   65
            Top             =   1200
            Width           =   3015
         End
         Begin VB.TextBox txt_StnName 
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
            Height          =   315
            Index           =   4
            Left            =   0
            TabIndex        =   64
            Top             =   900
            Width           =   3015
         End
         Begin VB.TextBox txt_StnName 
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
            Height          =   315
            Index           =   3
            Left            =   0
            TabIndex        =   63
            Top             =   600
            Width           =   3015
         End
         Begin VB.TextBox txt_StnName 
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
            Height          =   315
            Index           =   2
            Left            =   0
            TabIndex        =   62
            Text            =   "Stations 11-20"
            Top             =   300
            Width           =   3015
         End
         Begin VB.TextBox txt_StnName 
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
            Height          =   315
            Index           =   1
            Left            =   0
            TabIndex        =   61
            Text            =   "Stations 1-10"
            Top             =   0
            Width           =   3015
         End
      End
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Loading Programs"
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
      Height          =   960
      Left            =   6300
      TabIndex        =   16
      Top             =   3129
      Width           =   3315
      Begin VB.TextBox txtStartup 
         Alignment       =   2  'Center
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
         Left            =   2400
         TabIndex        =   24
         Text            =   "0"
         ToolTipText     =   "Enter Bank to Display at Start"
         Top             =   540
         Visible         =   0   'False
         Width           =   390
      End
      Begin VB.CheckBox chkUseLoadingBig 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Use Loading Display"
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
         Left            =   300
         TabIndex        =   23
         ToolTipText     =   "Turns off all Loading Program Menus"
         Top             =   615
         Visible         =   0   'False
         Width           =   2265
      End
      Begin VB.CheckBox chk_UseLoadingProg 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Use Loading Programs"
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
         Left            =   300
         TabIndex        =   17
         ToolTipText     =   "Turns off all Loading Program Menus"
         Top             =   300
         Width           =   2265
      End
   End
   Begin VB.Frame Frame1 
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
      Height          =   3990
      Left            =   75
      TabIndex        =   2
      Top             =   1500
      Width           =   6090
      Begin VB.CheckBox chk_AutoLogout 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Password Auto Log-out "
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
         Left            =   2850
         TabIndex        =   74
         Top             =   2520
         Width           =   3000
      End
      Begin VB.TextBox txtReportsPLC 
         Alignment       =   2  'Center
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
         ToolTipText     =   "Reports PLC Number (Normally 0 Soiled System)"
         Top             =   1350
         Width           =   390
      End
      Begin VB.CheckBox chkAccEngineer 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Engineer Allowed Only Once"
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
         Left            =   150
         TabIndex        =   31
         Top             =   3375
         Width           =   3690
      End
      Begin VB.CheckBox chkAccSupervisor 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Supervisor Allowed Only Once"
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
         Left            =   150
         TabIndex        =   30
         Top             =   3600
         Width           =   3690
      End
      Begin VB.CheckBox chk_Demo 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Demo Version"
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
         Left            =   2850
         TabIndex        =   11
         Top             =   750
         Width           =   3000
      End
      Begin VB.CheckBox chk_Master 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Master PC"
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
         Left            =   150
         TabIndex        =   27
         ToolTipText     =   "Master holds Databases"
         Top             =   750
         Width           =   3000
      End
      Begin VB.CheckBox chk_run_PVI_Manager 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Run PVI Manager"
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
         Left            =   2850
         TabIndex        =   19
         Top             =   2925
         Width           =   3000
      End
      Begin VB.CheckBox chk_Debug 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Debug to File"
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
         Left            =   2850
         TabIndex        =   14
         Top             =   1200
         Width           =   3000
      End
      Begin VB.CheckBox chk_Operator_Unloading 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Operator Unloading Programs"
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
         Left            =   2850
         TabIndex        =   13
         Top             =   2175
         Width           =   3000
      End
      Begin VB.CheckBox chk_Operator_Loading 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Operator Loading Programs"
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
         Left            =   2850
         TabIndex        =   12
         Top             =   1950
         Width           =   3000
      End
      Begin VB.CheckBox chk_OperatorEdit 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Operator Can Edit Bags"
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
         Left            =   2850
         TabIndex        =   10
         Top             =   1725
         Width           =   3000
      End
      Begin VB.CheckBox chk_trap_errors 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Trap Errors (Handler)"
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
         Left            =   2850
         TabIndex        =   8
         Top             =   975
         Width           =   3000
      End
      Begin VB.TextBox txt_SystemName 
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
         TabIndex        =   3
         Text            =   "Supertrack TrackView 4"
         Top             =   375
         Width           =   2865
      End
      Begin VB.CheckBox chk_printer 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Reports Printer Station"
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
         Left            =   150
         TabIndex        =   4
         ToolTipText     =   "Enables print buttons"
         Top             =   1950
         Width           =   3000
      End
      Begin VB.CheckBox chk_ReportsStation 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Reports Station"
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
         Left            =   150
         TabIndex        =   5
         ToolTipText     =   "Collect reports from PLC - Only 1 PC per system"
         Top             =   1725
         Width           =   3000
      End
      Begin VB.CheckBox chk_shutdown 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Shutdown Windows on Exit"
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
         Left            =   150
         TabIndex        =   6
         Top             =   975
         Width           =   3000
      End
      Begin VB.CheckBox chk_run_tcp_Driver 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Run TCP/IP Driver"
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
         Left            =   150
         TabIndex        =   7
         Top             =   2700
         Width           =   3000
      End
      Begin VB.CheckBox chk_tcp_visible 
         BackColor       =   &H00DBD9D4&
         Caption         =   "TCP/IP Driver Visible"
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
         Left            =   150
         TabIndex        =   9
         Top             =   2925
         Width           =   3000
      End
      Begin VB.CheckBox chk_PrintTickets 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Print Tickets"
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
         Left            =   150
         TabIndex        =   21
         ToolTipText     =   "Enables print buttons"
         Top             =   2175
         Width           =   3000
      End
      Begin VB.Label lblReportsPLC 
         BackStyle       =   0  'Transparent
         Caption         =   "Reports PLC"
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
         Left            =   600
         TabIndex        =   36
         ToolTipText     =   "Reports PLC Number (Normally 0 Soiled System)"
         Top             =   1425
         Width           =   1500
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "System Name"
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
         Left            =   3225
         TabIndex        =   15
         Top             =   450
         Width           =   2715
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog 
      Left            =   6300
      Top             =   9480
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
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
      Left            =   8400
      TabIndex        =   1
      Top             =   9525
      Width           =   1215
   End
   Begin VB.CommandButton cmdSave 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      Caption         =   "Save"
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
      Left            =   8400
      TabIndex        =   0
      Top             =   9000
      Width           =   1215
   End
End
Attribute VB_Name = "Options_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim PCNumLocal As Integer
Dim StartUpIndex As Integer

Private Sub chk_Demo_Click()
    Demo = chk_Demo.Value
End Sub

Private Sub chk_Master_Click()
    Call OptionsEnable
End Sub

Private Sub chk_ReportsStation_Click()
    Call OptionsEnable
End Sub

Private Sub chk_run_tcp_Driver_Click()
    Call OptionsEnable
End Sub

Private Sub chk_tcp_visible_Click()
    
    If chk_tcp_visible.Value Then
        TCPIPDriverShow = True
    Else
        TCPIPDriverHide = True
    End If
End Sub

Private Sub chk_UseEasisortPulses_Click()
    db_uspSettingSave "SettingsNetwork", "Common", "PulseEasiSorts", chk_UseEasisortPulses.Value, PCNumLocal
End Sub



Private Sub chkThisPC_Click()
    If chkThisPC.Value Then
        PCNumLocal = Val(Me.txtPCNum.Text)
        Call SaveSetting("TrackView", "Config", "PCNum", Me.txtPCNum.Text)
    End If
    Me.cmdSetMaster.Enabled = chkThisPC.Value
End Sub



Private Sub cmbStartUp_Click()
    StartUpIndex = cmbStartUp.ListIndex
End Sub


Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub cmdLoad_Click()
    Call LoadSettings(Val(Me.txtPCNum.Text))
End Sub

Private Sub cmdRunProg_Click()
    ' Set Cancel to True
    CommonDialog.CancelError = True
    On Error GoTo cmdBrowseErrHandler
    CommonDialog.Filter = "Executable (*.*)|*.*"
    CommonDialog.InitDir = "C:\"
    CommonDialog.DialogTitle = "Find program to Run"
    CommonDialog.Flags = cdlOFNFileMustExist And cdlOFNPathMustExist
    
    CommonDialog.ShowOpen
    'lblRunProg.Caption = Left$(CommonDialog.FileName, Len(CommonDialog.FileName) - Len(CommonDialog.FileTitle))
    lblRunProg.Text = CommonDialog.FileName

Exit Sub

cmdBrowseErrHandler:
  ' User pressed the Cancel button
End Sub

Private Sub CmdSave_Click()
    Call SaveSettings(Val(Me.txtPCNum.Text))
End Sub

Private Sub cmdSetMaster_Click()
        
    Dim MasterPCNum             As Integer
    Dim MasterPCNetBiosName     As String
    Dim n                       As Integer
    Dim MasterPCNumber           As Boolean
    Dim ShutdownWindows         As Boolean
    Dim Response                As Integer
    
    Response = MsgBox("Are you sure?", vbYesNo + vbCritical, "Set Master PC")
    
    If Response = vbYes Then
    
        'Find Current Master PC
        MasterPCNum = 0
        
        For n = 1 To MaxPC
            
            MasterPCFound = db_uspSettingGet("SettingsLocal", "Config", "MasterPC", 0, n)
                
            If MasterPCFound Then
                If MasterPCNum = 0 Then
                    MasterPCNum = n
                Else
                    MsgBox "More than 1 Master PC found!", vbCritical, "MasterPC"
                End If
            End If
                        
        Next n
        
        'Master PC found
        If (MasterPCNum > 0) Then
            
            If (MasterPCNum = PCNumLocal) Then
                MsgBox "This PC is already the Master", vbCritical, "MasterPC"
            Else
                
                'Was master set to run TCP/IP Driver?
                RunTcpDriver = db_uspSettingGet("SettingsLocal", "Common", "Run TCP/IP Driver", 0, MasterPCNum)
                
                'Copy all local settings from the Master PC
                Call db_SettingLocalCopyFromTo(MasterPCNum, 1000)
                'Copy all local settings from the new Master (PC) to the old Master
                Call db_SettingLocalCopyFromTo(PCNumLocal, MasterPCNum)
                'Copy the saved Master settings to the new master
                Call db_SettingLocalCopyFromTo(1000, PCNumLocal)
                    
            
                'Set all other PC's to communicate with this PC (If driver now running here)
                If RunTcpDriver Then
                    For n = 1 To MaxPC
                        myIP = Comms_frm.sck_PLC_Read(0).LocalIP
                        Call db_uspSettingSave("SettingsLocal", "TCP_IP_Client RemoteHost", Format$(Index), myIP, n)
                    Next n
                End If
                                                        
                'Close connection to all databases
                dbClose
                                   
                'Re-start Windows
                If AccessLevel <= accProgrammer Then
                    Response = MsgBox("Windows will now re-start!", vbOKOnly + vbCritical, "Re-start PC?")
                    WindowsReStart
                Else
                    Response = MsgBox("TrackView needs re-starting!", vbOKOnly + vbCritical, "Close TrackView?")
                End If
                    
                Unload Comms_frm
                                              
                End
            
            End If
            
        End If
    
    
    End If
    
    
End Sub

Private Sub Form_Load()

    CenterForm Me
    Me.Top = 100
    
    PCNumLocal = PCNum 'Copy This PC Current number for local use
    
    ThisPCPath = ""
        
    'Populate Start-Up combo
    With cmbStartUp
        
        For n = 0 To UBound(StartUpForm)
            .AddItem StartUpForm(n)
            .ItemData(cmbStartUp.NewIndex) = n
        Next
              
        
    End With
    
    Call LoadSettings(PCNumLocal)
    
    
    opt_CusChange(2).Enabled = (dbSettingValue(CusDbEnablePool) <> "0")
    

   
    opt_CusChange(0).ToolTipText = "The customer number stored in the loading program is returned. If this is 0 the customer number used to request the change is returned as the customer"
    opt_CusChange(1).ToolTipText = "The customer number used to request the change is returned for all customer fields."
    opt_CusChange(2).ToolTipText = "The customer number used to request the change is checked to see if it is 'pool' if it is pool. The pool customer number is returned, if it is not pool the request number is returned."
    
    
    Txt_MaintPath = GetSetting("TrackView", "Config", "MaintPath")
    txt_NetworkUpdatePath.ToolTipText = "Set the network path for Loader to look for updates"

End Sub
    


Private Sub lblRunProg_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub lblRunProg_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    lblRunProg.ToolTipText = lblRunProg.Text
End Sub

Private Sub txtPCNum_Change()
    'Is this the PC
    Dim PC As Integer
    PC = Val(txtPCNum.Text)
    If PC = PCNumLocal Then
        chkThisPC.Value = 1
    Else
        chkThisPC.Value = 0
    End If
    Call db_uspGetSettingsCache(PC)
    Me.txtNetBiosName.Enabled = (AccessLevel >= accDesigner) And (PC = PCNumLocal)
    Call LoadSettings(Val(Me.txtPCNum.Text))
End Sub

Private Sub txtPCNum_Click()
    HighlightTextBox txtPCNum
End Sub

Private Sub txtPCNum_KeyPress(KeyAscii As Integer)
    BoxKeyPress txtPCNum, KeyAscii, EditAny, MaxPC, 0
End Sub

Private Sub LoadSettings(PC As Integer)
    
    On Error GoTo LoadSettingsError
       
    Dim PCNetBiosName As String
    Dim PCDescription As String
        
    If PC = PCNumLocal Then
        'Get Registry Settings
        Me.txtPCNum.Text = GetSetting("TrackView", "Config", "PCNum", 0)
        Me.txtNetBiosName.Text = GetCompName
        Call db_uspSettingPCGet(PCNetBiosName, PCDescription, PC)
        Me.txtPCDescription = PCDescription
        
    Else
        'Read from Settings.mdb
        Me.txtPCNum.Text = Format$(PC)
        Call db_uspSettingPCGet(PCNetBiosName, PCDescription, PC)
        Me.txtNetBiosName.Text = PCNetBiosName
        Me.txtPCDescription = PCDescription
    End If
       
    'Is this the PC
    If PC = PCNumLocal Then
        chkThisPC.Value = 1
    Else
        chkThisPC.Value = 0
    End If
    Me.cmdSetMaster.Enabled = (PC = PCNumLocal)
    
    StartUpIndex = db_uspSettingGet("SettingsLocal", "Config", "StartUp", 0, PC)
    Me.cmbStartUp.ListIndex = StartUpIndex
        
    chk_Demo.Value = GetSetting("TrackView", "Config", "Demo", 0)
    
    Me.txtPCNum.Enabled = (AccessLevel >= accDesigner)
    Me.txtPCDescription.Enabled = (AccessLevel >= accDesigner)
    Me.txtNetBiosName.Enabled = (AccessLevel >= accDesigner) And (PC = PCNumLocal)
        
    chk_Master.Value = db_uspSettingGet("SettingsLocal", "Config", "MasterPC", 0, PC)
    chk_run_tcp_Driver.Value = db_uspSettingGet("SettingsLocal", "Common", "Run TCP/IP Driver", 0, PC)
    chk_tcp_visible.Value = db_uspSettingGet("SettingsLocal", "TCP_IP_Driver", "Display", 1, PC)
    
    chk_Maint.Value = db_uspSettingGet("SettingsNetwork", "Common", "Use Maintenance Package", 0, PC)
    chk_run_PVI_Manager.Value = db_uspSettingGet("SettingsLocal", "Common", "Run PVI Manager", 0, PC)
    chk_Debug.Value = db_uspSettingGet("SettingsNetwork", "Common", "Debug", 0, PC)
    
    Me.txtReportsPLC.Text = db_uspSettingGet("SettingsLocal", "Config", "Reports_PLC", "0", PC)
    chk_ReportsStation.Value = db_uspSettingGet("SettingsLocal", "Config", "Reports_Station", 0, PC)
    chk_printer.Value = db_uspSettingGet("SettingsLocal", "Config", "Printer_Station", 0, PC)
    chk_PrintTickets.Value = db_uspSettingGet("SettingsLocal", "Config", "Ticket_Printer", 0, PC)
        
    chk_trap_errors.Value = db_uspSettingGet("SettingsNetwork", "Common", "Trap Errors", 1, PC)
    'chkBackup.Value = db_uspSettingGet("SettingsLocal", "Common", "Backup", 0, PC)
    chk_OperatorEdit.Value = db_uspSettingGet("SettingsNetwork", "Common", "OperatorEditBags", 0, PC)
    chk_Operator_Loading.Value = db_uspSettingGet("SettingsNetwork", "Common", "OperatorLoading", 0, PC)
    chk_Operator_Unloading.Value = db_uspSettingGet("SettingsNetwork", "Common", "OperatorUnloading", 0, PC)
    chk_shutdown.Value = db_uspSettingGet("SettingsLocal", "Common", "Shutdown", 0, PC)
    chk_UseEasisortPulses.Value = db_uspSettingGet("SettingsNetwork", "Common", "PulseEasiSorts", chk_UseEasisortPulses.Value, PC)
    txt_SystemName.Text = db_uspSettingGet("SettingsNetwork", "System", "SystemName", App.Title, PC)
       
    txt_NetworkUpdatePath.Text = db_uspSettingGet("SettingsNetwork", "Loader", "Network Update Path", "", PC)
       
       
    Dim StnName As TextBox
    For Each StnName In txt_StnName()
        txt_StnName(StnName.Index).Text = db_uspSettingGet("SettingsNetwork", "Config", "StationName" & Str(StnName.Index), "Station Name Not Set", PC)
    Next StnName
    
    Dim PLC As TextBox
    For Each PLC In txt_PLCName()
        txt_PLCName(PLC.Index).Text = db_uspSettingGet("SettingsNetwork", "Config", "PLCName" & Str(PLC.Index), "PLC " & Str(PLC.Index), PC)
    Next PLC
    
    chk_UseLoadingProg.Value = db_uspSettingGet("SettingsNetwork", "Stations", "UseLoadingProgram", 1, PC)
    Me.chkUseLoadingBig.Value = db_uspSettingGet("SettingsNetwork", "Stations", "UseLoadingBig", 0, PC)
        
    
    
    'Set printers
    Dim PrintDevice As Printer
    Dim TotalPrinters As Integer
    TotalPrinters = 0
    
    For Each PrintDevice In Printers()
        TotalPrinters = TotalPrinters + 1
        cmbReportsPrinter.AddItem PrintDevice.DeviceName
        cmbReportsPrinter.ItemData(cmbReportsPrinter.NewIndex) = (TotalPrinters - 1)
        cmbTicketPrinter.AddItem PrintDevice.DeviceName
        cmbTicketPrinter.ItemData(cmbTicketPrinter.NewIndex) = (TotalPrinters - 1)
    Next PrintDevice
    
    ReportsPrinter = db_uspSettingGet("SettingsLocal", "Printers", "Reports", 0, PC)
    TicketPrinter = db_uspSettingGet("SettingsLocal", "Printers", "Ticket", 0, PC)
    
    'Note TotalPrinters = (Printers + 1)
    If ReportsPrinter < TotalPrinters Then cmbReportsPrinter.ListIndex = ReportsPrinter
    If TicketPrinter < TotalPrinters Then cmbTicketPrinter.ListIndex = TicketPrinter
   
    Me.chkAccSupervisor.Value = db_uspSettingGet("SettingsLocal", "Access", "AccSupervisor", 1, PC)
    Me.chkAccEngineer.Value = db_uspSettingGet("SettingsLocal", "Access", "AccEngineer", 1, PC)
    Me.chk_AutoLogout.Value = db_uspSettingGet("SettingsNetwork", "PasswordAutoLogout", "Use", 0, PC)
    
    'Start-up form
    Me.txtStartup.Text = db_uspSettingGet("SettingsLocal", "LoadingBigDisplay", "StartForm", "0", PC)
    
    'Run another program menu
    Me.chkRunProg.Value = db_uspSettingGet("SettingsLocal", "RunAnotherProgram", "Use", "0", PC)
    Me.lblRunProg.Text = db_uspSettingGet("SettingsLocal", "RunAnotherProgram", "Path", "", PC)
    Me.txtRunProgMenuText.Text = db_uspSettingGet("SettingsLocal", "RunAnotherProgram", "MenuText", "Run Prog Not Set!", PC)
    
    Dim mode As Integer
    mode = Val(db_uspSettingGet("SettingsNetwork", "CusChangeOption", "New Customer Behaviour ", "1", PC))
    opt_CusChange(mode).Value = True
    
    
Exit Sub
LoadSettingsError:
    ErrorHandler Err, "Options_frm LoadSettings", Err.Description, False
    Resume Next

End Sub
Private Sub SaveSettings(PC As Integer)
    
    On Error GoTo SaveSettingsError
    
    Screen.MousePointer = vbHourglass
            
    If PC = PCNumLocal Then
        'Save Registry Settings
        'Call SetCompName(Me.txtNetBiosName.Text)
        Call SaveSetting("TrackView", "Config", "PCNum", Me.txtPCNum.Text)
    End If
        
   If chk_Maint = vbChecked Then
        Call SaveSetting("TrackView", "Config", "MaintPath", Me.Txt_MaintPath.Text)
   End If
        
    
    'Save to SQL Server
    Call db_uspSettingPCSave(Me.txtNetBiosName.Text, Me.txtPCDescription.Text, PC)
        
    SaveSetting "TrackView", "Config", "Demo", chk_Demo.Value
    dbConnect
    db_uspSettingSave "SettingsLocal", "Config", "StartUp", StartUpIndex, PC, True, False
    
    db_uspSettingSave "SettingsLocal", "Common", "Run TCP/IP Driver", Me.chk_run_tcp_Driver.Value, PC, True, False
    db_uspSettingSave "SettingsLocal", "TCP_IP_Driver", "Display", Me.chk_tcp_visible.Value, PC, True, False
    
    db_uspSettingSave "SettingsLocal", "Config", "MasterPC", chk_Master.Value, PC, True, False
        
    'db_uspSettingSave "SettingsLocal", "Config", "MIS_FileUse", chk_UseMIS.Value, PC, True, False
        
    db_uspSettingSave "SettingsLocal", "Common", "Run PVI Manager", chk_run_PVI_Manager.Value, PC, True, False
    db_uspSettingSave "SettingsNetwork", "Common", "Use Maintenance Package", chk_Maint.Value, PC, True, False
    MaintenanceUsed = chk_Maint.Value
    db_uspSettingSave "SettingsNetwork", "Common", "Debug", chk_Debug.Value, PC, True, False
    
    db_uspSettingSave "SettingsLocal", "Config", "Reports_PLC", Me.txtReportsPLC.Text, PC, True, False
    ReportsPLC = Val(Me.txtReportsPLC.Text)
    db_uspSettingSave "SettingsLocal", "Config", "Reports_Station", chk_ReportsStation.Value, PC, True, False
    db_uspSettingSave "SettingsLocal", "Config", "Printer_Station", chk_printer.Value, PC, True, False
    db_uspSettingSave "SettingsLocal", "Config", "Ticket_Printer", chk_PrintTickets.Value, PC, True, False
    db_uspSettingSave "SettingsLocal", "Printers", "Reports", cmbReportsPrinter.ItemData(cmbReportsPrinter.ListIndex), PC, True, False
    db_uspSettingSave "SettingsLocal", "Printers", "Ticket", cmbTicketPrinter.ItemData(cmbTicketPrinter.ListIndex), PC, True, False
    ReportsPrinter = cmbReportsPrinter.ItemData(cmbReportsPrinter.ListIndex)
    TicketPrinter = cmbTicketPrinter.ItemData(cmbTicketPrinter.ListIndex)
    
   
    db_uspSettingSave "SettingsNetwork", "Common", "Trap Errors", chk_trap_errors.Value, PC, True, False
    'db_uspSettingSave "SettingsLocal", "Common", "Backup", chkBackup.Value, PC
    db_uspSettingSave "SettingsNetwork", "Common", "OperatorEditBags", chk_OperatorEdit.Value, PC, True, False
    db_uspSettingSave "SettingsNetwork", "Common", "OperatorLoading", chk_Operator_Loading.Value, PC, True, False
    db_uspSettingSave "SettingsNetwork", "Common", "OperatorUnloading", chk_Operator_Unloading.Value, PC, True, False
    db_uspSettingSave "SettingsLocal", "Common", "Shutdown", chk_shutdown.Value, PC, True, False
    db_uspSettingSave "SettingsNetwork", "System", "SystemName", txt_SystemName.Text, PC, True, False
    db_uspSettingSave "SettingsNetwork", "Common", "PulseEasiSorts", chk_UseEasisortPulses.Value, PC, True, False
    db_uspSettingSave "SettingsNetwork", "Loader", "Network Update Path", txt_NetworkUpdatePath.Text, PC, True, False
    
    Dim StnName As TextBox
    For Each StnName In txt_StnName()
        db_uspSettingSave "SettingsNetwork", "Config", "StationName" & Str(StnName.Index), txt_StnName(StnName.Index).Text, PC, True, False
    Next StnName
    
    Dim PLC As TextBox
    For Each PLC In txt_PLCName()
        db_uspSettingSave "SettingsNetwork", "Config", "PLCName" & Str(PLC.Index), txt_PLCName(PLC.Index).Text, PC, True, False
        PLCName(PLC.Index) = txt_PLCName(PLC.Index)
    Next PLC
       
    db_uspSettingSave "SettingsNetwork", "Stations", "UseLoadingProgram", chk_UseLoadingProg.Value, PC, True, False
    db_uspSettingSave "SettingsNetwork", "Stations", "UseLoadingBig", Me.chkUseLoadingBig.Value, PC, True, False
       
        
    db_uspSettingSave "SettingsLocal", "Access", "AccSupervisor", Me.chkAccSupervisor.Value, PC, True, False
    db_uspSettingSave "SettingsLocal", "Access", "AccEngineer", Me.chkAccEngineer.Value, PC, True, False
    
    
    db_uspSettingSave "SettingsLocal", "LoadingBigDisplay", "StartForm", Me.txtStartup.Text, PC, True, False
    
    'Run another program menu
    db_uspSettingSave "SettingsLocal", "RunAnotherProgram", "Use", Me.chkRunProg.Value, PC, True, False
    db_uspSettingSave "SettingsLocal", "RunAnotherProgram", "Path", Me.lblRunProg.Text, PC, True, False
    db_uspSettingSave "SettingsLocal", "RunAnotherProgram", "MenuText", Me.txtRunProgMenuText.Text, PC, True, False
    
   
   
   Dim opt As OptionButton
    For Each opt In opt_CusChange
        If opt.Value = True Then
            db_uspSettingSave "SettingsNetwork", "CusChangeOption", "New Customer Behaviour ", opt.Index, PC, True, False
            Exit For
        End If
    Next opt
   
     db_uspSettingSave "SettingsNetwork", "PasswordAutoLogout", "Use", Me.chk_AutoLogout.Value, PC, False, False
    dbDisconnect
    Screen.MousePointer = vbNormal
    
    'PC Number has been changed
    Dim Response                As Integer
    Dim db                      As Integer
    
    If PCNumLocal <> PCNum Then
    
        Response = MsgBox("This PC's Number has changed - TrackView needs re-starting", vbYesNo + vbCritical, "Close TrackView?")
    
        If Response = vbYes Then
                
            'Close connection to all databases
            dbClose
                                       
            Unload Comms_frm
                
            End
                
        End If
        
    End If
    
    'Find Current Master PC
'    For n = 1 To MaxPC
'
'        MasterPCFound = db_uspSettingGet("SettingsLocal", "Config", "MasterPC", 0, n)
'
'        If MasterPCFound Then
'            If MasterPCNum = 0 Then
'                MasterPCNum = n
'            Else
'                MsgBox "More than 1 Master PC found!", vbCritical, "MasterPC"
'            End If
'        End If
'
'    Next n
    
Exit Sub
SaveSettingsError:
    ErrorHandler Err, "Options_frm SaveSettings", Err.Description, False
    Resume Next

End Sub
Private Sub OptionsEnable()
    
    If chk_Master.Value = 0 Then
        chk_ReportsStation.Value = 0
        chk_ReportsStation.Enabled = False
        chk_run_tcp_Driver.Value = 0
        chk_run_tcp_Driver.Enabled = False
        'chkBackup.Enabled = True
    Else
        chk_ReportsStation.Enabled = True
        chk_run_tcp_Driver.Enabled = True
        'chkBackup.Value = 0
        'chkBackup.Enabled = False
    End If
    
    If chk_run_tcp_Driver.Value = 1 Then
        chk_tcp_visible.Enabled = True
    Else
        chk_tcp_visible.Value = 0
        chk_tcp_visible.Enabled = False
    End If
End Sub

