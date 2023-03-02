VERSION 5.00
Begin VB.Form Fault_frm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Faults on system"
   ClientHeight    =   6795
   ClientLeft      =   2670
   ClientTop       =   2235
   ClientWidth     =   11865
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H80000008&
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   6795
   ScaleWidth      =   11865
   Begin VB.Frame fr_ExtendedAlarms 
      BorderStyle     =   0  'None
      Caption         =   "`"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3075
      Left            =   60
      TabIndex        =   4
      Top             =   3060
      Width           =   11715
      Begin VB.Label lbl_Notes 
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Alarm Extra Notes"
         Height          =   675
         Left            =   0
         TabIndex        =   9
         Top             =   2340
         Width           =   11715
      End
      Begin VB.Label lbl_Actions 
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Alarm Actions"
         Height          =   1995
         Left            =   5900
         TabIndex        =   8
         Top             =   300
         Width           =   5825
      End
      Begin VB.Label lbl_Details 
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Alarm Details"
         Height          =   1995
         Left            =   0
         TabIndex        =   7
         Top             =   300
         Width           =   5825
      End
      Begin VB.Label lbl_ActionsHdr 
         Alignment       =   2  'Center
         BackColor       =   &H00D2A03C&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Action"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   315
         Left            =   5900
         TabIndex        =   6
         Top             =   0
         Width           =   5825
      End
      Begin VB.Label lbl_DetailsHdr 
         Alignment       =   2  'Center
         BackColor       =   &H00D2A03C&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Details"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   315
         Left            =   0
         TabIndex        =   5
         Top             =   0
         Width           =   5825
      End
   End
   Begin VB.Frame fr_ButtonHolder 
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   6240
      Width           =   11715
      Begin VB.ComboBox cmb_PLCStn 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Left            =   60
         TabIndex        =   10
         Text            =   "Combo1"
         Top             =   0
         Width           =   3435
      End
      Begin VB.CommandButton cmd_History 
         Caption         =   "&History"
         Height          =   435
         Left            =   9000
         TabIndex        =   3
         Top             =   60
         Width           =   1275
      End
      Begin VB.CommandButton cmd_Exit 
         Caption         =   "&Exit"
         Height          =   435
         Left            =   10320
         TabIndex        =   2
         Top             =   60
         Width           =   1275
      End
   End
   Begin VB.Timer tmr_Update 
      Interval        =   1200
      Left            =   -60
      Top             =   0
   End
   Begin VB.ListBox lst_ActiveAlarms 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2760
      Left            =   60
      TabIndex        =   0
      Top             =   120
      Width           =   11715
   End
End
Attribute VB_Name = "Fault_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ListID As Integer
Private Const Space = 120
Private Const BorderWidth = 420

Private Sub cmb_PLCStn_Click()
    UpdateAlarms
End Sub

Private Sub cmd_Exit_Click()
    Unload Me
End Sub

Private Sub cmd_History_Click()
    DisplayForm FaultHistory_frm
End Sub

Private Sub Form_Activate()
    
    FormPosition Me, frmCheckPosition

End Sub

Private Sub Form_Deactivate()
    
    FormPosition Me, frmSavePosition
        
End Sub

Private Sub Form_Load()
    LoadPLCs
    FormPosition Me, frmReadPosition
    fr_ExtendedAlarms.Left = lst_ActiveAlarms.Left
    fr_ButtonHolder.Left = lst_ActiveAlarms.Left
    UpdateAlarms
    SetDisplay
       
End Sub


Private Sub UpdateAlarms()
    Dim n As Integer
    Dim AlarmString As String
    Dim SelItem As String
    SetTexts
    
    
    With lst_ActiveAlarms
        SelItem = .List(.ListIndex)
        .Clear
        For n = 0 To UBound(Alarm_ActiveList)
            If (Alarm_ActiveList(n).Seq > 0) Then
                'AlarmString = Alarm_ActiveList(n).TimeStamp & " - "
                 AlarmString = PLCName(Alarm_ActiveList(n).PLC) & " - " & _
                                Alarm_ActiveList(n).SeqName & _
                                TextWord(25) & " " & _
                                Alarm_ActiveList(n).Text.ID & ": " & _
                                Alarm_ActiveList(n).Text.Name & " " & _
                                Alarm_ActiveList(n).Extra
                
                If (Alarm_ActiveList(n).PLC = cmb_PLCStn.ListIndex) Or (cmb_PLCStn.ListIndex > UsedPLC) Then
                    .AddItem (AlarmString)
                    .ItemData(.NewIndex) = Alarm_ActiveList(n).Text.ID
                End If
            End If
        Next n
        
        'Set selected alarm
        If .ListCount = 0 And (cmb_PLCStn.ListIndex > UsedPLC) Then
            Unload Me
            Exit Sub
        End If
        For n = 0 To .ListCount
            If SelItem = "" Then
                .ListIndex = -1
                Exit For
                SetDisplay
            ElseIf .List(n - 1) = SelItem Then
                .ListIndex = n - 1
                Exit For
            ElseIf n = .ListCount Then
                .ListIndex = -1
                SetDisplay
            End If
        Next n
    
    End With
End Sub

Private Sub lst_ActiveAlarms_Click()
    SetDisplay
End Sub

Private Sub tmr_Update_Timer()
    UpdateAlarms
End Sub
Private Sub SetDisplay()

    If (lst_ActiveAlarms.ListIndex >= 0) Then
        Dim AlarmDataIndex As Integer
        'Show Expansion list
        lst_ActiveAlarms.Top = Space
        fr_ExtendedAlarms.Top = (Space * 2) + lst_ActiveAlarms.Height
        fr_ButtonHolder.Top = Space + fr_ExtendedAlarms.Top + fr_ExtendedAlarms.Height
        Me.Height = fr_ButtonHolder.Top + fr_ButtonHolder.Height + Space + BorderWidth
        fr_ExtendedAlarms.Visible = True
        AlarmDataIndex = lst_ActiveAlarms.ItemData(lst_ActiveAlarms.ListIndex)
        If AlarmDataIndex > 0 And AlarmDataIndex <= UBound(Alarm_Text) Then
            lbl_Details.Caption = Alarm_Text(AlarmDataIndex).Detail
            lbl_Actions.Caption = Alarm_Text(AlarmDataIndex).Remedy
            lbl_Notes.Caption = Alarm_Text(AlarmDataIndex).Note
        Else
            lbl_Details.Caption = ""
            lbl_Actions.Caption = ""
            lbl_Notes.Caption = ""
        End If
    Else
        fr_ExtendedAlarms.Visible = False
        lst_ActiveAlarms.Top = Space
        fr_ButtonHolder.Top = (Space * 2) + lst_ActiveAlarms.Height
        Me.Height = fr_ButtonHolder.Top + fr_ButtonHolder.Height + Space + BorderWidth
    End If
End Sub
Private Sub SetTexts()
    Me.Caption = TextWord(562)
    lbl_DetailsHdr.Caption = TextWord(700)
    lbl_ActionsHdr.Caption = TextWord(701)
    cmd_Exit.Caption = TextWord(309)
    cmd_History.Caption = TextWord(656)
End Sub
Private Sub LoadPLCs()
    Dim PLC As Integer
    
    
    For PLC = 0 To UsedPLC
        cmb_PLCStn.AddItem " " & Format$(PLC, "#0") & " -  " & PLCName(PLC)
        cmb_PLCStn.ItemData(cmb_PLCStn.NewIndex) = PLC
    Next PLC
    cmb_PLCStn.AddItem TextWord(411)
    cmb_PLCStn.ListIndex = UsedPLC + 1

End Sub
