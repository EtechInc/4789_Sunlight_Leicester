VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Options_vnc 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "VNC Options"
   ClientHeight    =   8160
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8010
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   8160
   ScaleWidth      =   8010
   ShowInTaskbar   =   0   'False
   Begin VB.Frame Frame3 
      BackColor       =   &H00DBD9D4&
      Caption         =   "VNC Viewer Location "
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
      Height          =   840
      Left            =   75
      TabIndex        =   3
      Top             =   150
      Width           =   7815
      Begin VB.CommandButton cmdVNCPath 
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
         Left            =   6450
         TabIndex        =   4
         Top             =   300
         Width           =   1215
      End
      Begin VB.Label lblVNCPath 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
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
         Height          =   315
         Left            =   150
         TabIndex        =   5
         Top             =   300
         Width           =   6150
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
      Left            =   6675
      TabIndex        =   2
      Top             =   7650
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
      Left            =   5250
      TabIndex        =   1
      Top             =   7650
      Width           =   1215
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Name and Command Line"
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
      Height          =   6465
      Left            =   75
      TabIndex        =   0
      Top             =   1050
      Width           =   7815
      Begin VB.TextBox txtVNCCmdLine 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   15
         Left            =   4275
         TabIndex        =   53
         Text            =   "10.0.10.20:5900"
         Top             =   6000
         Width           =   3390
      End
      Begin VB.TextBox txtVNCName 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   15
         Left            =   825
         TabIndex        =   51
         Text            =   "Powertrans"
         Top             =   6000
         Width           =   3390
      End
      Begin VB.TextBox txtVNCCmdLine 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   14
         Left            =   4275
         TabIndex        =   50
         Text            =   "10.0.10.20:5900"
         Top             =   5625
         Width           =   3390
      End
      Begin VB.TextBox txtVNCName 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   14
         Left            =   825
         TabIndex        =   48
         Text            =   "Powertrans"
         Top             =   5625
         Width           =   3390
      End
      Begin VB.TextBox txtVNCCmdLine 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   13
         Left            =   4275
         TabIndex        =   47
         Text            =   "10.0.10.20:5900"
         Top             =   5250
         Width           =   3390
      End
      Begin VB.TextBox txtVNCName 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   13
         Left            =   825
         TabIndex        =   45
         Text            =   "Powertrans"
         Top             =   5250
         Width           =   3390
      End
      Begin VB.TextBox txtVNCCmdLine 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   12
         Left            =   4275
         TabIndex        =   44
         Text            =   "10.0.10.20:5900"
         Top             =   4875
         Width           =   3390
      End
      Begin VB.TextBox txtVNCName 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   12
         Left            =   825
         TabIndex        =   42
         Text            =   "Powertrans"
         Top             =   4875
         Width           =   3390
      End
      Begin VB.TextBox txtVNCCmdLine 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   11
         Left            =   4275
         TabIndex        =   41
         Text            =   "10.0.10.20:5900"
         Top             =   4500
         Width           =   3390
      End
      Begin VB.TextBox txtVNCName 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   11
         Left            =   825
         TabIndex        =   39
         Text            =   "Powertrans"
         Top             =   4500
         Width           =   3390
      End
      Begin VB.TextBox txtVNCCmdLine 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   10
         Left            =   4275
         TabIndex        =   38
         Text            =   "10.0.10.20:5900"
         Top             =   4125
         Width           =   3390
      End
      Begin VB.TextBox txtVNCName 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   10
         Left            =   825
         TabIndex        =   36
         Text            =   "Powertrans"
         Top             =   4125
         Width           =   3390
      End
      Begin VB.TextBox txtVNCCmdLine 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   9
         Left            =   4275
         TabIndex        =   35
         Text            =   "10.0.10.20:5900"
         Top             =   3750
         Width           =   3390
      End
      Begin VB.TextBox txtVNCName 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   9
         Left            =   825
         TabIndex        =   33
         Text            =   "Powertrans"
         Top             =   3750
         Width           =   3390
      End
      Begin VB.TextBox txtVNCCmdLine 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   8
         Left            =   4275
         TabIndex        =   32
         Text            =   "10.0.10.20:5900"
         Top             =   3375
         Width           =   3390
      End
      Begin VB.TextBox txtVNCName 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   8
         Left            =   825
         TabIndex        =   30
         Text            =   "Powertrans"
         Top             =   3375
         Width           =   3390
      End
      Begin VB.TextBox txtVNCCmdLine 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   7
         Left            =   4275
         TabIndex        =   29
         Text            =   "10.0.10.20:5900"
         Top             =   3000
         Width           =   3390
      End
      Begin VB.TextBox txtVNCName 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   7
         Left            =   825
         TabIndex        =   27
         Text            =   "Powertrans"
         Top             =   3000
         Width           =   3390
      End
      Begin VB.TextBox txtVNCCmdLine 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   6
         Left            =   4275
         TabIndex        =   26
         Text            =   "10.0.10.20:5900"
         Top             =   2625
         Width           =   3390
      End
      Begin VB.TextBox txtVNCName 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   6
         Left            =   825
         TabIndex        =   24
         Text            =   "Powertrans"
         Top             =   2625
         Width           =   3390
      End
      Begin VB.TextBox txtVNCCmdLine 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   5
         Left            =   4275
         TabIndex        =   23
         Text            =   "10.0.10.20:5900"
         Top             =   2250
         Width           =   3390
      End
      Begin VB.TextBox txtVNCName 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   5
         Left            =   825
         TabIndex        =   21
         Text            =   "Powertrans"
         Top             =   2250
         Width           =   3390
      End
      Begin VB.TextBox txtVNCCmdLine 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   4
         Left            =   4275
         TabIndex        =   20
         Text            =   "10.0.10.20:5900"
         Top             =   1875
         Width           =   3390
      End
      Begin VB.TextBox txtVNCName 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   4
         Left            =   825
         TabIndex        =   18
         Text            =   "Powertrans"
         Top             =   1875
         Width           =   3390
      End
      Begin VB.TextBox txtVNCCmdLine 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   3
         Left            =   4275
         TabIndex        =   17
         Text            =   "10.0.10.20:5900"
         Top             =   1500
         Width           =   3390
      End
      Begin VB.TextBox txtVNCName 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   3
         Left            =   825
         TabIndex        =   15
         Text            =   "Powertrans"
         Top             =   1500
         Width           =   3390
      End
      Begin VB.TextBox txtVNCCmdLine 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   2
         Left            =   4275
         TabIndex        =   14
         Text            =   "10.0.10.20:5900"
         Top             =   1125
         Width           =   3390
      End
      Begin VB.TextBox txtVNCName 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   2
         Left            =   825
         TabIndex        =   12
         Text            =   "Powertrans"
         Top             =   1125
         Width           =   3390
      End
      Begin VB.TextBox txtVNCCmdLine 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   1
         Left            =   4275
         TabIndex        =   11
         Text            =   "10.0.10.20:5900"
         Top             =   750
         Width           =   3390
      End
      Begin VB.TextBox txtVNCName 
         BorderStyle     =   0  'None
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
         Height          =   315
         Index           =   1
         Left            =   825
         TabIndex        =   9
         Text            =   "Powertrans"
         Top             =   750
         Width           =   3390
      End
      Begin VB.Label lblVNCNum 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "15"
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
         Height          =   315
         Index           =   15
         Left            =   75
         TabIndex        =   52
         Top             =   6000
         Width           =   690
      End
      Begin VB.Label lblVNCNum 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "14"
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
         Height          =   315
         Index           =   14
         Left            =   75
         TabIndex        =   49
         Top             =   5625
         Width           =   690
      End
      Begin VB.Label lblVNCNum 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "13"
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
         Height          =   315
         Index           =   13
         Left            =   75
         TabIndex        =   46
         Top             =   5250
         Width           =   690
      End
      Begin VB.Label lblVNCNum 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "12"
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
         Height          =   315
         Index           =   12
         Left            =   75
         TabIndex        =   43
         Top             =   4875
         Width           =   690
      End
      Begin VB.Label lblVNCNum 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "11"
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
         Height          =   315
         Index           =   11
         Left            =   75
         TabIndex        =   40
         Top             =   4500
         Width           =   690
      End
      Begin VB.Label lblVNCNum 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "10"
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
         Height          =   315
         Index           =   10
         Left            =   75
         TabIndex        =   37
         Top             =   4125
         Width           =   690
      End
      Begin VB.Label lblVNCNum 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "9"
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
         Height          =   315
         Index           =   9
         Left            =   75
         TabIndex        =   34
         Top             =   3750
         Width           =   690
      End
      Begin VB.Label lblVNCNum 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "8"
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
         Height          =   315
         Index           =   8
         Left            =   75
         TabIndex        =   31
         Top             =   3375
         Width           =   690
      End
      Begin VB.Label lblVNCNum 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "7"
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
         Height          =   315
         Index           =   7
         Left            =   75
         TabIndex        =   28
         Top             =   3000
         Width           =   690
      End
      Begin VB.Label lblVNCNum 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "6"
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
         Height          =   315
         Index           =   6
         Left            =   75
         TabIndex        =   25
         Top             =   2625
         Width           =   690
      End
      Begin VB.Label lblVNCNum 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "5"
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
         Height          =   315
         Index           =   5
         Left            =   75
         TabIndex        =   22
         Top             =   2250
         Width           =   690
      End
      Begin VB.Label lblVNCNum 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "4"
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
         Height          =   315
         Index           =   4
         Left            =   75
         TabIndex        =   19
         Top             =   1875
         Width           =   690
      End
      Begin VB.Label lblVNCNum 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "3"
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
         Height          =   315
         Index           =   3
         Left            =   75
         TabIndex        =   16
         Top             =   1500
         Width           =   690
      End
      Begin VB.Label lblVNCNum 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "2"
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
         Height          =   315
         Index           =   2
         Left            =   75
         TabIndex        =   13
         Top             =   1125
         Width           =   690
      End
      Begin VB.Label lblVNCNum 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "1"
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
         Height          =   315
         Index           =   1
         Left            =   75
         TabIndex        =   10
         Top             =   750
         Width           =   690
      End
      Begin VB.Label lblCmdLine 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Command Line"
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
         Height          =   315
         Left            =   4275
         TabIndex        =   8
         Top             =   375
         Width           =   3390
      End
      Begin VB.Label lblName 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Viewer Name"
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
         Height          =   315
         Left            =   825
         TabIndex        =   7
         Top             =   375
         Width           =   3390
      End
      Begin VB.Label lblNo 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "No."
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
         Height          =   315
         Left            =   75
         TabIndex        =   6
         Top             =   375
         Width           =   690
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog 
      Left            =   75
      Top             =   7650
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
End
Attribute VB_Name = "Options_vnc"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim GrpLongCharAllow  As Integer
Dim CusLongCharAllow  As Integer
Dim GrpLongIDMax   As Integer
Dim CusLongIDMax   As Integer

Private Sub cmd_cancel_Click()
    
    Unload Me
    
End Sub

Private Sub Cmd_exit_Click()
    
    On Error GoTo Cmd_ExitError
    
    Screen.MousePointer = vbHourglass
    
    'VNC Viewer
    db_uspSettingSave "SettingsNetwork", "VNCViewer", "Path", Me.lblVNCPath.Caption, PCNum
    VNCPath = db_uspSettingGet("SettingsNetwork", "VNCViewer", "Path", "", PCNum)
       
    Dim VNCBox As TextBox
    For Each VNCBox In txtVNCName()
        VNCName(VNCBox.Index) = txtVNCName(VNCBox.Index)
        VNCCmd(VNCBox.Index) = txtVNCCmdLine(VNCBox.Index)
    Next VNCBox
     
    
    WriteDatabase
    
    Screen.MousePointer = vbNormal
    
    Unload Me

Exit Sub
Cmd_ExitError:
    ErrorHandler Err, "dbOptions Cmd_Exit", Err.Description, True
    
End Sub

Private Sub cmdLanguage_Click()
    Const ShowID = True
    Call db_uspLanguageRead(CurrentLanguage, ShowID)
End Sub

Private Sub cmdVNCPath_Click()
    
    ' Set Cancel to True
    CommonDialog.CancelError = True
    On Error GoTo cmdVNCPathErrHandler
    CommonDialog.Filter = "Executable (*.*)|*.*"
    CommonDialog.InitDir = "C:\"
    CommonDialog.DialogTitle = "Find VNC Viewer"
    CommonDialog.Flags = cdlOFNFileMustExist And cdlOFNPathMustExist
    
    CommonDialog.ShowOpen
    'lblRunProg.Caption = Left$(CommonDialog.FileName, Len(CommonDialog.FileName) - Len(CommonDialog.FileTitle))
    Me.lblVNCPath.Caption = CommonDialog.FileName

Exit Sub

cmdVNCPathErrHandler:
  ' User pressed the Cancel button
End Sub


Private Sub Form_Load()
    
    CenterForm Me
    Me.Top = 500
          
    db_uspVNCRead 'Ensure up-to date copy of VNC data
          
    Me.lblVNCPath.Caption = db_uspSettingGet("SettingsNetwork", "VNCViewer", "Path", "", PCNum)
    
           
    Dim VNCBox As TextBox
    For Each VNCBox In txtVNCName()
        txtVNCName(VNCBox.Index) = VNCName(VNCBox.Index)
        txtVNCCmdLine(VNCBox.Index) = VNCCmd(VNCBox.Index)
    Next VNCBox
            
End Sub

Public Sub WriteDatabase()
    
    On Error GoTo ErrorWriteDatabase
    
    Dim n       As Integer
    Dim m       As Integer
    Dim mySQL   As String
    Dim AddNew  As Boolean
       
    dbConnect
       
    For n = 1 To MaxVNC
       
        mySQL = "SELECT * FROM Supertrack.tblVNC"
        mySQL = mySQL & " WHERE ID = " & Format$(n)
                
        rs.CursorType = adOpenKeyset
        rs.LockType = adLockOptimistic
        rs.Source = mySQL
        rs.Open
            
        If Not rs.BOF And Not rs.EOF Then rs.MoveFirst
        
        AddNew = rs.EOF
           
        If AddNew Then rs.AddNew
        rs.Fields("ID") = n
        rs.Fields("Name") = VNCName(n)
        rs.Fields("Cmd") = VNCCmd(n)
            
            
        If AddNew Then rs.Update
        rs.MoveNext
                            
        rs.Close
           
    Next n
            
    dbDisconnect
Exit Sub
ErrorWriteDatabase:
    
    dbDisconnect Err, "VNC WriteDatabase", Err.Description
    Resume Next
End Sub
