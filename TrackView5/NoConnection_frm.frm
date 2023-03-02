VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form NoConnection_frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "No Connection"
   ClientHeight    =   2220
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7110
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   2595
   ScaleMode       =   0  'User
   ScaleWidth      =   7110
   ShowInTaskbar   =   0   'False
   Begin MSComCtl2.Animation aniConnect 
      Height          =   690
      Left            =   150
      TabIndex        =   1
      Top             =   1125
      Width           =   6840
      _ExtentX        =   12065
      _ExtentY        =   1217
      _Version        =   393216
      Center          =   -1  'True
      BackColor       =   14408148
      FullWidth       =   456
      FullHeight      =   46
   End
   Begin VB.Timer Timer1 
      Interval        =   2000
      Left            =   375
      Top             =   150
   End
   Begin VB.Label lblMsg 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Waiting For Connection to Server"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   390
      Left            =   150
      TabIndex        =   0
      Top             =   375
      Width           =   6840
   End
End
Attribute VB_Name = "NoConnection_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    On Error Resume Next
    CenterForm Me
    Me.Top = Me.Top - 500
    Me.Caption = TextWord(531)
    lblMsg.Caption = TextWord(530)
    
    aniConnect.AutoPlay = True
    aniConnect.Open App.Path & "\Graphics\Connect.avi"
    
End Sub

Private Sub Timer1_Timer()
    If Comms_frm.sck_PLC_Read(NotConnected).State = 7 Then Unload Me
End Sub
