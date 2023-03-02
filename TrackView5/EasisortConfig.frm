VERSION 5.00
Begin VB.Form EasisortConfig_frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Eadsfsdfsd"
   ClientHeight    =   2400
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   6255
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   8.25
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
   ScaleHeight     =   2400
   ScaleWidth      =   6255
   Begin VB.ComboBox cmb_PulseConfig 
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
      Index           =   0
      Left            =   3675
      Style           =   2  'Dropdown List
      TabIndex        =   7
      Top             =   240
      Width           =   2355
   End
   Begin VB.ComboBox cmb_PulseConfig 
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
      Index           =   1
      Left            =   3675
      Style           =   2  'Dropdown List
      TabIndex        =   6
      Top             =   750
      Width           =   2355
   End
   Begin VB.ComboBox cmb_PulseConfig 
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
      Index           =   2
      Left            =   3675
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Top             =   1260
      Width           =   2355
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
      Left            =   4860
      TabIndex        =   1
      Top             =   1800
      Width           =   1215
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
      Left            =   3480
      TabIndex        =   0
      Top             =   1800
      Width           =   1215
   End
   Begin VB.Label lbl_SetWgt 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Label1"
      Height          =   255
      Left            =   180
      TabIndex        =   4
      Top             =   1260
      Width           =   3495
   End
   Begin VB.Label lbl_TimeOff 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Label1"
      Height          =   255
      Left            =   180
      TabIndex        =   3
      Top             =   750
      Width           =   3495
   End
   Begin VB.Label lbl_TimeOn 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Label1"
      Height          =   255
      Left            =   180
      TabIndex        =   2
      Top             =   240
      Width           =   3495
   End
End
Attribute VB_Name = "EasisortConfig_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ES_Scaler(0 To 2) As Integer
Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub cmdSend_Click()
    Dim PLCStn As Integer
    PLCStn = 0
    For Each cmb In cmb_PulseConfig
        n = cmb.Index
        ES_PulseConfig(n) = cmb.ListIndex * ES_Scaler(n)
        Data(n) = cmb.ListIndex * ES_Scaler(n)
    Next cmb
    Call Comms_frm.WritePLC(PLCStn, "D", 86, 3, Data, False, "ES Config")
    Unload Me
End Sub

Private Sub Form_Activate()
    CenterForm Me
End Sub

Private Sub Form_Load()
    Dim txtbox As TextBox
    Dim n As Integer

    ES_Scaler(0) = 10
    ES_Scaler(1) = 10
    ES_Scaler(2) = 1
    
    For n = 0 To 500
        cmb_PulseConfig(2).AddItem Format$(n / 10, "00.0") & " " & TextWord(224), n
    Next n

    For n = 0 To 50
        cmb_PulseConfig(0).AddItem Format$(n / 10, "0.0") & " " & TextWord(491), n
        cmb_PulseConfig(1).AddItem Format$(n / 10, "0.0") & " " & TextWord(491), n
    Next n
    Dim cmb As ComboBox
     
    For Each cmb In cmb_PulseConfig
        n = cmb.Index
        If ES_PulseConfig(n) / 10 < cmb.ListCount Then
            cmb.ListIndex = ES_PulseConfig(n) / ES_Scaler(n)
        Else
            cmb.ListIndex = 0
        End If
    Next cmb

    lbl_TimeOn.Caption = TextWord(469)
    lbl_TimeOff.Caption = TextWord(478)
    lbl_SetWgt.Caption = TextWord(479)


End Sub




