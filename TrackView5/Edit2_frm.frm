VERSION 5.00
Begin VB.Form Edit2_frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Edit Bag"
   ClientHeight    =   3975
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8565
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3975
   ScaleWidth      =   8565
   ShowInTaskbar   =   0   'False
   Begin VB.TextBox txtBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      Height          =   465
      Index           =   1
      Left            =   3000
      TabIndex        =   0
      Text            =   "1"
      Top             =   825
      Width           =   1140
   End
   Begin VB.ComboBox cmbCat 
      BackColor       =   &H00FFFFFF&
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
      Height          =   465
      IntegralHeight  =   0   'False
      Left            =   4200
      Sorted          =   -1  'True
      TabIndex        =   1
      Text            =   "cmbCat"
      Top             =   825
      Width           =   4065
   End
   Begin VB.TextBox txtBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      Height          =   465
      Index           =   17
      Left            =   3000
      TabIndex        =   32
      Text            =   "Ur2"
      Top             =   5625
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      Height          =   465
      Index           =   16
      Left            =   3180
      TabIndex        =   31
      Text            =   "Ur1"
      Top             =   4200
      Width           =   1140
   End
   Begin VB.TextBox lblUr2 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00D2A03C&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   465
      Left            =   300
      TabIndex        =   30
      Text            =   "Ur2"
      Top             =   5625
      Width           =   2640
   End
   Begin VB.TextBox lblUr1 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00D2A03C&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   465
      Left            =   480
      TabIndex        =   29
      Text            =   "Ur1"
      Top             =   4200
      Width           =   2640
   End
   Begin VB.ComboBox cmbUr2 
      BackColor       =   &H00FFFFFF&
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
      Height          =   465
      ItemData        =   "Edit2_frm.frx":0000
      Left            =   4200
      List            =   "Edit2_frm.frx":0002
      TabIndex        =   28
      Text            =   "cmbUr2"
      Top             =   5625
      Width           =   3090
   End
   Begin VB.ComboBox cmbUr1 
      BackColor       =   &H00FFFFFF&
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
      Height          =   465
      ItemData        =   "Edit2_frm.frx":0004
      Left            =   4380
      List            =   "Edit2_frm.frx":0006
      TabIndex        =   27
      Text            =   "cmbUr1"
      Top             =   4200
      Width           =   4065
   End
   Begin VB.ComboBox cmbGrp 
      BackColor       =   &H00FFFFFF&
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
      Height          =   465
      IntegralHeight  =   0   'False
      Left            =   4200
      Sorted          =   -1  'True
      TabIndex        =   26
      Text            =   "cmbGrp"
      Top             =   300
      Width           =   4065
   End
   Begin VB.TextBox txtBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      Height          =   465
      Index           =   0
      Left            =   3000
      TabIndex        =   25
      Text            =   "1"
      Top             =   300
      Width           =   1140
   End
   Begin VB.TextBox lblGrp 
      BackColor       =   &H00DBD9D4&
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
      Height          =   465
      Left            =   4200
      TabIndex        =   23
      Text            =   "9999"
      Top             =   300
      Width           =   4065
   End
   Begin VB.TextBox lblGrpNo 
      Alignment       =   2  'Center
      BackColor       =   &H00DBD9D4&
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
      Left            =   3000
      TabIndex        =   22
      Text            =   "9999"
      Top             =   300
      Width           =   1140
   End
   Begin VB.TextBox lblHidden 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00D2A03C&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   465
      Left            =   150
      TabIndex        =   21
      Text            =   "Hidden"
      Top             =   6750
      Width           =   2640
   End
   Begin VB.TextBox lblDay 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00D2A03C&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   465
      Left            =   300
      TabIndex        =   20
      Text            =   "Day"
      Top             =   4575
      Width           =   2640
   End
   Begin VB.TextBox lblCount 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00D2A03C&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   465
      Left            =   300
      TabIndex        =   19
      Text            =   "Count"
      Top             =   6150
      Width           =   2640
   End
   Begin VB.TextBox lblKg 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00D2A03C&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   465
      Left            =   300
      TabIndex        =   18
      Text            =   "kg"
      Top             =   2385
      Width           =   2640
   End
   Begin VB.TextBox lblDestination 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00D2A03C&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   465
      Left            =   300
      TabIndex        =   17
      Text            =   "Destination"
      Top             =   1875
      Width           =   2640
   End
   Begin VB.TextBox lblCustomer 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00D2A03C&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   465
      Left            =   300
      TabIndex        =   16
      Text            =   "Customer"
      Top             =   1350
      Width           =   2640
   End
   Begin VB.TextBox lblCategory 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00D2A03C&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   465
      Left            =   300
      TabIndex        =   15
      Text            =   "Category"
      Top             =   825
      Width           =   2640
   End
   Begin VB.TextBox lblGroup 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00D2A03C&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   465
      Left            =   300
      TabIndex        =   14
      Text            =   "Group"
      Top             =   307
      Width           =   2640
   End
   Begin VB.TextBox txtBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      Height          =   465
      Index           =   8
      Left            =   3000
      TabIndex        =   10
      Text            =   "8"
      Top             =   4575
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      Height          =   465
      Index           =   5
      Left            =   3000
      TabIndex        =   7
      Text            =   "5"
      Top             =   6150
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      Height          =   465
      Index           =   4
      Left            =   3000
      TabIndex        =   6
      Text            =   "4"
      Top             =   2385
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      Height          =   465
      Index           =   3
      Left            =   3000
      TabIndex        =   4
      Text            =   "3"
      Top             =   1875
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      Height          =   465
      Index           =   2
      Left            =   3000
      TabIndex        =   2
      Text            =   "2"
      Top             =   1350
      Width           =   1140
   End
   Begin VB.ComboBox cmbDest 
      BackColor       =   &H00FFFFFF&
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
      Height          =   465
      ItemData        =   "Edit2_frm.frx":0008
      Left            =   4200
      List            =   "Edit2_frm.frx":000A
      TabIndex        =   5
      Text            =   "cmbDest"
      Top             =   1875
      Width           =   4065
   End
   Begin VB.ComboBox cmbCus 
      BackColor       =   &H00FFFFFF&
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
      Height          =   465
      Left            =   4200
      Sorted          =   -1  'True
      TabIndex        =   3
      Text            =   "cmbCus"
      Top             =   1350
      Width           =   4065
   End
   Begin VB.CommandButton cmd_cancel 
      BackColor       =   &H00DBD9D4&
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
      Left            =   5715
      TabIndex        =   8
      Top             =   3300
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
      Left            =   7020
      TabIndex        =   9
      Top             =   3300
      Width           =   1215
   End
   Begin VB.Label lbl_timestamp 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00DBD9D4&
      Caption         =   "Time Stamp"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Left            =   5595
      TabIndex        =   33
      Top             =   2430
      Width           =   2640
   End
   Begin VB.Label lblBag 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Bag"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Left            =   300
      TabIndex        =   24
      Top             =   2910
      Width           =   2640
   End
   Begin VB.Label lblBatchID 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00DBD9D4&
      Caption         =   "BatchID"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Left            =   5595
      TabIndex        =   13
      Top             =   3000
      Width           =   2640
   End
   Begin VB.Label lblBagID 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00DBD9D4&
      Caption         =   "Bag ID"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Left            =   5595
      TabIndex        =   12
      Top             =   2715
      Width           =   2640
   End
   Begin VB.Label lblGrpError 
      BackStyle       =   0  'Transparent
      Caption         =   "lblGrpError"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   300
      TabIndex        =   11
      Top             =   75
      Width           =   6990
   End
End
Attribute VB_Name = "Edit2_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim n As Integer
Dim Changed As Boolean
Dim EditBag As Integer
Dim BagNum  As Integer
Dim LocalBagID As Integer
Dim LocalBatchID As Long
Dim PLCStn  As Integer

Dim CatVal  As Integer
Dim CusVal  As Integer

Private Sub SetLanguage()
    
    Me.Caption = TextWord(321)
    
    lblGroup.Text = TextWord(676) & " "
    lblCategory.Text = TextWord(35) & " "
    lblCustomer.Text = TextWord(33) & " "
       
    lblKg.Text = TextWord(224) & " "
    lblCount.Text = TextWord(215) & " "
    lblDestination.Text = TextWord(262) & " "
        
    lblDay.Text = TextWord(474) & " "
    
    cmd_cancel.Caption = TextWord(61)
    Cmd_OK.Caption = TextWord(60)
    
End Sub
Private Sub cmbCat_Click()
    
    On Error Resume Next
        
    Dim Cat As Long
    Dim CatID As Integer
    
    Cat = cmbCat.ItemData(cmbCat.ListIndex)
        
    If (dbSettingValue(CatDbLongEntry) <> "0") Then
        txtBox(EditCat).Text = CatLong(Cat)
    Else
        txtBox(EditCat).Text = Format$(Cat)
    End If
    
    'Show Program
    Call dbGetGrpInfo(Cat, GroupNo, GroupName)
    lblGrpNo.Text = GroupNo
    lblGrp.Text = " " & GroupName
     
    
End Sub

Private Sub cmbCus_Click()
    
    On Error Resume Next
    
    Dim Num As Long
        
    Num = cmbCus.ItemData(cmbCus.ListIndex)
        
    If (dbSettingValue(CusDbLongEntry) <> "0") Then
        txtBox(EditCus).Text = CusLong(Num)
    Else
        txtBox(EditCus).Text = Format$(Num)
    End If

End Sub


Private Sub cmbDest_Click()
    txtBox(EditDst).Text = cmbDest.ItemData(cmbDest.ListIndex)
End Sub


Private Sub cmbGrp_Click()
    
    On Error Resume Next
        
    Dim Grp As Long
        
    Grp = cmbGrp.ItemData(cmbGrp.ListIndex)
        
    If (dbSettingValue(GrpDbLongEntry) <> "0") Then
        txtBox(EditGrp).Text = GrpLong(Grp)
    Else
        txtBox(EditGrp).Text = Format$(Grp)
    End If
        
End Sub


Private Sub cmbUr1_Click()
    If PLCStn = 0 Then
        txtBox(EditUr1).Text = cmbUr1.ItemData(cmbUr1.ListIndex)
    End If
End Sub

Private Sub cmbUr2_Click()
    
    On Error Resume Next
    
    
    If PLCStn = 0 Then
        txtBox(EditUr2).Text = cmbUr2.ItemData(cmbUr2.ListIndex)
    ElseIf PLCStn = 1 Then
        txtBox(EditUr2).Text = cmbUr2.ItemData(cmbUr2.ListIndex)
    ElseIf PLCStn = 2 Then
        Dim myDate As Integer
        myDate = cmbUr2.ItemData(cmbUr2.ListIndex)
        txtBox(EditUr2).Text = TextWord(690 + Weekday(myDate, vbSunday))
    End If
    
End Sub

Private Sub cmd_cancel_Click()
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG Edit2_frm", "Cmd_Cancel_Click", False
    Unload Me
End Sub

Private Sub Cmd_OK_Click()
    
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG Edit2_frm", "Cmd_OK_Click", False
    
    On Error Resume Next
    
    Dim Grp     As Integer
    Dim Dst     As Integer
    Dim Wgt     As Integer
    Dim Cnt     As Integer
    Dim Ur1     As Integer
    Dim Bid     As Long
    Dim Cat     As Long
    Dim MIS     As Long
    Dim Cus     As Long
    Dim Ur2     As Long
    Dim TimeStamp As Long
    
    Dim Day     As Integer
           
    Dim GrpID   As Integer
    Dim CatID   As Integer
    Dim CusID   As Integer
    
    Dim StationBag As Boolean
    
    Dim DummyLong       As Long
    Dim DummyTime       As String
    Dim Notes           As String
    Dim Special         As Long
    
    If dbCatUsed Then
        Call dbGetIDFromLongID(EditGrp, lblGrpNo.Text, GrpID)
    Else
        Call dbGetIDFromLongID(EditGrp, txtBox(EditGrp).Text, GrpID)
    End If
    Call dbGetIDFromLongID(EditCat, txtBox(EditCat).Text, CatID)
    Call dbGetIDFromLongID(EditCus, txtBox(EditCus).Text, CusID)
    
    Grp = GrpNum(GrpID)
    Cat = CatNum(CatID)
    Cus = CusNum(CusID)
    
    If Not dbCatUsed Then
        Cat = Grp
    End If
    
    'Write The Display Values to the PLC
    '-----------------------------------
                
    'Write data to PLC
    Wgt = Val(txtBox(EditWgt).Text) * 10
    Cnt = Val(txtBox(EditCnt).Text)
    Dst = Val(txtBox(EditDst).Text)
    Day = Val(txtBox(EditDay).Text)
    'Bag ID is the same as it was
    Bid = LocalBagID
    MIS = LocalBatchID
    
        
    Ur1 = Val(txtBox(EditUr1).Text)
    Ur2 = Val(txtBox(EditUr2).Text)
        
    'If Category = 0 Then Clear all data except BID and MIS to ensure correct bag is deleted
    If Cat = 0 Then
        Grp = 0
        Dst = 0
        Wgt = 0
        Cnt = 0
        Ur1 = 0
        'Bid = 0
        Cat = 0
        'MIS = 0
        Cus = 0
        Ur2 = 0
        
        Day = 0
    End If
    
    If Demo Then
        BagGrp(EditBag, PLCStn) = Grp
        BagDst(EditBag, PLCStn) = Dst
        BagWgt(EditBag, PLCStn) = Wgt
        BagCnt(EditBag, PLCStn) = Cnt
        BagUr1(EditBag, PLCStn) = Ur1
        BagBid(EditBag, PLCStn) = Bid
        BagCat(EditBag, PLCStn) = Cat
        BagMis(EditBag, PLCStn) = MIS
        BagCus(EditBag, PLCStn) = Cus
        BagUr2(EditBag, PLCStn) = Ur2
        BagTimestamp(EditBag, PLCStn) = 0
        BagDay(EditBag, PLCStn) = Day
    End If
    
    StationBag = (BagNum >= StationBagsStart And BagNum <= StationBagsStart + (MaxStations - 1)) 'Use BagNum Here
    
    'If new bag then give bag ID
    If ((Bid = 0) And Not StationBag) Then
        EditBagID(PLCStn) = db_uspSettingGet("SettingsNetwork", "Config", "EditBagID" & Str(PLCStn), 1, PCNum)
        Bid = EditBagID(PLCStn)
        EditBagID(PLCStn) = (Bid + 1)
        If (EditBagID(PLCStn) > 999) Then
            EditBagID(PLCStn) = 1
        End If
        db_uspSettingSave "SettingsNetwork", "Config", "EditBagID" & Str(PLCStn), EditBagID(PLCStn), PCNum
    End If
    
    Dim CurrentTime As Date
    CurrentTime = Now
    
    'Log Changes
    If Not Demo Then
        If BagCat(EditBag, PLCStn) <> Cat Then db_uspWriteEditHistory PCNum, PLCStn, CurrentTime, EditBag, "BagEdit", "Category", Str(Cat), Str(BagCat(EditBag, PLCStn))
        If Cat > 0 Then
            If BagGrp(EditBag, PLCStn) <> Grp Then db_uspWriteEditHistory PCNum, PLCStn, CurrentTime, EditBag, "BagEdit", "Group", Str(Grp), Str(BagGrp(EditBag, PLCStn))
            If BagDst(EditBag, PLCStn) <> Dst Then db_uspWriteEditHistory PCNum, PLCStn, CurrentTime, EditBag, "BagEdit", "Destination", Str(Dst), Str(BagDst(EditBag, PLCStn))
            If BagWgt(EditBag, PLCStn) <> Wgt Then db_uspWriteEditHistory PCNum, PLCStn, CurrentTime, EditBag, "BagEdit", "Weight", Str(Wgt), Str(BagWgt(EditBag, PLCStn))
            If BagCnt(EditBag, PLCStn) <> Cnt Then db_uspWriteEditHistory PCNum, PLCStn, CurrentTime, EditBag, "BagEdit", "Count", Str(Cnt), Str(BagCnt(EditBag, PLCStn))
            If BagUr1(EditBag, PLCStn) <> Ur1 Then db_uspWriteEditHistory PCNum, PLCStn, CurrentTime, EditBag, "BagEdit", "Ur1", Str(Ur1), Str(BagUr1(EditBag, PLCStn))
            If BagBid(EditBag, PLCStn) <> Bid Then db_uspWriteEditHistory PCNum, PLCStn, CurrentTime, EditBag, "BagEdit", "Bid", Str(Bid), Str(BagBid(EditBag, PLCStn))
            
            If BagMis(EditBag, PLCStn) <> MIS Then db_uspWriteEditHistory PCNum, PLCStn, CurrentTime, EditBag, "BagEdit", "MIS", Str(MIS), Str(BagMis(EditBag, PLCStn))
            If BagCus(EditBag, PLCStn) <> Cus Then db_uspWriteEditHistory PCNum, PLCStn, CurrentTime, EditBag, "BagEdit", "Customer", Str(Cus), Str(BagCus(EditBag, PLCStn))
            If BagUr2(EditBag, PLCStn) <> Ur2 Then db_uspWriteEditHistory PCNum, PLCStn, CurrentTime, EditBag, "BagEdit", "Ur2", Str(Ur2), Str(BagUr2(EditBag, PLCStn))
            If BagDay(EditBag, PLCStn) <> Day Then db_uspWriteEditHistory PCNum, PLCStn, CurrentTime, EditBag, "BagEdit", "Day", Str(Day), Str(BagDay(EditBag, PLCStn))
        End If
    End If
    TimeStamp = BagTimestamp(EditBag, PLCStn)
    
    'Send bag Data
    'Call WriteBag(PLCStn, EditBag, Grp, Dst, Wgt, Cus, Cat, Bid, Cnt, Day)
            
    'New indirect edit
    Data32(0) = Grp
    Data32(1) = Dst
    Data32(2) = Wgt
    Data32(3) = Cnt
    Data32(4) = Ur1
    Data32(5) = Bid
    Data32(6) = Cat
    Data32(7) = MIS
    Data32(8) = Cus
    Data32(9) = Ur2
    Data32(10) = TimeStamp
    Data32(11) = 0
    Data32(12) = 0
    Data32(13) = 0
    Data32(14) = EditBag        'Posn Now
    Data32(15) = EditBag        'Posn New
    Data32(16) = 0              'Mode 0=Edit
    Data32(17) = AccessLevel    'TrackView access level
    Data32(18) = 1              'Status 1=Execute
             
    Call WriteD32(PLCStn, 501, 19, Data32())
              
    
    'Check if SortingStation
    Dim Station As Integer
    Dim StnBank As Integer
    If StationBag Then
        Station = ((EditBag - StationBagsStart) + 1)
        SendStationPLC PLCStn, Station, Cat, Cus
    End If
        
        
    Unload Me

End Sub
Public Sub Config(BagNo As Integer, Optional EditDestOnly As Boolean)
       
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG Edit2_frm", "Config BagNo=" & Str(BagNo), False
       
    On Error GoTo ConfigError
    
    Const myLightGrey = &HE0E0E0
    Const myRed = &H8080FF
    
    Dim GrpID       As Integer
    Dim GrpNum      As Long
    Dim PLCGrpID    As Integer
    Dim PLCGrpNum   As Long
    
    Dim CusID       As Integer
    Dim CusNum      As Long
    
    Dim CatID       As Integer
    Dim CatNum      As Long
        
    Dim Ur1ID       As Integer
    Dim Ur1Num      As Long
    
    Dim Ur2ID       As Integer
    Dim Ur2Num      As Long
    
        
    Dim Index       As Integer
            
    'PLCStn = PLC
    Call PLCIndexEncodeDecode(ModeTviewToPLC, BagNo, Index, PLCStn)
    
    CatNum = BagCat(Index, PLCStn)
    Call dbGetID(EditCat, CatNum, CatID)
    
    CusNum = BagCus(Index, PLCStn)
    Call dbGetID(EditCus, CusNum, CusID)
    
    
    If dbCatUsed Then
        GrpNum = CatGroup(CatID)
    Else
        GrpNum = BagGrp(Index, PLCStn)
    End If
    Call dbGetID(EditGrp, GrpNum, GrpID)
      
    
    'Program
    If (dbSettingValue(GrpDbLongEntry) <> "0") Then
        txtBox(EditGrp).Text = GrpLong(GrpID)
    Else
        txtBox(EditGrp).Text = Format$(GrpNum)
    End If
    
    'Add Names to Program Selection Combo
    PopulateGroupCombo cmbGrp, ""
    cmbGrp.Text = GrpName(GrpID)
         
    'PLC Program is not the same as allocated to the Category
    PLCGrpNum = BagGrp(Index, PLCStn)
    If GrpNum <> PLCGrpNum Then
        Call dbGetID(EditGrp, PLCGrpNum, PLCGrpID)
        lblGrpError.Caption = TextWord(689) & " " & TextWord(690) & " = " & Format(PLCGrpNum) & " " & GrpName(PLCGrpID)
        lblGrpError.Visible = True
    Else
        lblGrpError.Visible = False
    End If
    
    'Category
    If (dbSettingValue(CatDbLongEntry) <> "0") Then
        txtBox(EditCat).Text = CatLong(CatID)
    Else
        txtBox(EditCat).Text = Format$(CatNum)
    End If
    'Add Names to Customer Selection Combo
    PopulateCategoryCombo cmbCat, ""
    cmbCat.Text = CatName(CatID)
      
    'Customer
    If (dbSettingValue(CusDbLongEntry) <> "0") Then
        txtBox(EditCus).Text = CusLong(CusID)
    Else
        txtBox(EditCus).Text = Format$(CusNum)
    End If
    'Add Names to Customer Selection Combo
    PopulateCustomerCombo cmbCus, ""
    cmbCus.Text = CusName(CusID)
    
    txtBox(EditWgt).Text = Format$(BagWgt(Index, PLCStn) / 10, "00.0")
    
    txtBox(EditCnt).Text = Format$(BagCnt(Index, PLCStn))
    
    Dim Dest As Integer
    Dest = BagDst(Index, PLCStn)
    PopulateDestCombo cmbDest, PLCStn
    'If Dest <= MaxDestinations Then SUNLIGHT
    If Dest <= 6 Then
        cmbDest.Text = Format$(Dest) & " - " & DestinationText(Dest, PLCStn)
    Else
        cmbDest.Text = Format$(Dest)
    End If
    txtBox(EditDst).Text = Format$(Dest)
       
           
    EditBag = Index
    BagNum = BagNo
       
    lblCount.Visible = Counting
    txtBox(EditCnt).Visible = Counting
    
    lblKg.Visible = Weighing
    txtBox(EditWgt).Visible = Weighing
    
    lblDay.Visible = UseDay
    txtBox(EditDay).Visible = UseDay
    txtBox(EditDay).Text = Format$(BagDay(Index, PLCStn))
       
    
    'Destination Only - Populate labels and disable entry and combos
    lblGrpNo.Text = txtBox(EditGrp).Text
    lblGrp.Text = " " & GrpName(GrpID)
    'lblCatNo.Text = txtbox(EditCat).Text
   'lblCat.Text = " " & CatName(CatID)
    'lblCusNo.Text = txtbox(EditCus).Text
    'lblCus.Text = " " & CusName(CusID)
    If EditDestOnly Then
        lblGrpNo.Enabled = False
        lblGrp.Enabled = False
        cmbGrp.Enabled = False
        txtBox(EditGrp).Enabled = False
        cmbCat.Enabled = False
        txtBox(EditCat).Enabled = False
        cmbCus.Enabled = False
        txtBox(EditCus).Enabled = False
        txtBox(EditCnt).Enabled = False
        txtBox(EditWgt).Enabled = False
        txtBox(EditDay).Enabled = False
        cmbUr1.Enabled = False
        txtBox(EditUr1).Enabled = False
        cmbUr2.Enabled = False
        txtBox(EditUr2).Enabled = False
    End If
    
    'Category Database Not Used
    If Not dbCatUsed Then
        txtBox(EditCat).Visible = False
        cmbCat.Visible = False
        lblCategory.Visible = False
        
        lblGroup.Top = lblCategory.Top
        txtBox(EditGrp).Top = txtBox(EditCat).Top
        cmbGrp.Top = cmbCat.Top
        
        lblGrpNo.Visible = False
        lblGrp.Visible = False
    Else
        txtBox(EditGrp).Visible = False
        cmbGrp.Visible = False
    End If
    
    'UR1
'    If (PLCStn = 0) Then
'        Ur1Num = BagUr1(Index, PLCStn)
'        Call PopulateBagColourCombo(cmbUr1)
'        lblUr1.Text = TextWord(615)
'        cmbUr1.Text = TextWord(750 + Ur1Num)
'        txtbox(EditUr1).Text = Format$(Ur1Num)
'    Else
        lblUr1.Visible = False
        txtBox(EditUr1).Visible = False
        cmbUr1.Visible = False
'    End If
    
    'UR2
    Ur2Num = BagUr2(Index, PLCStn)
    'Call dbGetID(EditCleanDest, Ur2Num, Ur2ID)
    lblUr2.Text = ""
    cmbUr2.Text = ""
    txtBox(EditUr2).Text = Format$(Ur2Num)
    
    If BagTimestamp(Index, PLCStn) > 0 Then
         lbl_Timestamp.Caption = DateAdd("s", BagTimestamp(Index, PLCStn), TimeStampDateStart)
     Else
         lbl_Timestamp.Caption = "00/00/0000 00:00:00"
     End If
       
    'txtbox(EditGrp).SetFocus
    
    lblBag.Caption = "PLC=" & Format$(PLCStn) & " " & TextWord(44) & "=" & Index 'Format$(MyPopUpIndex)
    lblBagID.Caption = TextWord(44) & " " & "ID=" & Format$(BagBid(Index, PLCStn))
    lblBatchID.Caption = TextWord(520) & " " & "ID=" & Format$(BagMis(Index, PLCStn))
    lblBatchID.Visible = True
    
    LocalBagID = BagBid(Index, PLCStn)
    LocalBatchID = BagMis(Index, PLCStn)
    
Exit Sub
ConfigError:
    ErrorHandler Err, "Edit2_frm Config", Err.Description, False
    Resume Next
End Sub

Private Sub Form_Deactivate()
    Unload Me
End Sub

Private Sub Form_Load()
       
    CenterForm Me
    SetLanguage

End Sub

Public Function BoxKeyDown(Index As Integer, KeyCode As Integer)
    
    On Error Resume Next
    
    Dim NextBox     As Integer
    
    Dim LowLimit    As Integer
    Dim HghLimit    As Integer
        
    LowLimit = 0
    HghLimit = 7
        
      
    
    'Cursor Actions
    Select Case KeyCode
    
        Case vbKeyDown
NextDown:
            If Index < HghLimit Then
                If txtBox(Index + 1).Visible Then
                    txtBox(Index + 1).SetFocus
                Else
                    Index = Index + 1
                    GoTo NextDown
                End If
            Else
                If Cmd_OK.Enabled Then Cmd_OK.SetFocus
            End If
                 
        Case vbKeyUp
NextUp:
            If Index > LowLimit Then
                If txtBox(Index - 1).Visible Then
                    txtBox(Index - 1).SetFocus
                Else
                    Index = Index - 1
                    GoTo NextUp
                End If
            Else
                'Do Nothing
            End If
                               
        Case vbKeyDelete
            If Index <> EditBid Then
                'Do Nothing
            Else
                KeyCode = 0 'Don't allow batch code to be changed
            End If
                        
        Case vbKeyBack
            If txtBox(Index).SelStart > 0 And txtBox(Index).SelLength = 0 Then
                txtBox(Index).SelStart = txtBox(Index).SelStart - 1
                KeyCode = vbKeyDelete
            End If
        Case Else
            'Do Nothing
            
    End Select
    
    BoxKeyDown = KeyCode
    
End Function

Private Sub lblBatch_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub lblCategory_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub lblCount_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub lblCustomer_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub lblDay_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub lblDestination_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub lblKg_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub lblGrp_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub lblGrpNo_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub lblProgram_GotFocus()
    lblHidden.SetFocus
End Sub
Private Sub lblUr2_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub txtBox_Change(Index As Integer)
    
    On Error Resume Next
          
    Select Case Index
        Case EditGrp
            cmbGrp.Text = dbGetNameFromNum(txtBox(Index), EditGrp)
        Case EditCat
            cmbCat.Text = dbGetNameFromNum(txtBox(Index), EditCat)
            'Show Program
            Call dbGetGrpInfo(txtBox(Index).Text, GroupNo, GroupName)
            lblGrpNo.Text = GroupNo
            lblGrp.Text = " " & GroupName
                   
        Case EditCus
            cmbCus.Text = dbGetNameFromNum(txtBox(Index), EditCus)
        
        Case EditDst
            cmbDest.Text = DestinationText(Val(txtBox(Index)), PLCStn)
            
        Case EditUr2
            
            
        Case Else
            'Do Nothing
    End Select
    
    Me.Cmd_OK.Enabled = EnableOk
    
End Sub

Private Sub txtBox_GotFocus(Index As Integer)
    HighlightTextBox txtBox(Index)
End Sub

Private Sub txtBox_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    KeyCode = BoxKeyDown(Index, KeyCode)
End Sub

Private Sub txtBox_KeyPress(Index As Integer, KeyAscii As Integer)
    BoxKeyPress txtBox(Index), KeyAscii, Index
End Sub

Private Function EnableOk()
    
    Dim Grp     As Long
    Dim GrpID   As Integer
    Dim Cat     As Long
    Dim CatID   As Integer
    Dim Cus     As Long
    Dim CusID   As Integer
    
    If dbCatUsed Then
        Call dbGetIDFromLongID(EditGrp, lblGrpNo.Text, GrpID)
    Else
        Call dbGetIDFromLongID(EditGrp, txtBox(EditGrp).Text, GrpID)
    End If
    Call dbGetIDFromLongID(EditCat, txtBox(EditCat).Text, CatID)
    Call dbGetIDFromLongID(EditCus, txtBox(EditCus).Text, CusID)
    
    Grp = GrpNum(GrpID)
    Cat = CatNum(CatID)
    Cus = CusNum(CusID)
    
    If (Grp = 0) Then lblGrp.Text = " " & TextWord(698)
    If (Cat = 0) Then cmbCat.Text = TextWord(698)
    If (Cus = 0) Then cmbCus.Text = TextWord(698)
    
    If Not dbCatUsed Then Cat = Grp 'Category Databse is not used
    
    EnableOk = True '((Grp <> 0) And (Cat <> 0) And (Cus <> 0)) Or (txtBox(EditCat).Text = "") Or (txtBox(EditCat).Text = "0")
    
End Function

Private Sub txtUr1_GotFocus()
    lblHidden.SetFocus
End Sub
