VERSION 5.00
Begin VB.Form RFIDOptions_frm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "RFID/Batch Options"
   ClientHeight    =   3405
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   7530
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   3405
   ScaleWidth      =   7530
   Begin VB.Frame Frame2 
      Caption         =   "Batch Options"
      Height          =   1155
      Left            =   120
      TabIndex        =   5
      Top             =   1320
      Width           =   7215
      Begin VB.CheckBox chk_RFIDOpts 
         Caption         =   "Ignore RFID readers"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   8
         Top             =   780
         Width           =   6795
      End
      Begin VB.CheckBox chk_RFIDOpts 
         Caption         =   "Ignore batch verification at dischargers."
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   7
         Top             =   540
         Width           =   6795
      End
      Begin VB.CheckBox chk_RFIDOpts 
         Caption         =   "Use RFID batch tracking"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   6
         Top             =   300
         Width           =   6795
      End
   End
   Begin VB.ComboBox cmb_PLCStn 
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
      Left            =   4560
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   120
      Width           =   2805
   End
   Begin VB.Frame Frame1 
      Caption         =   "Maintenance Loop Options"
      Height          =   615
      Left            =   120
      TabIndex        =   2
      Top             =   600
      Width           =   7215
      Begin VB.CheckBox chk_RFIDOpts 
         Caption         =   "Use bag maintenace tracking"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   3
         Top             =   240
         Width           =   6795
      End
   End
   Begin VB.CommandButton cmdSend 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      Caption         =   "&Send"
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
      Left            =   4800
      TabIndex        =   1
      Top             =   2880
      Width           =   1215
   End
   Begin VB.CommandButton cmdExit 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      Caption         =   "&Exit"
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
      Left            =   6180
      TabIndex        =   0
      Top             =   2880
      Width           =   1215
   End
End
Attribute VB_Name = "RFIDOptions_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim PLCStn As Integer
Dim LocalOpts(0 To 15, MaxPLC) As Boolean

Private Sub chk_RFIDOpts_Click(Index As Integer)
    LocalOpts(Index, PLCStn) = chk_RFIDOpts(Index).Value
End Sub

Private Sub cmb_PLCStn_Click()
    PLCStn = cmb_PLCStn.ListIndex
    ReadData
End Sub

Private Sub cmdExit_Click()
    Unload Me
End Sub
Private Sub cmdSend_Click()
    SendData
End Sub
Private Sub SendData()
Dim n As Integer
For n = 0 To MaxPLC
    Data(0) = EncodeRFIDData(n)
    Comms_frm.WritePLC n, "D", 379, 1, Data(), True, "RFID/Batch Params"
Next n
End Sub
Private Sub ReadData()
  Dim chk As CheckBox
  For Each chk In chk_RFIDOpts
    If ((chk.Index >= 0) And (chk.Index < 16)) Then
        If LocalOpts(chk.Index, PLCStn) Then
            chk.Value = 1
        Else
            chk.Value = 0
        End If
    End If
  Next chk
End Sub
Private Sub Config()
    Dim n As Integer
    Dim PLC As Integer
    PLC = 0
    Do While PLC <= MaxPLC
        n = 0
        Do While n <= 15
            LocalOpts(n, PLC) = RFID_BatchOptions(n, PLC)
            n = n + 1
        Loop
        PLC = PLC + 1
    Loop
    WriteTexts
    Me.Caption = TextWord(951)
    PLCStn = 0
    ReadData
    LoadPLCs
    cmb_PLCStn.ListIndex = PLCStn
    
End Sub

Private Sub Form_Load()
    CenterForm Me
    Config
    ReadData
End Sub

Private Sub LoadPLCs()
    Dim PLC As Integer
    For PLC = 0 To UsedPLC
        cmb_PLCStn.AddItem " " & Format$(PLC, "#0") & " -  " & PLCName(PLC)
        cmb_PLCStn.ItemData(cmb_PLCStn.NewIndex) = PLC
    Next PLC
End Sub

Private Function EncodeRFIDData(PLC As Integer)

    Dim Bit As Boolean

    Dim Value As Integer
    Dim BitValue(0 To 15) As Integer
    Dim n As Integer
    'Set bit values
    BitValue(0) = 1
    BitValue(15) = -32768
    Value = 0
    For n = 0 To 15
        RFID_BatchOptions(n, PLC) = 0
        Bit = LocalOpts(n, PLC)
        If (n > 0) And (n < 15) Then BitValue(n) = (BitValue(n - 1) * 2)
        If Bit Then
            Value = CInt(Value + BitValue(n))
            RFID_BatchOptions(n, PLC) = 1
        End If
    Next n
    EncodeRFIDData = Value
End Function
Private Sub WriteTexts()
 Frame1.Caption = TextWord(952)
 Frame2.Caption = TextWord(953)
 Dim chk As CheckBox
 For Each chk In chk_RFIDOpts
     chk.Caption = TextWord(954 + chk.Index)
 Next chk
 

End Sub

