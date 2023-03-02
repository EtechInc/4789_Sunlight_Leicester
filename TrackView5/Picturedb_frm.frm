VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Picturedb_frm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   12330
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   19350
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
   MinButton       =   0   'False
   ScaleHeight     =   12330
   ScaleWidth      =   19350
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_Remove 
      Caption         =   "&Remove"
      Height          =   375
      Left            =   17760
      TabIndex        =   13
      Top             =   840
      Width           =   1395
   End
   Begin VB.CommandButton cmd_Add 
      Caption         =   "&Add"
      Height          =   555
      Left            =   17760
      Picture         =   "Picturedb_frm.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   180
      Width           =   1395
   End
   Begin VB.CommandButton cmd_Exit 
      Caption         =   "&Exit"
      Height          =   375
      Left            =   17760
      TabIndex        =   5
      Top             =   11160
      Width           =   1395
   End
   Begin MSComDlg.CommonDialog CommonDialog 
      Left            =   17880
      Top             =   4980
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton cmd_GetFTPPath 
      Height          =   375
      Left            =   10680
      Picture         =   "Picturedb_frm.frx":03D5
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   11640
      Width           =   375
   End
   Begin VB.TextBox txt_FTPPath 
      Height          =   315
      Left            =   2580
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   11670
      Width           =   7995
   End
   Begin VB.Frame Frame1 
      ClipControls    =   0   'False
      Height          =   11475
      Left            =   60
      TabIndex        =   3
      Top             =   120
      Width           =   17595
      Begin VB.PictureBox ImageBox 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         DrawStyle       =   5  'Transparent
         ForeColor       =   &H80000008&
         Height          =   3450
         Index           =   6
         Left            =   8700
         ScaleHeight     =   3450
         ScaleWidth      =   8400
         TabIndex        =   18
         Top             =   7680
         Width           =   8400
      End
      Begin VB.PictureBox ImageBox 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         DrawStyle       =   5  'Transparent
         ForeColor       =   &H80000008&
         Height          =   3450
         Index           =   5
         Left            =   8700
         ScaleHeight     =   3450
         ScaleWidth      =   8400
         TabIndex        =   17
         Top             =   3960
         Width           =   8400
      End
      Begin VB.PictureBox ImageBox 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         DrawStyle       =   5  'Transparent
         ForeColor       =   &H80000008&
         Height          =   3450
         Index           =   4
         Left            =   8700
         ScaleHeight     =   3450
         ScaleWidth      =   8400
         TabIndex        =   16
         Top             =   240
         Width           =   8400
      End
      Begin VB.PictureBox ImageBox 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         DrawStyle       =   5  'Transparent
         ForeColor       =   &H80000008&
         Height          =   3450
         Index           =   2
         Left            =   180
         ScaleHeight     =   3450
         ScaleWidth      =   8400
         TabIndex        =   14
         Top             =   3960
         Width           =   8400
      End
      Begin VB.VScrollBar VScroll1 
         Height          =   10935
         Left            =   17160
         TabIndex        =   4
         Top             =   240
         Width           =   255
      End
      Begin VB.PictureBox ImageBox 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         DrawStyle       =   5  'Transparent
         FillColor       =   &H000080FF&
         ForeColor       =   &H80000008&
         Height          =   3450
         Index           =   1
         Left            =   180
         ScaleHeight     =   3450
         ScaleWidth      =   8400
         TabIndex        =   19
         Top             =   240
         Width           =   8400
      End
      Begin VB.PictureBox ImageBox 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         DrawStyle       =   5  'Transparent
         ForeColor       =   &H80000008&
         Height          =   3450
         Index           =   3
         Left            =   180
         ScaleHeight     =   3450
         ScaleWidth      =   8400
         TabIndex        =   15
         Top             =   7680
         Width           =   8400
      End
      Begin VB.Shape shpHighlight 
         BorderColor     =   &H00B17F36&
         BorderWidth     =   8
         Height          =   3450
         Left            =   6480
         Top             =   9900
         Visible         =   0   'False
         Width           =   8400
      End
      Begin VB.Label lbl_FileName 
         Caption         =   "Label1"
         Height          =   255
         Index           =   6
         Left            =   8700
         TabIndex        =   11
         Top             =   11160
         Width           =   3450
      End
      Begin VB.Label lbl_FileName 
         Caption         =   "Label1"
         Height          =   255
         Index           =   5
         Left            =   8700
         TabIndex        =   10
         Top             =   7440
         Width           =   3450
      End
      Begin VB.Label lbl_FileName 
         Caption         =   "Label1"
         Height          =   255
         Index           =   4
         Left            =   8700
         TabIndex        =   9
         Top             =   3720
         Width           =   3450
      End
      Begin VB.Label lbl_FileName 
         Caption         =   "Label1"
         Height          =   255
         Index           =   3
         Left            =   180
         TabIndex        =   8
         Top             =   11160
         Width           =   3450
      End
      Begin VB.Label lbl_FileName 
         Caption         =   "Label1"
         Height          =   255
         Index           =   2
         Left            =   180
         TabIndex        =   7
         Top             =   7440
         Width           =   3450
      End
      Begin VB.Label lbl_FileName 
         Caption         =   "Label1"
         Height          =   255
         Index           =   1
         Left            =   180
         TabIndex        =   6
         Top             =   3720
         Width           =   3450
      End
   End
   Begin VB.Label lbl_PathName 
      Caption         =   "FTP Server Path"
      Height          =   195
      Left            =   60
      TabIndex        =   1
      Top             =   11730
      Width           =   2475
   End
End
Attribute VB_Name = "Picturedb_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim PicIndex As Integer
Private shlShell As shell32.Shell
Private shlFolder As shell32.Folder
Private Const BIF_RETURNONLYFSDIRS = &H1


Private Sub cmd_Add_Click()
    On Error GoTo cmdAddError
    Dim FilePath As String
    Dim FileName As String
    Dim FileNameLen As Long
    Dim NewFileName As String
    Dim NewFileDir As String
    DeselectPic
    
    With CommonDialog
        .Filter = "Pictures (*.bmp;*.gif)|*.bmp;*.gif"
        '.InitDir = GetSetting("TrackView", "Config", "FTPPathNewImagePath", "")
        
        .InitDir = db_uspPicDBGetFTPPath()
        .DialogTitle = TextWord(935)
        .Flags = cdlOFNPathMustExist
        .ShowOpen

        FilePath = .FileName
        If (Len(FilePath) > 32) Then
            MsgBox TextWord(950), vbOKOnly, TextWord(341)
            Exit Sub
        ElseIf (FilePath <> "") And (txt_FTPPath.Text <> "") Then
            FileNameLen = Len(FilePath) - InStrRev(FilePath, "\")
            FileName = Right$(FilePath, FileNameLen)
            NewFileDir = Left$(FilePath, FileNameLen)
            NewFileName = txt_FTPPath.Text & "\" & FileName
            FileCopy FilePath, NewFileName
            
            Set Picture = LoadPicture(NewFileName)
            If (Picture.Height <= 6085) And (Picture.Width <= 14817) Then 'Check pic is bitmap and smaller than 230*560 pixels// 26.4 units to 1 pixel
                Set Picture = LoadPicture
                GetImagesFromFTP (txt_FTPPath.Text)
                PopDisplay
            Else
               Set Picture = LoadPicture
               MsgBox TextWord(932), vbOKOnly + vbInformation, TextWord(933)
                Kill NewFileName
            End If
            
       End If
        Call SaveSetting("TrackView", "Config", "FTPPathNewImagePath", NewFileDir)
    
    
    End With
    
Exit Sub
cmdAddError:
    If Err.Number = 70 Then
        MsgBox "Access Error", vbOKOnly + vbCritical, "Access Error"
    End If
    Resume Next

End Sub

Private Sub cmd_Exit_Click()
    UpdateFTPPath
    Unload Me
End Sub

Private Sub cmd_GetFTPPath_Click()
    DeselectPic
'    With CommonDialog
'        .Filter = "bmp (*.*)|*.bmp*" '|*.png* "
'        .InitDir = txt_FTPPath.Text
'        .DialogTitle = TextWord(930)
'        '.Flags = cdlOFNPathMustExist
'        .ShowOpen
'        Dim FilePath As String
'        Dim EndPos As Long
'        FilePath = .FileName
'        If FilePath <> "" Then
'            EndPos = InStrRev(FilePath, "\")
'            txt_FTPPath.Text = Left(FilePath, EndPos - 1)
'            Call SaveSetting("TrackView", "Config", "FTPPath", txt_FTPPath.Text)
'       End If
'    End With
      If shlShell Is Nothing Then
          Set shlShell = New shell32.Shell
      End If
      Dim Startpath As String
        Startpath = "\\" & SQLServerPath & "\C\" 'Works aslong as file sharing is enabled correctly..
      'Startpath = "\\" & "10.8.4.200" & "\C\"
      Set shlFolder = shlShell.BrowseForFolder(Me.hWnd, TextWord(930), BIF_RETURNONLYFSDIRS, Startpath)
      If Not shlFolder Is Nothing Then
          txt_FTPPath.Text = shlFolder.Items.Item.Path
          Call db_uspPicDBSetFTPPath(txt_FTPPath.Text)
      End If
     UpdateFTPPath
     
End Sub
Private Sub Config()
    Me.Caption = TextWord(931)
    lbl_PathName.Caption = TextWord(930)
    Frame1.Caption = TextWord(934)
    cmd_Add.Caption = TextWord(625)
    cmd_Remove.Caption = TextWord(367)
    cmd_Exit.Caption = TextWord(309)
    txt_FTPPath.Locked = AccessLevel < accProgrammer
    cmd_Remove.Enabled = False
    txt_FTPPath.Text = db_uspPicDBGetFTPPath()
    cmd_GetFTPPath.Enabled = AccessLevel > accEngineer
    GetImagesFromFTP (txt_FTPPath.Text)
    'PopDisplay
End Sub

Private Sub cmd_Remove_Click()
    If (PicIndex > 0) Then
        Dim FileName As String
        FileName = txt_FTPPath.Text
        FileName = FileName & "\" & lbl_FileName(PicIndex)
    End If

   Kill FileName
    GetImagesFromFTP (txt_FTPPath.Text)
    DeselectPic
    PopDisplay
End Sub

Private Sub Form_Load()
    CenterForm Me
    Config
End Sub


Private Sub PopDisplay()
    On Error Resume Next
    Dim n As Integer
    VScroll1.Min = 0
    VScroll1.Max = MDIMaindisp_frm.ImageList1.ListImages.Count - 6
    If MDIMaindisp_frm.ImageList1.ListImages.Count > 7 Then ' 7 Because the image is null!
        VScroll1.Visible = True
    Else
        VScroll1.Visible = False
    End If
    Dim OffSet As Integer
    OffSet = 0
    If MDIMaindisp_frm.ImageList1.ListImages.Count > 1 Then
        For n = 1 To 6 'ImageList1.ListImages.Count
            If (n + VScroll1.Value) <= MDIMaindisp_frm.ImageList1.ListImages.Count - OffSet Then
                If MDIMaindisp_frm.ImageList1.ListImages(n + VScroll1.Value).Key = "null" Then
                    OffSet = OffSet + 1
                End If
                ImageBox(n).Picture = MDIMaindisp_frm.ImageList1.ListImages(n + VScroll1.Value + OffSet).Picture
                lbl_FileName(n) = MDIMaindisp_frm.ImageList1.ListImages(n + VScroll1.Value + OffSet).Key
            Else
                 ImageBox(n).Picture = Nothing
                 lbl_FileName(n) = ""
            End If
        Next
    Else
        For n = 1 To 6
            ImageBox(n).Picture = Nothing
            lbl_FileName(n) = ""
        Next n
    End If

End Sub

Private Sub ImageBox_Click(Index As Integer)
    SelectPic (Index)
End Sub

Private Sub UpdateFTPPath()
    If txt_FTPPath.Text <> db_uspPicDBGetFTPPath() Then
        SendFTPPathNotify
    End If
    GetImagesFromFTP (txt_FTPPath.Text)
    PopDisplay
    
End Sub

Private Sub VScroll1_Change()
    DeselectPic
    PopDisplay
End Sub

Private Sub SelectPic(Index As Integer)
    If lbl_FileName(Index).Caption <> "" Then
        shpHighlight.Visible = True
        shpHighlight.Top = ImageBox(Index).Top
        shpHighlight.Left = ImageBox(Index).Left
        shpHighlight.ZOrder vbBringToFront
        PicIndex = Index
        cmd_Remove.Enabled = True
    End If
End Sub

Private Sub DeselectPic()
    shpHighlight.Visible = False
    PicIndex = 0
    cmd_Remove.Enabled = False

End Sub
