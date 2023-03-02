VERSION 5.00
Begin VB.Form XSort_frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Loading"
   ClientHeight    =   8970
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11850
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   8970
   ScaleWidth      =   11850
   ShowInTaskbar   =   0   'False
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
      TabIndex        =   232
      Text            =   "lblCatName"
      Top             =   7875
      Width           =   3090
   End
   Begin VB.Frame fra_Hidden 
      Caption         =   "Hidden"
      Height          =   540
      Left            =   150
      TabIndex        =   230
      Top             =   8400
      Visible         =   0   'False
      Width           =   3465
      Begin VB.Timer tmr_Update 
         Interval        =   500
         Left            =   2850
         Top             =   0
      End
      Begin VB.OptionButton optStep 
         BackColor       =   &H8000000B&
         ForeColor       =   &H8000000D&
         Height          =   240
         Index           =   0
         Left            =   150
         TabIndex        =   231
         Top             =   225
         Visible         =   0   'False
         Width           =   240
      End
      Begin VB.Image picW7Red 
         Height          =   315
         Index           =   1
         Left            =   1950
         Picture         =   "XSort.frx":0000
         Top             =   150
         Width           =   315
      End
      Begin VB.Image picW7Red 
         Height          =   315
         Index           =   4
         Left            =   2325
         Picture         =   "XSort.frx":0582
         Top             =   150
         Width           =   315
      End
   End
   Begin VB.CommandButton cmdRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
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
      Left            =   9750
      TabIndex        =   177
      Top             =   7875
      Width           =   1215
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   1
      Left            =   3825
      TabIndex        =   176
      Text            =   "999999"
      Top             =   330
      Width           =   915
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   1
      Left            =   10125
      TabIndex        =   175
      Top             =   375
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   2
      Left            =   10125
      TabIndex        =   174
      Top             =   630
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   3
      Left            =   10125
      TabIndex        =   173
      Top             =   930
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   4
      Left            =   10125
      TabIndex        =   172
      Top             =   1230
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   5
      Left            =   10125
      TabIndex        =   171
      Top             =   1530
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   6
      Left            =   10125
      TabIndex        =   170
      Top             =   1830
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   7
      Left            =   10125
      TabIndex        =   169
      Top             =   2130
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   8
      Left            =   10125
      TabIndex        =   168
      Top             =   2430
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   9
      Left            =   10125
      TabIndex        =   167
      Top             =   2730
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   10
      Left            =   10125
      TabIndex        =   166
      Top             =   3030
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   11
      Left            =   10125
      TabIndex        =   165
      Top             =   3330
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   12
      Left            =   10125
      TabIndex        =   164
      Top             =   3630
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   13
      Left            =   10125
      TabIndex        =   163
      Top             =   4050
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   14
      Left            =   10125
      TabIndex        =   162
      Top             =   4350
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   15
      Left            =   10125
      TabIndex        =   161
      Top             =   4650
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   16
      Left            =   10125
      TabIndex        =   160
      Top             =   4950
      Width           =   1290
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
      BackColor       =   &H00FFC0C0&
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
      Index           =   1
      Left            =   7200
      TabIndex        =   159
      Text            =   "Empty"
      Top             =   330
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   1
      Left            =   8550
      TabIndex        =   158
      Text            =   "99.9kg"
      Top             =   330
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   2
      Left            =   7200
      TabIndex        =   157
      Text            =   "Empty"
      Top             =   630
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   2
      Left            =   8550
      TabIndex        =   156
      Text            =   "99.9kg"
      Top             =   630
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   3
      Left            =   7200
      TabIndex        =   155
      Text            =   "Empty"
      Top             =   930
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   3
      Left            =   8550
      TabIndex        =   154
      Text            =   "99.9kg"
      Top             =   930
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   4
      Left            =   7200
      TabIndex        =   153
      Text            =   "Empty"
      Top             =   1230
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   4
      Left            =   8550
      TabIndex        =   152
      Text            =   "99.9kg"
      Top             =   1230
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   5
      Left            =   7200
      TabIndex        =   151
      Text            =   "Empty"
      Top             =   1530
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   5
      Left            =   8550
      TabIndex        =   150
      Text            =   "99.9kg"
      Top             =   1530
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   6
      Left            =   7200
      TabIndex        =   149
      Text            =   "Empty"
      Top             =   1830
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   6
      Left            =   8550
      TabIndex        =   148
      Text            =   "99.9kg"
      Top             =   1830
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   7
      Left            =   7200
      TabIndex        =   147
      Text            =   "Empty"
      Top             =   2130
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   7
      Left            =   8550
      TabIndex        =   146
      Text            =   "99.9kg"
      Top             =   2130
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   8
      Left            =   7200
      TabIndex        =   145
      Text            =   "Empty"
      Top             =   2430
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   8
      Left            =   8550
      TabIndex        =   144
      Text            =   "99.9kg"
      Top             =   2430
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   9
      Left            =   7200
      TabIndex        =   143
      Text            =   "Empty"
      Top             =   2730
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   9
      Left            =   8550
      TabIndex        =   142
      Text            =   "99.9kg"
      Top             =   2730
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   10
      Left            =   7200
      TabIndex        =   141
      Text            =   "Empty"
      Top             =   3030
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   10
      Left            =   8550
      TabIndex        =   140
      Text            =   "99.9kg"
      Top             =   3030
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   11
      Left            =   7200
      TabIndex        =   139
      Text            =   "Empty"
      Top             =   3330
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   11
      Left            =   8550
      TabIndex        =   138
      Text            =   "99.9kg"
      Top             =   3330
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   12
      Left            =   7200
      TabIndex        =   137
      Text            =   "Empty"
      Top             =   3630
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   12
      Left            =   8550
      TabIndex        =   136
      Text            =   "99.9kg"
      Top             =   3630
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   13
      Left            =   7200
      TabIndex        =   135
      Text            =   "Empty"
      Top             =   4050
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   13
      Left            =   8550
      TabIndex        =   134
      Text            =   "99.9kg"
      Top             =   4050
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   14
      Left            =   7200
      TabIndex        =   133
      Text            =   "Empty"
      Top             =   4350
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   14
      Left            =   8550
      TabIndex        =   132
      Text            =   "99.9kg"
      Top             =   4350
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   15
      Left            =   7200
      TabIndex        =   131
      Text            =   "Empty"
      Top             =   4650
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   15
      Left            =   8550
      TabIndex        =   130
      Text            =   "99.9kg"
      Top             =   4650
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   16
      Left            =   7200
      TabIndex        =   129
      Text            =   "Empty"
      Top             =   4950
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   16
      Left            =   8550
      TabIndex        =   128
      Text            =   "99.9kg"
      Top             =   4950
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   2
      Left            =   3825
      TabIndex        =   127
      Text            =   "9999"
      Top             =   630
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   3
      Left            =   3825
      TabIndex        =   126
      Text            =   "9999"
      Top             =   930
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   4
      Left            =   3825
      TabIndex        =   125
      Text            =   "9999"
      Top             =   1230
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   5
      Left            =   3825
      TabIndex        =   124
      Text            =   "9999"
      Top             =   1530
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   6
      Left            =   3825
      TabIndex        =   123
      Text            =   "9999"
      Top             =   1830
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   7
      Left            =   3825
      TabIndex        =   122
      Text            =   "9999"
      Top             =   2130
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   8
      Left            =   3825
      TabIndex        =   121
      Text            =   "9999"
      Top             =   2430
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   9
      Left            =   3825
      TabIndex        =   120
      Text            =   "9999"
      Top             =   2730
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   10
      Left            =   3825
      TabIndex        =   119
      Text            =   "9999"
      Top             =   3030
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   11
      Left            =   3825
      TabIndex        =   118
      Text            =   "9999"
      Top             =   3330
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   12
      Left            =   3825
      TabIndex        =   117
      Text            =   "9999"
      Top             =   3630
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   13
      Left            =   3825
      TabIndex        =   116
      Text            =   "9999"
      Top             =   4050
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   14
      Left            =   3825
      TabIndex        =   115
      Text            =   "9999"
      Top             =   4350
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   15
      Left            =   3825
      TabIndex        =   114
      Text            =   "9999"
      Top             =   4650
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   16
      Left            =   3825
      TabIndex        =   113
      Text            =   "9999"
      Top             =   4950
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   1
      Left            =   450
      TabIndex        =   112
      Text            =   "99"
      Top             =   330
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   2
      Left            =   450
      TabIndex        =   111
      Text            =   "999"
      Top             =   630
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   3
      Left            =   450
      TabIndex        =   110
      Text            =   "999"
      Top             =   930
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   4
      Left            =   450
      TabIndex        =   109
      Text            =   "999"
      Top             =   1230
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   5
      Left            =   450
      TabIndex        =   108
      Text            =   "999"
      Top             =   1530
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   6
      Left            =   450
      TabIndex        =   107
      Text            =   "999"
      Top             =   1830
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   7
      Left            =   450
      TabIndex        =   106
      Text            =   "999"
      Top             =   2130
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   8
      Left            =   450
      TabIndex        =   105
      Text            =   "999"
      Top             =   2430
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   9
      Left            =   450
      TabIndex        =   104
      Text            =   "999"
      Top             =   2730
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   10
      Left            =   450
      TabIndex        =   103
      Text            =   "999"
      Top             =   3030
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   11
      Left            =   450
      TabIndex        =   102
      Text            =   "999"
      Top             =   3330
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   12
      Left            =   450
      TabIndex        =   101
      Text            =   "999"
      Top             =   3630
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   13
      Left            =   450
      TabIndex        =   100
      Text            =   "999"
      Top             =   4050
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   14
      Left            =   450
      TabIndex        =   99
      Text            =   "999"
      Top             =   4350
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   15
      Left            =   450
      TabIndex        =   98
      Text            =   "999"
      Top             =   4650
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   16
      Left            =   450
      TabIndex        =   97
      Text            =   "999"
      Top             =   4950
      Width           =   915
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   1
      Left            =   1350
      TabIndex        =   96
      Text            =   "lblCatName"
      Top             =   330
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   2
      Left            =   1350
      TabIndex        =   95
      Text            =   "lblCatName"
      Top             =   630
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   3
      Left            =   1350
      TabIndex        =   94
      Text            =   "lblCatName"
      Top             =   930
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   4
      Left            =   1350
      TabIndex        =   93
      Text            =   "lblCatName"
      Top             =   1230
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   5
      Left            =   1350
      TabIndex        =   92
      Text            =   "lblCatName"
      Top             =   1530
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   6
      Left            =   1350
      TabIndex        =   91
      Text            =   "lblCatName"
      Top             =   1830
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   7
      Left            =   1350
      TabIndex        =   90
      Text            =   "lblCatName"
      Top             =   2130
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   8
      Left            =   1350
      TabIndex        =   89
      Text            =   "lblCatName"
      Top             =   2430
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   9
      Left            =   1350
      TabIndex        =   88
      Text            =   "lblCatName"
      Top             =   2730
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   10
      Left            =   1350
      TabIndex        =   87
      Text            =   "lblCatName"
      Top             =   3030
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   11
      Left            =   1350
      TabIndex        =   86
      Text            =   "lblCatName"
      Top             =   3330
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   12
      Left            =   1350
      TabIndex        =   85
      Text            =   "lblCatName"
      Top             =   3630
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   13
      Left            =   1350
      TabIndex        =   84
      Text            =   "lblCatName"
      Top             =   4050
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   1
      Left            =   4725
      TabIndex        =   83
      Text            =   "lblCusName"
      Top             =   330
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   2
      Left            =   4725
      TabIndex        =   82
      Text            =   "lblCusName"
      Top             =   630
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   3
      Left            =   4725
      TabIndex        =   81
      Text            =   "lblCusName"
      Top             =   930
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   13
      Left            =   4725
      TabIndex        =   80
      Text            =   "lblCusName"
      Top             =   4050
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   14
      Left            =   4725
      TabIndex        =   79
      Text            =   "lblCusName"
      Top             =   4350
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   15
      Left            =   4725
      TabIndex        =   78
      Text            =   "lblCusName"
      Top             =   4650
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   16
      Left            =   4725
      TabIndex        =   77
      Text            =   "lblCusName"
      Top             =   4950
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   17
      Left            =   4725
      TabIndex        =   76
      Text            =   "lblCusName"
      Top             =   5265
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   18
      Left            =   4725
      TabIndex        =   75
      Text            =   "lblCusName"
      Top             =   5565
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   19
      Left            =   4725
      TabIndex        =   74
      Text            =   "lblCusName"
      Top             =   5865
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   20
      Left            =   4725
      TabIndex        =   73
      Text            =   "lblCusName"
      Top             =   6165
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   21
      Left            =   4725
      TabIndex        =   72
      Text            =   "lblCusName"
      Top             =   6465
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   22
      Left            =   4725
      TabIndex        =   71
      Text            =   "lblCusName"
      Top             =   6765
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   23
      Left            =   4725
      TabIndex        =   70
      Text            =   "lblCusName"
      Top             =   7065
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   24
      Left            =   4725
      TabIndex        =   69
      Text            =   "lblCusName"
      Top             =   7365
      Width           =   2415
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   17
      Left            =   450
      TabIndex        =   68
      Text            =   "999"
      Top             =   5265
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   18
      Left            =   450
      TabIndex        =   67
      Text            =   "999"
      Top             =   5565
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   19
      Left            =   450
      TabIndex        =   66
      Text            =   "999"
      Top             =   5865
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   20
      Left            =   450
      TabIndex        =   65
      Text            =   "999"
      Top             =   6165
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   21
      Left            =   450
      TabIndex        =   64
      Text            =   "999"
      Top             =   6465
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   22
      Left            =   450
      TabIndex        =   63
      Text            =   "999"
      Top             =   6765
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   23
      Left            =   450
      TabIndex        =   62
      Text            =   "999"
      Top             =   7065
      Width           =   915
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
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
      Index           =   24
      Left            =   450
      TabIndex        =   61
      Text            =   "999"
      Top             =   7365
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   17
      Left            =   3825
      TabIndex        =   60
      Text            =   "9999"
      Top             =   5265
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   18
      Left            =   3825
      TabIndex        =   59
      Text            =   "9999"
      Top             =   5565
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   19
      Left            =   3825
      TabIndex        =   58
      Text            =   "9999"
      Top             =   5865
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   20
      Left            =   3825
      TabIndex        =   57
      Text            =   "9999"
      Top             =   6165
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   21
      Left            =   3825
      TabIndex        =   56
      Text            =   "9999"
      Top             =   6465
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   22
      Left            =   3825
      TabIndex        =   55
      Text            =   "9999"
      Top             =   6765
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   23
      Left            =   3825
      TabIndex        =   54
      Text            =   "9999"
      Top             =   7065
      Width           =   915
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
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
      Index           =   24
      Left            =   3825
      TabIndex        =   53
      Text            =   "9999"
      Top             =   7365
      Width           =   915
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   17
      Left            =   8550
      TabIndex        =   52
      Text            =   "99.9kg"
      Top             =   5265
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   17
      Left            =   7200
      TabIndex        =   51
      Text            =   "Empty"
      Top             =   5265
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   18
      Left            =   8550
      TabIndex        =   50
      Text            =   "99.9kg"
      Top             =   5565
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   18
      Left            =   7200
      TabIndex        =   49
      Text            =   "Empty"
      Top             =   5565
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   19
      Left            =   8550
      TabIndex        =   48
      Text            =   "99.9kg"
      Top             =   5865
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   19
      Left            =   7200
      TabIndex        =   47
      Text            =   "Empty"
      Top             =   5865
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   20
      Left            =   8550
      TabIndex        =   46
      Text            =   "99.9kg"
      Top             =   6165
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   20
      Left            =   7200
      TabIndex        =   45
      Text            =   "Empty"
      Top             =   6165
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   21
      Left            =   8550
      TabIndex        =   44
      Text            =   "99.9kg"
      Top             =   6465
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   21
      Left            =   7200
      TabIndex        =   43
      Text            =   "Empty"
      Top             =   6465
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   22
      Left            =   8550
      TabIndex        =   42
      Text            =   "99.9kg"
      Top             =   6765
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   22
      Left            =   7200
      TabIndex        =   41
      Text            =   "Empty"
      Top             =   6765
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   23
      Left            =   8550
      TabIndex        =   40
      Text            =   "99.9kg"
      Top             =   7065
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   23
      Left            =   7215
      TabIndex        =   39
      Text            =   "Empty"
      Top             =   7065
      Width           =   1365
   End
   Begin VB.TextBox lblWeight 
      Alignment       =   2  'Center
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
      Index           =   24
      Left            =   8550
      TabIndex        =   38
      Text            =   "99.9kg"
      Top             =   7365
      Width           =   915
   End
   Begin VB.TextBox lblProgress 
      Alignment       =   2  'Center
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
      Index           =   24
      Left            =   7200
      TabIndex        =   37
      Text            =   "Empty"
      Top             =   7365
      Width           =   1365
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   17
      Left            =   10125
      TabIndex        =   36
      Top             =   5265
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   18
      Left            =   10125
      TabIndex        =   35
      Top             =   5565
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   19
      Left            =   10125
      TabIndex        =   34
      Top             =   5865
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   20
      Left            =   10125
      TabIndex        =   33
      Top             =   6165
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   21
      Left            =   10125
      TabIndex        =   32
      Top             =   6465
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   22
      Left            =   10125
      TabIndex        =   31
      Top             =   6765
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   23
      Left            =   10125
      TabIndex        =   30
      Top             =   7065
      Width           =   1290
   End
   Begin VB.CheckBox chkRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   240
      Index           =   24
      Left            =   10125
      TabIndex        =   29
      Top             =   7365
      Width           =   1290
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   22
      Left            =   1350
      TabIndex        =   28
      Text            =   "lblCatName"
      Top             =   6765
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   24
      Left            =   1350
      TabIndex        =   27
      Text            =   "lblCatName"
      Top             =   7365
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   23
      Left            =   1350
      TabIndex        =   26
      Text            =   "lblCatName"
      Top             =   7065
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   21
      Left            =   1350
      TabIndex        =   25
      Text            =   "lblCatName"
      Top             =   6465
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   20
      Left            =   1350
      TabIndex        =   24
      Text            =   "lblCatName"
      Top             =   6165
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   19
      Left            =   1350
      TabIndex        =   23
      Text            =   "lblCatName"
      Top             =   5865
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   18
      Left            =   1350
      TabIndex        =   22
      Text            =   "lblCatName"
      Top             =   5565
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   17
      Left            =   1350
      TabIndex        =   21
      Text            =   "lblCatName"
      Top             =   5265
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   16
      Left            =   1350
      TabIndex        =   20
      Text            =   "lblCatName"
      Top             =   4950
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   15
      Left            =   1350
      TabIndex        =   19
      Text            =   "lblCatName"
      Top             =   4650
      Width           =   2415
   End
   Begin VB.TextBox lblCatName 
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
      Index           =   14
      Left            =   1350
      TabIndex        =   18
      Text            =   "lblCatName"
      Top             =   4350
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   4
      Left            =   4725
      TabIndex        =   17
      Text            =   "lblCusName"
      Top             =   1230
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   5
      Left            =   4725
      TabIndex        =   16
      Text            =   "lblCusName"
      Top             =   1530
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   6
      Left            =   4725
      TabIndex        =   15
      Text            =   "lblCusName"
      Top             =   1830
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   7
      Left            =   4725
      TabIndex        =   14
      Text            =   "lblCusName"
      Top             =   2130
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   8
      Left            =   4725
      TabIndex        =   13
      Text            =   "lblCusName"
      Top             =   2430
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   9
      Left            =   4725
      TabIndex        =   12
      Text            =   "lblCusName"
      Top             =   2730
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   10
      Left            =   4725
      TabIndex        =   11
      Text            =   "lblCusName"
      Top             =   3030
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   11
      Left            =   4725
      TabIndex        =   10
      Text            =   "lblCusName"
      Top             =   3330
      Width           =   2415
   End
   Begin VB.TextBox lblCusName 
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
      Index           =   12
      Left            =   4725
      TabIndex        =   9
      Text            =   "lblCusName"
      Top             =   3630
      Width           =   2415
   End
   Begin VB.CommandButton Cmd_exit 
      BackColor       =   &H00DBD9D4&
      Caption         =   "&End"
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
      Left            =   10500
      TabIndex        =   8
      Top             =   8475
      Width           =   1215
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   1
      Left            =   9450
      TabIndex        =   206
      Text            =   "99"
      Top             =   300
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   2
      Left            =   9450
      TabIndex        =   207
      Text            =   "99"
      Top             =   600
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   3
      Left            =   9450
      TabIndex        =   208
      Text            =   "99"
      Top             =   900
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   4
      Left            =   9450
      TabIndex        =   209
      Text            =   "99"
      Top             =   1200
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   5
      Left            =   9450
      TabIndex        =   210
      Text            =   "99"
      Top             =   1500
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   6
      Left            =   9450
      TabIndex        =   211
      Text            =   "99"
      Top             =   1800
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   7
      Left            =   9450
      TabIndex        =   212
      Text            =   "99"
      Top             =   2100
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   8
      Left            =   9450
      TabIndex        =   213
      Text            =   "99"
      Top             =   2400
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   9
      Left            =   9450
      TabIndex        =   214
      Text            =   "99"
      Top             =   2700
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   10
      Left            =   9450
      TabIndex        =   215
      Text            =   "99"
      Top             =   3000
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   11
      Left            =   9450
      TabIndex        =   216
      Text            =   "99"
      Top             =   3300
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   12
      Left            =   9450
      TabIndex        =   217
      Text            =   "99"
      Top             =   3600
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   13
      Left            =   9450
      TabIndex        =   218
      Text            =   "99"
      Top             =   4050
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   14
      Left            =   9450
      TabIndex        =   219
      Text            =   "99"
      Top             =   4350
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   15
      Left            =   9450
      TabIndex        =   220
      Text            =   "99"
      Top             =   4650
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   16
      Left            =   9450
      TabIndex        =   221
      Text            =   "99"
      Top             =   4950
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   17
      Left            =   9450
      TabIndex        =   222
      Text            =   "99"
      Top             =   5250
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   18
      Left            =   9450
      TabIndex        =   223
      Text            =   "99"
      Top             =   5550
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   19
      Left            =   9450
      TabIndex        =   224
      Text            =   "99"
      Top             =   5850
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   20
      Left            =   9450
      TabIndex        =   225
      Text            =   "99"
      Top             =   6150
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   21
      Left            =   9450
      TabIndex        =   226
      Text            =   "99"
      Top             =   6450
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   22
      Left            =   9450
      TabIndex        =   227
      Text            =   "99"
      Top             =   6750
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   23
      Left            =   9450
      TabIndex        =   228
      Text            =   "99"
      Top             =   7050
      Width           =   540
   End
   Begin VB.TextBox txtRelease 
      Alignment       =   2  'Center
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
      Index           =   24
      Left            =   9450
      TabIndex        =   229
      Text            =   "99"
      Top             =   7350
      Width           =   540
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   24
      Left            =   11475
      Picture         =   "XSort.frx":0B04
      Top             =   7200
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   23
      Left            =   11475
      Picture         =   "XSort.frx":1086
      Top             =   6900
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   22
      Left            =   11475
      Picture         =   "XSort.frx":1608
      Top             =   6600
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   21
      Left            =   11475
      Picture         =   "XSort.frx":1B8A
      Top             =   6300
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   20
      Left            =   11475
      Picture         =   "XSort.frx":210C
      Top             =   6000
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   19
      Left            =   11475
      Picture         =   "XSort.frx":268E
      Top             =   5700
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   18
      Left            =   11475
      Picture         =   "XSort.frx":2C10
      Top             =   5400
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   17
      Left            =   11475
      Picture         =   "XSort.frx":3192
      Top             =   5100
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   16
      Left            =   11475
      Picture         =   "XSort.frx":3714
      Top             =   4800
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   15
      Left            =   11475
      Picture         =   "XSort.frx":3C96
      Top             =   4500
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   14
      Left            =   11475
      Picture         =   "XSort.frx":4218
      Top             =   4200
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   13
      Left            =   11475
      Picture         =   "XSort.frx":479A
      Top             =   3900
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   12
      Left            =   11475
      Picture         =   "XSort.frx":4D1C
      Top             =   3600
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   11
      Left            =   11475
      Picture         =   "XSort.frx":529E
      Top             =   3300
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   10
      Left            =   11475
      Picture         =   "XSort.frx":5820
      Top             =   3000
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   9
      Left            =   11475
      Picture         =   "XSort.frx":5DA2
      Top             =   2700
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   8
      Left            =   11475
      Picture         =   "XSort.frx":6324
      Top             =   2400
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   7
      Left            =   11475
      Picture         =   "XSort.frx":68A6
      Top             =   2100
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   6
      Left            =   11475
      Picture         =   "XSort.frx":6E28
      Top             =   1800
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   5
      Left            =   11475
      Picture         =   "XSort.frx":73AA
      Top             =   1500
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   4
      Left            =   11475
      Picture         =   "XSort.frx":792C
      Top             =   1200
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   3
      Left            =   11475
      Picture         =   "XSort.frx":7EAE
      Top             =   900
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   2
      Left            =   11475
      Picture         =   "XSort.frx":8430
      Top             =   600
      Width           =   315
   End
   Begin VB.Image CancelReleasePic 
      Height          =   315
      Index           =   1
      Left            =   11475
      Picture         =   "XSort.frx":89B2
      Top             =   300
      Width           =   315
   End
   Begin VB.Label lblPartLoads 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Part Loads"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00D2A03C&
      Height          =   240
      Left            =   9600
      TabIndex        =   205
      Top             =   75
      Width           =   1515
   End
   Begin VB.Label lblCategory 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Category"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00D2A03C&
      Height          =   240
      Left            =   555
      TabIndex        =   204
      Top             =   75
      Width           =   3315
   End
   Begin VB.Label lblCustomer 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Customer"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00D2A03C&
      Height          =   240
      Left            =   3975
      TabIndex        =   203
      Top             =   75
      Width           =   3165
   End
   Begin VB.Label lblStn 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Stn"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00D2A03C&
      Height          =   240
      Left            =   75
      TabIndex        =   202
      Top             =   75
      Width           =   540
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   8
      Left            =   75
      TabIndex        =   201
      Top             =   2505
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   7
      Left            =   75
      TabIndex        =   200
      Top             =   2205
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   6
      Left            =   75
      TabIndex        =   199
      Top             =   1905
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   5
      Left            =   75
      TabIndex        =   198
      Top             =   1605
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Left            =   75
      TabIndex        =   197
      Top             =   1305
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   3
      Left            =   75
      TabIndex        =   196
      Top             =   1005
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   2
      Left            =   75
      TabIndex        =   195
      Top             =   705
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   1
      Left            =   75
      TabIndex        =   194
      Top             =   360
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   9
      Left            =   75
      TabIndex        =   193
      Top             =   2805
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   10
      Left            =   75
      TabIndex        =   192
      Top             =   3105
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   11
      Left            =   75
      TabIndex        =   191
      Top             =   3405
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   12
      Left            =   75
      TabIndex        =   190
      Top             =   3705
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   13
      Left            =   75
      TabIndex        =   189
      Top             =   4125
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   14
      Left            =   75
      TabIndex        =   188
      Top             =   4425
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   15
      Left            =   75
      TabIndex        =   187
      Top             =   4725
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   16
      Left            =   75
      TabIndex        =   186
      Top             =   5025
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   17
      Left            =   75
      TabIndex        =   185
      Top             =   5340
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   18
      Left            =   75
      TabIndex        =   184
      Top             =   5640
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   19
      Left            =   75
      TabIndex        =   183
      Top             =   5940
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   20
      Left            =   75
      TabIndex        =   182
      Top             =   6240
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   21
      Left            =   75
      TabIndex        =   181
      Top             =   6540
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   22
      Left            =   75
      TabIndex        =   180
      Top             =   6840
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   23
      Left            =   75
      TabIndex        =   179
      Top             =   7125
      Width           =   390
   End
   Begin VB.Label lblStnNumber 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Index           =   24
      Left            =   75
      TabIndex        =   178
      Top             =   7440
      Width           =   390
   End
   Begin VB.Label lblDeliveryDay 
      Alignment       =   2  'Center
      BackColor       =   &H00404040&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   0
      Left            =   1650
      TabIndex        =   7
      Top             =   9225
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Label lblDeliveryDay 
      Alignment       =   2  'Center
      BackColor       =   &H00800080&
      Caption         =   "Sun"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   7
      Left            =   8475
      TabIndex        =   6
      Top             =   9225
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Label lblDeliveryDay 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Caption         =   "Sat"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   6
      Left            =   7500
      TabIndex        =   5
      Top             =   9225
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Label lblDeliveryDay 
      Alignment       =   2  'Center
      BackColor       =   &H00FF8080&
      Caption         =   "Fri"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   5
      Left            =   6525
      TabIndex        =   4
      Top             =   9225
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Label lblDeliveryDay 
      Alignment       =   2  'Center
      BackColor       =   &H0000C000&
      Caption         =   "Thu"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   4
      Left            =   5550
      TabIndex        =   3
      Top             =   9225
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Label lblDeliveryDay 
      Alignment       =   2  'Center
      BackColor       =   &H0000FFFF&
      Caption         =   "Wed"
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
      Index           =   3
      Left            =   4575
      TabIndex        =   2
      Top             =   9225
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Label lblDeliveryDay 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      Caption         =   "Tue"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   2
      Left            =   3600
      TabIndex        =   1
      Top             =   9225
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Label lblDeliveryDay 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Mon"
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
      Index           =   1
      Left            =   2625
      TabIndex        =   0
      Top             =   9225
      Visible         =   0   'False
      Width           =   915
   End
End
Attribute VB_Name = "XSort_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim SelectedStn As Integer
Dim Bank As Integer
Dim StartStn As Integer
Dim EndStn As Integer
Dim StationBagsStart As Integer
Dim cmbCatPosition As Integer
Dim cmbCusPosition As Integer
Dim AllowLineChange As Boolean
Dim AllowSPChange As Boolean
Dim PLCStn As Integer
Dim CountMode As Integer
Dim myOldBarcode(20) As String

Dim TestCat As Long
Dim TestGrp As Long

Dim ReleaseWeight(24) As Integer
Dim ReleaseWith(24) As Integer

Dim LastVisible As Integer



Private Sub SetLanguage()
    
    lblStn.Caption = TextWord(535)
    lblCustomer.Caption = TextWord(33)
    
    If dbCatUsed Then
        lblCategory.Caption = TextWord(35)
    Else
        lblCategory.Caption = TextWord(676)
    End If
            
    lblPartLoads.Caption = TextWord(583)
       
    cmdRelease.Caption = TextWord(230)
    cmd_exit.Caption = TextWord(309)
       
    Dim chk As CheckBox
    For Each chk In chkRelease()
        chkRelease(chk.Index).Caption = "" 'TextWord(230)
    Next chk
        
End Sub


Private Sub CancelReleasePic_Click(Index As Integer)
        
     DisplayForm wait_frm
        
     For Each rel In Me.CancelReleasePic()
        If ManualRelease(rel.Index, PLCStn) = Index Then
            Data(0) = 0
            Comms_frm.WritePLC PLCStn, "D", 800 + rel.Index, 1, Data(), False, "XSort"
        End If
     Next rel
     
     Unload wait_frm
         
End Sub

Private Sub CancelReleasePic_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
     'Set all cancel release buttons back to the basic appearance
    For Each SS In CancelReleasePic()
        If CancelReleasePic(SS.Index) <> Me.picW7Red(1).Picture Then CancelReleasePic(SS.Index).Picture = Me.picW7Red(1).Picture
    Next SS
    If CancelReleasePic(Index).Picture <> Me.picW7Red(4).Picture Then CancelReleasePic(Index).Picture = Me.picW7Red(4).Picture
End Sub

Private Sub cmd_Exit_Click()
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG - XSort_frm", "Cmd_Exit_Click", False
    Unload Me
End Sub

Private Sub cmdRelease_Click()
    
    'Only write values if set to purge or release
    On Error Resume Next
    
    Dim n As Integer
    Dim Amount As Integer
    Dim myValue As Integer
    DisplayForm wait_frm
    
    
    
    Amount = (EndStn - StartStn) + 1
    For n = 1 To Amount
        
        myValue = Val(txtRelease(n).Text)
        
        'Ensure a master station has been set
        If (myValue > 0) And (chkRelease(myValue).Value > 0) Then
            Data(0) = myValue
            'ErrorHandler 0, "MANUAL RELEASE", "Station=" & Format$(StartStn + n - 1) & "  " & Me.lblWeight(n).Caption & "   D" & Format$(800 + StartStn + n - 1), False
        Else
            Data(0) = 0
        End If
        
        If (Data(0) > 0) Then
            Comms_frm.WritePLC PLCStn, "D", 800 + StartStn + n - 1, 1, Data(), False, "XSort"
        End If
                  
    Next n
    
    For n = 1 To Amount
        chkRelease(n).Value = 0
        txtRelease(n).Text = ""
    Next n
    
    
    
    Unload wait_frm
     
    
End Sub
Private Sub Form_Activate()
    CheckFormPosition Me
End Sub

Private Sub Form_Load()
    
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG - XSort_frm", "Form_Load Start", False
    
    Bank = ThisStation
    PLCStn = PLC_StnBank(Bank)
    
    Layout_Form
    Me.Caption = "X-Sort " & Format$(Bank)
       
    
    SetLanguage
    CenterForm Me
    Me.Top = 100
    
    SetDisplay
    
    Screen.MousePointer = vbArrow
    
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG - XSort_frm", "Form_Load Complete" & " PLCStn=" & Str(PLCStn), False
    
End Sub

Private Sub SetDisplay()
    
    On Error GoTo SetDisplayError
    
    
    Dim lbl As TextBox
    
    'Set Display Depending if View / Make Loading Program
    If Bank <> 0 Then
                    
        For Each lbl In lblWeight()
            chkRelease(lbl.Index).ForeColor = DarkGrey
        Next lbl
        
        cmdRelease.Visible = StationPartLoads
            
    Else
        
        lblStn.Visible = False
       
        For Each lbl In lblWeight()
            'chkPurge(lbl.Index).Visible = False
            lblWeight(lbl.Index).Visible = False
            lblStnNumber(lbl.Index).Visible = False
            lblProgress(lbl.Index).Visible = False
            txtRelease(lbl.Index).Visible = False
            chkRelease(lbl.Index).Visible = False
        Next lbl
        'lblReleasePart.Visible = False
        'cmbRelease.Visible = False
        'lblStnRelease.Visible = False
        cmdRelease.Visible = False
        
        'New for Purging
        chkAutoRelease.Visible = False
        
    End If
        
    
    
    
    
    'Show the Current Values in the PLC
    Dim m           As Integer
    Dim Stn         As Label
    Dim CatNum      As Long
    Dim CatID       As Integer
    Dim CusNum      As Long
    Dim CusID       As Integer
       
    Dim Ur1         As Long
    Dim Ur1ID       As Integer
       
    Dim Ur2         As Long
    Dim Ur2ID       As Integer
      
    Dim Bid         As Long
      
    'Read from SQL Server
    Dim Dummy       As Long
    Dim DummyTime   As String
    Dim Notes       As String
    Dim Special     As Long
    Dim SpecialID   As Integer
       
    m = 1
       
    'txtCus(m).Text = dbGetLongFromNumVal(BagCus(StationBagsStart, PLCStn), EditCus)
    
    For Each Stn In lblStnNumber()
        n = StartStn + Stn.Index - 1
        If n <= EndStn Then
            If Bank <> 0 Then
                
                StnBag = (n + StationBagsStart - StartStn)
                Grp = BagGrp(StnBag, PLCStn)
                Cat = BagCat(StnBag, PLCStn)
                Cus = BagCus(StnBag, PLCStn)
                Ur1 = BagUr1(StnBag, PLCStn)
                Ur2 = BagUr2(StnBag, PLCStn)
                Bid = BagBid(StnBag, PLCStn)
                
                Debug.Print Grp, Cat, Cus, Ur1, Ur2
                
                lblStnNumber(m).Caption = Format$(n)
                If dbCatUsed Then
                    txtCat(m).Text = dbGetLongFromNumVal(CLng(Cat), EditCat)
                    lblCatName(m).Text = dbGetNameFromNum(txtCat(m), EditCat)
                Else
                    txtCat(m).Text = dbGetLongFromNumVal(CLng(Grp), EditGrp)
                    lblCatName(m).Text = dbGetNameFromNum(txtCat(m), EditGrp)
                End If
                txtCus(m).Text = dbGetLongFromNumVal(CLng(Cus), EditCus)
                lblCusName(m).Text = dbGetNameFromNum(txtCus(m), EditCus)
                              
                txtRelease(m).Text = ""
                              
            End If
        Else
            lblStnNumber(m).Visible = False
            txtCus(m).Visible = False
            lblCusName(m).Visible = False
            txtCat(m).Visible = False
            lblCatName(m).Visible = False
            lblProgress(m).Visible = False
            lblWeight(m).Visible = False
            chkRelease(m).Visible = False
            
        End If
        m = m + 1
    Next Stn
    
    
    
        
    

Exit Sub
SetDisplayError:
    
    ErrorHandler Err, "XSort_frm SetDisplay", Err.Description, True
    Resume Next
    
End Sub




Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'Set all start/stop buttons back to the basic appearance
    For Each SS In CancelReleasePic()
        If CancelReleasePic(SS.Index) <> Me.picW7Red(1).Picture Then CancelReleasePic(SS.Index).Picture = Me.picW7Red(1).Picture
    Next SS
    
End Sub

Private Sub lblCatName_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub


Private Sub lblCusName_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub

Private Sub lblDeliveryColour_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub lblProgress_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub

Private Sub lblWeight_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub

Private Sub lblWeightPurge_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub optCountMode_Click(Index As Integer)
    CountMode = Index
End Sub


Private Sub tmr_Update_Timer()
    
    Dim pic As Integer
    Dim Weight As Integer
    Dim MinWeight As Integer
    Dim SP_1 As Integer
    Dim SP_2 As Integer
    Dim SP_3 As Integer
    Dim TotalKg As Integer
    Dim Cat As Integer
    Dim CatID As Integer
    Dim GrpID As Integer

    TotalKg = 0 'Clear the total purge weight

    MinWeight = 3

    Dim lbl As TextBox

    For Each lbl In lblWeight()
        If (Not ReleaseByCount And lblWeight(lbl.Index).Visible) Then

            lblWeight(lbl.Index).Text = Format$(BagWgt(StationBagsStart + lbl.Index - 1, PLCStn) / 10, "#0.0") & " " & TextWord(224)

            'Weight = (BagWgt(StationBagsStart + StartStn + lbl.Index - 2, PLCStn) / 10)
            Weight = (BagWgt(StationBagsStart + lbl.Index - 1, PLCStn) / 10)

            If dbCatUsed Then
                Call dbGetIDFromLongID(EditCat, txtCat(lbl.Index).Text, CatID)
                Call dbGetID(EditGrp, CInt(CatGroup(CatID)), GrpID)
            Else
                Call dbGetIDFromLongID(EditGrp, txtCat(lbl.Index).Text, CatID)
                Call dbGetID(EditGrp, CInt(CatGroup(CatID)), GrpID)
            End If
            
            If dbSettingValue(CatDbUseSetpoints) Then
                SP_1 = Val(CatSP1(CatID))
                SP_2 = Val(CatSP2(CatID))
                SP_3 = Val(CatSP3(CatID))
            Else
                SP_1 = Val(GrpSP1(GrpID))
                SP_2 = Val(GrpSP2(GrpID))
                SP_3 = Val(GrpSP3(GrpID))
            End If
            pic = 1
            If Weight > MinWeight Then pic = 2
            If Weight > SP_1 Then pic = 3
            If Weight > SP_2 Then pic = 4
            If Weight > SP_3 Then pic = 5
            If ManualRelease(Val(lblStnNumber(lbl.Index)), PLCStn) > 0 Then pic = 7
            
            lblProgress(lbl.Index).Text = TextWord(570 + pic)
            If pic = 4 Then
                lblProgress(lbl.Index).BackColor = &H80FF80    'Green
            ElseIf pic = 5 Then
                lblProgress(lbl.Index).BackColor = &H8080FF    'Red
            ElseIf pic = 7 Then
                lblProgress(lbl.Index).BackColor = &HFFC0C0     'Blue
                'Add the Master station to the Purge / Manual Release Station
                lblProgress(lbl.Index).Text = lblProgress(lbl.Index).Text & " " & Format$(ManualRelease(Val(lblStnNumber(lbl.Index)), PLCStn))
            Else
                lblProgress(lbl.Index).BackColor = &H8000000E  'White
            End If
            
            
            
        Else
            lblWeight(lbl.Index).Text = Format$(BagWgt(StationBagsStart + lbl.Index - 1, PLCStn), "0000")
        End If
        
        'Display Cancel Manual Release - If master station
        If ManualRelease(Val(lblStnNumber(lbl.Index)), PLCStn) = lbl.Index Then
            Me.CancelReleasePic(lbl.Index).Visible = True
        Else
            Me.CancelReleasePic(lbl.Index).Visible = False
        End If
        
    Next lbl

    CalcManualRelease

    'lblWeightPurge.Text = Format(TotalKg / 10, "#0.0") & " " & TextWord(224)
    
End Sub
Private Sub CalcManualRelease()
    
    Dim Item        As TextBox
    Dim myMixStn    As Integer
    
    Dim pic As Integer
    Dim Weight As Integer
    Dim MinWeight As Integer
    Dim SP_1 As Integer
    Dim SP_2 As Integer
    Dim SP_3 As Integer
    Dim Cat As Integer
    Dim CatID As Integer
    Dim GrpID As Integer
    Dim ReleaseEnabled As Boolean
    
    Dim myStn   As Integer
    
    MinWeight = 3
    
    'Test Weight Values
    'For Each Item In txtRelease()
    '    BagWgt(StationBagsStart + Item.Index - 1, PLCStn) = (Item.Index * 10)
    'Next Item
        
    'Clear stored values
    For Each Item In txtRelease()
        ReleaseWeight(Item.Index) = 0
        ReleaseWith(Item.Index) = 0
    Next Item
    
    'Look at eack Release CheckBox
    For Each Item In txtRelease()
        If chkRelease(Item.Index).Value = 1 Then
            txtRelease(Item.Index).Text = Format$(Item.Index)
        Else
            myMixStn = Val(txtRelease(Item.Index))
            If myMixStn = Item.Index Then
                txtRelease(Item.Index).Text = ""
            End If
        End If
    Next Item
    
    'Calculate the total weight
    For Each Item In txtRelease()
        
        myMixStn = Val(txtRelease(Item.Index))
                
        If myMixStn >= StartStn And myMixStn <= EndStn Then
            ReleaseWeight(myMixStn) = ReleaseWeight(myMixStn) + BagWgt(StationBagsStart + Item.Index - 1, PLCStn)
            ReleaseWith(Item.Index) = myMixStn
        End If
        
    Next Item
       
    
    'Show status Total Weight / Release with
    For Each Item In txtRelease()
        myStn = Val(lblStnNumber(Item.Index))
        If ManualRelease(myStn, PLCStn) > 0 Then
            chkRelease(Item.Index).Enabled = False
            chkRelease(Item.Index).Caption = ""
            txtRelease(Item.Index).Enabled = False
            txtRelease(Item.Index).BackColor = &HE0E0E0
            txtRelease(Item.Index).Text = ""
        Else
            If ReleaseWith(Item.Index) = Item.Index Then
                If chkRelease(Item.Index).Caption <> Format$(ReleaseWeight(Item.Index) / 10, "00.0") & TextWord(224) Then 'Stop flicker
                    chkRelease(Item.Index).Caption = Format$(ReleaseWeight(Item.Index) / 10, "00.0") & TextWord(224)
                End If
            ElseIf ReleaseWith(Item.Index) <> 0 Then
                chkRelease(Item.Index).Enabled = False
                chkRelease(Item.Index).Caption = ""
            Else
                chkRelease(Item.Index).Enabled = True
                chkRelease(Item.Index).Caption = ""
            End If
            txtRelease(Item.Index).Enabled = True
            txtRelease(Item.Index).BackColor = White
        End If
    Next Item
       
    ReleaseEnabled = True
      
    For Each Item In txtRelease()
        
        Weight = (ReleaseWeight(Item.Index) / 10)
        Call dbGetIDFromLongID(EditCat, txtCat(Item.Index).Text, CatID)
        Call dbGetID(EditGrp, CInt(CatGroup(CatID)), GrpID)
        If dbSettingValue(CatDbUseSetpoints) Then
            SP_1 = Val(CatSP1(CatID))
            SP_2 = Val(CatSP2(CatID))
            SP_3 = Val(CatSP3(CatID))
        Else
            SP_1 = Val(GrpSP1(GrpID))
            SP_2 = Val(GrpSP2(GrpID))
            SP_3 = Val(GrpSP3(GrpID))
        End If
                           
        If chkRelease(Item.Index).Value = 1 Then
            If Weight > SP_3 Then
                chkRelease(Item.Index).ForeColor = &H8080FF    'Red
                ReleaseEnabled = False
            ElseIf Weight < MinWeight Then
                chkRelease(Item.Index).ForeColor = &H8080FF    'Red
                ReleaseEnabled = False
            Else
                chkRelease(Item.Index).ForeColor = &H800000    'Blue
            End If
        Else
            'Do Nothing
        End If
        
        'If chkRelease(Item.Index).Caption <> "" And Not ReleaseEnabled Then
        '    txtRelease(Item.Index).BackColor = &H8080FF
        'Else
        '    txtRelease(Item.Index).BackColor = &HFFFFFF    'White
        'End If
        
    Next Item
    
    Me.cmdRelease.Enabled = ReleaseEnabled
    
End Sub
Private Sub txtCat_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub

Private Sub txtCus_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub



Private Sub Layout_Form()
    
    LastVisible = 0
    
    'Clear all positions
    For n = 1 To 24
        ReDraw n, 0, False
    Next n
    Dim newcentre As Integer
    Dim CurrentBank As Integer
    Dim Stn As Integer
    Dim Height As Integer
    Dim Space As Integer
    Dim StnIndex As Integer
    
    StnIndex = 1
    newcentre = 600
    Height = txtCat(1).Height
    Space = 10

    For n = 1 To MaxStationBanks
       CurrentBank = DisplayBank(Bank, n)
        If n = 1 Then
            StationBagsStart = Loading_BagStart(DisplayBank(Bank, 1))
            StartStn = Loading_StartStn(DisplayBank(Bank, 1))
        Else
            newcentre = newcentre + (Space * 10)
        End If
        If CurrentBank = 0 Then Exit For
        EndStn = Loading_EndStn(CurrentBank)
    
        For Stn = Loading_StartStn(CurrentBank) To Loading_EndStn(CurrentBank)
            ReDraw StnIndex, newcentre, True
            newcentre = newcentre + Height + Space
            StnIndex = StnIndex + 1
        Next Stn
        
    Next n
    
    Me.cmdRelease.Top = Me.txtRelease(LastVisible).Top + 525
    Me.cmdRelease.Left = Me.txtRelease(LastVisible).Left + 300
    
    
End Sub

Private Sub ReDraw(Index As Integer, newcentre As Integer, Visible As Boolean)
        
        lblStnNumber(Index).Left = 75
        txtCat(Index).Left = 450
        lblCatName(Index).Left = (txtCat(Index).Left + txtCat(Index).Width + 0)
        txtCus(Index).Left = (lblCatName(Index).Left + lblCatName(Index).Width + 60)
        lblCusName(Index).Left = (txtCus(Index).Left + txtCus(Index).Width + 0)
        lblProgress(Index).Left = (lblCusName(Index).Left + lblCusName(Index).Width + 60)
        lblWeight(Index).Left = (lblProgress(Index).Left + lblProgress(Index).Width + 0)
        txtRelease(Index).Left = (lblWeight(Index).Left + lblWeight(Index).Width + 0)
        chkRelease(Index).Left = (txtRelease(Index).Left + txtRelease(Index).Width + 60)
        CancelReleasePic(Index).Left = (chkRelease(Index).Left + chkRelease(Index).Width + 60)

        lblStnNumber(Index).Top = newcentre - (lblStnNumber(Index).Height / 2)
        txtCat(Index).Top = newcentre - (txtCat(Index).Height / 2)
        lblCatName(Index).Top = newcentre - (lblCatName(Index).Height / 2)
        txtCus(Index).Top = newcentre - (txtCus(Index).Height / 2)
        lblCusName(Index).Top = newcentre - (lblCusName(Index).Height / 2)
        lblProgress(Index).Top = newcentre - (lblProgress(Index).Height / 2)
        lblWeight(Index).Top = newcentre - (lblWeight(Index).Height / 2)
        txtRelease(Index).Top = newcentre - (txtRelease(Index).Height / 2)
        chkRelease(Index).Top = newcentre - (chkRelease(Index).Height / 2)
        CancelReleasePic(Index).Top = newcentre - (CancelReleasePic(Index).Height / 2)
        
        lblStnNumber(Index).Visible = Visible
        txtCat(Index).Visible = Visible
        lblCatName(Index).Visible = Visible
        txtCus(Index).Visible = Visible
        lblCusName(Index).Visible = Visible
        lblProgress(Index).Visible = Visible
        lblWeight(Index).Visible = Visible
        chkRelease(Index).Visible = Visible And StationPartLoads
        txtRelease(Index).Visible = Visible And StationPartLoads
        CancelReleasePic(Index).Visible = False
        
        chkRelease(Index).Enabled = False
        txtRelease(Index).Enabled = False
        
        'Set last visible position
        If Index > LastVisible And Visible Then
            LastVisible = Index
        End If
        
End Sub

Private Sub txtRelease_Click(Index As Integer)
    HighlightTextBox txtRelease(Index)
    
End Sub

Private Sub txtRelease_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txtRelease(Index), KeyCode)
End Sub

Private Sub txtRelease_KeyPress(Index As Integer, KeyAscii As Integer)
    BoxKeyPress txtRelease(Index), KeyAscii, EditStn, , 0
    'BoxKeyPress txtRelease(Index), KeyAscii, EditAny, 12, 0 'Special Carsoli only 12 Stations for release
End Sub
