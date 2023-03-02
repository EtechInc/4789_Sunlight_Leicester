VERSION 5.00
Begin VB.Form Options_rb 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Robo Options"
   ClientHeight    =   8760
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   14445
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   8760
   ScaleWidth      =   14445
   ShowInTaskbar   =   0   'False
   Begin VB.Frame Frame1 
      Caption         =   "Hidden"
      Height          =   6840
      Left            =   8700
      TabIndex        =   7
      Top             =   7740
      Visible         =   0   'False
      Width           =   10770
      Begin VB.Image picRoboRotate 
         BorderStyle     =   1  'Fixed Single
         Height          =   7110
         Left            =   4800
         Picture         =   "Options_rb.frx":0000
         Top             =   600
         Visible         =   0   'False
         Width           =   5880
      End
      Begin VB.Image picRoboLift 
         BorderStyle     =   1  'Fixed Single
         Height          =   7110
         Left            =   1200
         Picture         =   "Options_rb.frx":1685A
         Top             =   120
         Visible         =   0   'False
         Width           =   4365
      End
      Begin VB.Image picRoboLiftRotate 
         BorderStyle     =   1  'Fixed Single
         Height          =   7110
         Left            =   1575
         Picture         =   "Options_rb.frx":79ADC
         Top             =   4875
         Visible         =   0   'False
         Width           =   5880
      End
      Begin VB.Image picMoveDisabled 
         Height          =   315
         Left            =   900
         Picture         =   "Options_rb.frx":90336
         Top             =   975
         Width           =   315
      End
      Begin VB.Image picCopyDisabled 
         Height          =   315
         Left            =   1350
         Picture         =   "Options_rb.frx":908B8
         Top             =   975
         Width           =   315
      End
      Begin VB.Image picTuneDisabled 
         Height          =   315
         Left            =   1800
         Picture         =   "Options_rb.frx":90E3A
         Top             =   975
         Width           =   315
      End
      Begin VB.Image picSeqDisabled 
         Height          =   315
         Left            =   2250
         Picture         =   "Options_rb.frx":913BC
         Top             =   975
         Width           =   315
      End
      Begin VB.Image picSeqHighlight 
         Height          =   315
         Left            =   2250
         Picture         =   "Options_rb.frx":9193E
         Top             =   525
         Width           =   315
      End
      Begin VB.Image picTuneHighlight 
         Height          =   315
         Left            =   1800
         Picture         =   "Options_rb.frx":91EC0
         Top             =   525
         Width           =   315
      End
      Begin VB.Image picCopyHighlight 
         Height          =   315
         Left            =   1350
         Picture         =   "Options_rb.frx":92442
         Top             =   525
         Width           =   315
      End
      Begin VB.Image picMoveHighlight 
         Height          =   315
         Left            =   900
         Picture         =   "Options_rb.frx":929C4
         Top             =   525
         Width           =   315
      End
      Begin VB.Image picSeqNormal 
         Height          =   315
         Left            =   2250
         Picture         =   "Options_rb.frx":92F46
         Top             =   150
         Width           =   315
      End
      Begin VB.Image picTuneNormal 
         Height          =   315
         Left            =   1800
         Picture         =   "Options_rb.frx":934C8
         Top             =   150
         Width           =   315
      End
      Begin VB.Image picCopyNormal 
         Height          =   315
         Left            =   1350
         Picture         =   "Options_rb.frx":93A4A
         Top             =   150
         Width           =   315
      End
      Begin VB.Image picMoveNormal 
         Height          =   315
         Left            =   900
         Picture         =   "Options_rb.frx":93FCC
         Top             =   150
         Width           =   315
      End
      Begin VB.Image Image2 
         Enabled         =   0   'False
         Height          =   480
         Left            =   675
         Picture         =   "Options_rb.frx":9454E
         Top             =   1500
         Width           =   480
      End
      Begin VB.Image Image3 
         Height          =   480
         Left            =   1500
         Picture         =   "Options_rb.frx":94990
         Top             =   1500
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Left            =   2325
         Picture         =   "Options_rb.frx":94DD2
         Top             =   1500
         Width           =   480
      End
      Begin VB.Image Image5 
         Height          =   480
         Left            =   3150
         Picture         =   "Options_rb.frx":95214
         Top             =   1500
         Width           =   480
      End
      Begin VB.Image Image1 
         Appearance      =   0  'Flat
         Height          =   465
         Left            =   150
         Picture         =   "Options_rb.frx":95656
         Top             =   1500
         Width           =   465
      End
      Begin VB.Image picLampAmber 
         Height          =   165
         Left            =   150
         Picture         =   "Options_rb.frx":96238
         Top             =   225
         Width           =   165
      End
      Begin VB.Image picLampGreen 
         Height          =   165
         Left            =   150
         Picture         =   "Options_rb.frx":96592
         Top             =   450
         Width           =   165
      End
      Begin VB.Image picLampGrey 
         Height          =   165
         Left            =   375
         Picture         =   "Options_rb.frx":968EC
         Top             =   225
         Width           =   165
      End
      Begin VB.Image picLampRed 
         Height          =   165
         Left            =   375
         Picture         =   "Options_rb.frx":96C46
         Top             =   450
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
      Left            =   1125
      TabIndex        =   60
      Text            =   "cmbPLC"
      Top             =   300
      Visible         =   0   'False
      Width           =   4965
   End
   Begin VB.TextBox lblRotCurrentPosition 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
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
      Height          =   360
      Left            =   5700
      TabIndex        =   59
      Text            =   "360.00°"
      Top             =   3000
      Width           =   1290
   End
   Begin VB.TextBox lblRotateMonitor 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
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
      Height          =   360
      Left            =   5700
      TabIndex        =   58
      Text            =   "360.00°"
      Top             =   2625
      Visible         =   0   'False
      Width           =   1290
   End
   Begin VB.TextBox lblRotSeqStep 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
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
      Height          =   360
      Left            =   5700
      TabIndex        =   57
      Text            =   "360.00°"
      Top             =   2250
      Width           =   1290
   End
   Begin VB.TextBox lblLiftCurrentPosition 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
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
      Height          =   360
      Left            =   4350
      TabIndex        =   56
      Text            =   "99999.9mm"
      Top             =   3000
      Width           =   1290
   End
   Begin VB.TextBox lblLiftMonitor 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
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
      Height          =   360
      Left            =   4350
      TabIndex        =   55
      Text            =   "99999.9mm"
      Top             =   2625
      Visible         =   0   'False
      Width           =   1290
   End
   Begin VB.TextBox lblLiftSeqStep 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
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
      Height          =   360
      Left            =   4350
      TabIndex        =   54
      Text            =   "99999.9mm"
      Top             =   2250
      Width           =   1290
   End
   Begin VB.TextBox lblCycleCount 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
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
      Height          =   360
      Left            =   4350
      TabIndex        =   53
      Text            =   "Cycles"
      Top             =   1275
      Width           =   2640
   End
   Begin VB.TextBox lblPosition 
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Index           =   9
      Left            =   225
      TabIndex        =   52
      Text            =   "Position 1"
      Top             =   7125
      Width           =   4065
   End
   Begin VB.TextBox lblPosition 
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Index           =   8
      Left            =   225
      TabIndex        =   51
      Text            =   "Position 1"
      Top             =   6750
      Width           =   4065
   End
   Begin VB.TextBox lblPosition 
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Index           =   7
      Left            =   225
      TabIndex        =   50
      Text            =   "Position 1"
      Top             =   6375
      Width           =   4065
   End
   Begin VB.TextBox lblPosition 
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Index           =   6
      Left            =   225
      TabIndex        =   49
      Text            =   "Position 1"
      Top             =   6000
      Width           =   4065
   End
   Begin VB.TextBox lblPosition 
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Index           =   5
      Left            =   225
      TabIndex        =   48
      Text            =   "Position 1"
      Top             =   5625
      Width           =   4065
   End
   Begin VB.TextBox lblPosition 
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Index           =   4
      Left            =   225
      TabIndex        =   47
      Text            =   "Position 1"
      Top             =   5250
      Width           =   4065
   End
   Begin VB.TextBox lblPosition 
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Index           =   3
      Left            =   225
      TabIndex        =   46
      Text            =   "Position 1"
      Top             =   4875
      Width           =   4065
   End
   Begin VB.TextBox lblPosition 
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Index           =   2
      Left            =   225
      TabIndex        =   45
      Text            =   "Position 1"
      Top             =   4500
      Width           =   4065
   End
   Begin VB.TextBox lblPosition 
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Index           =   1
      Left            =   225
      TabIndex        =   44
      Text            =   "Position 1"
      Top             =   4125
      Width           =   4065
   End
   Begin VB.TextBox lblRefPosition 
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Left            =   225
      TabIndex        =   43
      Text            =   "Reference Position"
      Top             =   3750
      Width           =   4065
   End
   Begin VB.TextBox lblMaxSpeed 
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Left            =   225
      TabIndex        =   42
      Text            =   "Max Speed"
      Top             =   3375
      Width           =   4065
   End
   Begin VB.TextBox lblCurrentPosition 
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Left            =   225
      TabIndex        =   41
      Text            =   "Current Position"
      Top             =   3000
      Width           =   4065
   End
   Begin VB.TextBox lblMonitor 
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Left            =   225
      TabIndex        =   40
      Text            =   "Monitor"
      Top             =   2625
      Visible         =   0   'False
      Width           =   4065
   End
   Begin VB.TextBox lblSeqStep 
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Left            =   225
      TabIndex        =   39
      Text            =   "Drive Step"
      Top             =   2250
      Width           =   4065
   End
   Begin VB.TextBox lblRotate 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Left            =   5700
      TabIndex        =   38
      Text            =   "Rotate"
      Top             =   1650
      Width           =   1290
   End
   Begin VB.TextBox lblLift 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Left            =   4350
      TabIndex        =   37
      Text            =   "Lift"
      Top             =   1650
      Width           =   1290
   End
   Begin VB.TextBox Label3 
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Left            =   225
      TabIndex        =   36
      Top             =   1650
      Width           =   4065
   End
   Begin VB.TextBox lblCycles 
      BackColor       =   &H00D2A03C&
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
      Height          =   360
      Left            =   225
      TabIndex        =   35
      Text            =   "Cycles"
      Top             =   1275
      Width           =   4065
   End
   Begin VB.ComboBox cmbRB 
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
      Left            =   1125
      TabIndex        =   34
      Text            =   "cmbRB"
      Top             =   675
      Visible         =   0   'False
      Width           =   4965
   End
   Begin VB.TextBox lblRB 
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
      Left            =   1125
      TabIndex        =   33
      Text            =   "lblPLC"
      Top             =   675
      Width           =   4965
   End
   Begin VB.TextBox lblPLC 
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
      Left            =   1125
      TabIndex        =   32
      Text            =   "lblPLC"
      Top             =   300
      Width           =   4965
   End
   Begin VB.CheckBox chkEdit 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Edit"
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
      Left            =   4350
      TabIndex        =   31
      Top             =   7575
      Width           =   2640
   End
   Begin VB.TextBox txtRotMaxSpeed 
      Alignment       =   2  'Center
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
      Height          =   360
      Left            =   5700
      TabIndex        =   30
      Text            =   "1000"
      Top             =   3375
      Width           =   1290
   End
   Begin VB.TextBox txtRotRefPosition 
      Alignment       =   2  'Center
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
      Height          =   360
      Left            =   5700
      TabIndex        =   29
      Text            =   "10000.1"
      Top             =   3750
      Width           =   1290
   End
   Begin VB.TextBox txtRotPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   9
      Left            =   5700
      TabIndex        =   28
      Text            =   "10000.1"
      Top             =   7125
      Width           =   1290
   End
   Begin VB.TextBox txtLiftPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   9
      Left            =   4350
      TabIndex        =   27
      Text            =   "10000.1"
      Top             =   7125
      Width           =   1290
   End
   Begin VB.TextBox txtRotPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   8
      Left            =   5700
      TabIndex        =   26
      Text            =   "10000.1"
      Top             =   6750
      Width           =   1290
   End
   Begin VB.TextBox txtLiftPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   8
      Left            =   4350
      TabIndex        =   25
      Text            =   "10000.1"
      Top             =   6750
      Width           =   1290
   End
   Begin VB.TextBox txtRotPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   7
      Left            =   5700
      TabIndex        =   24
      Text            =   "10000.1"
      Top             =   6375
      Width           =   1290
   End
   Begin VB.TextBox txtLiftPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   7
      Left            =   4350
      TabIndex        =   23
      Text            =   "10000.1"
      Top             =   6375
      Width           =   1290
   End
   Begin VB.TextBox txtRotPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   6
      Left            =   5700
      TabIndex        =   22
      Text            =   "10000.1"
      Top             =   6000
      Width           =   1290
   End
   Begin VB.TextBox txtLiftPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   6
      Left            =   4350
      TabIndex        =   21
      Text            =   "10000.1"
      Top             =   6000
      Width           =   1290
   End
   Begin VB.TextBox txtRotPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   5
      Left            =   5700
      TabIndex        =   20
      Text            =   "10000.1"
      Top             =   5625
      Width           =   1290
   End
   Begin VB.TextBox txtLiftPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   5
      Left            =   4350
      TabIndex        =   19
      Text            =   "10000.1"
      Top             =   5625
      Width           =   1290
   End
   Begin VB.TextBox txtRotPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   4
      Left            =   5700
      TabIndex        =   18
      Text            =   "10000.1"
      Top             =   5250
      Width           =   1290
   End
   Begin VB.TextBox txtLiftPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   4
      Left            =   4350
      TabIndex        =   17
      Text            =   "10000.1"
      Top             =   5250
      Width           =   1290
   End
   Begin VB.TextBox txtRotPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   3
      Left            =   5700
      TabIndex        =   16
      Text            =   "10000.1"
      Top             =   4875
      Width           =   1290
   End
   Begin VB.TextBox txtLiftPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   3
      Left            =   4350
      TabIndex        =   15
      Text            =   "10000.1"
      Top             =   4875
      Width           =   1290
   End
   Begin VB.TextBox txtRotPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   2
      Left            =   5700
      TabIndex        =   14
      Text            =   "10000.1"
      Top             =   4500
      Width           =   1290
   End
   Begin VB.TextBox txtLiftPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   2
      Left            =   4350
      TabIndex        =   13
      Text            =   "10000.1"
      Top             =   4500
      Width           =   1290
   End
   Begin VB.TextBox txtRotPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   1
      Left            =   5700
      TabIndex        =   12
      Text            =   "10000.1"
      Top             =   4125
      Width           =   1290
   End
   Begin VB.TextBox txtLiftPos 
      Alignment       =   2  'Center
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
      Height          =   360
      Index           =   1
      Left            =   4350
      TabIndex        =   11
      Text            =   "10000.1"
      Top             =   4125
      Width           =   1290
   End
   Begin VB.TextBox txtLiftMaxSpeed 
      Alignment       =   2  'Center
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
      Height          =   360
      Left            =   4350
      TabIndex        =   10
      Text            =   "1000"
      Top             =   3375
      Width           =   1290
   End
   Begin VB.TextBox txtLiftRefPosition 
      Alignment       =   2  'Center
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
      Height          =   360
      Left            =   4350
      TabIndex        =   9
      Text            =   "10000.1"
      Top             =   3750
      Width           =   1290
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
      TabIndex        =   8
      Text            =   "txtHidden"
      Top             =   0
      Width           =   2340
   End
   Begin VB.Timer tmrWritePLC 
      Interval        =   300
      Left            =   -150
      Top             =   7950
   End
   Begin VB.CommandButton cmdReference 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Ref."
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   690
      Left            =   1875
      Picture         =   "Options_rb.frx":96FA0
      TabIndex        =   6
      Top             =   7950
      Width           =   765
   End
   Begin VB.CommandButton cmdManualMove 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Up"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   690
      Index           =   1
      Left            =   4050
      Picture         =   "Options_rb.frx":970B7
      TabIndex        =   5
      Top             =   7950
      Width           =   765
   End
   Begin VB.CommandButton cmdManualMove 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Down"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   690
      Index           =   2
      Left            =   4875
      Picture         =   "Options_rb.frx":974F9
      TabIndex        =   4
      Top             =   7950
      Width           =   765
   End
   Begin VB.CommandButton cmdManualMove 
      BackColor       =   &H00DBD9D4&
      Caption         =   "CW"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   690
      Index           =   4
      Left            =   6600
      Picture         =   "Options_rb.frx":9793B
      TabIndex        =   3
      Top             =   7950
      Width           =   765
   End
   Begin VB.CommandButton cmdManualMove 
      BackColor       =   &H00DBD9D4&
      Caption         =   "CCW"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   690
      Index           =   3
      Left            =   5775
      Picture         =   "Options_rb.frx":97D7D
      TabIndex        =   2
      Top             =   7950
      Width           =   765
   End
   Begin VB.Timer tmrUpdate 
      Interval        =   250
      Left            =   -150
      Top             =   8400
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
      Left            =   13050
      TabIndex        =   1
      Top             =   7800
      Width           =   1215
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
      Left            =   13050
      TabIndex        =   0
      Top             =   8250
      Width           =   1215
   End
   Begin VB.Image picRobo 
      BorderStyle     =   1  'Fixed Single
      Height          =   7110
      Left            =   8400
      Picture         =   "Options_rb.frx":981BF
      Top             =   300
      Width           =   5880
   End
   Begin VB.Image cmdSequence 
      Height          =   315
      Left            =   6150
      Picture         =   "Options_rb.frx":AEA19
      Top             =   675
      Width           =   315
   End
   Begin VB.Image cmdCopyPosn 
      Height          =   315
      Index           =   9
      Left            =   7500
      Picture         =   "Options_rb.frx":AEF9B
      Top             =   7125
      Width           =   315
   End
   Begin VB.Image cmdCopyPosn 
      Height          =   315
      Index           =   8
      Left            =   7500
      Picture         =   "Options_rb.frx":AF51D
      Top             =   6750
      Width           =   315
   End
   Begin VB.Image cmdCopyPosn 
      Height          =   315
      Index           =   7
      Left            =   7500
      Picture         =   "Options_rb.frx":AFA9F
      Top             =   6375
      Width           =   315
   End
   Begin VB.Image cmdCopyPosn 
      Height          =   315
      Index           =   6
      Left            =   7500
      Picture         =   "Options_rb.frx":B0021
      Top             =   6000
      Width           =   315
   End
   Begin VB.Image cmdCopyPosn 
      Height          =   315
      Index           =   5
      Left            =   7500
      Picture         =   "Options_rb.frx":B05A3
      Top             =   5625
      Width           =   315
   End
   Begin VB.Image cmdCopyPosn 
      Height          =   315
      Index           =   4
      Left            =   7500
      Picture         =   "Options_rb.frx":B0B25
      Top             =   5250
      Width           =   315
   End
   Begin VB.Image cmdCopyPosn 
      Height          =   315
      Index           =   3
      Left            =   7500
      Picture         =   "Options_rb.frx":B10A7
      Top             =   4875
      Width           =   315
   End
   Begin VB.Image cmdCopyPosn 
      Height          =   315
      Index           =   2
      Left            =   7500
      Picture         =   "Options_rb.frx":B1629
      Top             =   4500
      Width           =   315
   End
   Begin VB.Image cmdCopyPosn 
      Height          =   315
      Index           =   1
      Left            =   7500
      Picture         =   "Options_rb.frx":B1BAB
      Top             =   4125
      Width           =   315
   End
   Begin VB.Image cmdCopyPosn 
      Height          =   315
      Index           =   100
      Left            =   7500
      Picture         =   "Options_rb.frx":B212D
      Top             =   3750
      Width           =   315
   End
   Begin VB.Image cmdMovePosn 
      Height          =   315
      Index           =   9
      Left            =   7125
      Picture         =   "Options_rb.frx":B26AF
      Top             =   7125
      Width           =   315
   End
   Begin VB.Image cmdTunePosn 
      Height          =   315
      Index           =   9
      Left            =   7875
      Picture         =   "Options_rb.frx":B2C31
      Top             =   7125
      Width           =   315
   End
   Begin VB.Image cmdMovePosn 
      Height          =   315
      Index           =   8
      Left            =   7125
      Picture         =   "Options_rb.frx":B31B3
      Top             =   6750
      Width           =   315
   End
   Begin VB.Image cmdTunePosn 
      Height          =   315
      Index           =   8
      Left            =   7875
      Picture         =   "Options_rb.frx":B3735
      Top             =   6750
      Width           =   315
   End
   Begin VB.Image cmdMovePosn 
      Height          =   315
      Index           =   7
      Left            =   7125
      Picture         =   "Options_rb.frx":B3CB7
      Top             =   6375
      Width           =   315
   End
   Begin VB.Image cmdTunePosn 
      Height          =   315
      Index           =   7
      Left            =   7875
      Picture         =   "Options_rb.frx":B4239
      Top             =   6375
      Width           =   315
   End
   Begin VB.Image cmdMovePosn 
      Height          =   315
      Index           =   6
      Left            =   7125
      Picture         =   "Options_rb.frx":B47BB
      Top             =   6000
      Width           =   315
   End
   Begin VB.Image cmdTunePosn 
      Height          =   315
      Index           =   6
      Left            =   7875
      Picture         =   "Options_rb.frx":B4D3D
      Top             =   6000
      Width           =   315
   End
   Begin VB.Image cmdMovePosn 
      Height          =   315
      Index           =   5
      Left            =   7125
      Picture         =   "Options_rb.frx":B52BF
      Top             =   5625
      Width           =   315
   End
   Begin VB.Image cmdTunePosn 
      Height          =   315
      Index           =   5
      Left            =   7875
      Picture         =   "Options_rb.frx":B5841
      Top             =   5625
      Width           =   315
   End
   Begin VB.Image cmdMovePosn 
      Height          =   315
      Index           =   4
      Left            =   7125
      Picture         =   "Options_rb.frx":B5DC3
      Top             =   5250
      Width           =   315
   End
   Begin VB.Image cmdTunePosn 
      Height          =   315
      Index           =   4
      Left            =   7875
      Picture         =   "Options_rb.frx":B6345
      Top             =   5250
      Width           =   315
   End
   Begin VB.Image cmdMovePosn 
      Height          =   315
      Index           =   3
      Left            =   7125
      Picture         =   "Options_rb.frx":B68C7
      Top             =   4875
      Width           =   315
   End
   Begin VB.Image cmdTunePosn 
      Height          =   315
      Index           =   3
      Left            =   7875
      Picture         =   "Options_rb.frx":B6E49
      Top             =   4875
      Width           =   315
   End
   Begin VB.Image cmdMovePosn 
      Height          =   315
      Index           =   2
      Left            =   7125
      Picture         =   "Options_rb.frx":B73CB
      Top             =   4500
      Width           =   315
   End
   Begin VB.Image cmdTunePosn 
      Height          =   315
      Index           =   2
      Left            =   7875
      Picture         =   "Options_rb.frx":B794D
      Top             =   4500
      Width           =   315
   End
   Begin VB.Image cmdMovePosn 
      Height          =   315
      Index           =   1
      Left            =   7125
      Picture         =   "Options_rb.frx":B7ECF
      Top             =   4125
      Width           =   315
   End
   Begin VB.Image cmdTunePosn 
      Height          =   315
      Index           =   1
      Left            =   7875
      Picture         =   "Options_rb.frx":B8451
      Top             =   4125
      Width           =   315
   End
   Begin VB.Image cmdMovePosn 
      Height          =   315
      Index           =   100
      Left            =   7125
      Picture         =   "Options_rb.frx":B89D3
      Top             =   3750
      Width           =   315
   End
   Begin VB.Image cmdTunePosn 
      Height          =   315
      Index           =   100
      Left            =   7875
      Picture         =   "Options_rb.frx":B8F55
      Top             =   3750
      Width           =   315
   End
   Begin VB.Image picRotateIOStatus 
      Height          =   165
      Index           =   4
      Left            =   6750
      Picture         =   "Options_rb.frx":B94D7
      Top             =   2025
      Visible         =   0   'False
      Width           =   165
   End
   Begin VB.Image picRotateIOStatus 
      Height          =   165
      Index           =   3
      Left            =   6525
      Picture         =   "Options_rb.frx":B9831
      Top             =   2025
      Visible         =   0   'False
      Width           =   165
   End
   Begin VB.Image picRotateIOStatus 
      Height          =   165
      Index           =   2
      Left            =   6225
      Picture         =   "Options_rb.frx":B9B8B
      Top             =   2025
      Visible         =   0   'False
      Width           =   165
   End
   Begin VB.Image picRotateIOStatus 
      Height          =   165
      Index           =   1
      Left            =   6000
      Picture         =   "Options_rb.frx":B9EE5
      Top             =   2025
      Visible         =   0   'False
      Width           =   165
   End
   Begin VB.Image picRotateIOStatus 
      Height          =   165
      Index           =   0
      Left            =   5775
      Picture         =   "Options_rb.frx":BA23F
      Top             =   2025
      Visible         =   0   'False
      Width           =   165
   End
   Begin VB.Image picLiftIOStatus 
      Height          =   165
      Index           =   4
      Left            =   5400
      Picture         =   "Options_rb.frx":BA599
      Top             =   2025
      Visible         =   0   'False
      Width           =   165
   End
   Begin VB.Image picLiftIOStatus 
      Height          =   165
      Index           =   3
      Left            =   5175
      Picture         =   "Options_rb.frx":BA8F3
      Top             =   2025
      Visible         =   0   'False
      Width           =   165
   End
   Begin VB.Image picLiftIOStatus 
      Height          =   165
      Index           =   2
      Left            =   4800
      Picture         =   "Options_rb.frx":BAC4D
      Top             =   2025
      Visible         =   0   'False
      Width           =   165
   End
   Begin VB.Image picLiftIOStatus 
      Height          =   165
      Index           =   1
      Left            =   4575
      Picture         =   "Options_rb.frx":BAFA7
      Top             =   2025
      Visible         =   0   'False
      Width           =   165
   End
   Begin VB.Image picLiftIOStatus 
      Height          =   165
      Index           =   0
      Left            =   4350
      Picture         =   "Options_rb.frx":BB301
      Top             =   2025
      Visible         =   0   'False
      Width           =   165
   End
End
Attribute VB_Name = "Options_rb"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim PLCStn              As Integer
Dim RB                  As Integer
Dim AllowChanges        As Boolean
Dim AllowManual         As Boolean
Dim AllowManualLift     As Boolean
Dim AllowManualRotate   As Boolean

Dim EditEnabled     As Boolean
Dim LiftEnabled     As Boolean
Dim RotateEnabled   As Boolean
Dim AutoTuneEnabled As Boolean

Dim OldEditEnabled As Boolean

'Momentry Buttons
Dim ButtonMode      As Integer
Dim ButtonKeyDown   As Integer
Dim ButtonHeartBeat As Integer

Const ModeRef = 1
Const ModeManualMove = 2
Const ModePosnTune = 3
Const ModeMovePosn = 4

Const ActionMoveUp = 1
Const ActionMoveDown = 2
Const ActionMoveLeft = 3
Const ActionMoveRight = 4

Const MouseNone = 0
Const MouseMovePosn = 1
Const MouseCopyPosn = 2
Const MouseAutoPosn = 3
Const MouseSeq = 4

Private Sub chkEdit_Click()
    EditEnabled = chkEdit.Value
    
End Sub

Private Sub cmbPLC_Click()
    If PLCStn <> cmbPLC.ItemData(cmbPLC.ListIndex) Then
        RB = 1
    End If
    Call Config(cmbPLC.ItemData(cmbPLC.ListIndex), RB)
End Sub
Private Sub cmbRB_Click()
    Call Config(PLCStn, cmbRB.ItemData(cmbRB.ListIndex))
End Sub

Private Sub cmd_Exit_Click()
    Unload Me
End Sub

Private Sub Cmd_send_Click()
    
    'Public Sub WriteRBPosnTest()
    
    'RB Posining must match PLC
    'Public Type RB_Posns
    '    RefOffset       As Long
    '    MaxSpeed        As Long
    '    CycleCount      As Long
    '    PositionNow     As Long
    '    Spare1          As Long
    '    Spare2          As Long
    '    Spare3          As Long
    '    Spare4          As Long
    '    Posn(9)         As Long
    'End Type
    
    Dim RBAmount As Integer
    Dim RBData() As Long
    Dim RotateOffset As Integer
    
    DisplayForm wait_frm
    
    RBAmount = (DeviceBytes(DeviceRBPosn) / 4) '32 bit Data 4 Bytes
    ReDim RBData(RBAmount)
    
    'RBData(0) = 12345
    'RBData(1) = 22222
    
    'For n = 2 To RBAmount - 1
    '    RBData(n) = 33
    'Next n
    
    'RBData(RBAmount - 1) = 98989898
    
    'WriteRBPosn PLCStn, RB, RBData()
        
    Dim txt As TextBox
        
    'Lift
    RBData(0) = Val(txtLiftRefPosition.Text) * 10
    RBData(1) = Val(txtLiftMaxSpeed.Text)
    RBData(2) = 0 'Cycle Count
    RBData(3) = 0 'Position Now
    RBData(4) = 0 'Spare 1
    RBData(5) = 0 'Spare 2
    RBData(6) = 0 'Spare 3
    RBData(7) = 0 'Spare 4
    RBData(8) = 0 'Posn 0
    For Each txt In Me.txtLiftPos()
        RBData(8 + txt.Index) = Val(txtLiftPos(txt.Index).Text) * 10
    Next txt
    
    RotateOffset = (9 + 29) 'Next Position + Number of Positions
    
    'Rotate
    RBData(0 + RotateOffset) = Val(txtRotRefPosition.Text) * 100
    RBData(1 + RotateOffset) = Val(txtRotMaxSpeed.Text)
    RBData(2 + RotateOffset) = 0 'Cycle Count
    RBData(3 + RotateOffset) = 0 'Position Now
    RBData(4 + RotateOffset) = 0 'Spare 1
    RBData(5 + RotateOffset) = 0 'Spare 2
    RBData(6 + RotateOffset) = 0 'Spare 3
    RBData(7 + RotateOffset) = 0 'Spare 4
    RBData(8 + RotateOffset) = 0 'Posn 0
       
    For Each txt In Me.txtRotPos()
        RBData(8 + txt.Index + RotateOffset) = Val(txtRotPos(txt.Index).Text) * 100
    Next txt
        
    WriteRBPosn PLCStn, RB, RBData()
    
    
    
End Sub
Private Sub cmdCopyPosn_Click(Index As Integer)
    If Index = 100 Then
        txtLiftRefPosition.Text = Me.lblLiftCurrentPosition.Text
        txtRotRefPosition.Text = Me.lblRotCurrentPosition.Text
    Else
        Me.txtLiftPos(Index).Text = Me.lblLiftCurrentPosition.Text
        Me.txtRotPos(Index).Text = Me.lblRotCurrentPosition.Text
    End If
End Sub


Private Sub cmdCopyPosn_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call HighlightButton(MouseCopyPosn, Index)
End Sub

Private Sub cmdManualMove_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    ButtonKeyDown = Index
    ButtonMode = ModeManualMove
    ActionButtons
End Sub

Private Sub cmdManualMove_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    ButtonKeyDown = 0
    ButtonMode = ModeManualMove
    ActionButtons
End Sub

Private Sub cmdMovePosn_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    ButtonKeyDown = Index
    ButtonMode = ModeMovePosn
    ActionButtons
End Sub

Private Sub cmdMovePosn_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call HighlightButton(MouseMovePosn, Index)
End Sub

Private Sub cmdMovePosn_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    ButtonKeyDown = 0
    ButtonMode = ModeMovePosn
    ActionButtons
End Sub


Private Sub cmdReference_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ButtonKeyDown = 1
    ButtonMode = ModeRef
    ActionButtons
End Sub


Private Sub cmdReference_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ButtonKeyDown = 0
    ButtonMode = ModeRef
    ActionButtons
End Sub

Private Sub cmdSequence_Click()
    CurrentSeq = RB_Seq(RB, PLCStn)
    CurrentSeqPLC = PLCStn
    DisplayForm Sequences_frm
End Sub

Private Sub cmdSequence_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call HighlightButton(MouseSeq, 0)
End Sub

Private Sub cmdTunePosn_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    ButtonKeyDown = Index
    ButtonMode = ModePosnTune
    ActionButtons
End Sub

Private Sub cmdTunePosn_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call HighlightButton(MouseAutoPosn, Index)
End Sub

Private Sub cmdTunePosn_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    ButtonKeyDown = 0
    ButtonMode = ModePosnTune
    ActionButtons
End Sub

Private Sub Form_Load()
        
    
        
    CenterForm Me
    Me.Top = 15
    
    SetLanguage
    
    
    
End Sub

Private Sub SetLanguage()
    
    
    Me.Cmd_exit.Caption = TextWord(309)
    Me.cmd_Send.Caption = TextWord(287)
    
    Me.Caption = TextWord(800)
    
    Me.lblLift.Text = TextWord(816)
    Me.lblRotate.Text = TextWord(817)
    
    
    Me.lblSeqStep.Text = " " & TextWord(38)
    
    Me.lblCycles.Text = " " & TextWord(811)
    Me.lblRefPosition.Text = " " & TextWord(812)
    Me.lblMaxSpeed.Text = " " & TextWord(813)
    Me.lblCurrentPosition.Text = " " & TextWord(814)
    
    Dim lbl As TextBox
    
    For Each lbl In Me.lblPosition()
        Me.lblPosition(lbl.Index).Text = TextWord(815) & Str(lbl.Index)
    Next lbl
    
    picLiftIOStatus(0).ToolTipText = TextWord(812)
    picLiftIOStatus(1).ToolTipText = TextWord(824)
    picLiftIOStatus(2).ToolTipText = TextWord(825)
    picLiftIOStatus(3).ToolTipText = TextWord(828)
    picLiftIOStatus(4).ToolTipText = TextWord(829)
    
    picRotateIOStatus(0).ToolTipText = TextWord(812)
    picRotateIOStatus(1).ToolTipText = TextWord(826)
    picRotateIOStatus(2).ToolTipText = TextWord(827)
    picRotateIOStatus(3).ToolTipText = TextWord(828)
    picRotateIOStatus(4).ToolTipText = TextWord(829)
    
    Dim cmd As Image
    
    For Each cmd In Me.cmdMovePosn()
        Me.cmdMovePosn(cmd.Index).ToolTipText = TextWord(818)
        Me.cmdTunePosn(cmd.Index).ToolTipText = TextWord(819)
        Me.cmdCopyPosn(cmd.Index).ToolTipText = TextWord(801)
    Next cmd
    
    Me.cmdSequence.ToolTipText = TextWord(802)
    
    Me.cmdManualMove(ActionMoveUp).ToolTipText = TextWord(803) & " " & TextWord(804)
    Me.cmdManualMove(ActionMoveDown).ToolTipText = TextWord(803) & " " & TextWord(805)
    Me.cmdManualMove(ActionMoveLeft).ToolTipText = TextWord(803) & " " & TextWord(806)
    Me.cmdManualMove(ActionMoveRight).ToolTipText = TextWord(803) & " " & TextWord(807)
    Me.cmdReference.ToolTipText = TextWord(809)
    
    Me.cmdManualMove(ActionMoveUp).Caption = TextWord(804)
    Me.cmdManualMove(ActionMoveDown).Caption = TextWord(805)
    Me.cmdManualMove(ActionMoveLeft).Caption = TextWord(842) 'Anti-Clockwise 'TextWord(806)
    Me.cmdManualMove(ActionMoveLeft).ToolTipText = TextWord(844)
    Me.cmdManualMove(ActionMoveRight).Caption = TextWord(841) 'Clockwise 'TextWord(807)
    Me.cmdManualMove(ActionMoveRight).ToolTipText = TextWord(843)
    
    Me.cmdReference.Caption = TextWord(808)
    
End Sub

Public Sub Config(PLC As Integer, RBIndex As Integer)
            
    Dim Seq As Integer
            
    PLCStn = PLC
    RB = RBIndex
    
    'Write current selected ROBO to the PLC
    Data(0) = RB
    Call Comms_frm.WritePLC(PLCStn, "D", 90, 1, Data(), False, "Options_rb Config")
    
    LiftEnabled = (RB_Type(RB, PLCStn) And RB_TypeLift)
    RotateEnabled = (RB_Type(RB, PLCStn) And RB_TypeRotate)
    AutoTuneEnabled = (RB_Type(RB, PLCStn) And RB_TypeAutoAlign)
    
    EnableBoxes
    
    cmbPLC.Clear
    LoadPLCs
    lblPLC.Text = " " & Format$(PLCStn, "#0") & " - " & PLCName(PLCStn)
    cmbPLC.Visible = False
    
    cmbRB.Clear
    LoadRBs
    Seq = RB_Seq(RB, PLCStn)
    If Seq <> 0 Then
        lblRB.Text = " " & Format$(Seq, "#0") & " - " & SequenceName(Seq, PLCStn)
    Else
        lblRB.Text = " " & TextWord(810) & " " & Format$(RB, "#0")
    End If
    cmbRB.Visible = False
    
    'Robo Pictures
    If LiftEnabled And RotateEnabled Then
        picRobo.Picture = picRoboLiftRotate.Picture
    ElseIf LiftEnabled Then
        picRobo.Picture = picRoboLift.Picture
    ElseIf RotateEnabled Then
        picRobo.Picture = picRoboRotate.Picture
    End If
    
    DisplayData
    
End Sub

Private Sub DisplayData()
    
    Dim txt As TextBox
    
    'Lift
    Me.txtLiftMaxSpeed.Text = Format$(RB_Posn(RB, PLCStn).Lift.MaxSpeed)
    Me.txtLiftRefPosition.Text = Format$(RB_Posn(RB, PLCStn).Lift.RefOffset / 10, "0.0mm")
    
    
    For Each txt In Me.txtLiftPos()
        Me.txtLiftPos(txt.Index).Text = Format$(RB_Posn(RB, PLCStn).Lift.Posn(txt.Index) / 10, "0.0mm")
    Next txt
    
    'Rotate
    Me.txtRotMaxSpeed.Text = Format$(RB_Posn(RB, PLCStn).Rotate.MaxSpeed)
    Me.txtRotRefPosition.Text = Format$(RB_Posn(RB, PLCStn).Rotate.RefOffset / 100, "0.00°")
    
    
    For Each txt In Me.txtRotPos()
        Me.txtRotPos(txt.Index).Text = Format$(RB_Posn(RB, PLCStn).Rotate.Posn(txt.Index) / 100, "0.00°")
    Next txt
    
End Sub
Private Sub EnableBoxes()
           
    Dim txt             As TextBox
    
    chkEdit.Enabled = (AccessLevel >= accEngineer)
    
    If Not chkEdit.Enabled Then
        chkEdit.Value = 0
        EditEnabled = False
    Else
        EditEnabled = (chkEdit.Value = 1)
    End If
    
    'Lift
    Me.lblLift.Enabled = LiftEnabled
    Me.lblLiftSeqStep.Enabled = LiftEnabled
    Me.lblLiftMonitor.Enabled = LiftEnabled
    Me.lblLiftCurrentPosition.Enabled = LiftEnabled
    
    Me.txtLiftMaxSpeed.Enabled = AllowChanges And EditEnabled And LiftEnabled
    Me.txtLiftRefPosition.Enabled = AllowChanges And EditEnabled And LiftEnabled
       
    For Each txt In Me.txtLiftPos()
        Me.txtLiftPos(txt.Index).Enabled = AllowChanges And EditEnabled And LiftEnabled
    Next txt
    
    'Rotate
    Me.lblRotate.Enabled = RotateEnabled
    Me.lblRotSeqStep.Enabled = RotateEnabled
    Me.lblRotateMonitor.Enabled = RotateEnabled
    Me.lblRotCurrentPosition.Enabled = RotateEnabled
    
    Me.txtRotMaxSpeed.Enabled = AllowChanges And EditEnabled And RotateEnabled
    Me.txtRotRefPosition.Enabled = AllowChanges And EditEnabled And RotateEnabled
        
    For Each txt In Me.txtRotPos()
        Me.txtRotPos(txt.Index).Enabled = AllowChanges And EditEnabled And RotateEnabled
    Next txt
     
    
    'Manual Buttons
    Dim myCmd As Image
    
    For Each myCmd In cmdTunePosn()
        
        cmdTunePosn(myCmd.Index).Enabled = AllowManual And AutoTuneEnabled
        cmdTunePosn(myCmd.Index).Visible = AutoTuneEnabled
        
        cmdMovePosn(myCmd.Index).Enabled = AllowManual
        cmdCopyPosn(myCmd.Index).Enabled = EditEnabled
        
    Next myCmd
    
    Me.cmdSequence.Enabled = (AccessLevel >= accEngineer)
    
    'Go to Reference position button
    cmdMovePosn(100).Enabled = AllowManual
    
    cmdManualMove(1).Enabled = LiftEnabled And AllowManualLift
    cmdManualMove(2).Enabled = LiftEnabled And AllowManualLift
    cmdManualMove(3).Enabled = RotateEnabled And AllowManualRotate
    cmdManualMove(4).Enabled = RotateEnabled And AllowManualRotate
    
    cmdReference.Enabled = AllowManual
    
    If EditEnabled <> OldEditEnabled Then
        Call HighlightButton(MouseNone, 0)
        OldEditEnabled = EditEnabled
    End If
        
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call HighlightButton(MouseNone, 0)
End Sub

Private Sub Form_Unload(Cancel As Integer)
    'Clear selected ROBO to the PLC
    Data(0) = 0
    Call Comms_frm.WritePLC(PLCStn, "D", 90, 1, Data(), False, "Options_rb Config")
End Sub

Private Sub Label3_GotFocus()
    Me.txtHidden.SetFocus
End Sub
Private Sub lblCurrentPosition_GotFocus()
    Me.txtHidden.SetFocus
End Sub
Private Sub lblCycleCount_GotFocus()
    Me.txtHidden.SetFocus
End Sub
Private Sub lblCycles_GotFocus()
    Me.txtHidden.SetFocus
End Sub
Private Sub lblLift_GotFocus()
    Me.txtHidden.SetFocus
End Sub
Private Sub lblLiftCurrentPosition_GotFocus()
    Me.txtHidden.SetFocus
End Sub
Private Sub lblLiftMonitor_GotFocus()
    Me.txtHidden.SetFocus
End Sub
Private Sub lblLiftSeqStep_GotFocus()
    Me.txtHidden.SetFocus
End Sub
Private Sub lblMaxSpeed_GotFocus()
    Me.txtHidden.SetFocus
End Sub
Private Sub lblMonitor_GotFocus()
    Me.txtHidden.SetFocus
End Sub
Private Sub lblPLC_GotFocus()
    Me.txtHidden.SetFocus
End Sub
Private Sub lblPosition_GotFocus(Index As Integer)
    Me.txtHidden.SetFocus
End Sub
Private Sub lblRB_GotFocus()
    Me.txtHidden.SetFocus
End Sub
Private Sub lblRefPosition_GotFocus()
    Me.txtHidden.SetFocus
End Sub
Private Sub lblRotate_GotFocus()
    Me.txtHidden.SetFocus
End Sub
Private Sub lblRotateMonitor_GotFocus()
    Me.txtHidden.SetFocus
End Sub
Private Sub lblRotCurrentPosition_GotFocus()
    Me.txtHidden.SetFocus
End Sub
Private Sub lblRotSeqStep_GotFocus()
    Me.txtHidden.SetFocus
End Sub
Private Sub lblSeqStep_GotFocus()
    Me.txtHidden.SetFocus
End Sub

Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call HighlightButton(MouseNone, 0)
End Sub

Private Sub tmrUpdate_Timer()
        
    If Not EditEnabled Then DisplayData
        
    Me.cmd_Send.Enabled = EditEnabled
    
        
    Me.lblCycleCount.Text = RB_Posn(RB, PLCStn).Lift.CycleCount
    Me.lblLiftSeqStep.Text = Format$(RB_Posn(RB, PLCStn).Lift.SeqStep)
    Me.lblRotSeqStep.Text = Format$(RB_Posn(RB, PLCStn).Rotate.SeqStep)
    Me.lblLiftCurrentPosition.Text = Format$(RB_Posn(RB, PLCStn).Lift.PositionNow / 10, "0.0mm")
    Me.lblRotCurrentPosition.Text = Format$(RB_Posn(RB, PLCStn).Rotate.PositionNow / 100, "0.00°")
    
    RB_Posn(RB, PLCStn).Rotate.PositionNow = RB_Posn(RB, PLCStn).Rotate.PositionNow + KeyDown
    
    AllowChanges = (AccessLevel >= accProgrammer) 'Or ((AccessLevel >= accEngineer) And ForceAllowed(PLCStn)))
    
    AllowManualLift = ((AccessLevel >= accEngineer) And (RB_Posn(RB, PLCStn).Lift.OperationMode And RB_ModeManual))
    AllowManualRotate = ((AccessLevel >= accEngineer) And (RB_Posn(RB, PLCStn).Rotate.OperationMode And RB_ModeManual))
    AllowManual = ((AllowManualLift Or AllowManualRotate))
    
    'Me.cmd_Send.Enabled = AllowChanges
    
    EnableBoxes
    
    'Position Names
    Dim lbl As TextBox
    
    For Each lbl In Me.lblPosition()
        If RB_PosnName(RB, PLCStn, lbl.Index) = "" Then
            If Me.lblPosition(lbl.Index).Text <> " " & TextWord(815) & Str(lbl.Index) Then
                Me.lblPosition(lbl.Index).Text = " " & TextWord(815) & Str(lbl.Index)
            End If
        Else
            If Me.lblPosition(lbl.Index).Text <> " " & RB_PosnName(RB, PLCStn, lbl.Index) Then
                Me.lblPosition(lbl.Index).Text = " " & RB_PosnName(RB, PLCStn, lbl.Index)
            End If
        End If
    Next lbl
    
    'Lift inputs
    If RB_Posn(RB, PLCStn).Lift.IOStatus And 1 Then picLiftIOStatus(0).Picture = picLampAmber.Picture Else picLiftIOStatus(0).Picture = picLampGrey.Picture
    If RB_Posn(RB, PLCStn).Lift.IOStatus And 2 Then picLiftIOStatus(1).Picture = picLampRed.Picture Else picLiftIOStatus(1).Picture = picLampGrey.Picture
    If RB_Posn(RB, PLCStn).Lift.IOStatus And 4 Then picLiftIOStatus(2).Picture = picLampRed.Picture Else picLiftIOStatus(2).Picture = picLampGrey.Picture
    If RB_Posn(RB, PLCStn).Lift.IOStatus And 8 Then picLiftIOStatus(3).Picture = picLampGreen.Picture Else picLiftIOStatus(3).Picture = picLampGrey.Picture
    If RB_Posn(RB, PLCStn).Lift.IOStatus And 16 Then picLiftIOStatus(4).Picture = picLampGreen.Picture Else picLiftIOStatus(4).Picture = picLampGrey.Picture
    
    'Rotate inputs
    If RB_Posn(RB, PLCStn).Rotate.IOStatus And 1 Then picRotateIOStatus(0).Picture = picLampAmber.Picture Else picRotateIOStatus(0).Picture = picLampGrey.Picture
    If RB_Posn(RB, PLCStn).Rotate.IOStatus And 2 Then picRotateIOStatus(1).Picture = picLampRed.Picture Else picRotateIOStatus(1).Picture = picLampGrey.Picture
    If RB_Posn(RB, PLCStn).Rotate.IOStatus And 4 Then picRotateIOStatus(2).Picture = picLampRed.Picture Else picRotateIOStatus(2).Picture = picLampGrey.Picture
    If RB_Posn(RB, PLCStn).Rotate.IOStatus And 8 Then picRotateIOStatus(3).Picture = picLampGreen.Picture Else picRotateIOStatus(3).Picture = picLampGrey.Picture
    If RB_Posn(RB, PLCStn).Rotate.IOStatus And 16 Then picRotateIOStatus(4).Picture = picLampGreen.Picture Else picRotateIOStatus(4).Picture = picLampGrey.Picture
    
    'Monitor
    Select Case RBMonitorIndex(PLCStn)
        Case 0 'Nothing
            Me.lblLiftMonitor.Text = ""
            Me.lblRotateMonitor.Text = ""
        Case 1 'kW
            Me.lblLiftMonitor.Text = Format$(RB_Posn(RB, PLCStn).Lift.Monitor / 100, "0.00") & "kW"
            Me.lblRotateMonitor.Text = Format$(RB_Posn(RB, PLCStn).Rotate.Monitor / 100, "0.00") & "kW"
        Case 2 'V
            Me.lblLiftMonitor.Text = Format$(RB_Posn(RB, PLCStn).Lift.Monitor / 10, "0.0") & "V"
            Me.lblRotateMonitor.Text = Format$(RB_Posn(RB, PLCStn).Rotate.Monitor / 10, "0.0") & "V"
        Case 3 'Hz
            Me.lblLiftMonitor.Text = Format$(RB_Posn(RB, PLCStn).Lift.Monitor / 10, "0.0") & "Hz"
            Me.lblRotateMonitor.Text = Format$(RB_Posn(RB, PLCStn).Rotate.Monitor / 10, "0.0") & "Hz"
        Case 4 'A
            Me.lblLiftMonitor.Text = Format$(RB_Posn(RB, PLCStn).Lift.Monitor / 100, "0.00") & "A"
            Me.lblRotateMonitor.Text = Format$(RB_Posn(RB, PLCStn).Rotate.Monitor / 100, "0.00") & "A"
        Case 5 'Nm
            Me.lblLiftMonitor.Text = Format$(RB_Posn(RB, PLCStn).Lift.Monitor / 10, "0.0") & "Nm"
            Me.lblRotateMonitor.Text = Format$(RB_Posn(RB, PLCStn).Rotate.Monitor / 10, "0.0") & "Nm"
        Case 6 'RPM
            Me.lblLiftMonitor.Text = Format$(RB_Posn(RB, PLCStn).Lift.Monitor, "0") & "RPM"
            Me.lblRotateMonitor.Text = Format$(RB_Posn(RB, PLCStn).Rotate.Monitor, "0") & "RPM"
        Case 7 '°C
            Me.lblLiftMonitor.Text = Format$(RB_Posn(RB, PLCStn).Lift.Monitor, "0") & "°C"
            Me.lblRotateMonitor.Text = Format$(RB_Posn(RB, PLCStn).Rotate.Monitor, "0") & "°C"
        Case 8 'kWh
            Me.lblLiftMonitor.Text = Format$(RB_Posn(RB, PLCStn).Lift.Monitor, "0") & "kWh"
            Me.lblRotateMonitor.Text = Format$(RB_Posn(RB, PLCStn).Rotate.Monitor, "0") & "kWh"
        Case 9 'alm
            Me.lblLiftMonitor.Text = Format$(RB_Posn(RB, PLCStn).Lift.Monitor, "0") & "alm"
            Me.lblRotateMonitor.Text = Format$(RB_Posn(RB, PLCStn).Rotate.Monitor, "0") & "alm"
        Case 10 'alm2
            Me.lblLiftMonitor.Text = Format$(RB_Posn(RB, PLCStn).Lift.Monitor, "0") & "alm2"
            Me.lblRotateMonitor.Text = Format$(RB_Posn(RB, PLCStn).Rotate.Monitor, "0") & "alm2"
        Case 11 'warn
            Me.lblLiftMonitor.Text = Format$(RB_Posn(RB, PLCStn).Lift.Monitor, "0") & "warn"
            Me.lblRotateMonitor.Text = Format$(RB_Posn(RB, PLCStn).Rotate.Monitor, "0") & "warn"
        Case 12 'warn2
            Me.lblLiftMonitor.Text = Format$(RB_Posn(RB, PLCStn).Lift.Monitor, "0") & "warn2"
            Me.lblRotateMonitor.Text = Format$(RB_Posn(RB, PLCStn).Rotate.Monitor, "0") & "warn2"
    End Select
            
End Sub

Private Sub tmrWritePLC_Timer()
    ActionButtons
End Sub

Private Sub ActionButtons()
    
    'Heartbeat - Tells PLC comms is working and not to cancel operation
    ButtonHeartBeat = ButtonHeartBeat + 1
    If (ButtonHeartBeat > 10000) Then
        ButtonHeartBeat = 1
    End If
    
    tmrWritePLC.Enabled = False
    
    If (ButtonMode > 0) Then
    
        If (ButtonKeyDown > 0) Then
            
            Data(0) = RB                'RB Index
            Data(1) = ButtonMode        'RB Mode
            Data(2) = ButtonKeyDown     'RB Action
            Data(3) = ButtonHeartBeat   'Heartbeat
            Comms_frm.WritePLC PLCStn, "D", 81, 4, Data(), False
            tmrWritePLC.Enabled = True
        Else
            'Cancel Button
            ButtonMode = 0
            Data(0) = 0 'RB Index
            Data(1) = 0 'RB Mode
            Data(2) = 0 'RB Action
            Data(3) = 0 'Heartbeat
            Comms_frm.WritePLC PLCStn, "D", 81, 4, Data(), False
            
        End If
        
    Else
        'Do Noting - no button pressed idle
    End If
    
    
End Sub

Private Sub txtLiftMaxSpeed_KeyPress(KeyAscii As Integer)
    BoxKeyPress txtLiftMaxSpeed, KeyAscii, EditAny, 1000, 0
End Sub

Private Sub txtLiftPos_KeyPress(Index As Integer, KeyAscii As Integer)
    BoxKeyPress txtLiftPos(Index), KeyAscii, EditRBmm, 99999, -99999
End Sub

Private Sub txtLiftRefPosition_KeyPress(KeyAscii As Integer)
    BoxKeyPress txtLiftRefPosition, KeyAscii, EditRBmm, 99999, -99999
End Sub


Private Sub txtRotCurrentPosition_KeyPress(KeyAscii As Integer)
    KeyAscii = 0
End Sub

Private Sub txtRotMaxSpeed_KeyPress(KeyAscii As Integer)
    BoxKeyPress txtRotMaxSpeed, KeyAscii, EditAny, 1500, 0
End Sub
Private Sub txtRotPos_KeyPress(Index As Integer, KeyAscii As Integer)
    BoxKeyPress txtRotPos(Index), KeyAscii, EditRBdeg, 405, -45
End Sub

Private Sub txtRotRefPosition_KeyPress(KeyAscii As Integer)
    BoxKeyPress txtRotRefPosition, KeyAscii, EditRBdeg, 405, -45
End Sub
Private Sub LoadPLCs()
      
    Dim PLC As Integer
        
    For PLC = 0 To UsedPLC
        cmbPLC.AddItem " " & Format$(PLC, "#0") & " - " & PLCName(PLC)
        cmbPLC.ItemData(cmbPLC.NewIndex) = PLC
    Next PLC
   
End Sub
Private Sub lblPLC_Click()
    cmbPLC.Text = lblPLC.Text
    cmbPLC.Visible = True
    cmbRB.Visible = False
End Sub
Private Sub LoadRBs()
      
    Dim RB As Integer
    Dim Seq As Integer
        
    For RB = 1 To MaxRBs
        If RB_Type(RB, PLCStn) <> RB_TypeNotUsed Then
            Seq = RB_Seq(RB, PLCStn)
            If Seq <> 0 Then
                cmbRB.AddItem " " & Format$(Seq, "#0") & " - " & SequenceName(Seq, PLCStn)
            Else
                cmbRB.AddItem " " & TextWord(810) & " " & Format$(RB, "#0")
            End If
            cmbRB.ItemData(cmbRB.NewIndex) = RB
        End If
    Next RB
   
End Sub
Private Sub lblRB_Click()
    cmbRB.Text = lblRB.Text
    cmbRB.Visible = True
    cmbPLC.Visible = False
End Sub

Private Sub HighlightButton(ButtonType As Integer, Optional Index As Integer)
    
'    Const MouseNone = 0
'    Const MouseMovePosn = 1
'    Const MouseCopyPosn = 2
'    Const MouseAutoPosn = 3
'    Const MouseSeq = 4
        
    Dim pic As Image
    
    If (ButtonType <> MouseNone) Then
        Dave = DFave
    End If
    
    For Each pic In Me.cmdMovePosn()
        If Not cmdMovePosn(pic.Index).Enabled Then
            If cmdMovePosn(pic.Index).Picture <> Me.picMoveDisabled.Picture Then cmdMovePosn(pic.Index).Picture = Me.picMoveDisabled.Picture
        Else
            If ((ButtonType = MouseMovePosn) And (Index = pic.Index)) Then
                If cmdMovePosn(pic.Index).Picture <> Me.picMoveHighlight.Picture Then cmdMovePosn(pic.Index).Picture = Me.picMoveHighlight.Picture
            Else
                If cmdMovePosn(pic.Index).Picture <> Me.picMoveNormal.Picture Then cmdMovePosn(pic.Index).Picture = Me.picMoveNormal.Picture
            End If
        End If
    Next pic
    
    For Each pic In Me.cmdCopyPosn()
        If Not cmdCopyPosn(pic.Index).Enabled Then
            If cmdCopyPosn(pic.Index).Picture <> Me.picCopyDisabled.Picture Then cmdCopyPosn(pic.Index).Picture = Me.picCopyDisabled.Picture
        Else
            If ((ButtonType = MouseCopyPosn) And (Index = pic.Index)) Then
                If cmdCopyPosn(pic.Index).Picture <> Me.picCopyHighlight.Picture Then cmdCopyPosn(pic.Index).Picture = Me.picCopyHighlight.Picture
            Else
                If cmdCopyPosn(pic.Index).Picture <> Me.picCopyNormal.Picture Then cmdCopyPosn(pic.Index).Picture = Me.picCopyNormal.Picture
            End If
        End If
    Next pic
    
    For Each pic In Me.cmdTunePosn()
        If Not cmdTunePosn(pic.Index).Enabled Then
            If cmdTunePosn(pic.Index).Picture <> Me.picTuneDisabled.Picture Then cmdTunePosn(pic.Index).Picture = Me.picTuneDisabled.Picture
        Else
            If ((ButtonType = MouseAutoPosn) And (Index = pic.Index)) Then
                If cmdTunePosn(pic.Index).Picture <> Me.picTuneHighlight.Picture Then cmdTunePosn(pic.Index).Picture = Me.picTuneHighlight.Picture
            Else
                If cmdTunePosn(pic.Index).Picture <> Me.picTuneNormal.Picture Then cmdTunePosn(pic.Index).Picture = Me.picTuneNormal.Picture
            End If
        End If
    Next pic
    
    If Not Me.cmdSequence.Enabled Then
        If Me.cmdSequence.Picture <> Me.picSeqDisabled.Picture Then cmdSequence.Picture = Me.picSeqDisabled.Picture
    Else
        If (ButtonType = MouseSeq) Then
            If Me.cmdSequence.Picture <> Me.picSeqHighlight.Picture Then cmdSequence.Picture = Me.picSeqHighlight.Picture
        Else
            If Me.cmdSequence.Picture <> Me.picSeqNormal.Picture Then cmdSequence.Picture = Me.picSeqNormal.Picture
        End If
    End If
     
End Sub
