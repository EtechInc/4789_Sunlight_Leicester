VERSION 5.00
Begin VB.Form Sequences_frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "PLC Sequences"
   ClientHeight    =   2970
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7380
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   2970
   ScaleWidth      =   7380
   ShowInTaskbar   =   0   'False
   Begin VB.ComboBox cmbPLC 
      BackColor       =   &H00FFFFFF&
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
      IntegralHeight  =   0   'False
      Left            =   150
      TabIndex        =   4
      Text            =   "cmbPLC"
      Top             =   480
      Visible         =   0   'False
      Width           =   7000
   End
   Begin VB.ComboBox cmbSequences 
      BackColor       =   &H00FFFFFF&
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
      IntegralHeight  =   0   'False
      Left            =   150
      TabIndex        =   3
      Text            =   "cmbSequences"
      Top             =   1200
      Visible         =   0   'False
      Width           =   7000
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
      Left            =   4620
      TabIndex        =   2
      Top             =   2400
      Width           =   1215
   End
   Begin VB.ComboBox cmbSteps 
      BackColor       =   &H00FFFFFF&
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
      IntegralHeight  =   0   'False
      Left            =   150
      TabIndex        =   1
      Text            =   "cmbSteps"
      Top             =   1785
      Visible         =   0   'False
      Width           =   7000
   End
   Begin VB.Timer tmr_update 
      Interval        =   250
      Left            =   6730
      Top             =   0
   End
   Begin VB.CommandButton Cmd_exit 
      BackColor       =   &H00DBD9D4&
      Caption         =   "&End"
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
      Left            =   5935
      MaskColor       =   &H00FF8080&
      Picture         =   "Sequences2.frx":0000
      TabIndex        =   0
      Top             =   2400
      Width           =   1215
   End
   Begin VB.TextBox lblSequences 
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
      Height          =   330
      Left            =   150
      TabIndex        =   5
      Text            =   "Text1"
      Top             =   1215
      Width           =   7000
   End
   Begin VB.TextBox lblSequences_Title 
      BackColor       =   &H00DBD9D4&
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
      ForeColor       =   &H00D2A03C&
      Height          =   330
      Left            =   150
      TabIndex        =   6
      Text            =   "System Number and Name"
      Top             =   900
      Width           =   7000
   End
   Begin VB.TextBox lblHidden 
      Height          =   315
      Left            =   -4000
      TabIndex        =   7
      Text            =   "lblHidden"
      Top             =   2475
      Width           =   1890
   End
   Begin VB.TextBox lblPLC 
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
      Height          =   330
      Left            =   150
      TabIndex        =   8
      Text            =   "Text1"
      Top             =   495
      Width           =   7000
   End
   Begin VB.TextBox lblSteps 
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
      Height          =   330
      Left            =   150
      TabIndex        =   9
      Text            =   "Text1"
      Top             =   1800
      Width           =   7000
   End
   Begin VB.TextBox lblPLC_Title 
      BackColor       =   &H00DBD9D4&
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
      ForeColor       =   &H00D2A03C&
      Height          =   330
      Left            =   150
      TabIndex        =   10
      Text            =   "System Number and Name"
      Top             =   225
      Width           =   7000
   End
   Begin VB.TextBox lblSteps_Title 
      BackColor       =   &H00DBD9D4&
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
      ForeColor       =   &H00D2A03C&
      Height          =   330
      Left            =   150
      TabIndex        =   11
      Text            =   "System Number and Name"
      Top             =   1575
      Width           =   7000
   End
End
Attribute VB_Name = "Sequences_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim OldSEQ As Integer
Dim OldPLC As Integer
Dim PLCStn As Integer
Private Sub cmbPLC_Click()
    
    CurrentSeqPLC = cmbPLC.ItemData(cmbPLC.ListIndex)
    lblPLC.Text = cmbPLC.Text
    cmbPLC.Visible = False
    LoadSequence (CurrentSeqPLC)
End Sub


Private Sub cmbSequences_Click()
    CurrentSeq = cmbSequences.ItemData(cmbSequences.ListIndex)
    cmbSequences.Visible = False
    
End Sub


Private Sub cmbSteps_Click()
    cmd_Send.Enabled = (AccessLevel >= accEngineer)
    
End Sub
Private Sub cmd_Exit_Click()
    Unload Me
End Sub

Private Sub Cmd_send_Click()
    
 
    If cmbSteps.Visible Then
        
       Dim NewSeqText As String
       Dim OldSeqText As String
        
       NewSeqText = SequenceDescription(CurrentSeq, SequenceStep(CurrentSeq, PLCStn), PLCStn)
       OldSeqText = SequenceDescription(CurrentSeq, cmbSteps.ItemData(cmbSteps.ListIndex), PLCStn)
        
        
        db_uspWriteEditHistory PCNum, CurrentSeqPLC, Now, CurrentSeq, "Sequence", "Sequence Step", OldSeqText, NewSeqText

        
        cmd_Send.Enabled = False
        Screen.MousePointer = vbHourglass
        Sound_Ir_End
        
        Data(0) = cmbSteps.ItemData(cmbSteps.ListIndex)
        
        
        If (CurrentSeq < 100) Then
            Comms_frm.WritePLC CurrentSeqPLC, "D", 900 + CurrentSeq, 1, Data(), DebugToErrorFile
        Else
            Comms_frm.WritePLC CurrentSeqPLC, "D", (ExtraSeqStart - 100) + CurrentSeq, 1, Data(), DebugToErrorFile
        End If
        
        Screen.MousePointer = vbNormal
        cmbSteps.Visible = False
    End If
    
    If Demo Then SequenceStep(CurrentSeq, CurrentSeqPLC) = Data(0)

End Sub

Private Sub Form_Activate()
    CheckFormPosition Me
End Sub

Private Sub Form_Click()
    cmd_Send.Enabled = False
    cmbSteps.Visible = False
    cmbPLC.Visible = False
    cmbSequences.Visible = False
End Sub

Private Sub Form_Deactivate()
    cmd_Send.Enabled = False
    cmbSteps.Visible = False
    cmbPLC.Visible = False
    cmbSequences.Visible = False
End Sub

Private Sub Form_Load()
    
    CenterForm Me
    Me.Top = 100
    
    If (CurrentSeq < 1) Or (CurrentSeq > MaxSeq) Then CurrentSeq = 1
    If (CurrentSeqPLC < 0) Or (CurrentSeqPLC > MaxPLC) Then CurrentSeqPLC = 0
    
    LoadLanguage
    
    
    
    LoadPLCs
    LoadSequence CurrentSeqPLC
    LoadSteps CurrentSeq, CurrentSeqPLC
    
    UpdateSteps CurrentSeq, CurrentSeqPLC
    
    lblPLC.Text = Format$(CurrentSeqPLC, "#0") & " -  " & PLCName(CurrentSeqPLC)
       
    cmd_Send.Enabled = False
    
End Sub
Private Sub LoadLanguage()
    
    cmd_Send.Caption = TextWord(287)
    Cmd_exit.Caption = TextWord(42)
    
    lblPLC_Title.Text = TextWord(15) 'System
    lblSequences_Title.Text = TextWord(425) 'Sequences
    lblSteps_Title.Text = TextWord(38) 'Step
     
End Sub
Private Sub UpdateSteps(Seq As Integer, PLC As Integer)
    
    On Error GoTo UpdateStepsError
    lblSequences.Text = Format$(Seq, "#0") & " -  " & SequenceName(Seq, PLC)
    lblSteps.Text = SequenceDescription(Seq, SequenceStep(Seq, PLC), PLC)
            
Exit Sub
UpdateStepsError:
    ErrorHandler Err, "Sequences_frm UpdateSteps", Err.Description & " Sequence=" & SequenceStep(Seq, PLC), False
End Sub

Private Sub lblPLC_Click()
    
    cmbPLC.Text = lblPLC.Text
    
    cmbPLC.Visible = True
    cmbSequences.Visible = False
    cmbSteps.Visible = False
    
    cmd_Send.Enabled = False
    
End Sub

Private Sub lblSequences_Click()
    
    cmbSequences.Text = lblSequences.Text
    
    cmbPLC.Visible = False
    cmbSequences.Visible = True
    cmbSteps.Visible = False
    
    cmd_Send.Enabled = False
    
End Sub

Private Sub lblSteps_Click()
    
    cmbSteps.Text = lblSteps.Text
    
    cmbPLC.Visible = False
    cmbSequences.Visible = False
    cmbSteps.Visible = True

End Sub

Private Sub tmr_update_Timer()
    
    If (CurrentSeq <> OldSEQ) Or (CurrentSeqPLC <> OldPLC) Then
        If CurrentSeqPLC <> OldPLC Then
            lblPLC.Text = Format$(CurrentSeqPLC, "#0") & " -  " & PLCName(CurrentSeqPLC)
        End If
        LoadSteps CurrentSeq, CurrentSeqPLC
        OldSEQ = CurrentSeq
        OldPLC = CurrentSeqPLC
    End If
        
    UpdateSteps CurrentSeq, CurrentSeqPLC
    
End Sub
Private Sub LoadPLCs()
    
    Dim PLC As Integer
        
    For PLC = 0 To UsedPLC
        cmbPLC.AddItem Format$(PLC, "#0") & " -  " & PLCName(PLC)
        cmbPLC.ItemData(cmbPLC.NewIndex) = PLC
    Next PLC
    
    
    

End Sub
Private Sub LoadSequence(PLC As Integer)
    
'    With cmbSequences
'        .Clear
'
'        For Seq = 0 To MaxSeq
'            If SequenceDescription(Seq, 1, PLC) <> "" Then
'                .AddItem Format$(Seq, "#0") & " -  " & SequenceName(Seq, PLC)
'                .ItemData(.NewIndex) = Seq
'            End If
'        Next Seq
'
'    End With
 Dim X As Integer
    Dim seqValid As Boolean
    With cmbSequences
        .Clear
        For Seq = 0 To MaxSeq
            '//Modify to search through seq to find valid text as some seq's don't have step 1
            seqValid = False
            For X = 1 To MaxSeqStep
                If SequenceDescription(Seq, X, PLC) <> "" Then
                    seqValid = True
                    Exit For
                End If
            Next X
            
            If seqValid Then
                .AddItem Format$(Seq, "#0") & " -  " & SequenceName(Seq, PLC)
                .ItemData(.NewIndex) = Seq
            End If
        Next Seq
           
    End With
End Sub
Private Sub LoadSteps(Seq As Integer, PLC As Integer)
    
    With cmbSteps
        .Clear
        For n = 0 To MaxSeqStep
            'If (SequenceDescription(Seq, n, PLC) = "" And (n > 0)) Then Exit For
            If (SequenceDescription(Seq, n, PLC) <> "") Then
                .AddItem SequenceDescription(Seq, n, PLC)
                .ItemData(.NewIndex) = n
            End If
        Next n
        'If SequenceStep(Seq, PLC) > 0 And SequenceStep(Seq, PLC) <= .ListCount - 1 Then
        '    .ListIndex = SequenceStep(Seq, PLC)
        'Else
        '    .ListIndex = 0
        'End If
        
        .Visible = False
        
    End With
    
End Sub

