VERSION 5.00
Begin VB.Form passchg_frm 
   Appearance      =   0  'Flat
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Access Level"
   ClientHeight    =   1170
   ClientLeft      =   1980
   ClientTop       =   3135
   ClientWidth     =   6330
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   161
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H0000FFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   1170
   ScaleWidth      =   6330
   Begin VB.TextBox pass_box 
      BackColor       =   &H00FFFFFF&
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
      Height          =   360
      IMEMode         =   3  'DISABLE
      Index           =   0
      Left            =   2625
      MaxLength       =   10
      PasswordChar    =   "*"
      TabIndex        =   0
      Top             =   225
      Width           =   1980
   End
   Begin VB.CommandButton Cmd_cancel 
      BackColor       =   &H00DBD9D4&
      Cancel          =   -1  'True
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
      Left            =   4950
      TabIndex        =   3
      Top             =   675
      Width           =   1215
   End
   Begin VB.CommandButton Cmd_OK 
      BackColor       =   &H00DBD9D4&
      Caption         =   "OK"
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
      Left            =   4950
      TabIndex        =   2
      Top             =   225
      Width           =   1215
   End
   Begin VB.TextBox pass_box 
      BackColor       =   &H00FFFFFF&
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
      Height          =   360
      IMEMode         =   3  'DISABLE
      Index           =   1
      Left            =   2625
      MaxLength       =   10
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   675
      Width           =   1980
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "Enter new password "
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
      Height          =   225
      Left            =   195
      TabIndex        =   5
      Top             =   300
      Width           =   2385
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "Re-Enter new password "
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
      Height          =   255
      Left            =   525
      TabIndex        =   4
      Top             =   825
      Width           =   2025
   End
End
Attribute VB_Name = "passchg_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmd_cancel_Click()
    pass_box(0).Text = ""
    pass_box(1).Text = ""
    'unload the password window when cancel key pressed
    Unload passchg_frm
End Sub

Private Sub Cmd_OK_Click()
    If UCase(pass_box(0).Text) = UCase(pass_box(1).Text) And Len(Format(UCase(pass_box(0).Text))) < 11 Then
        If AccessLevel = accSupervisor Then db_uspSettingSave "SettingsNetwork", "Access", "Supervisor", UCase(pass_box(0).Text), PCNum
        If AccessLevel = accEngineer Then db_uspSettingSave "SettingsNetwork", "Access", "Engineer", UCase(pass_box(0).Text), PCNum
        If AccessLevel = accProgrammer Then db_uspSettingSave "SettingsNetwork", "Access", "Programmer", UCase(pass_box(0).Text), PCNum
        
    End If
    'unload the password window when cancel key pressed
    Unload passchg_frm
End Sub

Private Sub Form_Load()
    CenterForm Me
    
    If AccessLevel = accSupervisor Then passchg_frm.Caption = TextWord(166) & " : " & TextWord(164)
    If AccessLevel = accEngineer Then passchg_frm.Caption = TextWord(166) & " : " & TextWord(165)
    If AccessLevel = accProgrammer Then passchg_frm.Caption = TextWord(166) & " : " & TextWord(245)
    
    'set 'Enter Password : ' label caption
    Label1.Caption = TextWord(283)
    Label2.Caption = TextWord(282)
    Cmd_OK.Caption = TextWord(60)
    cmd_cancel.Caption = TextWord(61)

End Sub

Private Sub pass_box_KeyPress(Index As Integer, KeyAscii As Integer)
    
    If KeyAscii = 13 Then
        If Index = 1 Then Cmd_OK.SetFocus
        If Index = 0 Then pass_box(1).SetFocus
    
    End If
End Sub


