VERSION 5.00
Begin VB.Form TCPAuthenication_frm 
   Caption         =   "Form1"
   ClientHeight    =   4395
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9435
   LinkTopic       =   "Form1"
   ScaleHeight     =   4395
   ScaleWidth      =   9435
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd_Exit 
      Caption         =   "&Exit"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   7440
      TabIndex        =   7
      Top             =   3600
      Width           =   1575
   End
   Begin VB.Frame fr_SessionInfo 
      Caption         =   "Session Information"
      Height          =   2535
      Left            =   540
      TabIndex        =   0
      Top             =   540
      Width           =   7815
      Begin VB.Label lbl_SessionInfo_Session 
         BackColor       =   &H8000000E&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "SessionID"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   204
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   2160
         TabIndex        =   6
         Top             =   1080
         Width           =   2295
      End
      Begin VB.Label lbl_SessionInfo_Domain 
         BackColor       =   &H8000000E&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Current Domain"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   204
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   2160
         TabIndex        =   5
         Top             =   720
         Width           =   2295
      End
      Begin VB.Label lbl_SessionInfo_User 
         BackColor       =   &H8000000E&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Current User"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   204
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   2160
         TabIndex        =   4
         Top             =   360
         Width           =   2295
      End
      Begin VB.Label lbl_SessionIDText 
         Caption         =   "Session ID"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   204
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   300
         TabIndex        =   3
         Top             =   1080
         Width           =   1935
      End
      Begin VB.Label lbl_DomainText 
         Caption         =   "Current Domain"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   204
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   300
         TabIndex        =   2
         Top             =   720
         Width           =   1935
      End
      Begin VB.Label lbl_UserText 
         Caption         =   "Current User"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   204
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   300
         TabIndex        =   1
         Top             =   360
         Width           =   1935
      End
   End
End
Attribute VB_Name = "TCPAuthenication_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cmd_Exit_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    loadSessionInfo
    
End Sub
Private Sub loadSessionInfo()
    GetSessionInfo
    lbl_SessionInfo_User.Caption = SessionInfo.UserName
    lbl_SessionInfo_Domain.Caption = SessionInfo.Domain
    lbl_SessionInfo_Session.Caption = SessionInfo.SessionID
End Sub
