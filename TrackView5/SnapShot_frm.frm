VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form SnapShot_frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "PLC Snap Shot"
   ClientHeight    =   5625
   ClientLeft      =   5805
   ClientTop       =   4695
   ClientWidth     =   5490
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   5625
   ScaleWidth      =   5490
   ShowInTaskbar   =   0   'False
   Begin VB.Frame fr_PlcRead 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Read"
      Height          =   1095
      Left            =   60
      TabIndex        =   3
      Top             =   1260
      Width           =   5355
      Begin VB.TextBox txtFileName 
         Height          =   315
         Left            =   180
         TabIndex        =   5
         Top             =   540
         Width           =   3615
      End
      Begin VB.CommandButton cmd_Read 
         BackColor       =   &H00DBD9D4&
         Caption         =   "PLC Read"
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
         Left            =   4020
         TabIndex        =   4
         ToolTipText     =   "Copy of the current display to the selected file name"
         Top             =   480
         Width           =   1215
      End
      Begin VB.Label lbl_fileName 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Back up Name"
         Height          =   195
         Left            =   180
         TabIndex        =   6
         Top             =   300
         Width           =   3555
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
      Left            =   60
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   840
      Width           =   5325
   End
   Begin VB.CommandButton cmd_Exit 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Exit"
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
      Left            =   4140
      TabIndex        =   0
      Top             =   5100
      Width           =   1215
   End
   Begin MSComCtl2.Animation aniCopy 
      Height          =   690
      Left            =   60
      TabIndex        =   1
      Top             =   60
      Width           =   5340
      _ExtentX        =   9419
      _ExtentY        =   1217
      _Version        =   393216
      Center          =   -1  'True
      BackColor       =   14408148
      FullWidth       =   356
      FullHeight      =   46
   End
   Begin VB.Frame fr_Write 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Write"
      Height          =   2535
      Left            =   60
      TabIndex        =   7
      Top             =   2460
      Width           =   5355
      Begin VB.CheckBox chk_WriteRobo 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Write RB Data"
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   1800
         Visible         =   0   'False
         Width           =   4935
      End
      Begin VB.CheckBox chk_WriteCalib 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Write Calibration Data"
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   2040
         Width           =   4935
      End
      Begin VB.CheckBox chk_WritePLCData 
         BackColor       =   &H00DBD9D4&
         Caption         =   "Write PLC Data"
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   1560
         Width           =   4935
      End
      Begin VB.CommandButton cmd_Write 
         BackColor       =   &H00DBD9D4&
         Caption         =   "PLC Write"
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
         Left            =   4020
         TabIndex        =   9
         ToolTipText     =   "Copy of the current display to the selected file name"
         Top             =   780
         Width           =   1215
      End
      Begin VB.ComboBox cmb_Files 
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
         Left            =   120
         Style           =   2  'Dropdown List
         TabIndex        =   8
         Top             =   360
         Width           =   5085
      End
   End
End
Attribute VB_Name = "SnapShot_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim PLCStn As Integer


Private Sub Check1_Click()

End Sub

Private Sub cmb_PLCStn_Change()
    UpdateFilelist
End Sub

Private Sub cmb_PLCStn_Click()
    UpdateFilelist
End Sub

Private Sub cmd_Exit_Click()
    Unload Me
End Sub

Private Sub cmd_Read_Click()
    Dim Owner As String
    
    On Error GoTo cmd_Read_Error
    EnableButtons False
    PLCStn = cmb_PLCStn.ListIndex
    
    If txtFileName.Text = "" Then
        Owner = "Manual Snapshot"
    Else
        Owner = txtFileName.Text
    End If
        
    aniCopy.Play
    
    BackupDataRead PLCStn, Owner
    
    
    UpdateFilelist
    aniCopy.Stop
    EnableButtons True
    
cmd_Read_Error:
    ErrorHandler Err, "TrackView SnapShot_frm cmd_Read", "", False
    aniCopy.Stop
End Sub
Private Sub cmd_Write_Click()
    
    On Error GoTo cmd_Write_Error
    Dim F As Integer
    Dim ID As Long
    EnableButtons False
    
    ID = cmb_Files.ItemData(cmb_Files.ListIndex)
    
    Debug.Print ID
    OutputString = db_uspPLCBackup_ReadData(ID)
    
    Debug.Print Len(OutputString)
    
    If Dir(DataPath, vbDirectory) = vbNullString Then
        'Create the Directory
        MkDir (DataPath)
    End If

    F = FreeFile
        
    
    'Write to a local file before reading PLC values
    
    Open DataPath & "snapshop.txt" For Output Shared As F
        Print #F, OutputString
    Close #F
    
    writePLCValues
 
Exit Sub
cmd_Write_Error:
    ErrorHandler Err, "TrackView SnapShot_frm cmd_Write", "", False
    Debug.Print Err.Description
    
    
End Sub
Private Sub writePLCValues()
    
    
    On Error GoTo writePLCValues_Error
    
    PLCStn = cmb_PLCStn.ListIndex

    Dim F, n As Integer
    Dim InputString As String
    Dim File As String
    

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

    aniCopy.Play

    Screen.MousePointer = vbHourglass
    EnableButtons False
    'ProgressBar1.Value = 0


    File = DataPath & "snapshop.txt"
    F = FreeFile

    Open File For Input Shared As F

    For n = 1 To MaxBags
        Input #F, Grp
        Input #F, Dst
        Input #F, Wgt
        Input #F, Cnt
        Input #F, Ur1
        Input #F, Bid
        Input #F, Cat
        Input #F, MIS
        Input #F, Cus
        Input #F, Ur2
        Input #F, TimeStamp

        BagGrp(n, PLCStn) = Grp
        BagDst(n, PLCStn) = Dst
        BagWgt(n, PLCStn) = Wgt
        BagCnt(n, PLCStn) = Cnt
        BagUr1(n, PLCStn) = Ur1
        BagBid(n, PLCStn) = Bid
        BagCat(n, PLCStn) = Cat
        BagMis(n, PLCStn) = MIS
        BagCus(n, PLCStn) = Cus
        BagUr2(n, PLCStn) = Ur2
        BagTimestamp(n, PLCStn) = TimeStamp

        If chk_WritePLCData.Value = vbChecked Then WriteBag PLCStn, n, Grp, Dst, Wgt, Cnt, Ur1, Bid, Cat, MIS, Cus, Ur2, TimeStamp

        'ProgressBar1.Value = 'ProgressBar1.Value + 1
    Next n

    'ProgressBar1.Value = 1200

    For n = 1 To MaxSeq
        Input #F, Seq
        SequenceStep(n, PLCStn) = Seq
        Data(n - 1) = SequenceStep(n, PLCStn)
        'ProgressBar1.Value = 'ProgressBar1.Value + 1
    Next n
    If chk_WritePLCData.Value = vbChecked Then Comms_frm.WritePLC PLCStn, "D", 901, MaxSeq, Data(), False, "SnapShot"

    For n = 1 To MaxCounters
        Input #F, Cnt
        CounterValue(n, PLCStn) = Cnt
        Data(n - 1) = CounterValue(n, PLCStn)
        'ProgressBar1.Value = 'ProgressBar1.Value + 1
    Next n
    If chk_WritePLCData.Value = vbChecked Then Comms_frm.WritePLC PLCStn, "C", 1, MaxCounters, Data(), False, "SnapShot"

    For n = 0 To 99
        Input #F, Cal_Value
        StnCalib_Low(n, PLCStn) = Cal_Value
        Data(n) = StnCalib_Low(n, PLCStn)
        'ProgressBar1.Value = 'ProgressBar1.Value + 1
    Next n
    If chk_WriteCalib.Value = vbChecked Then Comms_frm.WritePLC PLCStn, "D", 4400, 100, Data(), False, "SnapShot"

    For n = 0 To 99
        Input #F, Cal_Value
        StnCalib_High(n, PLCStn) = Cal_Value
        Data(n) = StnCalib_High(n, PLCStn)
        'ProgressBar1.Value = 'ProgressBar1.Value + 1
    Next n
    If chk_WriteCalib.Value = vbChecked Then Comms_frm.WritePLC PLCStn, "D", 4500, 100, Data(), False, "SnapShot"

    For n = 0 To 99
        Input #F, Cal_Value
        StnCalib_Set(n, PLCStn) = Cal_Value
        Data(n) = StnCalib_Set(n, PLCStn)
        'ProgressBar1.Value = 'ProgressBar1.Value + 1
    Next n
    If chk_WriteCalib.Value = vbChecked Then Comms_frm.WritePLC PLCStn, "D", 4600, 100, Data(), False, "SnapShot"
    
    'RB Positions.
    For n = 1 To MaxRBs
        Input #F, RB_Posn(n, PLCStn).Lift.RefOffset
        Input #F, RB_Posn(n, PLCStn).Lift.MaxSpeed
        Input #F, RB_Posn(n, PLCStn).Lift.CycleCount
        For i = 0 To MaxRBPosns
            Input #F, RB_Posn(n, PLCStn).Lift.Posn(i)
        Next i
       
        'Rotate
        Input #F, RB_Posn(n, PLCStn).Rotate.RefOffset
        Input #F, RB_Posn(n, PLCStn).Rotate.MaxSpeed
        Input #F, RB_Posn(n, PLCStn).Rotate.CycleCount
        For i = 0 To MaxRBPosns
            Input #F, RB_Posn(n, PLCStn).Rotate.Posn(i)
        Next i
        If chk_WriteRobo.Value = vbChecked Then writeRBData PLCStn, n
    Next n
    
    'Start Stop Values,
    For n = 0 To 99
        Input #F, Value
        If Value = 1 Then
            Start_Stop(n, PLCStn) = True
            Data(n) = 1
        Else
            Start_Stop(n, PLCStn) = 0
            Data(n) = 0
        End If
    Next n
    If chk_WritePLCData.Value = vbChecked Then Comms_frm.WritePLC PLCStn, "D", 0, 63, Data(), False, "SnapShot"
    
    For n = 100 To 300
        Input #F, Value
        If Value = 1 Then
            Start_Stop(n, PLCStn) = True
            Data(n - 100) = 1
        Else
            Start_Stop(n, PLCStn) = 0
            Data(n - 100) = 0
        End If
    Next n
    If chk_WritePLCData.Value = vbChecked Then Comms_frm.WritePLC PLCStn, "D", 7700, 200, Data(), False, "SnapShot"
    
    'Storage Areas
    Input #F, StorageAreaMax(PLCStn)
    Data(0) = StorageAreaMax(PLCStn)

    For n = 0 To 20
        Input #F, StorageAreaFrom(n, PLCStn)
        If n > 0 Then Data(n) = StorageAreaFrom(n, PLCStn)
    Next n
    For n = 0 To 20
        Input #F, StorageAreaTo(n, PLCStn)
        If n > 0 Then Data(20 + n) = StorageAreaTo(n, PLCStn)
    Next n
    
    'Back up Active
    Input #F, Value
    If Value = 1 Then
        Backup_Active(PLCStn) = True
        Data(41) = 1
    Else
        Backup_Active(PLCStn) = 0
        Data(41) = 0
    End If
    
    If chk_WritePLCData.Value = vbChecked Then Comms_frm.WritePLC PLCStn, "D", 250, 41, Data(), False, "SnapShot"
    
    For Discharger = 1 To PLCMaxUnloading(PLCStn)
        Data(0) = 0
        For n = 1 To 160
            Select Case n
            'Unloading Programs...
                Case 1
                    Input #F, Unload_CurrentStep(Discharger, PLCStn)
                    Data(n) = Unload_CurrentStep(Discharger, PLCStn)
                Case 2
                    Input #F, Unload_QtyCompleted(Discharger, PLCStn)
                     Data(n) = Unload_QtyCompleted(Discharger, PLCStn)
                Case 3
                    'Each PLC can have recirculation detect 1st discharger
                    If Discharger = 1 Then
                        Input #F, AutoRecirc(PLCStn)
                        Data(n) = AutoRecirc(PLCStn)
                    Else
                        Data(n) = 0
                    End If
                    
                Case 4
                    If Discharger = 1 Then
                        Input #F, RecircDepth(PLCStn)
                        Data(n) = RecircDepth(PLCStn)
                    Else
                        Data(n) = 0
                    End If
                Case 5
                    If Discharger = 1 Then
                        Input #F, OnManualLine(PLCStn)
                        Data(n) = OnManualLine(PLCStn)
                    Else
                        Data(n) = 0
                    End If
                Case 6
                    If Discharger = 1 Then
                        Input #F, OnManualBags(PLCStn)
                        Data(n) = OnManualBags(PLCStn)
                    Else
                        Data(n) = 0
                    End If
                Case 7
                    Input #F, Unload_ManualLine(Discharger, PLCStn)
                    Data(n) = Unload_ManualLine(Discharger, PLCStn)
                Case 8
                    Input #F, Unload_ManualBags(Discharger, PLCStn)
                    Data(n) = Unload_ManualBags(Discharger, PLCStn)
                Case 9
                    Data(n) = 0
                Case 10
                    Input #F, Unload_SkipIncomplete(Discharger, PLCStn)
                    Data(n) = Unload_SkipIncomplete(Discharger, PLCStn)
                Case 11
                    Input #F, Unload_StopAtEndCycle(Discharger, PLCStn)
                    Data(n) = Unload_StopAtEndCycle(Discharger, PLCStn)
                Case 14
                    Input #F, Unload_NoBag(Discharger, PLCStn)
                    Data(n) = Unload_NoBag(Discharger, PLCStn)
                Case 15
                    Input #F, Unload_ProgramEnd(Discharger, PLCStn)
                    Data(n) = Unload_ProgramEnd(Discharger, PLCStn)
                Case 16
                    If Discharger = 1 Then
                        Input #F, OffManualLine(PLCStn)
                        Data(n) = OffManualLine(PLCStn)
                    Else
                        Data(n) = 0
                    End If
                Case 17
                    If Discharger = 1 Then
                        Input #F, OffManualBags(PLCStn)
                        Data(n) = OffManualBags(PLCStn)
                    Else
                        Data(n) = 0
                    End If
                Case 18
                    Input #F, Unload_StartStop(Discharger, PLCStn)
                    Data(n) = Unload_StartStop(Discharger, PLCStn)
                Case 20
                    Input #F, Unload_ExperssLine(Discharger, PLCStn)
                    Data(n) = Unload_ExperssLine(Discharger, PLCStn)
                Case 21
                    Input #F, Unload_CustomerMode(Discharger, PLCStn)
                    Data(n) = Unload_CustomerMode(Discharger, PLCStn)
                Case 31 To 40
'                    Input #F, CustomerExceptionList(n - 30, Discharger, PLCStn)
'                    Data(n) = CustomerExceptionList(n - 30, Discharger, PLCStn)
                    Data(n) = 0
                Case 41 To 60
                    Input #F, Unload_Qty(n - 40, Discharger, PLCStn)
                    Data(n) = Unload_Qty(n - 40, Discharger, PLCStn)
                Case 61 To 80
                    Input #F, Unload_Line(n - 60, Discharger, PLCStn)
                    Data(n) = Unload_Line(n - 60, Discharger, PLCStn)
                Case 81 To 100
                    Input #F, Unload_Batch(n - 80, Discharger, PLCStn)
                    Data(n) = Unload_Batch(n - 80, Discharger, PLCStn)
                Case 101 To 120
                    Input #F, Unload_Grp1(n - 100, Discharger, PLCStn)
                    Data(n) = Unload_Grp1(n - 100, Discharger, PLCStn)
                Case 121 To 140
                    Input #F, Unload_Grp2(n - 120, Discharger, PLCStn)
                    Data(n) = Unload_Grp2(n - 120, Discharger, PLCStn)
                Case 141 To 160
                    Input #F, Unload_Grp3(n - 140, Discharger, PLCStn)
                    Data(n) = Unload_Grp3(n - 140, Discharger, PLCStn)
            End Select
        Next n
        
        If chk_WritePLCData.Value = vbChecked Then Comms_frm.WritePLC PLCStn, "D", Unload_Register(Discharger, PLCStn), 161, Data(), False, "SnapShot"

    Next Discharger
    
    'Unloading Customers
    For n = 0 To PLCMaxUnloading(PLCStn)
        Input #F, Unload_Cust(n, PLCStn)
        If n > 0 Then Data32(n) = Unload_Cust(n, PLCStn)
    Next n
    If chk_WritePLCData.Value = vbChecked Then Call WriteD32(PLCStn, 21, MaxUnloading, Data32(), False, "SnapShot")
    
    For n = 0 To PLCMaxUnloading(PLCStn)
        Input #F, Unload_CustAuto(n, PLCStn)
        If n > 0 Then Data32(n) = Unload_CustAuto(n, PLCStn)
    Next n
    If chk_WritePLCData.Value = vbChecked Then Call WriteD32(PLCStn, 31, MaxUnloading, Data32(), False, "SnapShot")
    
    'Customer FIFO List
    For n = 0 To 95
        Input #F, CustomerList(n, PLCStn)
        If n > 0 Then Data32(n - 1) = CustomerList(n, PLCStn)
    Next n
    If chk_WritePLCData.Value = vbChecked Then Call WriteD32(PLCStn, 401, 95, Data32(), False, "SnapShot")
    
    Close #F

    'ProgressBar1.Value = 2000
    Screen.MousePointer = vbNormal
    EnableButtons True
    aniCopy.Stop

Exit Sub

writePLCValues_Error:
    ErrorHandler Err, "TrackView SnapShot_frm cmd_Write", "", False
    Close #F
    'ProgressBar1.Value = 2000
    Screen.MousePointer = vbNormal
    EnableButtons True
    aniCopy.Stop
    MsgBox "Restore Fail", vbCritical + vbOKOnly, "Snapshot"
    Debug.Print Err.Description
    'Resume Next
End Sub



Private Sub Form_Load()
    
    CenterForm Me
    
    PLCStn = PLC_Stn_snapshot_frm
    
    aniCopy.Open App.path & "\Graphics\connect.avi"
    
'    cmb_Files.AddItem "Current.PLC"
'    For n = 1 To 10
'        cmb_Files.AddItem "Saved_" & Format$(n) & ".PLC"
'    Next n
'    cmb_Files.ListIndex = 0
    LoadPLCs cmb_PLCStn

    If MasterPC Then CheckForFiles
    chk_WriteCalib.Value = vbChecked
    chk_WritePLCData.Value = vbChecked
    chk_WriteRobo.Value = vbUnchecked
    
    chk_WriteCalib.ToolTipText = "Write the weighing calibration values"
    chk_WritePLCData.ToolTipText = "Write Bag data, sequences, unloading progs etc."
    chk_WriteRobo.ToolTipText = "Write RB configuration data"
    
    EnableButtons True
End Sub
Private Sub UpdateFilelist()
    Dim n As Integer
    ' WE have to allow errors to run, If the Backup file array is not initialised Ubound throws and error..
    
    On Error Resume Next
    
    cmb_Files.Clear
    PLCStn = cmb_PLCStn.ListIndex
    db_uspPLCBackup_ReadFiles (PLCStn)
    For n = 1 To UBound(Backup_files)
        FileName = Backup_files(n).TimeDate & " " & Backup_files(n).Name
        With cmb_Files
            .AddItem FileName
            .ItemData(.NewIndex) = Backup_files(n).ID
        End With
    Next n
    cmb_Files.ListIndex = 0
End Sub
Public Sub EnableButtons(Enab As Boolean)
    For Each Control In SnapShot_frm.Controls()
        Control.Enabled = Enab
    Next Control
    cmd_Write.Enabled = Enab And (AccessLevel >= accEngineer)
End Sub




Private Sub writeRBData(PLCStn As Integer, RB As Integer)
    Dim RBAmount As Integer
    Dim RBData() As Long
    Dim RotateOffset As Integer
    
    'DisplayForm wait_frm
    
    RBAmount = (DeviceBytes(DeviceRBPosn) / 4) '32 bit Data 4 Bytes
    ReDim RBData(RBAmount)
        
    'Lift
    RBData(0) = RB_Posn(RB, PLCStn).Lift.RefOffset
    RBData(1) = RB_Posn(RB, PLCStn).Lift.MaxSpeed
    RBData(2) = RB_Posn(RB, PLCStn).Lift.CycleCount
    RBData(3) = 0 'Position Now
    RBData(4) = 0 'Spare 1
    RBData(5) = 0 'Spare 2
    RBData(6) = 0 'Spare 3
    RBData(7) = 0 'Spare 4
    RBData(8) = 0 'Posn 0
    For i = 0 To MaxRBPosns
        RBData(8 + i) = RB_Posn(RB, PLCStn).Lift.Posn(i)
    Next i
    
    RotateOffset = (9 + 29) 'Next Position + Number of Positions
    
    'Rotate
    RBData(0 + RotateOffset) = RB_Posn(RB, PLCStn).Rotate.RefOffset
    RBData(1 + RotateOffset) = RB_Posn(RB, PLCStn).Rotate.MaxSpeed
    RBData(2 + RotateOffset) = RB_Posn(RB, PLCStn).Rotate.CycleCount
    RBData(3 + RotateOffset) = 0 'Position Now
    RBData(4 + RotateOffset) = 0 'Spare 1
    RBData(5 + RotateOffset) = 0 'Spare 2
    RBData(6 + RotateOffset) = 0 'Spare 3
    RBData(7 + RotateOffset) = 0 'Spare 4
    RBData(8 + RotateOffset) = 0 'Posn 0
    For i = 0 To MaxRBPosns
        RBData(8 + i + RotateOffset) = RB_Posn(RB, PLCStn).Rotate.Posn(i)
    Next i
    WriteRBPosn PLCStn, RB, RBData()
End Sub
Private Sub CheckForFiles()
    On Error GoTo CheckforFiles_Error
    'Write PLC data to the PLC.
    Dim Data As String
    Dim F As Integer
    Dim File As String
    Dim path As String
    Dim Owner As String

    path = DataPath & "Snapshot\"
    'Write Data to local file incase we cannot connect to SQL Server.
    'Check if the Dir Exists
    File = Dir(path)
    'Check every file in the directory
    Do While File > ""
        'Debug.Print File
        F = FreeFile
        Open path & File For Input As #F
    
        'Do While Not EOF(F)    ' Loop until end of file
          '  Line Input #F, data  ' Read line into variable
            Data = Input(LOF(F), #F)
        'Loop
    
        Close #F
        Debug.Print Len(Data)
        
        
        'Get the file name
        PLCStn = Val(Left(File, 1))
        Debug.Print PLCStn
        Owner = Mid(File, 3, Len(File) - 18)
        Debug.Print Owner
        TimeStamp = FileDateTime(path & File)
        Debug.Print TimeStamp

        db_uspPLCBackup_Write PLCStn, Owner, Data, DateDiff("s", TimeStampDateStart, TimeStamp)
        
        Kill path & File ' Delete the file once written to sql.
        File = Dir()
    Loop
    
    UpdateFilelist
    
Exit Sub
CheckforFiles_Error:
    Close #F
    
End Sub
