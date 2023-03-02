VERSION 5.00
Begin VB.Form CustomerFIFO 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "CustomerFIFO"
   ClientHeight    =   6720
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3780
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6720
   ScaleWidth      =   3780
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_add 
      Caption         =   "+"
      Height          =   315
      Left            =   3300
      TabIndex        =   3
      Top             =   5700
      Width           =   315
   End
   Begin VB.CommandButton Cmd_exit 
      Caption         =   "&End"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   2400
      TabIndex        =   2
      Top             =   6225
      Width           =   1215
   End
   Begin VB.ListBox ListCustomer 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   5310
      ItemData        =   "CustomerFIFO.frx":0000
      Left            =   150
      List            =   "CustomerFIFO.frx":0002
      TabIndex        =   1
      Top             =   225
      Width           =   3465
   End
   Begin VB.ComboBox cmbCus 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   330
      Left            =   150
      Sorted          =   -1  'True
      TabIndex        =   0
      Text            =   "Customer"
      Top             =   5700
      Width           =   3090
   End
End
Attribute VB_Name = "CustomerFIFO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim PLCStn As Integer

Private Sub cmd_add_Click()

    Dim n       As Long
    Dim myCus   As String
     
    n = cmbCus.ItemData(cmbCus.ListIndex)
    
    If n > 0 Then
                  
        Data32(0) = n
        
        WriteD32 PLCStn, 499, 1, Data32()
                        
        myCus = dbGetLongFromNumVal(n, EditCus)
        ListCustomer.AddItem (Format$(myCus, "@@@@@@") _
                    & " - " & CusName(n))
    End If

End Sub

Private Sub Cmd_exit_Click()
    Unload Me
End Sub

Private Sub Form_Load()

    Me.Left = (Screen.Width - Me.Width) - 50
    Me.Top = 200
    Me.Caption = TextWord(568)
    
    Cmd_exit.Caption = TextWord(309)
    
    PLCStn = CustomerFIFO_PLC
    
    Dim n       As Long
    Dim myCus   As String
    
    For n = 1 To 96
        If CustomerList(n, PLCStn) > 0 Then
            myCus = dbGetLongFromNumVal(CLng(CustomerList(n, PLCStn)), EditCus)
            ListCustomer.AddItem (Format$(myCus, "@@@@@@") _
                & " - " & CusName(CustomerList(n, PLCStn)))
        End If
    Next n
                               
    'Add Names to Customer Selection Combo
    For n = 1 To MaxCus
        myCus = dbGetLongFromNumVal(n, EditCus)
        If myCus <> "" Then
            cmbCus.AddItem (Format$(myCus, "@@@@@@") & " - " & CusName(n))
            cmbCus.ItemData(cmbCus.NewIndex) = n
        End If
    Next n
      
    cmbCus.AddItem (Format$(0, "@@@@@@")), 0
    cmbCus.ItemData(cmbCus.NewIndex) = 0
    cmbCus.ListIndex = 0
    
End Sub

