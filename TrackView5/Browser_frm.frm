VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form Browser_frm 
   ClientHeight    =   5130
   ClientLeft      =   3060
   ClientTop       =   3345
   ClientWidth     =   6540
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   NegotiateMenus  =   0   'False
   ScaleHeight     =   5130
   ScaleWidth      =   6540
   WindowState     =   2  'Maximized
   Begin VB.PictureBox picAddress 
      Align           =   1  'Align Top
      BorderStyle     =   0  'None
      Height          =   75
      Left            =   0
      ScaleHeight     =   75
      ScaleWidth      =   6540
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   540
      Width           =   6540
   End
   Begin MSComctlLib.ImageList imlIcons 
      Left            =   11160
      Top             =   2520
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   24
      ImageHeight     =   24
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   6
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Browser_frm.frx":0000
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Browser_frm.frx":02E2
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Browser_frm.frx":05C4
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Browser_frm.frx":08A6
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Browser_frm.frx":0B88
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Browser_frm.frx":0E6A
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar tbToolBar 
      Align           =   1  'Align Top
      Height          =   540
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   6540
      _ExtentX        =   11536
      _ExtentY        =   953
      ButtonWidth     =   820
      ButtonHeight    =   794
      Appearance      =   1
      ImageList       =   "imlIcons"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   4
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Back"
            Object.ToolTipText     =   "Back"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Forward"
            Object.ToolTipText     =   "Forward"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Refresh"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Close"
            ImageIndex      =   3
         EndProperty
      EndProperty
   End
   Begin SHDocVwCtl.WebBrowser brwWebBrowser 
      Height          =   8010
      Left            =   120
      TabIndex        =   0
      Top             =   600
      Width           =   9900
      ExtentX         =   17462
      ExtentY         =   14129
      ViewMode        =   1
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   0
      AutoArrange     =   -1  'True
      NoClientEdge    =   -1  'True
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin VB.Label Label1 
      BackColor       =   &H8000000D&
      Caption         =   "Label1"
      Height          =   375
      Left            =   1860
      TabIndex        =   3
      Top             =   7980
      Width           =   5475
   End
End
Attribute VB_Name = "Browser_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Form_Loaded As Boolean
Dim mbDontNavigateNow As Boolean
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

Private Sub brwWebBrowser_NavigateComplete2(ByVal pDisp As Object, URL As Variant)
    'MsgBox "Navigate complete"
End Sub

Private Sub brwWebBrowser_NavigateError(ByVal pDisp As Object, URL As Variant, Frame As Variant, StatusCode As Variant, Cancel As Boolean)
    'MsgBox "You SUCK"
End Sub

Private Sub brwWebBrowser_Validate(Cancel As Boolean)
   'Validate command. 'MsgBox "Validate"
End Sub

Private Sub Form_Load()
    
    On Error GoTo FormLoadError
    
    'Me.WindowState = vbMaximized
    Form_Resize
    Form_Loaded = False
    

Exit Sub

FormLoadError:
    
    ErrorHandler Err, "Browser Form_Load", Err.Description, True
    
End Sub
Public Sub Config()
    On Error GoTo FormConfigError
    If Len(BrowserPath) > 0 Then brwWebBrowser.Navigate BrowserPath
    'tbToolBar.Refresh
 
    
Exit Sub
FormConfigError:
    ErrorHandler Err, "Browser Config", "File = " & BrowserPath, True
End Sub


Private Sub brwWebBrowser_DownloadComplete()
    On Error Resume Next
     
'Dim sngWaitEnd As Single
'  sngWaitEnd = Timer + 2
'  Do
'    Sleep 100
'    DoEvents
'  Loop Until Timer >= sngWaitEnd
   
    
   Me.Caption = brwWebBrowser.LocationName
   Label1.Caption = brwWebBrowser.LocationName
 
   'brwWebBrowser.ExecWB
   
   
   
End Sub

Private Sub Form_Resize()
    
    If Me.ScaleWidth > 100 Then brwWebBrowser.Width = Me.ScaleWidth - 100
    If Me.ScaleHeight > 100 Then brwWebBrowser.Height = Me.ScaleHeight - (picAddress.Top + picAddress.Height) - 100

End Sub




Private Sub tbToolBar_ButtonClick(ByVal Button As MSComctlLib.Button)
    On Error Resume Next
     
    Select Case Button.Key
        Case "Back"
            brwWebBrowser.GoBack
        Case "Forward"
            brwWebBrowser.GoForward
        Case "Refresh"
            Form_Loaded = False
            brwWebBrowser.Refresh
        Case "Home"
            brwWebBrowser.GoHome
        Case "Search"
            brwWebBrowser.GoSearch
        Case "Stop"
            brwWebBrowser.Stop
            Me.Caption = brwWebBrowser.LocationName
        Case "Close"
            Unload Me
    End Select

End Sub

