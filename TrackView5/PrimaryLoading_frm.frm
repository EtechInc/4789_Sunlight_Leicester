VERSION 5.00
Begin VB.Form PrimaryLoading_frm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "f"
   ClientHeight    =   14085
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   25215
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   27.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   14085
   ScaleWidth      =   25215
   Begin VB.Timer tmr_update 
      Interval        =   1000
      Left            =   60
      Top             =   0
   End
   Begin VB.Frame Frame3 
      Height          =   2235
      Left            =   60
      TabIndex        =   10
      Top             =   2220
      Width           =   25035
      Begin VB.ComboBox cmb_Dest 
         Height          =   795
         Left            =   12720
         TabIndex        =   31
         Text            =   "cmb_Dest"
         Top             =   1800
         Width           =   6000
      End
      Begin VB.CommandButton cmd_FinishLoading 
         Caption         =   "Finish Loading"
         Height          =   1035
         Left            =   19620
         TabIndex        =   12
         Top             =   758
         Width           =   5115
      End
      Begin VB.Label lbl_SendDstHeader 
         Alignment       =   2  'Center
         BackColor       =   &H00D2A03C&
         Caption         =   "lbl_SendDstHeader"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   12660
         TabIndex        =   40
         Top             =   480
         Width           =   6540
      End
      Begin VB.Label lbl_Dest 
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "lbl_Dest"
         Height          =   795
         Left            =   12660
         TabIndex        =   32
         Top             =   1020
         Width           =   6540
      End
      Begin VB.Label lbl_SendCusHeader 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00D2A03C&
         Caption         =   "lbl_SendCusHeader"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   660
         TabIndex        =   30
         Top             =   1620
         Width           =   3870
      End
      Begin VB.Label lbl_SendCatHeader 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00D2A03C&
         Caption         =   "lbl_SendCatHeader"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   660
         TabIndex        =   29
         Top             =   1050
         Width           =   3870
      End
      Begin VB.Label lbl_SendGrpHeader 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00D2A03C&
         Caption         =   "lbl_SendGrpHeader"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   660
         TabIndex        =   28
         Top             =   480
         Width           =   3870
      End
      Begin VB.Label lbl_SendCus 
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "lbl_SendCus"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   4800
         TabIndex        =   27
         Top             =   1620
         Width           =   7500
      End
      Begin VB.Label lbl_SendGrp 
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "lbl_SendGrp"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   4800
         TabIndex        =   26
         Top             =   480
         Width           =   7500
      End
      Begin VB.Label lbl_SendCat 
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "lbl_SendCat"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   4800
         TabIndex        =   25
         Top             =   1050
         Width           =   7500
      End
   End
   Begin VB.Frame Frame1 
      Height          =   1995
      Left            =   120
      TabIndex        =   3
      Top             =   11880
      Width           =   25035
      Begin VB.CommandButton cmd_Exit 
         Caption         =   "&Exit"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   20.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   21780
         TabIndex        =   11
         Top             =   840
         Width           =   2895
      End
      Begin VB.OptionButton opt_mode 
         BackColor       =   &H0000FF00&
         Caption         =   "Manual Data Entry"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   21.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   675
         Index           =   1
         Left            =   14880
         TabIndex        =   8
         Top             =   870
         Width           =   4935
      End
      Begin VB.OptionButton opt_mode 
         Caption         =   "Use RFID Readers"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   21.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   675
         Index           =   0
         Left            =   7980
         TabIndex        =   7
         Top             =   870
         Width           =   4935
      End
      Begin VB.CommandButton cmd_Selectmode 
         Caption         =   "&Select mode"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   20.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   3120
         TabIndex        =   6
         Top             =   840
         Width           =   2895
      End
      Begin VB.Label lbl_StnNumber 
         Alignment       =   2  'Center
         BackColor       =   &H00800000&
         Caption         =   "3"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   48
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   1215
         Left            =   300
         TabIndex        =   5
         Top             =   600
         Width           =   855
      End
   End
   Begin VB.Frame fr_Auto 
      Caption         =   "RFID"
      Height          =   7515
      Left            =   60
      TabIndex        =   2
      Top             =   4380
      Width           =   25035
      Begin VB.Frame fr_AutoSettings 
         Caption         =   "Setting"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   600
         TabIndex        =   33
         Top             =   6180
         Width           =   23955
         Begin VB.Frame fr_Debug 
            Caption         =   "Debug"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   735
            Left            =   10020
            TabIndex        =   41
            Top             =   240
            Width           =   10875
            Begin VB.TextBox txt_Debug 
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   3
               Left            =   7380
               TabIndex        =   50
               Top             =   285
               Width           =   1695
            End
            Begin VB.TextBox txt_Debug 
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   2
               Left            =   4860
               TabIndex        =   48
               Top             =   285
               Width           =   1695
            End
            Begin VB.TextBox txt_Debug 
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   1
               Left            =   3240
               TabIndex        =   46
               Top             =   285
               Width           =   615
            End
            Begin VB.TextBox txt_Debug 
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   0
               Left            =   720
               TabIndex        =   44
               Top             =   285
               Width           =   1695
            End
            Begin VB.CommandButton cmd_Test 
               Caption         =   "&Test"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   9240
               TabIndex        =   42
               Top             =   240
               Width           =   1455
            End
            Begin VB.Label Label4 
               Caption         =   "Cus No."
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   6600
               TabIndex        =   49
               Top             =   300
               Width           =   795
            End
            Begin VB.Label Label3 
               Caption         =   "Cat Name"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   3960
               TabIndex        =   47
               Top             =   300
               Width           =   915
            End
            Begin VB.Label Label2 
               Caption         =   "Cat No."
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   2460
               TabIndex        =   45
               Top             =   300
               Width           =   735
            End
            Begin VB.Label Label1 
               Caption         =   "RFID"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   180
               TabIndex        =   43
               Top             =   300
               Width           =   615
            End
         End
         Begin VB.CommandButton cmd_SaveSettings 
            Caption         =   "&Save Settings"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   700
            Left            =   21180
            TabIndex        =   39
            Top             =   240
            Width           =   2595
         End
         Begin VB.TextBox txt_FileName 
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Left            =   1380
            MaxLength       =   200
            TabIndex        =   37
            Text            =   "RFID Code File Name"
            Top             =   600
            Width           =   7995
         End
         Begin VB.TextBox txt_FileDir 
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Left            =   1380
            MaxLength       =   200
            TabIndex        =   35
            Text            =   "RFID Code File Directory"
            Top             =   210
            Width           =   7995
         End
         Begin VB.CommandButton cmd_GetFileDir 
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   9420
            Picture         =   "PrimaryLoading_frm.frx":0000
            Style           =   1  'Graphical
            TabIndex        =   34
            Top             =   210
            Width           =   375
         End
         Begin VB.Label lbl_FileName 
            Caption         =   "File Name."
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   120
            TabIndex        =   38
            Top             =   690
            Width           =   2475
         End
         Begin VB.Label lbl_PathName 
            Caption         =   "RFID Dir."
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   120
            TabIndex        =   36
            Top             =   300
            Width           =   2475
         End
      End
      Begin VB.ListBox lst_RFID_Info 
         Height          =   5460
         Left            =   600
         TabIndex        =   4
         Top             =   660
         Width           =   24000
      End
   End
   Begin VB.Frame fr_Status 
      Height          =   1995
      Left            =   60
      TabIndex        =   0
      Top             =   120
      Width           =   25035
      Begin VB.Label lbl_Status 
         Alignment       =   2  'Center
         BackColor       =   &H000080FF&
         Caption         =   "Waiting for Trolley"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   48
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   1275
         Left            =   577
         TabIndex        =   1
         Top             =   480
         Width           =   24000
      End
   End
   Begin VB.Frame fr_manual 
      Caption         =   "Manual"
      Height          =   7395
      Left            =   60
      TabIndex        =   9
      Top             =   4620
      Width           =   25035
      Begin VB.TextBox lbl_CusTitle 
         Alignment       =   2  'Center
         BackColor       =   &H00D2A03C&
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   690
         Left            =   12240
         TabIndex        =   24
         Text            =   "Title"
         Top             =   1740
         Width           =   12015
      End
      Begin VB.TextBox lbl_CusNum 
         Alignment       =   2  'Center
         BackColor       =   &H00D2A03C&
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   690
         Left            =   12240
         TabIndex        =   23
         Text            =   "No."
         Top             =   2475
         Width           =   2895
      End
      Begin VB.TextBox lbl_CusName 
         Alignment       =   2  'Center
         BackColor       =   &H00D2A03C&
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   690
         Left            =   15300
         TabIndex        =   22
         Text            =   "Name"
         Top             =   2475
         Width           =   8970
      End
      Begin VB.ComboBox cmb_Cus 
         Height          =   795
         Left            =   15480
         TabIndex        =   20
         Text            =   "cmb Cus"
         Top             =   4080
         Width           =   8955
      End
      Begin VB.TextBox txt_Cus 
         Alignment       =   2  'Center
         Height          =   795
         Left            =   12240
         TabIndex        =   19
         Top             =   3240
         Width           =   2895
      End
      Begin VB.ComboBox cmb_Cat 
         Height          =   795
         Left            =   3060
         TabIndex        =   17
         Text            =   "cmb Cat"
         Top             =   4920
         Width           =   8970
      End
      Begin VB.TextBox txt_Cat 
         Alignment       =   2  'Center
         Height          =   795
         Left            =   780
         TabIndex        =   16
         Top             =   3240
         Width           =   2055
      End
      Begin VB.TextBox lbl_CatTitle 
         Alignment       =   2  'Center
         BackColor       =   &H00D2A03C&
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   660
         Left            =   780
         TabIndex        =   15
         Text            =   "Title"
         Top             =   1740
         Width           =   11115
      End
      Begin VB.TextBox lbl_CatNum 
         Alignment       =   2  'Center
         BackColor       =   &H00D2A03C&
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   690
         Left            =   780
         TabIndex        =   14
         Text            =   "No."
         Top             =   2475
         Width           =   2055
      End
      Begin VB.TextBox lbl_CatName 
         Alignment       =   2  'Center
         BackColor       =   &H00D2A03C&
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   690
         Left            =   2940
         TabIndex        =   13
         Text            =   "Name"
         Top             =   2475
         Width           =   8970
      End
      Begin VB.Label lbl_Cus 
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "lbl_Cus"
         Height          =   795
         Left            =   15300
         TabIndex        =   21
         Top             =   3240
         Width           =   8955
      End
      Begin VB.Label lbl_Cat 
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "lbl_Cat"
         Height          =   795
         Left            =   2940
         TabIndex        =   18
         Top             =   3240
         Width           =   8970
      End
   End
End
Attribute VB_Name = "PrimaryLoading_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Const FrameHeight = 7395
Private Const FrameWidth = 25035
Private Const FrameTop = 4320
Private Const FrameLeft = 60
Private Const LoadingPLC = 2
Dim LocalSendCat As Long
Dim LocalSendCus As Long
Dim LocalSendGrp As Integer
Dim LocalSendDst As Integer
Dim LoadingBag(4) As Integer
Dim LoadingSeq(4) As Integer
Dim SeqValid As Boolean ' Only allow release on step 3
Dim PrevLang As String
Dim FileDir As String
Dim FileName As String
Dim DataValid As Boolean
Dim InvalidData As Boolean
Dim strLoadingIndex As String
Private shlShell As shell32.Shell
Private shlFolder As shell32.Folder
Private Const BIF_RETURNONLYFSDIRS = &H1
Dim ReadData() As ReadData_typ
Private Type ReadData_typ
    RfidCode As String
    CatNum As String
    CatName As String
    CusNum As String
End Type


Private Sub SelectAuto()
    
    fr_Auto.Visible = True
    fr_Auto.Top = FrameTop
    fr_Auto.Left = FrameLeft
    fr_Auto.Width = FrameWidth
    fr_Auto.Height = FrameHeight
    
    fr_manual.Visible = False
    ReDim ReadData(0)
    ResetListBox
    With lst_RFID_Info
        .Width = 24000
        .Left = 600
        fr_AutoSettings.Width = .Width
        fr_AutoSettings.Left = .Left
        If AccessLevel < accProgrammer Then
            fr_AutoSettings.Visible = False
            .Height = 5460 + fr_AutoSettings.Height
        Else
            fr_AutoSettings.Visible = True
            .Height = 5460
        End If
        
    End With
    fr_Debug.Visible = AccessLevel >= accDesigner
    opt_mode(0).Value = True
    opt_mode(0).BackColor = vbGreen
    opt_mode(1).BackColor = &H8000000F
End Sub

Private Sub SelectManual()
    
    LocalSendCat = 0
    LocalSendCus = 0
    UpdateSendData
    
    fr_manual.Visible = True
    fr_manual.Top = FrameTop
    fr_manual.Left = FrameLeft
    fr_manual.Width = FrameWidth
    fr_manual.Height = FrameHeight
    
    fr_Auto.Visible = False
   
    opt_mode(1).Value = True
    opt_mode(0).BackColor = &H8000000F
    opt_mode(1).BackColor = vbGreen

End Sub

Private Sub cmb_Cat_Click()
    lbl_Cat.Caption = cmb_Cat.List(cmb_Cat.ListIndex)
    txt_Cat.Text = cmb_Cat.ItemData(cmb_Cat.ListIndex)
    cmb_Cat.Visible = False
End Sub
Private Sub cmb_Cus_Click()
    lbl_Cus.Caption = cmb_Cus.List(cmb_Cus.ListIndex)
    txt_Cus.Text = cmb_Cus.ItemData(cmb_Cus.ListIndex)
    cmb_Cus.Visible = False
End Sub

Private Sub cmb_Dest_Click()
    lbl_Dest.Caption = cmb_Dest.List(cmb_Dest.ListIndex)
    LocalSendDst = Val(cmb_Dest.ItemData(cmb_Dest.ListIndex))
    cmb_Dest.Visible = False
End Sub

Private Sub cmd_Exit_Click()
    Unload Me
End Sub

Private Sub cmd_FinishLoading_Click()
    WriteBag LoadingPLC, LoadingBag(PrimaryLoadingIndex), LocalSendGrp, LocalSendDst, 0, 0, 0, 0, LocalSendCat, 0, LocalSendCus, 0, 0, False, "Primary Loading"
    ClearData
    SeqValid = False
    DeleteFile
End Sub

Private Sub cmd_GetFileDir_Click()
      If shlShell Is Nothing Then
          Set shlShell = New shell32.Shell
      End If
      Dim Startpath As String
        'Startpath = "\\" & SQLServerPath & "\C\" 'Works aslong as file sharing is enabled correctly..
      
      Set shlFolder = shlShell.BrowseForFolder(Me.hWnd, TextWord(930), BIF_RETURNONLYFSDIRS, Startpath)
      If Not shlFolder Is Nothing Then
          txt_FileDir.Text = shlFolder.Items.Item.Path
      End If
End Sub

Private Sub cmd_SaveSettings_Click()
   
   
   
   
   FileDir = txt_FileDir.Text
   FileName = txt_FileName.Text
   
   db_uspSettingSave "SettingsNetwork", "PrimaryLoadingFileDir", strLoadingIndex, FileDir, PCNum, True
   db_uspSettingSave "SettingsNetwork", "PrimaryLoadingFilePath", strLoadingIndex, FileName, PCNum


End Sub

Private Sub cmd_Selectmode_Click()
    If opt_mode(0).Value = True Then
        SelectManual
    Else
        SelectAuto
    End If
End Sub
Private Sub Config()
    Dim opt As OptionButton
    For Each opt In opt_mode
        opt.Enabled = False
    Next opt
    SelectAuto
    LoadingBag(1) = 775
    LoadingBag(2) = 780
    LoadingBag(3) = 785
    LoadingSeq(1) = 1
    LoadingSeq(2) = 2
    LoadingSeq(3) = 3
    CenterForm Me
    Me.WindowState = vbMaximized ' Cannot be modal
    strLoadingIndex = PrimaryLoadingIndex
    lbl_StnNumber.Caption = PrimaryLoadingIndex
    Call PopulateCategoryCombo(cmb_Cat)
    Call PopulateCustomerCombo(cmb_Cus)
    Call PopulateDestCombo(cmb_Dest, 2)
    cmb_Cat.Visible = False
    cmb_Cus.Visible = False
    cmb_Dest.Visible = False
    txt_Cat.Text = 0
    txt_Cus.Text = 0
    lbl_Dest.Caption = ""
    
    lbl_SendGrp.Visible = dbCatUsed
    lbl_SendGrpHeader.Visible = dbCatUsed
    lst_RFID_Info.Enabled = AccessLevel > accOperator
        
        
    End Sub

Private Sub cmd_Test_Click()
    On Error GoTo cmd_test_primaryLoadingError:
    Dim F As Long
    Dim FilePath As String
    Dim OutputString As String
    F = FreeFile
    
    FilePath = FileDir & "\" & FileName
    F = FreeFile
    OutputString = txt_Debug(0).Text & ";" & txt_Debug(1).Text & ";" & txt_Debug(2).Text & ";" & txt_Debug(3).Text
    Open FilePath For Append Shared As F
        Write #F, OutputString
    Close F
Exit Sub
cmd_test_primaryLoadingError:
    ErrorHandler Err, "cmd_test_primaryLoadingError", Err.Description, False, False
End Sub

Private Sub Form_Load()
    Config
    WriteTexts
    LocalSendCat = 0
    LocalSendCus = 0
    LocalSendGrp = 0
    UpdateStatusBar
    UpdateSendData
    FileDir = db_uspSettingGet("SettingsNetwork", "PrimaryLoadingFileDir", strLoadingIndex, 1, PCNum)
    FileName = db_uspSettingGet("SettingsNetwork", "PrimaryLoadingFilePath", strLoadingIndex, 1, PCNum)
    txt_FileDir.Text = FileDir
    txt_FileName.Text = FileName
End Sub
Private Sub lbl_Cat_Click()
    cmb_Cat.Top = lbl_Cat.Top
    cmb_Cat.Left = lbl_Cat.Left
    cmb_Cat.Visible = True
End Sub
Private Sub lbl_Cus_Click()
    cmb_Cus.Top = lbl_Cus.Top
    cmb_Cus.Left = lbl_Cus.Left
    cmb_Cus.Visible = True

End Sub

Private Sub lbl_Dest_Click()
    With cmb_Dest
        .Top = lbl_Dest.Top
        .Width = lbl_Dest.Width
        .Left = lbl_Dest.Left
        .Visible = True
    End With
End Sub

Private Sub lst_RFID_Info_Click()
    On Error Resume Next
    With lst_RFID_Info
        LocalSendCat = Val(ReadData(.ListIndex + 1).CatNum)
        LocalSendCus = Val(ReadData(.ListIndex + 1).CusNum)
    End With
    UpdateSendData (True)
End Sub

Private Sub tmr_Update_Timer()
    UpdateStatusBar
    If opt_mode(0).Value And SeqValid Then ReadRFIDFile ' AUto Mode
    
    If CurrentLanguage <> PrevLang Then
        WriteTexts
        PrevLang = CurrentLanguage
    End If
End Sub
Private Sub UpdateStatusBar()
    Dim Seq As Integer
    Dim Step As Integer
    Seq = LoadingSeq(PrimaryLoadingIndex)
    Step = SequenceStep(Seq, LoadingPLC)
    
    With lbl_Status
        .Caption = SequenceDescription(Seq, Step, LoadingPLC)
        Select Case Step
            Case 0
                .BackColor = vbRed
                SeqValid = False
            Case 3
                If DataValid Then
                    .BackColor = vbGreen
                Else
                    .BackColor = &HD2A03C
                End If

                If Not SeqValid Then
                    SeqValid = True
                    UpdateSendData
                End If
            Case 4
                .BackColor = &H80FF&     ' Orange
                SeqValid = False
            Case Else
                .BackColor = &HD2A03C
                SeqValid = False
        End Select
    End With
End Sub
Private Sub txt_Cat_Change()
 On Error GoTo txt_Cat_Change_Error
    lbl_Cat.Caption = dbGetNameFromNum(txt_Cat, EditCat)
    LocalSendCat = Val(txt_Cat.Text)
    UpdateSendData
Exit Sub
txt_Cat_Change_Error:
    ErrorHandler Err, "Primary_Loading_frm", "txt_Cat_Change", False
End Sub

Private Sub txt_Cat_KeyDown(KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txt_Cat, KeyCode)
End Sub

Private Sub txt_Cat_KeyPress(KeyAscii As Integer)
    BoxKeyPress txt_Cat, KeyAscii, EditCat
End Sub
Private Sub txt_Cus_Change()
 On Error GoTo txt_Cus_Change_Error
    lbl_Cus.Caption = dbGetNameFromNum(txt_Cus, EditCus)
    LocalSendCus = Val(txt_Cus.Text)
    UpdateSendData
Exit Sub
txt_Cus_Change_Error:
    ErrorHandler Err, "Primary_Loading_frm", "txt_Cus_Change", False
End Sub

Private Sub txt_Cus_KeyDown(KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txt_Cus, KeyCode)
End Sub

Private Sub txt_Cus_KeyPress(KeyAscii As Integer)
    BoxKeyPress txt_Cus, KeyAscii, EditCus
End Sub
Private Sub WriteTexts()
    lbl_CatName.Text = TextWord(614)
    lbl_CatNum.Text = TextWord(335)
    lbl_CatTitle.Text = TextWord(314)
    lbl_CusName.Text = TextWord(614)
    lbl_CusNum.Text = TextWord(335)
    lbl_CusTitle.Text = TextWord(313)
    
    lbl_SendDstHeader.Caption = TextWord(262)
    lbl_SendCatHeader.Caption = TextWord(314)
    lbl_SendCusHeader.Caption = TextWord(313)
    lbl_SendGrpHeader.Caption = TextWord(622)
End Sub
Private Sub UpdateSendData(Optional OverwriteInvalidDataInvalid As Boolean)
    Dim CatValid As Boolean
    Dim GrpValid As Boolean
    Dim CusValid As Boolean
    
    CatValid = False
    CusValid = False
    GrpValid = False
    
    
    If LocalSendCat > 0 Then
        CatValid = True
        lbl_SendCat.Caption = LocalSendCat & " - " & dbGetNameFromLongNum(LocalSendCat, EditCat)
    Else
        lbl_SendCat.Caption = ""
    End If
    If LocalSendCus > 0 Then
        CusValid = True
        lbl_SendCus.Caption = LocalSendCus & " - " & dbGetNameFromLongNum(LocalSendCus, EditCus)
    Else
        lbl_SendCus.Caption = ""
    End If
   
    If dbCatUsed Then
        Dim GrpName As String
        lbl_SendGrp.Caption = ""
        Call dbGetGrpInfo(LocalSendCat, LocalSendGrp, GrpName)
        lbl_SendGrp.Caption = LocalSendGrp & " - " & GrpName
        GrpValid = (LocalSendGrp > 0)
    Else
        LocalSendGrp = LocalSendCat
        GrpValid = True
    End If
    If opt_mode(1).Value Or OverwriteInvalidDataInvalid Then
     InvalidData = False
    End If
    DataValid = CatValid And CusValid And GrpValid And Not InvalidData
    cmd_FinishLoading.Enabled = (DataValid And SeqValid)
    
End Sub

Private Sub ClearData()
    txt_Cat.Text = ""
    ResetListBox
End Sub
Private Sub ReadRFIDFile()
    Dim F As Long
    Dim FilePath As String
    Dim ReadString As String
    Dim Index As Integer
    On Error GoTo ReadRFIDFileError:
    F = FreeFile
    
    FilePath = FileDir & "\" & FileName
    'Check file exists
    If Dir(FilePath) = "" Then Exit Sub
    
    Index = 0
    Open FilePath For Input As #F
        Do Until EOF(F)
            Input #F, ReadString
            Index = Index + 1
            If Index > lst_RFID_Info.ListCount Then
                DecodeFile ReadString, Index
            End If
        Loop
        
    
   Close F
    
Exit Sub
ReadRFIDFileError:
  ErrorHandler Err, "Primary_Loading_frm", Err.Description, False, False
End Sub
Private Sub DecodeFile(ReadString As String, Index As Integer)
    On Error GoTo DecodeFileError:
    Dim FileSeparator As String
    Dim SepPosition As Integer
    Dim SepStartPosition As Integer
    ReDim Preserve ReadData(Index)
    
    FileSeparator = ";"
       
    SepPosition = InStr(ReadString, FileSeparator)
    ReadData(Index).RfidCode = Left(ReadString, SepPosition - 1)
    
    SepStartPosition = SepPosition + 1
    SepPosition = InStr(SepStartPosition, ReadString, FileSeparator)
    ReadData(Index).CatNum = Mid(ReadString, SepStartPosition, SepPosition - SepStartPosition)

    SepStartPosition = SepPosition + 1
    SepPosition = InStr(SepStartPosition, ReadString, FileSeparator)
    ReadData(Index).CatName = Mid(ReadString, SepStartPosition, SepPosition - SepStartPosition)

    ReadData(Index).CusNum = Right(ReadString, Len(ReadString) - SepPosition)
    lst_RFID_Info.AddItem ReadData(Index).RfidCode & ":- " & ReadData(Index).CatNum & "-" & ReadData(Index).CatName & ", " & ReadData(Index).CusNum
    ValidateRead

Exit Sub
DecodeFileError:
    ErrorHandler Err, "Decode RFID File", Err.Description, False, False
End Sub

Private Sub ValidateRead()
    On Error GoTo ValidateReadError:
    
    Dim Data As ReadData_typ
    Dim Index As Integer
    
    Index = 0
    InvalidData = False
    For Index = 0 To UBound(ReadData)
        If (Index > 1) Then
            Data = ReadData(Index)
            If (Data.CatNum <> ReadData(1).CatNum) Or (Data.CusNum <> ReadData(1).CusNum) Then
                InvalidData = True
                Exit For
            End If
        End If
    Next Index
    If Not InvalidData Then
        lst_RFID_Info.BackColor = vbGreen
        LocalSendCat = Val(ReadData(1).CatNum)
        LocalSendCus = Val(ReadData(1).CusNum)
    Else
        LocalSendCat = 0
        LocalSendCus = 0
        lst_RFID_Info.BackColor = vbRed
    End If
    UpdateSendData
Exit Sub
ValidateReadError:
    ErrorHandler Err, "Validate RFID File", Err.Description, False, False
End Sub
Private Sub ResetListBox()
    With lst_RFID_Info
        .Clear
        .BackColor = vbWhite
    End With
End Sub
Private Sub DeleteFile()
    On Error Resume Next
    Dim FilePath As String
    FilePath = FileDir & "\" & FileName
    'Check file exists
    If Dir(FilePath) = "" Then
        Exit Sub
    Else
        Kill FilePath
    End If


End Sub
