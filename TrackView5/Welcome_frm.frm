VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Welcome_frm 
   BackColor       =   &H8000000B&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   2910
   ClientLeft      =   45
   ClientTop       =   45
   ClientWidth     =   8310
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2910
   ScaleWidth      =   8310
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      Height          =   1770
      Left            =   600
      Picture         =   "Welcome_frm.frx":0000
      ScaleHeight     =   1710
      ScaleWidth      =   7095
      TabIndex        =   1
      Top             =   300
      Width           =   7155
   End
   Begin VB.Timer tmrProgress 
      Interval        =   100
      Left            =   75
      Top             =   225
   End
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   390
      Left            =   300
      TabIndex        =   0
      Top             =   2250
      Width           =   7665
      _ExtentX        =   13520
      _ExtentY        =   688
      _Version        =   393216
      Appearance      =   1
      Max             =   50
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   5000
      Left            =   0
      Top             =   2250
   End
End
Attribute VB_Name = "Welcome_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    
    CenterForm Me
    
    Timer1.Enabled = True
    ProgressBar1.Value = 0
    
End Sub

Private Sub Timer1_Timer()
    
    ProjectLoaded = True
    Unload Me
   
End Sub

Private Sub tmrProgress_Timer()
    If ProgressBar1.Value < 50 Then ProgressBar1.Value = ProgressBar1.Value + 1
End Sub
