VERSION 5.00
Begin VB.Form PLCStatus 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "PLCStatus"
   ClientHeight    =   5220
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5100
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   5220
   ScaleWidth      =   5100
   ShowInTaskbar   =   0   'False
   Begin VB.CheckBox chkStations 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Stations"
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
      Height          =   240
      Left            =   75
      TabIndex        =   42
      Top             =   4875
      Width           =   1965
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
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
      Left            =   2550
      ScaleHeight     =   3765
      ScaleWidth      =   315
      TabIndex        =   24
      Top             =   525
      Width           =   315
      Begin VB.Image picOK 
         Height          =   165
         Index           =   32
         Left            =   75
         Picture         =   "PLCStatus.frx":0000
         Top             =   3450
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   31
         Left            =   75
         Picture         =   "PLCStatus.frx":035A
         Top             =   3225
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   30
         Left            =   75
         Picture         =   "PLCStatus.frx":06B4
         Top             =   3000
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   29
         Left            =   75
         Picture         =   "PLCStatus.frx":0A0E
         Top             =   2775
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   28
         Left            =   75
         Picture         =   "PLCStatus.frx":0D68
         Top             =   2550
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   27
         Left            =   75
         Picture         =   "PLCStatus.frx":10C2
         Top             =   2325
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   26
         Left            =   75
         Picture         =   "PLCStatus.frx":141C
         Top             =   2100
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   25
         Left            =   75
         Picture         =   "PLCStatus.frx":1776
         Top             =   1875
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   24
         Left            =   75
         Picture         =   "PLCStatus.frx":1AD0
         Top             =   1650
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   23
         Left            =   75
         Picture         =   "PLCStatus.frx":1E2A
         Top             =   1425
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   22
         Left            =   75
         Picture         =   "PLCStatus.frx":2184
         Top             =   1200
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   21
         Left            =   75
         Picture         =   "PLCStatus.frx":24DE
         Top             =   975
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   20
         Left            =   75
         Picture         =   "PLCStatus.frx":2838
         Top             =   750
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   19
         Left            =   75
         Picture         =   "PLCStatus.frx":2B92
         Top             =   525
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   18
         Left            =   75
         Picture         =   "PLCStatus.frx":2EEC
         Top             =   300
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   17
         Left            =   75
         Picture         =   "PLCStatus.frx":3246
         Top             =   75
         Width           =   165
      End
   End
   Begin VB.CommandButton cmdPrevCard 
      BackColor       =   &H00DBD9D4&
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
      Left            =   1725
      Picture         =   "PLCStatus.frx":35A0
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   4350
      Width           =   765
   End
   Begin VB.CommandButton cmdNextCard 
      BackColor       =   &H00DBD9D4&
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
      Left            =   2550
      Picture         =   "PLCStatus.frx":39E2
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   4350
      Width           =   765
   End
   Begin VB.CommandButton cmdExit 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
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
      Left            =   3825
      TabIndex        =   3
      Top             =   4800
      Width           =   1215
   End
   Begin VB.Frame fraTools 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Tools"
      Height          =   1515
      Left            =   1650
      TabIndex        =   2
      Top             =   4950
      Visible         =   0   'False
      Width           =   1965
      Begin VB.Timer tmrUpdate 
         Interval        =   100
         Left            =   825
         Top             =   375
      End
      Begin VB.Image picRed 
         Height          =   165
         Left            =   300
         Picture         =   "PLCStatus.frx":3E24
         Top             =   975
         Width           =   165
      End
      Begin VB.Image picGreen 
         Height          =   165
         Left            =   300
         Picture         =   "PLCStatus.frx":417E
         Top             =   225
         Width           =   165
      End
      Begin VB.Image picGrey 
         Height          =   165
         Left            =   300
         Picture         =   "PLCStatus.frx":44D8
         Top             =   450
         Width           =   165
      End
      Begin VB.Image picAmber 
         Height          =   165
         Left            =   300
         Picture         =   "PLCStatus.frx":4832
         Top             =   675
         Width           =   165
      End
   End
   Begin VB.ComboBox cmbPLC 
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
      Height          =   330
      IntegralHeight  =   0   'False
      Left            =   75
      TabIndex        =   0
      Text            =   "cmbPLC"
      Top             =   75
      Visible         =   0   'False
      Width           =   4965
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
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
      Left            =   75
      ScaleHeight     =   3765
      ScaleWidth      =   315
      TabIndex        =   5
      Top             =   525
      Width           =   315
      Begin VB.Image picOK 
         Height          =   165
         Index           =   16
         Left            =   75
         Picture         =   "PLCStatus.frx":4B8C
         Top             =   3450
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   15
         Left            =   75
         Picture         =   "PLCStatus.frx":4EE6
         Top             =   3225
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   14
         Left            =   75
         Picture         =   "PLCStatus.frx":5240
         Top             =   3000
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   13
         Left            =   75
         Picture         =   "PLCStatus.frx":559A
         Top             =   2775
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   12
         Left            =   75
         Picture         =   "PLCStatus.frx":58F4
         Top             =   2550
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   11
         Left            =   75
         Picture         =   "PLCStatus.frx":5C4E
         Top             =   2325
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   10
         Left            =   75
         Picture         =   "PLCStatus.frx":5FA8
         Top             =   2100
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   9
         Left            =   75
         Picture         =   "PLCStatus.frx":6302
         Top             =   1875
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   8
         Left            =   75
         Picture         =   "PLCStatus.frx":665C
         Top             =   1650
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   7
         Left            =   75
         Picture         =   "PLCStatus.frx":69B6
         Top             =   1425
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   6
         Left            =   75
         Picture         =   "PLCStatus.frx":6D10
         Top             =   1200
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   5
         Left            =   75
         Picture         =   "PLCStatus.frx":706A
         Top             =   975
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   4
         Left            =   75
         Picture         =   "PLCStatus.frx":73C4
         Top             =   750
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   3
         Left            =   75
         Picture         =   "PLCStatus.frx":771E
         Top             =   525
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   2
         Left            =   75
         Picture         =   "PLCStatus.frx":7A78
         Top             =   300
         Width           =   165
      End
      Begin VB.Image picOK 
         Height          =   165
         Index           =   1
         Left            =   75
         Picture         =   "PLCStatus.frx":7DD2
         Top             =   75
         Width           =   165
      End
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   32
      Left            =   2925
      TabIndex        =   40
      Top             =   3975
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   31
      Left            =   2925
      TabIndex        =   39
      Top             =   3750
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   30
      Left            =   2925
      TabIndex        =   38
      Top             =   3525
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   29
      Left            =   2925
      TabIndex        =   37
      Top             =   3300
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   28
      Left            =   2925
      TabIndex        =   36
      Top             =   3075
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   27
      Left            =   2925
      TabIndex        =   35
      Top             =   2850
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   26
      Left            =   2925
      TabIndex        =   34
      Top             =   2625
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   25
      Left            =   2925
      TabIndex        =   33
      Top             =   2400
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   24
      Left            =   2925
      TabIndex        =   32
      Top             =   2175
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   23
      Left            =   2925
      TabIndex        =   31
      Top             =   1950
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   22
      Left            =   2925
      TabIndex        =   30
      Top             =   1725
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   21
      Left            =   2925
      TabIndex        =   29
      Top             =   1500
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   20
      Left            =   2925
      TabIndex        =   28
      Top             =   1275
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   19
      Left            =   2925
      TabIndex        =   27
      Top             =   1050
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   18
      Left            =   2925
      TabIndex        =   26
      Top             =   825
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   17
      Left            =   2925
      TabIndex        =   25
      Top             =   600
      Width           =   2040
   End
   Begin VB.Image picOK 
      Height          =   165
      Index           =   0
      Left            =   8625
      Picture         =   "PLCStatus.frx":812C
      Top             =   1425
      Width           =   165
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   16
      Left            =   450
      TabIndex        =   22
      Top             =   3975
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   15
      Left            =   450
      TabIndex        =   21
      Top             =   3750
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   14
      Left            =   450
      TabIndex        =   20
      Top             =   3525
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   13
      Left            =   450
      TabIndex        =   19
      Top             =   3300
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   12
      Left            =   450
      TabIndex        =   18
      Top             =   3075
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   11
      Left            =   450
      TabIndex        =   17
      Top             =   2850
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   10
      Left            =   450
      TabIndex        =   16
      Top             =   2625
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   9
      Left            =   450
      TabIndex        =   15
      Top             =   2400
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   8
      Left            =   450
      TabIndex        =   14
      Top             =   2175
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   7
      Left            =   450
      TabIndex        =   13
      Top             =   1950
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   6
      Left            =   450
      TabIndex        =   12
      Top             =   1725
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   5
      Left            =   450
      TabIndex        =   11
      Top             =   1500
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   4
      Left            =   450
      TabIndex        =   10
      Top             =   1275
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   3
      Left            =   450
      TabIndex        =   9
      Top             =   1050
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   2
      Left            =   450
      TabIndex        =   8
      Top             =   825
      Width           =   2040
   End
   Begin VB.Label lblNum 
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
      ForeColor       =   &H00000000&
      Height          =   240
      Index           =   1
      Left            =   450
      TabIndex        =   4
      Top             =   600
      Width           =   2040
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
      ForeColor       =   &H00000000&
      Height          =   330
      Left            =   75
      TabIndex        =   1
      Top             =   75
      Width           =   4965
   End
   Begin VB.Label lbl1 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   3765
      Left            =   375
      TabIndex        =   23
      Top             =   525
      Width           =   2190
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   3765
      Left            =   2850
      TabIndex        =   41
      Top             =   525
      Width           =   2190
   End
End
Attribute VB_Name = "PLCStatus"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim PLCStn          As Integer
Dim ScrollValue     As Integer

Dim ShowStations    As Boolean

Const ScrollAmount = 16

Private Sub chkStations_Click()
    ShowStations = chkStations.Value
    ScrollValue = 0
    Update
End Sub

Private Sub cmdExit_Click()
    
    On Error Resume Next
    Unload Me
    
End Sub
Private Sub cmdNextCard_Click()
    
    cmbPLC.Visible = False
    
    Dim LastModuleVisiable As Boolean
    If ShowStations Then
        LastModuleVisiable = ((32 + ScrollValue) < 4) 'was MaxStations
    Else
        LastModuleVisiable = ((32 + ScrollValue) < MaxPLCCards)
    End If
    
    If LastModuleVisiable Then ScrollValue = ScrollValue + 16
    
    Update

End Sub

Private Sub cmdPrevCard_Click()
    
    cmbPLC.Visible = False
    If ScrollValue > 0 Then ScrollValue = ScrollValue - 16
    If ScrollValue < 0 Then ScrollValue = 0 'Ensure valid
    Update

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
        
    CenterForm Me
    Me.Top = 500
    
    SetLanguage
        
    'Align each I/O picOK
    For Each pic In picOK()
        picOK(pic.Index).Top = picOK(pic.Index).Top + 37
    Next pic
        
    'cmdPrevCard.Top = cmdPrevCard.Top + 37
    'cmdNextCard.Top = cmdNextCard.Top + 37
                
    PLCStn = 0
    
    LoadPLCs
    
    lblPLC.Caption = " " & Format$(PLCStn, "#0") & " -  " & PLCName(PLCStn)
           
    ShowStations = False
           
End Sub


Private Sub cmbPLC_Click()
       
    PLCStn = cmbPLC.ItemData(cmbPLC.ListIndex)
    lblPLC.Caption = cmbPLC.Text
    cmbPLC.Visible = False
        
End Sub
Private Sub LoadPLCs()
    
    
    Dim PLC As Integer
        
    For PLC = 0 To UsedPLC
        cmbPLC.AddItem " " & Format$(PLC, "#0") & " -  " & PLCName(PLC)
        cmbPLC.ItemData(cmbPLC.NewIndex) = PLC
    Next PLC
   

End Sub

Private Sub Form_LostFocus()
    If AccessLevel < accEngineer Then Unload Me
End Sub
Private Sub lblPLC_Click()
    cmbPLC.Text = lblPLC.Caption
    cmbPLC.Visible = True
    
End Sub

Public Sub Update()
    
    'Update display
        
    Dim ModuleInUse As Boolean
    
    For n = 1 To 32
        If Not ShowStations Then
            ModuleInUse = ((n + ScrollValue) <= MaxPLCCards) And PLCCardUsed(n + ScrollValue, PLCStn)
            If PLCIOStatus(n + ScrollValue, PLCStn) Then
                picOK(n).Picture = picGreen.Picture
                lblNum(n).Caption = Format(n + ScrollValue) & " " & TextWord(641)
            Else
                If ModuleInUse Then
                    picOK(n).Picture = picRed.Picture
                    lblNum(n).Caption = Format(n + ScrollValue) & " " & TextWord(341)
                Else
                    picOK(n).Picture = picGrey.Picture
                    lblNum(n).Caption = Format(n + ScrollValue)
                End If
                
            End If
        Else
            ModuleInUse = ((n + ScrollValue) <= 4) 'was MaxStations
            If PLCStnStatus(n + ScrollValue, PLCStn) Then
                picOK(n).Picture = picGreen.Picture 'picAmber.Picture
                lblNum(n).Caption = Format(n + ScrollValue) & " " & TextWord(641)
            Else
                If ModuleInUse Then
                    picOK(n).Picture = picRed.Picture
                    lblNum(n).Caption = Format(n + ScrollValue) & " " & TextWord(341)
                Else
                    picOK(n).Picture = picGrey.Picture
                    lblNum(n).Caption = Format(n + ScrollValue)
                End If
                
            End If
        End If
    Next n
     
       
End Sub

Private Sub SetLanguage()

    cmdExit.Caption = TextWord(309)
    Me.Caption = TextWord(640)
    Me.chkStations.Caption = TextWord(534)
End Sub


Private Sub tmrUpdate_Timer()
    Call Update
End Sub

