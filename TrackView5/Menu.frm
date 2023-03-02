VERSION 5.00
Begin VB.Form Menufrm 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   ClientHeight    =   11955
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6780
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   11955
   ScaleWidth      =   6780
   ShowInTaskbar   =   0   'False
   Begin VB.PictureBox picMenuHolder 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      ForeColor       =   &H00FFFFFF&
      Height          =   10845
      Left            =   0
      ScaleHeight     =   10845
      ScaleWidth      =   4125
      TabIndex        =   0
      Top             =   0
      Width           =   4125
      Begin VB.PictureBox picNone 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   720
         Left            =   2250
         ScaleHeight     =   720
         ScaleWidth      =   675
         TabIndex        =   36
         Top             =   8850
         Visible         =   0   'False
         Width           =   675
      End
      Begin VB.PictureBox picChecked 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   480
         Left            =   3000
         Picture         =   "Menu.frx":0000
         ScaleHeight     =   480
         ScaleWidth      =   450
         TabIndex        =   35
         Top             =   8925
         Visible         =   0   'False
         Width           =   450
      End
      Begin VB.PictureBox picIconHolder 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   8790
         Left            =   0
         ScaleHeight     =   8790
         ScaleWidth      =   540
         TabIndex        =   2
         Top             =   0
         Width           =   540
         Begin VB.PictureBox picMenu 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   510
            Index           =   15
            Left            =   15
            ScaleHeight     =   510
            ScaleWidth      =   510
            TabIndex        =   19
            Top             =   7950
            Width           =   510
         End
         Begin VB.PictureBox picMenu 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   510
            Index           =   14
            Left            =   15
            ScaleHeight     =   510
            ScaleWidth      =   510
            TabIndex        =   18
            Top             =   7425
            Width           =   510
         End
         Begin VB.PictureBox picMenu 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   510
            Index           =   13
            Left            =   15
            ScaleHeight     =   510
            ScaleWidth      =   510
            TabIndex        =   17
            Top             =   6900
            Width           =   510
         End
         Begin VB.PictureBox picMenu 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   510
            Index           =   12
            Left            =   15
            ScaleHeight     =   510
            ScaleWidth      =   510
            TabIndex        =   16
            Top             =   6375
            Width           =   510
         End
         Begin VB.PictureBox picMenu 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   510
            Index           =   11
            Left            =   15
            ScaleHeight     =   510
            ScaleWidth      =   510
            TabIndex        =   15
            Top             =   5850
            Width           =   510
         End
         Begin VB.PictureBox picMenu 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   510
            Index           =   10
            Left            =   15
            ScaleHeight     =   510
            ScaleWidth      =   510
            TabIndex        =   14
            Top             =   5325
            Width           =   510
         End
         Begin VB.PictureBox picMenu 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   510
            Index           =   9
            Left            =   15
            ScaleHeight     =   510
            ScaleWidth      =   510
            TabIndex        =   13
            Top             =   4800
            Width           =   510
         End
         Begin VB.PictureBox picMenu 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   510
            Index           =   8
            Left            =   15
            ScaleHeight     =   510
            ScaleWidth      =   510
            TabIndex        =   12
            Top             =   4275
            Width           =   510
         End
         Begin VB.PictureBox picMenu 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   510
            Index           =   7
            Left            =   15
            ScaleHeight     =   510
            ScaleWidth      =   510
            TabIndex        =   11
            Top             =   3750
            Width           =   510
         End
         Begin VB.PictureBox picMenu 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   510
            Index           =   6
            Left            =   15
            ScaleHeight     =   510
            ScaleWidth      =   510
            TabIndex        =   10
            Top             =   3225
            Width           =   510
         End
         Begin VB.PictureBox picMenu 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   510
            Index           =   5
            Left            =   15
            ScaleHeight     =   510
            ScaleWidth      =   510
            TabIndex        =   9
            Top             =   2700
            Width           =   510
         End
         Begin VB.PictureBox picMenu 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   510
            Index           =   4
            Left            =   15
            ScaleHeight     =   510
            ScaleWidth      =   510
            TabIndex        =   8
            Top             =   2175
            Width           =   510
         End
         Begin VB.PictureBox picMenu 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   510
            Index           =   3
            Left            =   15
            ScaleHeight     =   510
            ScaleWidth      =   510
            TabIndex        =   7
            Top             =   1650
            Width           =   510
         End
         Begin VB.PictureBox picMenu 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   510
            Index           =   2
            Left            =   15
            ScaleHeight     =   510
            ScaleWidth      =   510
            TabIndex        =   6
            Top             =   1125
            Width           =   510
         End
         Begin VB.PictureBox picMenu 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   510
            Index           =   0
            Left            =   15
            ScaleHeight     =   510
            ScaleWidth      =   510
            TabIndex        =   5
            Top             =   75
            Width           =   510
         End
         Begin VB.PictureBox picMenu 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   510
            Index           =   1
            Left            =   15
            ScaleHeight     =   510
            ScaleWidth      =   510
            TabIndex        =   4
            Top             =   600
            Width           =   510
         End
      End
      Begin VB.Label lblMenu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Menu Text"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   15
         Left            =   750
         TabIndex        =   34
         Top             =   8100
         Width           =   1050
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   15
         X1              =   550
         X2              =   3900
         Y1              =   8475
         Y2              =   8475
      End
      Begin VB.Label lblMenu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Menu Text"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   14
         Left            =   750
         TabIndex        =   33
         Top             =   7575
         Width           =   1050
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   14
         X1              =   550
         X2              =   3900
         Y1              =   7950
         Y2              =   7950
      End
      Begin VB.Label lblMenu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Menu Text"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   13
         Left            =   750
         TabIndex        =   32
         Top             =   7050
         Width           =   1050
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   13
         X1              =   550
         X2              =   3900
         Y1              =   7425
         Y2              =   7425
      End
      Begin VB.Label lblMenu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Menu Text"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   12
         Left            =   750
         TabIndex        =   31
         Top             =   6525
         Width           =   1050
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   12
         X1              =   550
         X2              =   3900
         Y1              =   6900
         Y2              =   6900
      End
      Begin VB.Label lblMenu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Menu Text"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   11
         Left            =   750
         TabIndex        =   30
         Top             =   6000
         Width           =   1050
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   11
         X1              =   550
         X2              =   3900
         Y1              =   6375
         Y2              =   6375
      End
      Begin VB.Label lblMenu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Menu Text"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   10
         Left            =   750
         TabIndex        =   29
         Top             =   5475
         Width           =   1050
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   10
         X1              =   550
         X2              =   3900
         Y1              =   5850
         Y2              =   5850
      End
      Begin VB.Label lblMenu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Menu Text"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   9
         Left            =   750
         TabIndex        =   28
         Top             =   4950
         Width           =   1050
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   9
         X1              =   550
         X2              =   3900
         Y1              =   5325
         Y2              =   5325
      End
      Begin VB.Label lblMenu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Menu Text"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   8
         Left            =   750
         TabIndex        =   27
         Top             =   4425
         Width           =   1050
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   8
         X1              =   550
         X2              =   3900
         Y1              =   4800
         Y2              =   4800
      End
      Begin VB.Label lblMenu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Menu Text"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   7
         Left            =   750
         TabIndex        =   26
         Top             =   3900
         Width           =   1050
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   7
         X1              =   550
         X2              =   3900
         Y1              =   4275
         Y2              =   4275
      End
      Begin VB.Label lblMenu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Menu Text"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   6
         Left            =   750
         TabIndex        =   25
         Top             =   3375
         Width           =   1050
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   6
         X1              =   550
         X2              =   3900
         Y1              =   3750
         Y2              =   3750
      End
      Begin VB.Label lblMenu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Menu Text"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   5
         Left            =   750
         TabIndex        =   24
         Top             =   2850
         Width           =   1050
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   5
         X1              =   550
         X2              =   3900
         Y1              =   3225
         Y2              =   3225
      End
      Begin VB.Label lblMenu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Menu Text"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   4
         Left            =   750
         TabIndex        =   23
         Top             =   2325
         Width           =   1050
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   4
         X1              =   550
         X2              =   3900
         Y1              =   2700
         Y2              =   2700
      End
      Begin VB.Label lblMenu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Menu Text"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   3
         Left            =   750
         TabIndex        =   22
         Top             =   1800
         Width           =   1050
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   3
         X1              =   550
         X2              =   3900
         Y1              =   2175
         Y2              =   2175
      End
      Begin VB.Label lblMenu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Menu Text"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   2
         Left            =   750
         TabIndex        =   21
         Top             =   1275
         Width           =   1050
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   2
         X1              =   550
         X2              =   3900
         Y1              =   1650
         Y2              =   1650
      End
      Begin VB.Label lblMenu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Menu Text"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   1
         Left            =   750
         TabIndex        =   20
         Top             =   750
         Width           =   1050
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   1
         X1              =   550
         X2              =   3900
         Y1              =   1125
         Y2              =   1125
      End
      Begin VB.Label lblMenu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Menu Text"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   0
         Left            =   750
         TabIndex        =   3
         Top             =   225
         Width           =   1050
      End
      Begin VB.Image imgMenu 
         Height          =   510
         Left            =   600
         Picture         =   "Menu.frx":0BC2
         Stretch         =   -1  'True
         Top             =   75
         Width           =   3315
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   0
         X1              =   550
         X2              =   3900
         Y1              =   600
         Y2              =   600
      End
   End
   Begin VB.PictureBox picShadow 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   10905
      Left            =   0
      ScaleHeight     =   10905
      ScaleWidth      =   4200
      TabIndex        =   1
      Top             =   0
      Width           =   4200
   End
End
Attribute VB_Name = "Menufrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub lblMenu_Click(Index As Integer)
    Call MenuClick(Index)
End Sub

Private Sub lblMenu_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call MenuHighlight(Index)
End Sub
