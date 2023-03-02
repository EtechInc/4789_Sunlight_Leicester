VERSION 5.00
Begin VB.Form Kannegiesser_frm 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   3555
   ClientLeft      =   45
   ClientTop       =   45
   ClientWidth     =   18330
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   ForeColor       =   &H00C0C0C0&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   3646.154
   ScaleMode       =   0  'User
   ScaleWidth      =   18420
   ShowInTaskbar   =   0   'False
   Begin VB.Timer tmrProgress 
      Interval        =   10
      Left            =   600
      Top             =   2550
   End
   Begin VB.PictureBox Picture3 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   3255
      Left            =   75
      Picture         =   "Kannegiesser_frm.frx":0000
      ScaleHeight     =   3255
      ScaleWidth      =   18210
      TabIndex        =   0
      Top             =   -150
      Width           =   18210
   End
End
Attribute VB_Name = "Kannegiesser_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim picCount As Integer
Private Sub Form_Load()
        
'    Me.Width = 18420
'    Me.Height = 3650
'    CenterForm Me
'    Me.Top = 3000
'
'    MDIMaindisp_frm.picMenu.Height = 585
'    MDIMaindisp_frm.picMenu.Visible = True
'    MDIMaindisp_frm.picMenu.Enabled = True
'    ProjectLoaded = True
'    Call LoadStartForm
    
         
    Me.Width = 18420
    Me.Height = 3650
    CenterForm Me
    Me.Top = (Screen.Height / 2) - (Me.Height / 2) - 1000

    MDIMaindisp_frm.picMenu.Height = 0
    MDIMaindisp_frm.picMenu.Visible = True
    
    
    
End Sub

Private Sub Timer1_Timer()
    'ProjectLoaded = True
    'Unload Me
    'ProgressBar1.Visible = False
End Sub

Private Sub tmrProgress_Timer()
    
    FinalPosition = (Screen.Height / 2) - (Me.Height / 2) - 1000

    If Me.Height < 3650 Then
        Me.Height = Me.Height + 30
    ElseIf Me.Width < 18420 Then
        Me.Width = Me.Width + 30
        Me.Left = Me.Left - 15
    ElseIf Me.Top < FinalPosition Then
        Me.Top = Me.Top + 15
        Remain = FinalPosition - Me.Top
        If Remain < 600 And MDIMaindisp_frm.picMenu.Height < 585 Then
            tmrProgress.Interval = 1
            MDIMaindisp_frm.picMenu.Height = MDIMaindisp_frm.picMenu.Height + 15
        End If
    ElseIf MDIMaindisp_frm.picMenu.Height < 585 Then
        MDIMaindisp_frm.picMenu.Height = MDIMaindisp_frm.picMenu.Height + 15
    Else
        MDIMaindisp_frm.picMenu.Enabled = True
        tmrProgress.Enabled = False
        ProjectLoaded = True
        Call LoadStartForm
    End If
End Sub
