VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form wait_frm 
   BackColor       =   &H00D2A03C&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   1860
   ClientLeft      =   4455
   ClientTop       =   4470
   ClientWidth     =   6660
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H80000008&
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   1860
   ScaleWidth      =   6660
   ShowInTaskbar   =   0   'False
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00D2A03C&
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
      Height          =   480
      Left            =   300
      Picture         =   "Waitmsg.frx":0000
      ScaleHeight     =   480
      ScaleWidth      =   480
      TabIndex        =   1
      Top             =   225
      Width           =   480
   End
   Begin MSComCtl2.Animation aniCopy 
      Height          =   690
      Left            =   150
      TabIndex        =   2
      Top             =   900
      Width           =   6390
      _ExtentX        =   11271
      _ExtentY        =   1217
      _Version        =   393216
      Center          =   -1  'True
      BackColor       =   13803580
      FullWidth       =   426
      FullHeight      =   46
   End
   Begin VB.Label lbl_prompt 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Sending data to PLC ......"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   270
      Left            =   2175
      TabIndex        =   0
      Top             =   450
      Width           =   3165
   End
End
Attribute VB_Name = "wait_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Deactivate()
    'Me.Show
End Sub

Private Sub Form_Load()
    Screen.MousePointer = 11
    Me.Caption = TextWord(83)
    lbl_prompt.Caption = TextWord(84)
    CenterForm Me
    Me.Top = Me.Top - 500
    
    aniCopy.AutoPlay = True
    aniCopy.Open App.Path & "\Graphics\filecopy.avi"
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Screen.MousePointer = 0
End Sub

