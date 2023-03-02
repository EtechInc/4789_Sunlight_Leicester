VERSION 4.00
Begin VB.Form uldman_frm 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Manual Call Off"
   ClientHeight    =   1200
   ClientLeft      =   1035
   ClientTop       =   3690
   ClientWidth     =   6225
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   BeginProperty Font 
      name            =   "MS Sans Serif"
      charset         =   0
      weight          =   700
      size            =   8.25
      underline       =   0   'False
      italic          =   0   'False
      strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H80000008&
   Height          =   1605
   Left            =   975
   LinkTopic       =   "Form2"
   ScaleHeight     =   1200
   ScaleWidth      =   6225
   Top             =   3345
   Width           =   6345
   Begin VB.PictureBox Picture1 
      BorderStyle     =   0  'None
      Height          =   510
      Left            =   240
      Picture         =   "ULDMAN.frx":0000
      ScaleHeight     =   510
      ScaleWidth      =   510
      TabIndex        =   5
      Top             =   360
      Width           =   510
   End
   Begin VB.TextBox Txt_Line 
      Height          =   285
      Left            =   4080
      TabIndex        =   1
      Text            =   "Text2"
      Top             =   480
      Width           =   540
   End
   Begin VB.TextBox Txt_Bags 
      Height          =   285
      Left            =   960
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   480
      Width           =   540
   End
   Begin VB.CommandButton Cmd_Start 
      Caption         =   "Start"
      Enabled         =   0   'False
      Height          =   300
      Left            =   4800
      TabIndex        =   2
      Top             =   375
      Width           =   1215
   End
   Begin VB.CommandButton Cmd_Cancel 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   300
      Left            =   4800
      TabIndex        =   3
      Top             =   750
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   " Bags From Line Number"
      Height          =   285
      Left            =   1560
      TabIndex        =   4
      Top             =   525
      Width           =   2445
   End
End
Attribute VB_Name = "uldman_frm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub CentreForm()
    
    ' The form is horizontally and vertically centered when loaded.
    Left = (Screen.Width - Width) / 2
    Top = (Screen.Height - Height) / 2

End Sub

Private Sub check_for_valid_selection()
    
    'Cmd_Start.Enabled = False
    
    'line >0 and line <= maximium lines
    'If Val(txt_line.Text) > 0 And Val(txt_line.Text) <= Maxlines And Val(txt_bags.Text) > 0 And Val(txt_bags.Text) <= Maxbags Then
        'If Recirc_Ongoing And OnManualLine = 0 And OnManualBags = 0 Then
            'bags on recirc line >= number of bags required for recirculation
            'If StorageData(15 + Discharger, 0, 0) >= Val(txt_bags.Text) Then
                'bags on SortingData line selected + number of bags selected <= max bags on line
                'If StorageData(Val(txt_line.Text), 0, 0) + Val(txt_bags.Text) <= Maxbags Then
                    'Cmd_Start.Enabled = True
                'End If
            'End If
        'End If
        
        'If Recirc_Offgoing And OffManualLine = 0 And OffManualBags = 0 Then
            'bags on SortingData line >= no bags required
            'If StorageData(Val(txt_line.Text), 0, 0) >= Val(txt_bags.Text) Then
                'bags on discharger buffer + no bags required <= buffer capacity for discharger
                'If StorageData(15 + Discharger, 0, 0) + Val(txt_bags.Text) <= buffcapacity(Discharger) Then
                    'Cmd_Start.Enabled = True
                'End If
            'End If
        'End If
    'End If
    

End Sub

Private Sub Cmd_Cancel_Click()
    
    Unload uldman_frm

End Sub

Private Sub Cmd_Start_Click()
       
    If Recirc_Ongoing Then
        OnManualBags = Val(txt_bags.Text)
        OnManualLine = Val(txt_line.Text)
        Commtask(51) = True
    End If
    If Recirc_Offgoing Then
        OffManualBags = Val(txt_bags.Text)
        OffManualLine = Val(txt_line.Text)
        Commtask(52) = True
    End If

    Unload Me

End Sub

Private Sub Form_Deactivate()
    uldman_frm.Show
End Sub

Private Sub Form_Load()
    
    CentreForm
    If Recirc_Offgoing Then
        Me.Caption = TextWord(284) & " " & TextWord(4)
        Label1.Caption = TextWord(136)
    ElseIf Recirc_Ongoing Then
        Me.Caption = TextWord(284) & " " & TextWord(3)
        Label1.Caption = TextWord(285)
    Else
        Me.Caption = TextWord(135)
        Label1.Caption = TextWord(136)
    End If
    
    cmd_cancel.Caption = TextWord(61)
    Cmd_Start.Caption = TextWord(134)
    
    txt_bags.Text = ""
    txt_line.Text = ""

End Sub

Private Sub Form_Unload(Cancel As Integer)
    
    'Restart System
    'Commtask(62) = True
    
    Recirc_Offgoing = False
    Recirc_Ongoing = False
    
    Enableforms
    
    'Maindisp0_frm!Timer2.Enabled = True
    'Commtask(1) = True

End Sub

Private Sub Txt_Bags_Change()
    check_for_valid_selection
End Sub

Private Sub Txt_Bags_GotFocus()
    'Timer1.Enabled = False
End Sub

Private Sub Txt_Bags_LostFocus()
    'Timer1.Enabled = True
End Sub

Private Sub Txt_Line_Change()
    check_for_valid_selection
End Sub

Private Sub Txt_Line_GotFocus()
'Timer1.Enabled = False
End Sub

Private Sub Txt_Line_LostFocus()
    'Timer1.Enabled = True
End Sub

