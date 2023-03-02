VERSION 5.00
Begin VB.Form PLCStatus 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "JT Systems ADAM / B&R Status"
   ClientHeight    =   5670
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3915
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   5670
   ScaleWidth      =   3915
   Begin VB.PictureBox picIO 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   1400
      Left            =   2625
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   67
      Top             =   6225
      Width           =   165
   End
   Begin VB.PictureBox picIO 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   1300
      Left            =   2625
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   66
      Top             =   5925
      Width           =   165
   End
   Begin VB.PictureBox picOK 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   1
      Left            =   1050
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   65
      Top             =   1950
      Width           =   165
   End
   Begin VB.Frame fraTools 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Tools"
      Height          =   3015
      Left            =   900
      TabIndex        =   7
      Top             =   3075
      Visible         =   0   'False
      Width           =   1965
      Begin VB.PictureBox PicAmberForce 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   165
         Left            =   675
         Picture         =   "PLC.frx":0000
         ScaleHeight     =   165
         ScaleWidth      =   165
         TabIndex        =   61
         Top             =   1050
         Width           =   165
      End
      Begin VB.PictureBox picGreenBlue 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   165
         Left            =   450
         Picture         =   "PLC.frx":01CE
         ScaleHeight     =   165
         ScaleWidth      =   165
         TabIndex        =   15
         Top             =   1275
         Width           =   165
      End
      Begin VB.PictureBox picRedBlue 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   165
         Left            =   75
         Picture         =   "PLC.frx":039C
         ScaleHeight     =   165
         ScaleWidth      =   165
         TabIndex        =   14
         Top             =   1275
         Width           =   165
      End
      Begin VB.Timer tmr1Second 
         Interval        =   250
         Left            =   825
         Top             =   375
      End
      Begin VB.PictureBox picAmber 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   165
         Left            =   525
         Picture         =   "PLC.frx":056A
         ScaleHeight     =   165
         ScaleWidth      =   165
         TabIndex        =   11
         Top             =   1050
         Width           =   165
      End
      Begin VB.PictureBox picRed 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   165
         Left            =   75
         Picture         =   "PLC.frx":0738
         ScaleHeight     =   165
         ScaleWidth      =   165
         TabIndex        =   10
         Top             =   1050
         Width           =   165
      End
      Begin VB.PictureBox picGreen 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   165
         Left            =   300
         Picture         =   "PLC.frx":0906
         ScaleHeight     =   165
         ScaleWidth      =   165
         TabIndex        =   9
         Top             =   825
         Width           =   165
      End
      Begin VB.PictureBox picGrey 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   165
         Left            =   375
         Picture         =   "PLC.frx":0AD4
         ScaleHeight     =   165
         ScaleWidth      =   165
         TabIndex        =   8
         Top             =   1050
         Width           =   165
      End
   End
   Begin VB.PictureBox picOK 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   14
      Left            =   1050
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   58
      Top             =   6225
      Width           =   165
   End
   Begin VB.PictureBox picIO 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   1408
      Left            =   1425
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   57
      Top             =   6225
      Width           =   165
   End
   Begin VB.PictureBox picIO 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   1409
      Left            =   1725
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   56
      Top             =   6225
      Width           =   165
   End
   Begin VB.PictureBox picIO 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   1410
      Left            =   2025
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   55
      Top             =   6225
      Width           =   165
   End
   Begin VB.PictureBox picOK 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   13
      Left            =   1050
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   52
      Top             =   5925
      Width           =   165
   End
   Begin VB.PictureBox picIO 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   1308
      Left            =   1425
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   51
      Top             =   5925
      Width           =   165
   End
   Begin VB.PictureBox picIO 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   1309
      Left            =   1725
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   50
      Top             =   5925
      Width           =   165
   End
   Begin VB.PictureBox picIO 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   1310
      Left            =   2025
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   49
      Top             =   5925
      Width           =   165
   End
   Begin VB.PictureBox picOK 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   12
      Left            =   1050
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   46
      Top             =   5250
      Width           =   165
   End
   Begin VB.PictureBox picOK 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   11
      Left            =   1050
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   43
      Top             =   4950
      Width           =   165
   End
   Begin VB.PictureBox picOK 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   10
      Left            =   1050
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   40
      Top             =   4650
      Width           =   165
   End
   Begin VB.PictureBox picOK 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   9
      Left            =   1050
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   37
      Top             =   4350
      Width           =   165
   End
   Begin VB.PictureBox picOK 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   8
      Left            =   1050
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   34
      Top             =   4050
      Width           =   165
   End
   Begin VB.PictureBox picOK 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   7
      Left            =   1050
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   31
      Top             =   3750
      Width           =   165
   End
   Begin VB.PictureBox picOK 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   6
      Left            =   1050
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   28
      Top             =   3450
      Width           =   165
   End
   Begin VB.PictureBox picOK 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   5
      Left            =   1050
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   25
      Top             =   3150
      Width           =   165
   End
   Begin VB.PictureBox picOK 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   4
      Left            =   1050
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   22
      Top             =   2850
      Width           =   165
   End
   Begin VB.PictureBox picOK 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   3
      Left            =   1050
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   19
      Top             =   2550
      Width           =   165
   End
   Begin VB.PictureBox picOK 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   165
      Index           =   2
      Left            =   1050
      ScaleHeight     =   165
      ScaleWidth      =   165
      TabIndex        =   16
      Top             =   2250
      Width           =   165
   End
   Begin VB.PictureBox picToolbar 
      Height          =   1140
      Left            =   0
      ScaleHeight     =   1080
      ScaleWidth      =   3855
      TabIndex        =   12
      Top             =   0
      Width           =   3915
      Begin VB.CommandButton cmdExit 
         Caption         =   "Exit"
         Height          =   915
         Left            =   2700
         Picture         =   "PLC.frx":0CA2
         Style           =   1  'Graphical
         TabIndex        =   13
         Top             =   75
         Width           =   990
      End
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   150
      ScaleHeight     =   315
      ScaleWidth      =   3690
      TabIndex        =   3
      Top             =   1575
      Width           =   3690
      Begin VB.Label lblGeneral 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "Module"
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
         Height          =   270
         Index           =   35
         Left            =   -15
         TabIndex        =   6
         Top             =   0
         Width           =   765
      End
      Begin VB.Label lblIOName 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Caption         =   "Analog"
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
         Height          =   315
         Index           =   17
         Left            =   2775
         TabIndex        =   5
         Top             =   0
         Width           =   915
      End
      Begin VB.Label lblGeneral 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Caption         =   "OK"
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
         Height          =   315
         Index           =   1
         Left            =   825
         TabIndex        =   4
         Top             =   0
         Width           =   315
      End
   End
   Begin VB.PictureBox Picture4 
      BackColor       =   &H00808080&
      Height          =   3615
      Left            =   900
      ScaleHeight     =   3555
      ScaleWidth      =   1980
      TabIndex        =   62
      Top             =   1875
      Width           =   2040
      Begin VB.PictureBox picIO 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   165
         Index           =   1311
         Left            =   1395
         ScaleHeight     =   165
         ScaleWidth      =   165
         TabIndex        =   64
         Top             =   3645
         Width           =   165
      End
      Begin VB.PictureBox picIO 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   165
         Index           =   1411
         Left            =   1395
         ScaleHeight     =   165
         ScaleWidth      =   165
         TabIndex        =   63
         Top             =   3945
         Width           =   165
      End
   End
   Begin VB.Label lblAnalog 
      Alignment       =   2  'Center
      BackColor       =   &H00808080&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Analog"
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   14
      Left            =   2925
      TabIndex        =   60
      Top             =   6150
      Width           =   915
   End
   Begin VB.Label lblNum 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "14"
      ForeColor       =   &H00800000&
      Height          =   315
      Index           =   14
      Left            =   150
      TabIndex        =   59
      Top             =   6225
      Width           =   765
   End
   Begin VB.Label lblAnalog 
      Alignment       =   2  'Center
      BackColor       =   &H00808080&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Analog"
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   13
      Left            =   2925
      TabIndex        =   54
      Top             =   5850
      Width           =   915
   End
   Begin VB.Label lblNum 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "13"
      ForeColor       =   &H00800000&
      Height          =   315
      Index           =   13
      Left            =   150
      TabIndex        =   53
      Top             =   5925
      Width           =   765
   End
   Begin VB.Label lblAnalog 
      Alignment       =   2  'Center
      BackColor       =   &H00808080&
      Caption         =   "Analog"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   12
      Left            =   2925
      TabIndex        =   48
      Top             =   5175
      Width           =   915
   End
   Begin VB.Label lblNum 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      ForeColor       =   &H00800000&
      Height          =   315
      Index           =   12
      Left            =   150
      TabIndex        =   47
      Top             =   5175
      Width           =   765
   End
   Begin VB.Label lblAnalog 
      Alignment       =   2  'Center
      BackColor       =   &H00808080&
      Caption         =   "Analog"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   11
      Left            =   2925
      TabIndex        =   45
      Top             =   4875
      Width           =   915
   End
   Begin VB.Label lblNum 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      ForeColor       =   &H00800000&
      Height          =   315
      Index           =   11
      Left            =   150
      TabIndex        =   44
      Top             =   4875
      Width           =   765
   End
   Begin VB.Label lblAnalog 
      Alignment       =   2  'Center
      BackColor       =   &H00808080&
      Caption         =   "Analog"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   10
      Left            =   2925
      TabIndex        =   42
      Top             =   4575
      Width           =   915
   End
   Begin VB.Label lblNum 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      ForeColor       =   &H00800000&
      Height          =   315
      Index           =   10
      Left            =   150
      TabIndex        =   41
      Top             =   4575
      Width           =   765
   End
   Begin VB.Label lblAnalog 
      Alignment       =   2  'Center
      BackColor       =   &H00808080&
      Caption         =   "Analog"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   9
      Left            =   2925
      TabIndex        =   39
      Top             =   4275
      Width           =   915
   End
   Begin VB.Label lblNum 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      ForeColor       =   &H00800000&
      Height          =   315
      Index           =   9
      Left            =   150
      TabIndex        =   38
      Top             =   4275
      Width           =   765
   End
   Begin VB.Label lblAnalog 
      Alignment       =   2  'Center
      BackColor       =   &H00808080&
      Caption         =   "Analog"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   8
      Left            =   2925
      TabIndex        =   36
      Top             =   3975
      Width           =   915
   End
   Begin VB.Label lblNum 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      ForeColor       =   &H00800000&
      Height          =   315
      Index           =   8
      Left            =   150
      TabIndex        =   35
      Top             =   3975
      Width           =   765
   End
   Begin VB.Label lblAnalog 
      Alignment       =   2  'Center
      BackColor       =   &H00808080&
      Caption         =   "Analog"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   7
      Left            =   2925
      TabIndex        =   33
      Top             =   3675
      Width           =   915
   End
   Begin VB.Label lblNum 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      ForeColor       =   &H00800000&
      Height          =   315
      Index           =   7
      Left            =   150
      TabIndex        =   32
      Top             =   3675
      Width           =   765
   End
   Begin VB.Label lblAnalog 
      Alignment       =   2  'Center
      BackColor       =   &H00808080&
      Caption         =   "Analog"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   6
      Left            =   2925
      TabIndex        =   30
      Top             =   3375
      Width           =   915
   End
   Begin VB.Label lblNum 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      ForeColor       =   &H00800000&
      Height          =   315
      Index           =   6
      Left            =   150
      TabIndex        =   29
      Top             =   3375
      Width           =   765
   End
   Begin VB.Label lblAnalog 
      Alignment       =   2  'Center
      BackColor       =   &H00808080&
      Caption         =   "Analog"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   5
      Left            =   2925
      TabIndex        =   27
      Top             =   3075
      Width           =   915
   End
   Begin VB.Label lblNum 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      ForeColor       =   &H00800000&
      Height          =   315
      Index           =   5
      Left            =   150
      TabIndex        =   26
      Top             =   3075
      Width           =   765
   End
   Begin VB.Label lblAnalog 
      Alignment       =   2  'Center
      BackColor       =   &H00808080&
      Caption         =   "Analog"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   4
      Left            =   2925
      TabIndex        =   24
      Top             =   2775
      Width           =   915
   End
   Begin VB.Label lblNum 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      ForeColor       =   &H00800000&
      Height          =   315
      Index           =   4
      Left            =   150
      TabIndex        =   23
      Top             =   2775
      Width           =   765
   End
   Begin VB.Label lblAnalog 
      Alignment       =   2  'Center
      BackColor       =   &H00808080&
      Caption         =   "Analog"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   3
      Left            =   2925
      TabIndex        =   21
      Top             =   2475
      Width           =   915
   End
   Begin VB.Label lblNum 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      ForeColor       =   &H00800000&
      Height          =   315
      Index           =   3
      Left            =   150
      TabIndex        =   20
      Top             =   2475
      Width           =   765
   End
   Begin VB.Label lblAnalog 
      Alignment       =   2  'Center
      BackColor       =   &H00808080&
      Caption         =   "Analog"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   2
      Left            =   2925
      TabIndex        =   18
      Top             =   2175
      Width           =   915
   End
   Begin VB.Label lblNum 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      ForeColor       =   &H00800000&
      Height          =   315
      Index           =   2
      Left            =   150
      TabIndex        =   17
      Top             =   2175
      Width           =   765
   End
   Begin VB.Label lblNum 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      ForeColor       =   &H00800000&
      Height          =   315
      Index           =   1
      Left            =   150
      TabIndex        =   2
      Top             =   1875
      Width           =   765
   End
   Begin VB.Label lblGeneral 
      Alignment       =   2  'Center
      BackColor       =   &H00FF8080&
      Caption         =   "4016 Analog - Weighing"
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
      Index           =   2
      Left            =   150
      TabIndex        =   1
      Top             =   1275
      Width           =   3690
   End
   Begin VB.Label lblAnalog 
      Alignment       =   2  'Center
      BackColor       =   &H00808080&
      Caption         =   "Analog"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   1
      Left            =   2925
      TabIndex        =   0
      Top             =   1875
      Width           =   915
   End
End
Attribute VB_Name = "PLCStatus"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdExit_Click()
               
    Unload Me
    
End Sub


Private Sub cmdSearch_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    cmdSearch.ToolTipText = "Search for modules that may of had a problem"
End Sub
Private Sub Form_Activate()
    DisplayStatus
End Sub
Private Sub Form_Load()
         
    On Error GoTo PLCStatusLoad
       
    Me.Top = 1000
    Me.Left = 2000
         
    
         
Exit Sub
PLCStatusLoad:
    ErrorHandler Err, "PLCStatus FormLoad", Err.Description, True
    Resume Next

End Sub

Private Sub lblAnalog_MouseMove(Index As Integer, Button As Integer, Shift As Integer, x As Single, Y As Single)
    lblAnalog(Index).ToolTipText = "Station " & Format$(Index) & " Raw Weight"
End Sub





Private Sub picIO_MouseMove(Index As Integer, Button As Integer, Shift As Integer, x As Single, Y As Single)
        
        Adam = Val(Left$(Format$(Index, "0000"), 2))
        IOBit = Val(Right$(Format$(Index, "0000"), 2))
        
        Select Case IOBit
            
            Case 0
                picIO(Index).ToolTipText = "Station " & Format$(Adam) & " Door Closed"
            Case 8
                picIO(Index).ToolTipText = "Station " & Format$(Adam) & " Red Beacon"
            Case 9
                picIO(Index).ToolTipText = "Station " & Format$(Adam) & " Amber Beacon"
            Case 10
                picIO(Index).ToolTipText = "Station " & Format$(Adam) & " Open Bag"
            Case 11
                picIO(Index).ToolTipText = "Station " & Format$(Adam) & " Open Catch"
                
        End Select
            
End Sub




Private Sub tmr1Second_Timer()
    
    On Error GoTo tmr1SecondError
    
    DisplayStatus
    
Exit Sub
tmr1SecondError:
    ErrorHandler Err, "PLCStatus tmr1second", Err.Description, True
End Sub
Public Sub DisplayStatus()
    
    Dim lbl As Label
    Dim shp As Shape
    Dim pic As PictureBox
               
    'Show any required Analog values
    For Each lbl In lblAnalog()
        lblAnalog(lbl.Index).Caption = Format$(ADAMAnalog(lbl.Index), "00000")
    Next lbl
       
    'Show module connection status
    For Each pic In picOK()
        If ADAMOk(pic.Index) Then
            picOK(pic.Index).Picture = picGreen.Picture
        Else
            picOK(pic.Index).Picture = picRed.Picture
        End If
    Next pic
    
    
    
End Sub



