VERSION 5.00
Begin VB.Form OptionsMISSQL_frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "MIS SQL Options"
   ClientHeight    =   8685
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8550
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   8685
   ScaleWidth      =   8550
   ShowInTaskbar   =   0   'False
   Begin VB.Timer tmrUpdate 
      Interval        =   1000
      Left            =   75
      Top             =   8175
   End
   Begin VB.Frame fraContentsBuffer 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Contents Buffer"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   3315
      Left            =   150
      TabIndex        =   5
      Top             =   4800
      Width           =   8310
      Begin VB.PictureBox Picture3 
         BackColor       =   &H00DBD9D4&
         BorderStyle     =   0  'None
         Height          =   2940
         Left            =   75
         ScaleHeight     =   2940
         ScaleWidth      =   8190
         TabIndex        =   26
         Top             =   300
         Width           =   8190
         Begin VB.ListBox lstBufferBid 
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
            Height          =   2790
            Left            =   0
            TabIndex        =   30
            Top             =   0
            Width           =   1440
         End
         Begin VB.ListBox lstBufferCat 
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
            Height          =   2790
            Left            =   1425
            TabIndex        =   29
            Top             =   0
            Width           =   2790
         End
         Begin VB.ListBox lstBufferCus 
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
            Height          =   2790
            Left            =   4200
            TabIndex        =   28
            Top             =   0
            Width           =   2790
         End
         Begin VB.ListBox lstBufferWgt 
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
            Height          =   2790
            Left            =   6975
            TabIndex        =   27
            Top             =   0
            Width           =   1140
         End
      End
   End
   Begin VB.Frame fraSQLTest 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Test Connection"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   3315
      Left            =   150
      TabIndex        =   4
      Top             =   1425
      Width           =   8310
      Begin VB.PictureBox Picture2 
         BackColor       =   &H00DBD9D4&
         BorderStyle     =   0  'None
         Height          =   2940
         Left            =   75
         ScaleHeight     =   2940
         ScaleWidth      =   8115
         TabIndex        =   11
         Top             =   300
         Width           =   8115
         Begin VB.ListBox lstCat 
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
            Height          =   1740
            Left            =   1425
            TabIndex        =   21
            Top             =   1125
            Width           =   2790
         End
         Begin VB.CommandButton cmdGetBatchContents 
            Appearance      =   0  'Flat
            BackColor       =   &H00DBD9D4&
            Caption         =   "Get Data"
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
            Left            =   75
            TabIndex        =   20
            Top             =   1125
            Width           =   1215
         End
         Begin VB.TextBox txtWgt 
            Alignment       =   2  'Center
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
            Height          =   390
            Left            =   5625
            TabIndex        =   19
            Text            =   "0"
            ToolTipText     =   "Weight 100g"
            Top             =   600
            Width           =   1140
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
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
            Height          =   390
            Left            =   3675
            TabIndex        =   18
            Text            =   "0"
            ToolTipText     =   "Custoomer Number"
            Top             =   600
            Width           =   1140
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
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
            Height          =   390
            Left            =   1425
            TabIndex        =   17
            Text            =   "0"
            ToolTipText     =   "Category Number"
            Top             =   600
            Width           =   1140
         End
         Begin VB.CommandButton cmdInsertBatchContents 
            Appearance      =   0  'Flat
            BackColor       =   &H00DBD9D4&
            Caption         =   "Add Data"
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
            Left            =   75
            TabIndex        =   16
            Top             =   600
            Width           =   1215
         End
         Begin VB.CommandButton cmdGetBatchNumber 
            Appearance      =   0  'Flat
            BackColor       =   &H00DBD9D4&
            Caption         =   "Get ID"
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
            Left            =   75
            TabIndex        =   15
            Top             =   75
            Width           =   1215
         End
         Begin VB.TextBox txtBatchNumber 
            Alignment       =   2  'Center
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
            Height          =   390
            Left            =   1425
            TabIndex        =   14
            Text            =   "0"
            Top             =   75
            Width           =   1140
         End
         Begin VB.ListBox lstCus 
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
            Height          =   1740
            Left            =   4200
            TabIndex        =   13
            Top             =   1125
            Width           =   2790
         End
         Begin VB.ListBox lstWgt 
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
            Height          =   1740
            Left            =   6975
            TabIndex        =   12
            Top             =   1125
            Width           =   1140
         End
         Begin VB.Label lblWgt 
            BackStyle       =   0  'Transparent
            Caption         =   "Wgt"
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
            Height          =   240
            Left            =   6825
            TabIndex        =   25
            Top             =   675
            Width           =   1065
         End
         Begin VB.Label lblCus 
            BackStyle       =   0  'Transparent
            Caption         =   "Cus"
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
            Height          =   240
            Left            =   4875
            TabIndex        =   24
            Top             =   675
            Width           =   1290
         End
         Begin VB.Label lblCat 
            BackStyle       =   0  'Transparent
            Caption         =   "Cat"
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
            Height          =   240
            Left            =   2625
            TabIndex        =   23
            Top             =   675
            Width           =   1290
         End
         Begin VB.Label lblBatchNumber 
            BackStyle       =   0  'Transparent
            Caption         =   "Batch Number"
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
            Height          =   240
            Left            =   2625
            TabIndex        =   22
            Top             =   150
            Width           =   1590
         End
      End
   End
   Begin VB.CommandButton Cmd_exit 
      Appearance      =   0  'Flat
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
      Left            =   7200
      TabIndex        =   3
      Top             =   8175
      Width           =   1215
   End
   Begin VB.CommandButton cmd_cancel 
      Appearance      =   0  'Flat
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
      Left            =   5775
      TabIndex        =   2
      Top             =   8175
      Width           =   1215
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Use MIS SQL Server"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   1215
      Left            =   150
      TabIndex        =   0
      Top             =   150
      Width           =   8295
      Begin VB.PictureBox Picture1 
         BackColor       =   &H00DBD9D4&
         BorderStyle     =   0  'None
         Height          =   915
         Left            =   75
         ScaleHeight     =   915
         ScaleWidth      =   8040
         TabIndex        =   6
         Top             =   225
         Width           =   8040
         Begin VB.TextBox txtPath 
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
            Height          =   315
            Left            =   75
            TabIndex        =   9
            ToolTipText     =   "SQL Server Path - eg ""ACERXP\SQLEXPRESS"""
            Top             =   75
            Width           =   6450
         End
         Begin VB.CommandButton cmdBrowse 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Browse"
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
            Left            =   6675
            TabIndex        =   8
            Top             =   75
            Visible         =   0   'False
            Width           =   1215
         End
         Begin VB.TextBox txtFileName 
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
            Height          =   315
            Left            =   75
            TabIndex        =   7
            ToolTipText     =   "SQL Server Database Name - eg ""MISDB3"""
            Top             =   450
            Width           =   6450
         End
         Begin VB.Label lblMisc 
            BackStyle       =   0  'Transparent
            Caption         =   "DB Name"
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
            Height          =   240
            Index           =   4
            Left            =   6675
            TabIndex        =   10
            Top             =   525
            Width           =   1290
         End
      End
      Begin VB.CheckBox chkUseMISSQL 
         BackColor       =   &H00DBD9D4&
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   2400
         TabIndex        =   1
         Top             =   0
         Width           =   240
      End
   End
End
Attribute VB_Name = "OptionsMISSQL_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim LastContentsRecords As Integer


Private Sub chkUseMISSQL_Click()
    
    db_uspSettingSave "SettingsNetwork", "MISSQLServer", "MISSQLServerUse", chkUseMISSQL.Value, PCNum
    MISSQLServerUse = chkUseMISSQL.Value
    
End Sub

Private Sub cmd_cancel_Click()
    Unload Me
End Sub

Private Sub Cmd_exit_Click()
    
    db_uspSettingSave "SettingsNetwork", "MISSQLServer", "MISSQLServerPath", txtPath.Text, PCNum
    db_uspSettingSave "SettingsNetwork", "MISSQLServer", "MISSQLServerDbName", txtFileName.Text, PCNum
    db_uspSettingSave "SettingsNetwork", "MISSQLServer", "MISSQLServerUse", chkUseMISSQL.Value, PCNum
    
    MISSQLServerPath = txtPath.Text
    MISSQLServerDbName = txtFileName.Text
    MISSQLServerUse = chkUseMISSQL.Value
    
    Unload Me
    
End Sub

Private Sub cmdBrowse_Click()
    
    Dim spath As String
    
    spath = FixPath(MISSQLServerPath)
     
    'call the function, returning the path
    
    txtPath.Text = BrowseForFolderByPath(spath, Me.hWnd)

End Sub

Private Sub cmdGetBatchContents_Click()
    
    Dim CatID               As Integer
    Dim CatNum              As Long
    Dim CusID               As Integer
    Dim CusNum              As Long
    
    lstCat.Clear
    lstCus.Clear
    lstWgt.Clear
    
    Call MISSQLServer_uspGetBatchContents(Val(txtBatchNumber.Text))
    
    If (GetBatchContentsRecords > 0) Then
        For n = 1 To GetBatchContentsRecords
            
            CatNum = GetBatchContents(n).CategoryID
            Call dbGetID(EditCat, CatNum, CatID)
             
            CusNum = GetBatchContents(n).CustID
            Call dbGetID(EditCus, CusNum, CusID)
                       
            lstCat.AddItem Format$(CatNum) & " " & Format$(CatName(CatID))
            lstCus.AddItem Format$(CusNum) & " " & Format$(CusName(CusID))
            lstWgt.AddItem Format$(GetBatchContents(n).Weight / 10) & TextWord(224)
            
        Next n
    Else
        lstCat.AddItem ("No Records Found!")
    End If
    
    
    
End Sub

Private Sub cmdGetBatchNumber_Click()
        
    Dim BatchNumber As Long
    
    BatchNumber = MISSQLServer_uspCreateBatchID(999001, 1, 0)
    
    txtBatchNumber = Format$(BatchNumber)
    
End Sub

Private Sub cmdInsertBatchContents_Click()
    
    'Make Stn and Bid Equal so uspInsertBatchContents is used for test
    
    'Call MISSQLServer_uspInsertBatchContents(Val(txtBatchNumber.Text), "0", Val(txtCat.Text), Val(txtCus.Text), Val(txtWgt.Text))
    Call MISSQLServer_WriteContentsBuffer(Val(txtCus.Text), Val(txtCat.Text), Val(txtWgt.Text), 0, Val(txtBatchNumber.Text), 0, 0, 0, 0, 0, 0, Val(txtBatchNumber.Text))
    
     
    Me.lstBufferBid.Clear
    Me.lstBufferCat.Clear
    Me.lstBufferCus.Clear
    Me.lstBufferWgt.Clear
    For myRecord = 1 To BatchContentsRecords
        With BatchContents(myRecord)
            Me.lstBufferBid.AddItem .MISSQLID
            Me.lstBufferCat.AddItem .Cat
            Me.lstBufferCus.AddItem .Cus
            Me.lstBufferWgt.AddItem .Wgt
        End With
    Next
    
End Sub

Private Sub Form_Load()
    
    Dim PCName      As String
    Dim DefaultMISSQLPath  As String
    PCName = db_uspSettingGet("SettingsLocal", "Config", "NetBiosName", PCNetBiosName, PCNum)
    DefaultMISSQLPath = PCName & "\" & "MISSQLEXPRESS"
        
    MISSQLServerPath = db_uspSettingGet("SettingsNetwork", "MISSQLServer", "MISSQLServerPath", DefaultMISSQLPath, PCNum)
    MISSQLServerDbName = db_uspSettingGet("SettingsNetwork", "MISSQLServer", "MISSQLServerDbName", "MISDB3", PCNum)
    MISSQLServerUse = db_uspSettingGet("SettingsNetwork", "MISSQLServer", "MISSQLServerUse", False, PCNum)
    
    txtPath.Text = MISSQLServerPath
    txtFileName.Text = MISSQLServerDbName
    chkUseMISSQL.Value = db_uspSettingGet("SettingsNetwork", "MISSQLServer", "MISSQLServerUse", 0, PCNum)
    
    Me.cmdGetBatchNumber.Enabled = (AccessLevel >= accDesigner)
    Me.cmdInsertBatchContents.Enabled = (AccessLevel >= accDesigner)
    
    txtPath.Enabled = (AccessLevel >= accDesigner)
    txtFileName.Enabled = (AccessLevel >= accDesigner)
    
End Sub

Private Sub tmrUpdate_Timer()
    
    Dim myRecord As Integer
        
    'If BatchContentsRecords <> LastContentsRecords Then
        Me.lstBufferBid.Clear
        Me.lstBufferCat.Clear
        Me.lstBufferCus.Clear
        Me.lstBufferWgt.Clear
                
        If BatchContentsRecords > 0 Then
            For myRecord = 1 To BatchContentsRecords
                With BatchContents(myRecord)
                    Me.lstBufferBid.AddItem .MISSQLID
                    Me.lstBufferCat.AddItem .Cat
                    Me.lstBufferCus.AddItem .Cus
                    Me.lstBufferWgt.AddItem .Wgt
                End With
            Next
        End If
        'LastContentsRecords = BatchContentsRecords
    'End If
    
    
    
End Sub
