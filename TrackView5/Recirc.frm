VERSION 5.00
Begin VB.Form Recirc_Frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Recirculation"
   ClientHeight    =   2355
   ClientLeft      =   4065
   ClientTop       =   1680
   ClientWidth     =   8865
   ForeColor       =   &H00000000&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   2355
   ScaleWidth      =   8865
   ShowInTaskbar   =   0   'False
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
      Left            =   75
      TabIndex        =   15
      Text            =   "cmbPLC"
      Top             =   60
      Width           =   3165
   End
   Begin VB.ComboBox cmbManLineOffgoing 
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
      Height          =   330
      Left            =   2100
      Style           =   2  'Dropdown List
      TabIndex        =   14
      Top             =   1605
      Width           =   765
   End
   Begin VB.ComboBox cmbSearchDepth 
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
      Height          =   330
      Left            =   4950
      Style           =   2  'Dropdown List
      TabIndex        =   13
      Top             =   1230
      Width           =   765
   End
   Begin VB.ComboBox cmbManBagsOffgoing 
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
      Height          =   330
      Left            =   2100
      Style           =   2  'Dropdown List
      TabIndex        =   12
      Top             =   1230
      Width           =   765
   End
   Begin VB.ComboBox cmbManBagsOngoing 
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
      Height          =   330
      Left            =   375
      Style           =   2  'Dropdown List
      TabIndex        =   11
      Top             =   1230
      Width           =   765
   End
   Begin VB.ComboBox cmbManLineOngoing 
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
      Height          =   330
      Left            =   375
      Style           =   2  'Dropdown List
      TabIndex        =   10
      Top             =   1605
      Width           =   765
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
      Left            =   7575
      TabIndex        =   8
      Top             =   1830
      Width           =   1215
   End
   Begin VB.CommandButton Cmd_Send 
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
      Left            =   7575
      TabIndex        =   7
      Top             =   1305
      Width           =   1215
   End
   Begin VB.CheckBox Auto_Recirculation 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Auto_Recirculation"
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
      Height          =   240
      Left            =   3300
      TabIndex        =   6
      Top             =   1905
      Width           =   4065
   End
   Begin VB.Label Auto_Label 
      Appearance      =   0  'Flat
      BackStyle       =   0  'Transparent
      Caption         =   "Automatic Recirculation"
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
      Height          =   240
      Left            =   3375
      TabIndex        =   9
      Top             =   555
      Width           =   3015
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00000000&
      X1              =   7425
      X2              =   7425
      Y1              =   555
      Y2              =   2205
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00000000&
      X1              =   3225
      X2              =   3225
      Y1              =   555
      Y2              =   2205
   End
   Begin VB.Label Search_Label 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackStyle       =   0  'Transparent
      Caption         =   "Search Depth"
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
      Height          =   240
      Left            =   3300
      TabIndex        =   5
      Top             =   930
      Width           =   4065
   End
   Begin VB.Label Offgoing_Label 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackStyle       =   0  'Transparent
      Caption         =   "Offgoing"
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
      Height          =   240
      Left            =   1875
      TabIndex        =   4
      Top             =   930
      Width           =   1140
   End
   Begin VB.Label Ongoing_Label 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackStyle       =   0  'Transparent
      Caption         =   "Ongoing"
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
      Height          =   240
      Left            =   150
      TabIndex        =   3
      Top             =   930
      Width           =   1140
   End
   Begin VB.Label Manual_Label 
      Appearance      =   0  'Flat
      BackStyle       =   0  'Transparent
      Caption         =   "Manual Recirculation"
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
      Height          =   240
      Left            =   75
      TabIndex        =   2
      Top             =   555
      Width           =   3165
   End
   Begin VB.Label BagsM_Label 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackStyle       =   0  'Transparent
      Caption         =   "Bags"
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
      Height          =   240
      Left            =   1200
      TabIndex        =   1
      Top             =   1305
      Width           =   765
   End
   Begin VB.Label LineM_Label 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackStyle       =   0  'Transparent
      Caption         =   "Line"
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
      Height          =   240
      Left            =   1200
      TabIndex        =   0
      Top             =   1680
      Width           =   765
   End
End
Attribute VB_Name = "Recirc_Frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim PLCStn As Integer
Private Sub LoadText()
    
    On Error Resume Next
    cmd_Send.Caption = TextWord(287)
    Cmd_exit.Caption = TextWord(309)
   
    
    Manual_Label.Caption = TextWord(444)
    Auto_Label.Caption = TextWord(445)
    Ongoing_Label.Caption = TextWord(3)
    Offgoing_Label.Caption = TextWord(4)
    Search_Label.Caption = TextWord(446)
    LineM_Label.Caption = TextWord(86)
    BagsM_Label.Caption = TextWord(156)
    Auto_Recirculation.Caption = TextWord(447)
    Dim ShowManual As Boolean
    ShowManual = False
    
    If RecircOngoing(PLCStn) Or RecircOffgoing(PLCStn) Then
        ShowManual = True
    End If
 
    LineM_Label.Visible = ShowManual
    BagsM_Label.Visible = ShowManual
    Manual_Label.Visible = ShowManual

    Auto_Label.Visible = AutomaticRecirculation(PLCStn)
    Search_Label.Visible = AutomaticRecirculation(PLCStn)
    cmbSearchDepth.Visible = AutomaticRecirculation(PLCStn)
    Auto_Recirculation.Visible = AutomaticRecirculation(PLCStn)

    Ongoing_Label.Visible = RecircOngoing(PLCStn)
    cmbManBagsOngoing.Visible = RecircOngoing(PLCStn)
    cmbManLineOngoing.Visible = RecircOngoing(PLCStn)

    Offgoing_Label.Visible = RecircOffgoing(PLCStn)
    cmbManBagsOffgoing.Visible = RecircOffgoing(PLCStn)
    cmbManLineOffgoing.Visible = RecircOffgoing(PLCStn)

End Sub

Private Sub Auto_Recirculation_Click()
    
    If Auto_Recirculation.Value = 1 Then
        AutoRecirc(PLCStn) = 1
    Else
        AutoRecirc(PLCStn) = 0
    End If

End Sub

Private Sub cmbPLC_Click()
    If cmbPLC.ItemData(cmbPLC.ListIndex) <> PLCStn Then
        Config (cmbPLC.ItemData(cmbPLC.ListIndex))
    End If
End Sub

Private Sub Cmd_exit_Click()
    EnableForms
    Unload Me
End Sub
Private Sub Cmd_send_Click()
    
    cmd_Send.Enabled = False
    
    Data(0) = Auto_Recirculation.Value
    Data(1) = Val(cmbSearchDepth.Text)
    Data(2) = Val(cmbManLineOngoing.Text)
    Data(3) = Val(cmbManBagsOngoing.Text)
    Comms_frm.WritePLC PLCStn, "D", 1003, 4, Data(), DebugToErrorFile, "Recirc"
    
    Data(0) = Val(cmbManLineOffgoing.Text)
    Data(1) = Val(cmbManBagsOffgoing.Text)
    Comms_frm.WritePLC PLCStn, "D", 1016, 2, Data(), DebugToErrorFile, "Recirc"
        
    cmd_Send.Enabled = True

End Sub

Public Sub Config(PLCStation As Integer)
    
   
    cmbPLC.Clear
    For n = 0 To MaxPLC
        If AutomaticRecirculation(n) Or RecircOngoing(n) Or RecircOffgoing(n) Then
            cmbPLC.AddItem PLCName(n)
            cmbPLC.ItemData(cmbPLC.NewIndex) = n
        End If
    Next n
    For n = PLCStation To MaxPLC
        If AutomaticRecirculation(n) Or RecircOngoing(n) Or RecircOffgoing(n) Then
            PLCStn = n
            Exit For
        End If
        If n = MaxPLC Then
            Unload Me
        End If
   Next n
    For Item = 0 To cmbPLC.ListCount - 1
       If cmbPLC.ItemData(Item) = PLCStn Then
            cmbPLC.ListIndex = Item
            Exit For
       Else
            cmbPLC.ListIndex = -1
       End If
    Next Item
    LoadText

    If AutoRecirc(PLCStn) = 1 Then
        Auto_Recirculation.Value = 1
    Else
        Auto_Recirculation.Value = 0
    End If
    
    
    'Manual Line Combo Ongoing
    cmbManLineOngoing.Clear
    cmbManLineOngoing.AddItem "0"
    For n = 1 To PLCMaxLines(PLCStn)
        cmbManLineOngoing.AddItem Format$(n)
    Next n
    If OnManualLine(PLCStn) >= 0 And OnManualLine(PLCStn) <= PLCMaxLines(PLCStn) Then
        cmbManLineOngoing.ListIndex = Val(OnManualLine(PLCStn))
    Else
        cmbManLineOngoing.ListIndex = 0
    End If
    
    'Manual Bags Combo Ongoing
    cmbManBagsOngoing.Clear
    cmbManBagsOngoing.AddItem "0"
    For n = 1 To 9
        cmbManBagsOngoing.AddItem Format$(n)
    Next n
    If OnManualBags(PLCStn) >= 0 And OnManualBags(PLCStn) <= 9 Then
        cmbManBagsOngoing.ListIndex = Val(OnManualBags(PLCStn))
    Else
        cmbManBagsOngoing.ListIndex = 0
    End If
    
    'Manual Line Combo Offgoing
    cmbManLineOffgoing.Clear
    cmbManLineOffgoing.AddItem "0"
    For n = 1 To PLCMaxLines(PLCStn)
        cmbManLineOffgoing.AddItem Format$(n)
    Next n
    If OffManualLine(PLCStn) >= 0 And OffManualLine(PLCStn) <= PLCMaxLines(PLCStn) Then
        cmbManLineOffgoing.ListIndex = Val(OffManualLine(PLCStn))
    Else
        cmbManLineOffgoing.ListIndex = 0
    End If
    
    'Manual Bags Combo Offgoing
    cmbManBagsOffgoing.Clear
    cmbManBagsOffgoing.AddItem "0"
    For n = 1 To 9
        cmbManBagsOffgoing.AddItem Format$(n)
    Next n
    If OffManualBags(PLCStn) >= 0 And OffManualBags(PLCStn) <= 9 Then
        cmbManBagsOffgoing.ListIndex = Val(OffManualBags(PLCStn))
    Else
        cmbManBagsOffgoing.ListIndex = 0
    End If
    
    'Search Depth Combo
    cmbSearchDepth.Clear
    cmbSearchDepth.AddItem "0"
    For n = 1 To MaxRecircDepth
        cmbSearchDepth.AddItem Format$(n)
    Next n
    If RecircDepth(PLCStn) >= 0 And RecircDepth(PLCStn) <= MaxRecircDepth Then
        cmbSearchDepth.ListIndex = Val(RecircDepth(PLCStn))
    Else
        cmbSearchDepth.ListIndex = 0
    End If
    
End Sub
 

Private Sub Form_Load()
    CenterForm Me
   
End Sub
