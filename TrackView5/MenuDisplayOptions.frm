VERSION 5.00
Begin VB.Form MenuDisplay_frm 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   ClientHeight    =   14640
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6780
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   14640
   ScaleWidth      =   6780
   ShowInTaskbar   =   0   'False
   Begin VB.PictureBox picMenuHolder 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      ForeColor       =   &H00FFFFFF&
      Height          =   14520
      Left            =   0
      ScaleHeight     =   14520
      ScaleWidth      =   4125
      TabIndex        =   0
      Top             =   0
      Width           =   4125
      Begin VB.PictureBox picNone 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   465
         Left            =   3000
         ScaleHeight     =   465
         ScaleWidth      =   465
         TabIndex        =   78
         Top             =   13500
         Visible         =   0   'False
         Width           =   465
      End
      Begin VB.PictureBox picChecked 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   375
         Left            =   3450
         Picture         =   "MenuDisplayOptions.frx":0000
         ScaleHeight     =   375
         ScaleWidth      =   450
         TabIndex        =   5
         Top             =   13500
         Visible         =   0   'False
         Width           =   450
      End
      Begin VB.PictureBox picIconHolder 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   14415
         Left            =   0
         ScaleHeight     =   14415
         ScaleWidth      =   540
         TabIndex        =   2
         Top             =   0
         Width           =   540
         Begin VB.PictureBox picColour2 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   5
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   77
            Top             =   14025
            Width           =   510
         End
         Begin VB.PictureBox picColour2 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   4
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   76
            Top             =   13650
            Width           =   510
         End
         Begin VB.PictureBox picColour2 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   3
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   75
            Top             =   13275
            Width           =   510
         End
         Begin VB.PictureBox picColour2 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   2
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   74
            Top             =   12900
            Width           =   510
         End
         Begin VB.PictureBox picColour2 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   1
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   73
            Top             =   12525
            Width           =   510
         End
         Begin VB.PictureBox picColour2 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   0
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   72
            Top             =   12150
            Width           =   510
         End
         Begin VB.PictureBox picColour1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   5
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   71
            Top             =   11625
            Width           =   510
         End
         Begin VB.PictureBox picColour1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   4
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   70
            Top             =   11250
            Width           =   510
         End
         Begin VB.PictureBox picColour1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   3
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   69
            Top             =   10875
            Width           =   510
         End
         Begin VB.PictureBox picColour1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   2
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   68
            Top             =   10500
            Width           =   510
         End
         Begin VB.PictureBox picColour1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   1
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   67
            Top             =   10125
            Width           =   510
         End
         Begin VB.PictureBox picColour1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   0
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   66
            Top             =   9750
            Width           =   510
         End
         Begin VB.PictureBox picDisplay2 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   10
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   65
            Top             =   9225
            Width           =   510
         End
         Begin VB.PictureBox picDisplay2 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   9
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   64
            Top             =   8850
            Width           =   510
         End
         Begin VB.PictureBox picDisplay2 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   8
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   63
            Top             =   8475
            Width           =   510
         End
         Begin VB.PictureBox picDisplay2 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   7
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   62
            Top             =   8100
            Width           =   510
         End
         Begin VB.PictureBox picDisplay2 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   6
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   61
            Top             =   7725
            Width           =   510
         End
         Begin VB.PictureBox picDisplay2 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   5
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   60
            Top             =   7350
            Width           =   510
         End
         Begin VB.PictureBox picDisplay2 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   4
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   59
            Top             =   6975
            Width           =   510
         End
         Begin VB.PictureBox picDisplay2 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   3
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   58
            Top             =   6600
            Width           =   510
         End
         Begin VB.PictureBox picDisplay2 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   2
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   57
            Top             =   6225
            Width           =   510
         End
         Begin VB.PictureBox picDisplay2 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   1
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   56
            Top             =   5850
            Width           =   510
         End
         Begin VB.PictureBox picDisplay2 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   0
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   55
            Top             =   5475
            Width           =   510
         End
         Begin VB.PictureBox picDisplay1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   13
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   54
            Top             =   4950
            Width           =   510
         End
         Begin VB.PictureBox picDisplay1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   12
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   53
            Top             =   4575
            Width           =   510
         End
         Begin VB.PictureBox picDisplay1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   11
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   52
            Top             =   4200
            Width           =   510
         End
         Begin VB.PictureBox picDisplay1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   10
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   51
            Top             =   3825
            Width           =   510
         End
         Begin VB.PictureBox picDisplay1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   9
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   50
            Top             =   3450
            Width           =   510
         End
         Begin VB.PictureBox picDisplay1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   8
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   49
            Top             =   3075
            Width           =   510
         End
         Begin VB.PictureBox picDisplay1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   7
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   48
            Top             =   2700
            Width           =   510
         End
         Begin VB.PictureBox picDisplay1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   6
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   47
            Top             =   2325
            Width           =   510
         End
         Begin VB.PictureBox picDisplay1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   5
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   46
            Top             =   1950
            Width           =   510
         End
         Begin VB.PictureBox picDisplay1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   4
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   45
            Top             =   1575
            Width           =   510
         End
         Begin VB.PictureBox picDisplay1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   3
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   44
            Top             =   1200
            Width           =   510
         End
         Begin VB.PictureBox picDisplay1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   2
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   43
            Top             =   825
            Width           =   510
         End
         Begin VB.PictureBox picDisplay1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   1
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   42
            Top             =   450
            Width           =   510
         End
         Begin VB.PictureBox picDisplay1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   360
            Index           =   0
            Left            =   15
            ScaleHeight     =   360
            ScaleWidth      =   510
            TabIndex        =   4
            Top             =   75
            Width           =   510
         End
      End
      Begin VB.Label lblColour1 
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
         TabIndex        =   30
         Top             =   9810
         Width           =   1050
      End
      Begin VB.Label lblColour2 
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
         TabIndex        =   41
         Top             =   14085
         Width           =   1050
      End
      Begin VB.Label lblColour2 
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
         TabIndex        =   40
         Top             =   13710
         Width           =   1050
      End
      Begin VB.Label lblColour2 
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
         TabIndex        =   39
         Top             =   13335
         Width           =   1050
      End
      Begin VB.Label lblColour2 
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
         TabIndex        =   38
         Top             =   12960
         Width           =   1050
      End
      Begin VB.Label lblColour2 
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
         TabIndex        =   37
         Top             =   12585
         Width           =   1050
      End
      Begin VB.Label lblColour2 
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
         TabIndex        =   36
         Top             =   12210
         Width           =   1050
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   2
         X1              =   525
         X2              =   3875
         Y1              =   12075
         Y2              =   12075
      End
      Begin VB.Label lblColour1 
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
         TabIndex        =   35
         Top             =   11685
         Width           =   1050
      End
      Begin VB.Label lblColour1 
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
         TabIndex        =   34
         Top             =   11310
         Width           =   1050
      End
      Begin VB.Label lblColour1 
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
         TabIndex        =   33
         Top             =   10935
         Width           =   1050
      End
      Begin VB.Label lblColour1 
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
         TabIndex        =   32
         Top             =   10560
         Width           =   1050
      End
      Begin VB.Label lblColour1 
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
         TabIndex        =   31
         Top             =   10185
         Width           =   1050
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   1
         X1              =   600
         X2              =   3950
         Y1              =   9675
         Y2              =   9675
      End
      Begin VB.Label lblDisplay2 
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
         Top             =   9285
         Width           =   1050
      End
      Begin VB.Label lblDisplay2 
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
         Top             =   8910
         Width           =   1050
      End
      Begin VB.Label lblDisplay2 
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
         Top             =   8535
         Width           =   1050
      End
      Begin VB.Label lblDisplay2 
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
         Top             =   8160
         Width           =   1050
      End
      Begin VB.Label lblDisplay2 
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
         Top             =   7785
         Width           =   1050
      End
      Begin VB.Label lblDisplay2 
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
         Top             =   7410
         Width           =   1050
      End
      Begin VB.Label lblDisplay2 
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
         Top             =   7035
         Width           =   1050
      End
      Begin VB.Label lblDisplay2 
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
         Top             =   6660
         Width           =   1050
      End
      Begin VB.Label lblDisplay2 
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
         Top             =   6285
         Width           =   1050
      End
      Begin VB.Label lblDisplay2 
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
         Top             =   5910
         Width           =   1050
      End
      Begin VB.Label lblDisplay2 
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
         TabIndex        =   19
         Top             =   5535
         Width           =   1050
      End
      Begin VB.Label lblDisplay1 
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
         TabIndex        =   18
         Top             =   5010
         Width           =   1050
      End
      Begin VB.Label lblDisplay1 
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
         TabIndex        =   17
         Top             =   4635
         Width           =   1050
      End
      Begin VB.Label lblDisplay1 
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
         TabIndex        =   16
         Top             =   4260
         Width           =   1050
      End
      Begin VB.Label lblDisplay1 
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
         TabIndex        =   15
         Top             =   3885
         Width           =   1050
      End
      Begin VB.Label lblDisplay1 
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
         TabIndex        =   14
         Top             =   3510
         Width           =   1050
      End
      Begin VB.Label lblDisplay1 
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
         TabIndex        =   13
         Top             =   3135
         Width           =   1050
      End
      Begin VB.Label lblDisplay1 
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
         TabIndex        =   12
         Top             =   2760
         Width           =   1050
      End
      Begin VB.Label lblDisplay1 
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
         TabIndex        =   11
         Top             =   2385
         Width           =   1050
      End
      Begin VB.Label lblDisplay1 
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
         TabIndex        =   10
         Top             =   2010
         Width           =   1050
      End
      Begin VB.Label lblDisplay1 
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
         TabIndex        =   9
         Top             =   1635
         Width           =   1050
      End
      Begin VB.Label lblDisplay1 
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
         TabIndex        =   8
         Top             =   1260
         Width           =   1050
      End
      Begin VB.Label lblDisplay1 
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
         TabIndex        =   7
         Top             =   885
         Width           =   1050
      End
      Begin VB.Label lblDisplay1 
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
         TabIndex        =   6
         Top             =   510
         Width           =   1050
      End
      Begin VB.Label lblDisplay1 
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
         Top             =   135
         Width           =   1050
      End
      Begin VB.Image imgMenu 
         Height          =   360
         Left            =   600
         Picture         =   "MenuDisplayOptions.frx":04BF
         Stretch         =   -1  'True
         Top             =   75
         Width           =   3315
      End
      Begin VB.Line linMenu 
         BorderColor     =   &H00D2A03C&
         BorderWidth     =   2
         Index           =   0
         X1              =   600
         X2              =   3950
         Y1              =   5400
         Y2              =   5400
      End
   End
   Begin VB.PictureBox picShadow 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   14595
      Left            =   0
      ScaleHeight     =   14595
      ScaleWidth      =   4200
      TabIndex        =   1
      Top             =   0
      Width           =   4200
   End
End
Attribute VB_Name = "MenuDisplay_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub lblMenu_Click(Index As Integer)
    Call MenuClick(Index)
End Sub


Private Sub Form_Load()
    Call DisplayMenuSetPictures
End Sub

Private Sub lblColour1_Click(Index As Integer)
    Call MenuClick(Index, mnuColour1)
End Sub

Private Sub lblColour1_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call DispMenuHighlight(Index, mnuColour1)
End Sub

Private Sub lblColour2_Click(Index As Integer)
    Call MenuClick(Index, mnuColour2)
End Sub

Private Sub lblColour2_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call DispMenuHighlight(Index, mnuColour2)
End Sub

Private Sub lblDisplay1_Click(Index As Integer)
    Call MenuClick(Index, mnuDisplay1)
End Sub

Private Sub lblDisplay1_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call DispMenuHighlight(Index, mnuDisplay1)
End Sub

Private Sub lblDisplay2_Click(Index As Integer)
    Call MenuClick(Index, mnuDisplay2)
End Sub

Private Sub lblDisplay2_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call DispMenuHighlight(Index, mnuDisplay2)
End Sub
