VERSION 5.00
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Begin VB.Form Time_frm 
   Appearance      =   0  'Flat
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Time"
   ClientHeight    =   990
   ClientLeft      =   1485
   ClientTop       =   4770
   ClientWidth     =   5580
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
   FontTransparent =   0   'False
   ForeColor       =   &H80000008&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   990
   ScaleWidth      =   5580
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
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
      Height          =   525
      Left            =   75
      Picture         =   "Time_chg.frx":0000
      ScaleHeight     =   525
      ScaleWidth      =   525
      TabIndex        =   3
      Top             =   75
      Width           =   525
   End
   Begin VB.Timer Timer1 
      Interval        =   500
      Left            =   2175
      Top             =   0
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
      Left            =   4200
      TabIndex        =   1
      Top             =   75
      Width           =   1215
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
      Left            =   4200
      TabIndex        =   0
      Top             =   525
      Width           =   1215
   End
   Begin MSMask.MaskEdBox MaskedEdit1 
      Height          =   390
      Left            =   2925
      TabIndex        =   4
      Top             =   525
      Width           =   1065
      _ExtentX        =   1879
      _ExtentY        =   688
      _Version        =   393216
      BackColor       =   16777215
      ForeColor       =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      PromptChar      =   "_"
   End
   Begin VB.Label lbl_prompt 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      BackStyle       =   0  'Transparent
      Caption         =   "Prompt :"
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
      Left            =   -375
      TabIndex        =   2
      Top             =   600
      Width           =   3180
   End
End
Attribute VB_Name = "Time_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CentreForm()
    ' The form is horizontally and vertically centered when loaded.
    Left = (Screen.Width - Width) / 2
    Top = (Screen.Height - Height) / 2
End Sub

Private Sub clock_hour_Click(Value As Integer)
    
    Changed = True

    
    'MaskedEdit1.Mask = "##:##"
    MaskedEdit1.Text = Format$(Time, "hh:mm")
    lbl_prompt.Caption = TextWord(153)
    strack_frm.menuleft.Caption = Format$(Time, "hh:mm:ss")
        
    strack_frm.menuleft.Width = TextWidth(strack_frm!menuleft.Caption) + 100
    'Strack_frm.menubar.Left = Strack_frm!menuleft.Left + Strack_frm!menuleft.Width + 100
    
End Sub

Private Sub cmd_cancel_Click()
    
    Unload Me

End Sub

Private Sub Cmd_OK_Click()
    
    If TrapErrors Then On Error GoTo TimeError
    
    If Edited Then
        Time = MaskedEdit1.Text
        SendTimeDateToPLC
    End If
    Unload Me

    Exit Sub


TimeError:
    
    Unload Me
    
    Exit Sub

End Sub

Private Sub Form_Load()
    
    CentreForm
    
    Time_frm.Caption = TextWord(151)
          
  MaskedEdit1.Text = Format$(Time, "hh:mm")
  lbl_prompt.Caption = TextWord(153)
  
    
    Cmd_OK.Caption = TextWord(60)
    cmd_cancel.Caption = TextWord(61)
    'ResetFlags

    MaskedEdit1.SelStart = 0
    MaskedEdit1.SelLength = Len(MaskedEdit1.Text)
    
End Sub

Private Sub MaskedEdit1_KeyPress(KeyAscii As Integer)
    
    Edited = True
    
    'check if return key pressed
    If KeyAscii = 13 Then Cmd_OK_Click

End Sub

Private Sub MaskedEdit1_ValidationError(InvalidText As String, StartPosition As Integer)
    Beep
End Sub

Private Sub Timer1_Timer()
    CentreForm
End Sub

