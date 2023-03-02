VERSION 5.00
Begin VB.Form CustFIFO_frm 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Customer Database"
   ClientHeight    =   7815
   ClientLeft      =   45
   ClientTop       =   870
   ClientWidth     =   4905
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   7815
   ScaleWidth      =   4905
   ShowInTaskbar   =   0   'False
   Begin VB.TextBox lblHidden 
      Alignment       =   2  'Center
      BackColor       =   &H00FF8080&
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   -4500
      TabIndex        =   49
      Text            =   "lblHidden"
      Top             =   0
      Width           =   4215
   End
   Begin VB.TextBox lblNameTitle 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   225
      TabIndex        =   47
      Text            =   "Customer"
      Top             =   225
      Width           =   4215
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Command1"
      Height          =   465
      Left            =   2925
      TabIndex        =   46
      Top             =   7275
      Visible         =   0   'False
      Width           =   390
   End
   Begin VB.CommandButton cmdDelete 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      Caption         =   "-"
      Height          =   390
      Left            =   1500
      TabIndex        =   45
      Top             =   7350
      Width           =   1215
   End
   Begin VB.ComboBox cmbCus 
      ForeColor       =   &H00000000&
      Height          =   330
      Left            =   1350
      Sorted          =   -1  'True
      TabIndex        =   42
      Text            =   "cmbCus"
      Top             =   6900
      Width           =   3465
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   330
      Left            =   225
      TabIndex        =   44
      Text            =   "1"
      Top             =   6900
      Width           =   1140
   End
   Begin VB.Timer tmrUpdate 
      Interval        =   250
      Left            =   0
      Top             =   6675
   End
   Begin VB.CommandButton cmdInsert 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      Caption         =   "+"
      Height          =   390
      Left            =   225
      TabIndex        =   43
      Top             =   7350
      Width           =   1215
   End
   Begin VB.CommandButton cmdExit 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      Caption         =   "&Exit"
      Height          =   390
      Left            =   3600
      TabIndex        =   41
      Top             =   7350
      Width           =   1215
   End
   Begin VB.VScrollBar scrCategory 
      Height          =   6615
      Left            =   4500
      Max             =   79
      TabIndex        =   1
      Top             =   225
      Value           =   1
      Width           =   315
   End
   Begin VB.TextBox lblHeaderNum 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   225
      TabIndex        =   48
      Text            =   "No."
      Top             =   525
      Width           =   1140
   End
   Begin VB.TextBox lblHeaderName 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   1350
      TabIndex        =   50
      Text            =   "Customer"
      Top             =   525
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   101
      Left            =   225
      TabIndex        =   0
      Text            =   "1"
      Top             =   825
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   201
      Left            =   1350
      TabIndex        =   21
      Text            =   "1"
      Top             =   825
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   102
      Left            =   225
      TabIndex        =   2
      Text            =   "1"
      Top             =   1125
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   202
      Left            =   1350
      TabIndex        =   22
      Text            =   "1"
      Top             =   1125
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   103
      Left            =   225
      TabIndex        =   3
      Text            =   "1"
      Top             =   1425
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   203
      Left            =   1350
      TabIndex        =   23
      Text            =   "1"
      Top             =   1425
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   104
      Left            =   225
      TabIndex        =   4
      Text            =   "1"
      Top             =   1725
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   204
      Left            =   1350
      TabIndex        =   24
      Text            =   "1"
      Top             =   1725
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   105
      Left            =   225
      TabIndex        =   5
      Text            =   "1"
      Top             =   2025
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   106
      Left            =   225
      TabIndex        =   6
      Text            =   "1"
      Top             =   2325
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   107
      Left            =   225
      TabIndex        =   7
      Text            =   "1"
      Top             =   2625
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   108
      Left            =   225
      TabIndex        =   8
      Text            =   "1"
      Top             =   2925
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   109
      Left            =   225
      TabIndex        =   9
      Text            =   "1"
      Top             =   3225
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   205
      Left            =   1350
      TabIndex        =   25
      Text            =   "1"
      Top             =   2025
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   206
      Left            =   1350
      TabIndex        =   26
      Text            =   "1"
      Top             =   2325
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   207
      Left            =   1350
      TabIndex        =   27
      Text            =   "1"
      Top             =   2625
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   208
      Left            =   1350
      TabIndex        =   28
      Text            =   "1"
      Top             =   2925
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   209
      Left            =   1350
      TabIndex        =   29
      Text            =   "1"
      Top             =   3225
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   110
      Left            =   225
      TabIndex        =   10
      Text            =   "1"
      Top             =   3525
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   210
      Left            =   1350
      TabIndex        =   30
      Text            =   "1"
      Top             =   3525
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   111
      Left            =   225
      TabIndex        =   11
      Text            =   "1"
      Top             =   3825
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   211
      Left            =   1350
      TabIndex        =   31
      Text            =   "1"
      Top             =   3825
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   112
      Left            =   225
      TabIndex        =   12
      Text            =   "1"
      Top             =   4125
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   212
      Left            =   1350
      TabIndex        =   32
      Text            =   "1"
      Top             =   4125
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   113
      Left            =   225
      TabIndex        =   13
      Text            =   "1"
      Top             =   4425
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   213
      Left            =   1350
      TabIndex        =   33
      Text            =   "1"
      Top             =   4425
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   114
      Left            =   225
      TabIndex        =   14
      Text            =   "1"
      Top             =   4725
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   214
      Left            =   1350
      TabIndex        =   34
      Text            =   "1"
      Top             =   4725
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   115
      Left            =   225
      TabIndex        =   15
      Text            =   "1"
      Top             =   5025
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   215
      Left            =   1350
      TabIndex        =   35
      Text            =   "1"
      Top             =   5025
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   116
      Left            =   225
      TabIndex        =   16
      Text            =   "1"
      Top             =   5325
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   216
      Left            =   1350
      TabIndex        =   36
      Text            =   "1"
      Top             =   5325
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   117
      Left            =   225
      TabIndex        =   17
      Text            =   "1"
      Top             =   5625
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   217
      Left            =   1350
      TabIndex        =   37
      Text            =   "1"
      Top             =   5625
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   118
      Left            =   225
      TabIndex        =   18
      Text            =   "1"
      Top             =   5925
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   218
      Left            =   1350
      TabIndex        =   38
      Text            =   "1"
      Top             =   5925
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   119
      Left            =   225
      TabIndex        =   19
      Text            =   "1"
      Top             =   6225
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   219
      Left            =   1350
      TabIndex        =   39
      Text            =   "1"
      Top             =   6225
      Width           =   3090
   End
   Begin VB.TextBox txtbox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   120
      Left            =   225
      TabIndex        =   20
      Text            =   "1"
      Top             =   6525
      Width           =   1140
   End
   Begin VB.TextBox txtbox 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   220
      Left            =   1350
      TabIndex        =   40
      Text            =   "1"
      Top             =   6525
      Width           =   3090
   End
End
Attribute VB_Name = "CustFIFO_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim PLCStn            As Integer

Const MaxCusFIFO = 95      'D32[401] - D32[495]

Dim CustomerNum(MaxCusFIFO) As Long
Dim CustomerLong(MaxCusFIFO) As String
Dim CustomerName(MaxCusFIFO) As String


Dim n                       As Integer

'Each Set of boxes are 100 spaced by index
Const OffsetNum = 100
Const OffsetNam = 200

Dim MaxScroll               As Integer
Dim Stopped                 As Boolean
Dim cmbCusPosition          As Integer
Dim SelectedRow             As Integer


Public Sub Config(PLC As Integer, EditAllowed As Boolean)
        
    PLCStn = PLC
    Stopped = EditAllowed

End Sub


Private Sub cmbCus_Click()
    txtCus = CmbGetNum(cmbCus, EditCus)
End Sub

Private Sub cmdCancel_Click()
    Unload Me
End Sub



Private Sub cmdDelete_Click()
    
    Dim n   As Integer
            
    Data32(0) = ((Me.scrCategory.Value - 1) + SelectedRow)
    WriteD32 PLCStn, 497, 1, Data32()
        
    ErrorHandler 0, "CustFIFO Delete", "PLCStn=" & Str(PLCStn) & " Cus=" & Str(Data32(0)), False
    
End Sub

Private Sub cmdExit_Click()
    
    Screen.MousePointer = vbHourglass
    Me.CmdExit.Enabled = False
       
    Screen.MousePointer = vbArrow
    
    Unload Me

End Sub

Private Sub cmdInsert_Click()
          
    Dim n   As Integer
    Dim CusID As Integer
       
    Call dbGetIDFromLongID(EditCus, txtCus.Text, CusID)
        
    Data32(0) = ((Me.scrCategory.Value - 1) + SelectedRow)
    WriteD32 PLCStn, 496, 1, Data32()
    
    Data32(0) = CusNum(CusID)
    WriteD32 PLCStn, 499, 1, Data32()
    
    ErrorHandler 0, "CustFIFO Insert", "PLCStn=" & Str(PLCStn) & " Cus=" & Str(CusNum(CusID)), False
        
End Sub


Private Sub Command1_Click()
    Data32(0) = 999999
    WriteD32 PLCStn, 500, 1, Data32()
End Sub

Private Sub Form_Load()
               
    CenterForm Me
    Me.Top = 800
       
    cmdInsert.Enabled = Stopped
    cmdDelete.Enabled = Stopped
            
    MaxScroll = MaxCusFIFO - 19
    Me.scrCategory.Max = MaxScroll 'upto 99 with 20 txt boxes
    Me.scrCategory.LargeChange = 1
    Me.scrCategory.Min = 1
    Me.scrCategory.Value = 1
               
    'Add Names to Customer Selection Combo
    PopulateCustomerCombo cmbCus, TextWord(558)
    txtCus.Text = "0"
                   
    SetLanguage
    
    DisplayData
    
    HighlightRow 0 'Don't show highlight row
    
End Sub
 
Private Sub DisplayData()
    
    Dim n                   As Integer
    Dim CurrentTextPosn     As Integer
    Dim CurrentCat          As Integer
    Dim Index               As Integer
     
    Dim CusID               As Integer
              
    Index = 1
    
    For n = 1 To MaxCusFIFO
               
        If CustomerList(n, PLCStn) > 0 Then
            If CustomerList(n, PLCStn) <> CustomerNum(n) Then
                CustomerNum(n) = CustomerList(n, PLCStn)
                CustomerLong(n) = dbGetLongFromNumVal(CustomerNum(n), EditCus)
                Call dbGetID(EditCus, CustomerNum(n), CusID)
                CustomerName(n) = CusName(CusID)
            End If
        Else
            CustomerNum(n) = 0
            CustomerLong(n) = ""
            CustomerName(n) = ""
        End If
               
        If Index <= 20 Then
            
            If n >= Me.scrCategory.Value Then
                               
                txtbox(OffsetNum + Index) = CustomerLong(n)
                txtbox(OffsetNam + Index) = CustomerName(n)
                                                      
                Index = Index + 1
                           
            End If
        
        
        End If
    
    Next n
    
    'Blank the rest of the display if not used
    Do Until Index > 20
        
        txtbox(OffsetNum + Index) = ""
        txtbox(OffsetNam + Index) = ""
                
        Index = Index + 1
        
    Loop
    
End Sub







Private Sub lblHeaderNum_GotFocus()
    Me.lblHidden.SetFocus
End Sub

Private Sub lblNameTitle_GotFocus()
    Me.lblHidden.SetFocus
End Sub

Private Sub scrCategory_Change()
    DisplayData
    'cmbCus.Visible = False
End Sub
Private Sub tmrUpdate_Timer()
    DisplayData
End Sub

Private Sub txtBox_Click(Index As Integer)
    HighlightRow (Index)
End Sub

Private Sub SetLanguage()
    
    Me.Caption = TextWord(568)
    
    'Main Titles
    lblNameTitle.Text = TextWord(2)
    lblHeaderNum.Text = TextWord(335)
    lblHeaderName.Text = TextWord(614)
         
      
    'Other boxes and Buttons
    'Me.cmdCancel.Caption = TextWord(61)
    Me.CmdExit.Caption = TextWord(309)
    Me.cmdInsert.Caption = TextWord(64)
    Me.cmdDelete.Caption = TextWord(65)
    'Me.cmdSend.Caption = TextWord(287)
    
End Sub
Private Sub HighlightRow(Row As Integer)
   
    Row = Val(Right$(Format$(Row, "000"), 2))
   
    For n = 1 To 20
        If Stopped And Row = n Then
            'txtBox(OffsetNum + n).ForeColor = vbWhite
            txtbox(OffsetNum + n).BackColor = &H80FF80    'Green
            'txtBox(OffsetNam + n).ForeColor = vbWhite
            txtbox(OffsetNam + n).BackColor = &H80FF80    'Green
        Else
            txtbox(OffsetNum + n).ForeColor = &H800000
            txtbox(OffsetNum + n).BackColor = vbWhite
            txtbox(OffsetNam + n).ForeColor = &H800000
            txtbox(OffsetNam + n).BackColor = vbWhite
        End If
    Next n
    
    SelectedRow = Row
    
End Sub

Private Sub txtCus_Change()
    cmbCus.Text = dbGetNameFromNum(txtCus, EditCus)
End Sub

Private Sub txtCus_KeyDown(KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txtCus, KeyCode)
End Sub

Private Sub txtCus_KeyPress(KeyAscii As Integer)
    BoxKeyPress txtCus, KeyAscii, EditCus
End Sub
