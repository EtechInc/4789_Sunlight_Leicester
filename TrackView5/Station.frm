VERSION 5.00
Begin VB.Form Station_frm 
   Appearance      =   0  'Flat
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Weighstations"
   ClientHeight    =   11040
   ClientLeft      =   3960
   ClientTop       =   4815
   ClientWidth     =   9975
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   DrawWidth       =   5
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   12
      Charset         =   161
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H80000008&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   11040
   ScaleWidth      =   9975
   Begin VB.CommandButton cmd_Restore 
      Caption         =   "&Restore"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   8250
      TabIndex        =   32
      Top             =   4980
      Width           =   1515
   End
   Begin VB.ComboBox cmbPLC 
      BackColor       =   &H00D2A03C&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      IntegralHeight  =   0   'False
      Left            =   225
      TabIndex        =   30
      Text            =   "cmbPLC"
      Top             =   675
      Visible         =   0   'False
      Width           =   9540
   End
   Begin VB.TextBox lblHidden 
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
      ForeColor       =   &H00800000&
      Height          =   315
      Left            =   -5000
      TabIndex        =   29
      Text            =   "lblHidden"
      Top             =   3000
      Width           =   3090
   End
   Begin VB.TextBox lblKgNow 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   8925
      TabIndex        =   28
      Text            =   "0"
      Top             =   4650
      Width           =   840
   End
   Begin VB.TextBox lblKg 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   8925
      TabIndex        =   27
      Text            =   "lblKg"
      Top             =   4350
      Width           =   840
   End
   Begin VB.TextBox lblPointPerKg 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   7350
      TabIndex        =   26
      Text            =   "0"
      Top             =   4650
      Width           =   1515
   End
   Begin VB.TextBox lblCalCurrentRaw 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   5775
      TabIndex        =   25
      Text            =   "0"
      Top             =   4650
      Width           =   1515
   End
   Begin VB.TextBox lblCalTest 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   4200
      TabIndex        =   24
      Text            =   "0"
      Top             =   4650
      Width           =   1515
   End
   Begin VB.TextBox lblCalGain 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   2625
      TabIndex        =   23
      Text            =   "0"
      Top             =   4650
      Width           =   1515
   End
   Begin VB.TextBox lblCalZero 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   1050
      TabIndex        =   22
      Text            =   "0"
      Top             =   4650
      Width           =   1515
   End
   Begin VB.TextBox lblCalStn 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   150
      TabIndex        =   21
      Text            =   "0"
      Top             =   4650
      Width           =   840
   End
   Begin VB.TextBox lblStn 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   150
      TabIndex        =   14
      Text            =   "lblStn"
      Top             =   4350
      Width           =   840
   End
   Begin VB.TextBox lblPerKg 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   7350
      TabIndex        =   20
      Text            =   "lblPerKg"
      Top             =   4350
      Width           =   1515
   End
   Begin VB.TextBox lblRaw 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   5775
      TabIndex        =   19
      Text            =   "lblRaw"
      Top             =   4350
      Width           =   1515
   End
   Begin VB.TextBox lblTest 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   4200
      TabIndex        =   18
      Text            =   "lblTest"
      Top             =   4350
      Width           =   1515
   End
   Begin VB.TextBox lblGain 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2625
      TabIndex        =   17
      Text            =   "lblGain"
      Top             =   4350
      Width           =   1515
   End
   Begin VB.TextBox lblEmpty 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1050
      TabIndex        =   16
      Text            =   "lblEmpty"
      Top             =   4350
      Width           =   1515
   End
   Begin VB.TextBox lblWeighData 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   150
      TabIndex        =   15
      Text            =   "Weighing Data - lblWeighData"
      Top             =   4050
      Width           =   9615
   End
   Begin VB.CheckBox chkShowDetails 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Show Details"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   225
      TabIndex        =   13
      Top             =   3525
      Width           =   5640
   End
   Begin VB.CheckBox Optioncalibrate 
      BackColor       =   &H00DBD9D4&
      Caption         =   "optioncalibrate"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   225
      TabIndex        =   12
      Top             =   225
      Width           =   2865
   End
   Begin VB.TextBox lblWgt 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   8250
      TabIndex        =   11
      Text            =   "99.9kg"
      Top             =   2925
      Width           =   1515
   End
   Begin VB.TextBox lblSelect 
      BackColor       =   &H00D2A03C&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   4
      Left            =   225
      TabIndex        =   10
      Text            =   "5) Check the calibrated weight equals the test weight >"
      Top             =   2925
      Width           =   7965
   End
   Begin VB.TextBox lblSelect 
      BackColor       =   &H00D2A03C&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   3
      Left            =   225
      TabIndex        =   9
      Text            =   "4) Place the calibration weight in the station then press >"
      Top             =   2475
      Width           =   7965
   End
   Begin VB.TextBox lblSelect 
      BackColor       =   &H00D2A03C&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   2
      Left            =   225
      TabIndex        =   8
      Text            =   "3) Enter the calibration test weight >"
      Top             =   2025
      Width           =   7965
   End
   Begin VB.TextBox lblSelect 
      BackColor       =   &H00D2A03C&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   1
      Left            =   225
      TabIndex        =   7
      Text            =   "2) Ensure station is empty then press >"
      Top             =   1575
      Width           =   7965
   End
   Begin VB.TextBox lblSelect 
      BackColor       =   &H00D2A03C&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   0
      Left            =   225
      TabIndex        =   6
      Text            =   "1) Select station to be calibrated >"
      Top             =   1125
      Width           =   7965
   End
   Begin VB.CommandButton cmdGain 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Gain"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   8250
      TabIndex        =   5
      Top             =   2475
      Width           =   1515
   End
   Begin VB.ComboBox cmbTest 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   390
      Left            =   8250
      TabIndex        =   4
      Text            =   "00.0"
      Top             =   2025
      Width           =   1515
   End
   Begin VB.CommandButton cmdEmpty 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Empty"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   8250
      TabIndex        =   3
      Top             =   1575
      Width           =   1515
   End
   Begin VB.ComboBox cmbStn 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   390
      Left            =   8250
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   1125
      Width           =   1515
   End
   Begin VB.CheckBox Lamptest 
      BackColor       =   &H00DBD9D4&
      Caption         =   "lamptest"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   315
      Left            =   6300
      TabIndex        =   1
      Top             =   3450
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.Timer tmrUpdate 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   9450
      Top             =   75
   End
   Begin VB.CommandButton cmdExit 
      BackColor       =   &H00DBD9D4&
      Caption         =   "&End"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   8250
      TabIndex        =   0
      Top             =   3525
      Width           =   1515
   End
   Begin VB.Label lblPLC 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "PLC Name"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   390
      Left            =   225
      TabIndex        =   31
      Top             =   675
      Width           =   9540
   End
End
Attribute VB_Name = "Station_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim File As String
Dim TitleBar As String
Dim PLCStn As Integer
Dim Bank As Integer

Dim ShowDetailsExtraHeight As Integer
Dim OriginalHeight As Integer

Dim RequestStn As Long
Dim SentStn As Long
Dim Alternate As Boolean
Dim ReplyTimeOutCount As Integer
Private Sub LoadLanguage()
       
    Me.Caption = TextWord(897)
    Lamptest.Caption = TextWord(416)
    
    'fra_Weight.Caption = TextWord(214)
      
    cmdEmpty.Caption = TextWord(896)
    cmdGain.Caption = TextWord(897)
    Optioncalibrate.Caption = TextWord(218)
    cmdExit.Caption = TextWord(309)
    
    'Calibration prompts
    lblSelect(0).Text = TextWord(890)
    lblSelect(1).Text = TextWord(891)
    lblSelect(2).Text = TextWord(892)
    lblSelect(3).Text = TextWord(893)
    lblSelect(4).Text = TextWord(894)
    
    Me.chkShowDetails.Caption = TextWord(895)
    
    Me.lblWeighData.Text = TextWord(877)
    Me.lblStn.Text = TextWord(535)
    Me.lblEmpty.Text = TextWord(898)
    Me.lblGain.Text = TextWord(899)
    Me.lblTest.Text = TextWord(216)
    Me.lblRaw.Text = TextWord(879)
    Me.lblPerKg.Text = TextWord(878)
    Me.lblKg.Text = TextWord(224)
    
    Me.cmbTest.ToolTipText = TextWord(840)
    
'    lbl_station.Caption = TextWord(31)
'    lbl_testweight.Caption = TextWord(216)
'
'    Dim lbl As Label
'    For Each lbl In lbl_stn_title()
'        lbl_stn_title(lbl.Index).Caption = TextWord(335)
'        lbl_wgt_title(lbl.Index).Caption = TextWord(214)
'    Next lbl
      
End Sub


Private Sub chkShowDetails_Click()
    If chkShowDetails.Value = 1 Then
        Me.Height = OriginalHeight + ShowDetailsExtraHeight
    Else
        Me.Height = OriginalHeight
    End If
End Sub

Private Sub cmbStn_Click()
    StnCalDataExpress = Val(Me.cmbStn.Text)
End Sub

Private Sub cmbTest_Change()
    Dim Weight As Integer
    Weight = cmbTest.ListIndex
    db_uspSettingSave "SettingsNetwork", "Stations", "TestWeight", Weight, PCNum
End Sub

Private Sub cmd_Restore_Click()
    restoreCalibValues (PLStn)
End Sub

Private Sub cmdEmpty_Click()
    'Send Values to D995 to D997
    Data(0) = Val(Me.cmbStn.Text)
    Data(1) = 11 'Cal Low
    Data(2) = 0
    Comms_frm.WritePLC PLCStn, "D", 995, 3, Data(), DebugToErrorFile, "Station_frm"
    
    'SQL Server Calibration History
    StoreCalReadCount = 0 'Reset the comms read count
    StoreCalStation = Val(Me.cmbStn.Text) 'Set the station number
    StoreCalAction = "Empty" 'Set the action
    
End Sub

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub cmdGain_Click()
    'Send Values to D995 to D997
    Data(0) = Val(Me.cmbStn.Text)
    Data(1) = 12 'Cal High
    Data(2) = Val(Me.cmbTest.ListIndex)
    Comms_frm.WritePLC PLCStn, "D", 995, 3, Data(), DebugToErrorFile, "Station_frm"
    
    'SQL Server Calibration History
    StoreCalReadCount = 0 'Reset the comms read count
    StoreCalStation = Val(Me.cmbStn.Text) 'Set the station number
    StoreCalAction = "Gain" 'Set the action
    
End Sub

Private Sub Form_Load()
     
    CenterForm Me
    
    'PLCStn = PLC_Stn_Station_frm
    PLCStn = 0
    
    LoadPLCs
    
    cmd_Restore.Enabled = AccessLevel >= accEngineer
    cmd_Restore.Caption = TextWord(370)
    
    lblPLC.Caption = " " & Format$(PLCStn, "#0") & " -  " & PLCName(PLCStn)
        
    If SequenceStep(98, PLCStn) > 0 Then
        Optioncalibrate.Value = vbChecked
    Else
        Optioncalibrate.Value = vbUnchecked
    End If
        
    Me.Top = 1000 'Me.Top - 500
              
    LoadStns
        
    For n = 0 To 999
        cmbTest.AddItem Format$(n / 10, "00.0") & " " & TextWord(224), n
    Next n
    cmbTest.ListIndex = Val(db_uspSettingGet("SettingsNetwork", "Stations", "TestWeight", 200, PCNum))
    cmbTest.Enabled = False
       
    LoadLanguage
       
    If AccessLevel < accEngineer Then Optioncalibrate.Enabled = False
    
    OriginalHeight = Me.Height
    LoadExtraInfo
    
    tmrUpdate.Enabled = True
    
End Sub
Private Sub LoadStns()
    cmbStn.Clear
    For n = 0 To PLCMaxCalStns(PLCStn)
        cmbStn.AddItem Str(n), n '- 1
    Next n
    cmbStn.ListIndex = 0
    cmbStn.Enabled = (Optioncalibrate.Value <> 0)
End Sub
Private Sub cmbPLC_Click()
       
    PLCStn = cmbPLC.ItemData(cmbPLC.ListIndex)
    lblPLC.Caption = cmbPLC.Text
    cmbPLC.Visible = False
    LoadStns
    Me.Height = OriginalHeight
    Me.chkShowDetails.Value = 0
    LoadExtraInfo
    
End Sub
Private Sub LoadExtraInfo()
    
    On Error Resume Next
    
    'Load Extra Info
    
    If PLCMaxCalStns(PLCStn) > 0 Then
        ShowDetailsExtraHeight = 1000
        Me.chkShowDetails.Enabled = True
    Else
        ShowDetailsExtraHeight = 0
        Me.chkShowDetails.Enabled = False
    End If
      
    If PLCMaxCalStns(PLCStn) > 0 Then
        Me.lblCalStn(1).Visible = True
        Me.lblCalZero(1).Visible = True
        Me.lblCalGain(1).Visible = True
        Me.lblCalTest(1).Visible = True
        Me.lblCalCurrentRaw(1).Visible = True
        Me.lblPointPerKg(1).Visible = True
        Me.lblKgNow(1).Visible = True
    End If
            
    If PLCMaxCalStns(PLCStn) > 1 Then
               
        For n = 2 To PLCMaxCalStns(PLCStn)
            
            Load Me.lblCalStn(n)
            Load Me.lblCalZero(n)
            Load Me.lblCalGain(n)
            Load Me.lblCalTest(n)
            Load Me.lblCalCurrentRaw(n)
            Load Me.lblPointPerKg(n)
            Load Me.lblKgNow(n)
            
            newtop = Me.lblCalStn(n - 1).Top + Me.lblCalStn(n).Height
            
            Me.lblCalStn(n).Top = newtop
            Me.lblCalZero(n).Top = newtop
            Me.lblCalGain(n).Top = newtop
            Me.lblCalTest(n).Top = newtop
            Me.lblCalCurrentRaw(n).Top = newtop
            Me.lblPointPerKg(n).Top = newtop
            Me.lblKgNow(n).Top = newtop
            
            Me.lblCalStn(n).Visible = True
            Me.lblCalZero(n).Visible = True
            Me.lblCalGain(n).Visible = True
            Me.lblCalTest(n).Visible = True
            Me.lblCalCurrentRaw(n).Visible = True
            Me.lblPointPerKg(n).Visible = True
            Me.lblKgNow(n).Visible = True
            
            ShowDetailsExtraHeight = ShowDetailsExtraHeight + Me.lblCalStn(n).Height
            
        Next n
        If (n > 1) Then
            cmd_Restore.Top = newtop + Me.lblCalStn(n - 1).Height + 100
            ShowDetailsExtraHeight = ShowDetailsExtraHeight + cmd_Restore.Height + 200
        End If
    End If
    
    'When a higher number of staions have been shown and the PLC is changed to a lower number then hide the remaining
    Dim mylbl As TextBox
    
    For Each mylbl In Me.lblCalStn()
        n = mylbl.Index
        If n > PLCMaxCalStns(PLCStn) Then
            Me.lblCalStn(n).Visible = False
            Me.lblCalZero(n).Visible = False
            Me.lblCalGain(n).Visible = False
            Me.lblCalTest(n).Visible = False
            Me.lblCalCurrentRaw(n).Visible = False
            Me.lblPointPerKg(n).Visible = False
            Me.lblKgNow(n).Visible = False
        End If
    Next mylbl
    
    'Start requesting calibrations values
    StnCalDataCurrent = 1
    StnCalDataExpress = 0
    Data32(0) = StnCalDataCurrent
    Call WriteD32(PLCStn, 230, 1, Data32())
    
    
End Sub
Private Sub LoadPLCs()
    
    
    Dim PLC As Integer
        
    For PLC = 0 To UsedPLC
        cmbPLC.AddItem " " & Format$(PLC, "#0") & " -  " & PLCName(PLC)
        cmbPLC.ItemData(cmbPLC.NewIndex) = PLC
    Next PLC
   

End Sub
Private Sub Form_Unload(Cancel As Integer)
    'Clear requesting calibration values
    StnCalDataCurrent = 0
    StnCalDataExpress = 0
End Sub

Private Sub LampTest_Click()
    
    If Lamptest.Value = 1 Then
        Me.cmdExit.Enabled = False
        Data(0) = 1
    Else
        Me.cmdExit.Enabled = True
        Data(0) = 0
    End If
    
    Comms_frm.WritePLC PLCStn, "D", 998, 1, Data(), DebugToErrorFile, "Station_frm"
    
End Sub
Private Sub lblCalCurrentRaw_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub
Private Sub lblCalGain_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub
Private Sub lblCalStn_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub
Private Sub lblCalZero_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub
Private Sub lblEmpty_GotFocus()
    lblHidden.SetFocus
End Sub
Private Sub lblGain_GotFocus()
    lblHidden.SetFocus
End Sub
Private Sub lblKg_GotFocus()
    lblHidden.SetFocus
End Sub
Private Sub lblKgNow_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub
Private Sub lblPerKg_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub lblPLC_Click()
    cmbPLC.Text = lblPLC.Caption
    cmbPLC.Visible = True
End Sub

Private Sub lblPointPerKg_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub
Private Sub lblRaw_GotFocus()
    lblHidden.SetFocus
End Sub
Private Sub lblSelect_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub
Private Sub lblStn_GotFocus()
    lblHidden.SetFocus
End Sub
Private Sub lblTest_GotFocus()
    lblHidden.SetFocus
End Sub
Private Sub lblWeighData_GotFocus()
    lblHidden.SetFocus
End Sub
Private Sub lblWgt_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub OptionCalibrate_Click()
        
    If Optioncalibrate.Value = 0 Then
        Me.cmdEmpty.Enabled = False
        Me.cmdGain.Enabled = False
        Me.cmdExit.Enabled = True
        Me.Lamptest.Enabled = False
        Me.cmbStn.Enabled = False
        Me.cmbTest.Enabled = False
        Data(0) = 0
    Else
        Me.cmdEmpty.Enabled = True
        Me.cmdGain.Enabled = True
        Me.cmdExit.Enabled = False
        Me.Lamptest.Enabled = True
        Me.cmbStn.Enabled = True
        Me.cmbTest.Enabled = True
        Data(0) = 1
    End If
    
    
    Comms_frm.WritePLC PLCStn, "D", 998, 1, Data(), DebugToErrorFile, "Station_frm"
    

End Sub

Private Sub tmrUpdate_Timer()
    
    Dim SelStn  As Integer
    Dim StnLbl  As TextBox
    Dim n       As Integer
    Dim Points  As Long
    
    SelStn = Val(Me.cmbStn.Text)
    Me.lblWgt.Text = Format$(WeighReplyKg(SelStn, PLCStn) / 10, "#0.0")
    
    For Each StnLbl In Me.lblCalStn()
        
        n = StnLbl.Index
        
        Me.lblCalStn(n).Text = Format$(n)
        Me.lblCalZero(n).Text = Format$(WeighReplyZero(n, PLCStn))
        Me.lblCalGain(n).Text = Format$(WeighReplyHigh(n, PLCStn))
        Me.lblCalTest(n).Text = Format$(WeighReplyTest(n, PLCStn))
        Me.lblCalCurrentRaw(n).Text = Format$(WeighReplyRaw(n, PLCStn))
               
        Points = (WeighReplyHigh(n, PLCStn) - WeighReplyZero(n, PLCStn))
        If WeighReplyTest(n, PLCStn) > 0 Then
            Points = (Points / WeighReplyTest(n, PLCStn)) * 10
            Me.lblPointPerKg(n).Text = Format$(Points)
        Else
            Me.lblPointPerKg(n).Text = "**"
        End If
        
        Me.lblKgNow(n).Text = Format$(WeighReplyKg(n, PLCStn) / 10, "#0.0")
        
    Next StnLbl
    
    

    
End Sub
Private Sub restoreCalibValues(PLC As Integer)
    On Error Resume Next
    db_uspCalibrationHistory_GetLastValues (PLC)
        
    If UBound(RestoreCalibValue) > 0 Then
            
        'write the low values.
        For n = 1 To UBound(RestoreCalibValue)
            With RestoreCalibValue(n)
                Data(.Station) = .Low
            End With
        Next n
        Comms_frm.WritePLC PLCStn, "D", 4400, 100, Data(), False, "Restore Calib Low"
        'write the high values.
        For n = 1 To UBound(RestoreCalibValue)
            With RestoreCalibValue(n)
                Data(.Station) = .High
            End With
        Next n
        Comms_frm.WritePLC PLCStn, "D", 4500, 100, Data(), False, "Restore Calib High"
        'write the set values.
        For n = 1 To UBound(RestoreCalibValue)
            With RestoreCalibValue(n)
                Data(.Station) = .Set
            End With
        Next n
        Comms_frm.WritePLC PLCStn, "D", 4600, 100, Data(), False, "Restore Calib Set"
    
    End If

End Sub
