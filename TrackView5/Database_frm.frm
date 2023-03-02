VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "mscomctl.ocx"
Begin VB.Form Database_frm 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Prog Database"
   ClientHeight    =   10035
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   45405
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   9
      Charset         =   204
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10035
   ScaleWidth      =   45405
   ShowInTaskbar   =   0   'False
   Begin VB.ComboBox cmbCusName 
      Height          =   330
      Left            =   7380
      TabIndex        =   1049
      Text            =   "Customer"
      Top             =   8220
      Width           =   2790
   End
   Begin VB.TextBox txt_PoolCusNum 
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
      Left            =   2370
      TabIndex        =   1047
      Text            =   "1"
      Top             =   7200
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   120
      Left            =   2370
      TabIndex        =   1046
      Text            =   "1"
      Top             =   6525
      Width           =   1140
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   4000
      Left            =   37380
      TabIndex        =   1045
      Text            =   "Primary Lines"
      Top             =   225
      Width           =   1800
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   4001
      Left            =   37380
      TabIndex        =   1044
      Text            =   "1st"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4001
      Left            =   37380
      TabIndex        =   1043
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4002
      Left            =   37380
      TabIndex        =   1042
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4003
      Left            =   37380
      TabIndex        =   1041
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4004
      Left            =   37380
      TabIndex        =   1040
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4005
      Left            =   37380
      TabIndex        =   1039
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4006
      Left            =   37380
      TabIndex        =   1038
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4007
      Left            =   37380
      TabIndex        =   1037
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4008
      Left            =   37380
      TabIndex        =   1036
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4009
      Left            =   37380
      TabIndex        =   1035
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4010
      Left            =   37380
      TabIndex        =   1034
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4011
      Left            =   37380
      TabIndex        =   1033
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4012
      Left            =   37380
      TabIndex        =   1032
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4013
      Left            =   37380
      TabIndex        =   1031
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4014
      Left            =   37380
      TabIndex        =   1030
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4015
      Left            =   37380
      TabIndex        =   1029
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4016
      Left            =   37380
      TabIndex        =   1028
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4017
      Left            =   37380
      TabIndex        =   1027
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4018
      Left            =   37380
      TabIndex        =   1026
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4019
      Left            =   37380
      TabIndex        =   1025
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4020
      Left            =   37380
      TabIndex        =   1024
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   4101
      Left            =   37830
      TabIndex        =   1023
      Text            =   "2nd"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4101
      Left            =   37830
      TabIndex        =   1022
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4102
      Left            =   37830
      TabIndex        =   1021
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4103
      Left            =   37830
      TabIndex        =   1020
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4104
      Left            =   37830
      TabIndex        =   1019
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4105
      Left            =   37830
      TabIndex        =   1018
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4106
      Left            =   37830
      TabIndex        =   1017
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4107
      Left            =   37830
      TabIndex        =   1016
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4108
      Left            =   37830
      TabIndex        =   1015
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4109
      Left            =   37830
      TabIndex        =   1014
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4110
      Left            =   37830
      TabIndex        =   1013
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4111
      Left            =   37830
      TabIndex        =   1012
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4112
      Left            =   37830
      TabIndex        =   1011
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4113
      Left            =   37830
      TabIndex        =   1010
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4114
      Left            =   37830
      TabIndex        =   1009
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4115
      Left            =   37830
      TabIndex        =   1008
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4116
      Left            =   37830
      TabIndex        =   1007
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4117
      Left            =   37830
      TabIndex        =   1006
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4118
      Left            =   37830
      TabIndex        =   1005
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4119
      Left            =   37830
      TabIndex        =   1004
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4120
      Left            =   37830
      TabIndex        =   1003
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   4201
      Left            =   38280
      TabIndex        =   1002
      Text            =   "3rd"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4201
      Left            =   38280
      TabIndex        =   1001
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4202
      Left            =   38280
      TabIndex        =   1000
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4203
      Left            =   38280
      TabIndex        =   999
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4204
      Left            =   38280
      TabIndex        =   998
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4205
      Left            =   38280
      TabIndex        =   997
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4206
      Left            =   38280
      TabIndex        =   996
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4207
      Left            =   38280
      TabIndex        =   995
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4208
      Left            =   38280
      TabIndex        =   994
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4209
      Left            =   38280
      TabIndex        =   993
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4210
      Left            =   38280
      TabIndex        =   992
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4211
      Left            =   38280
      TabIndex        =   991
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4212
      Left            =   38280
      TabIndex        =   990
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4213
      Left            =   38280
      TabIndex        =   989
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4214
      Left            =   38280
      TabIndex        =   988
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4215
      Left            =   38280
      TabIndex        =   987
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4216
      Left            =   38280
      TabIndex        =   986
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4217
      Left            =   38280
      TabIndex        =   985
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4218
      Left            =   38280
      TabIndex        =   984
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4219
      Left            =   38280
      TabIndex        =   983
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4220
      Left            =   38280
      TabIndex        =   982
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   4301
      Left            =   38730
      TabIndex        =   981
      Text            =   "4th"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4301
      Left            =   38730
      TabIndex        =   980
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4302
      Left            =   38730
      TabIndex        =   979
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4303
      Left            =   38730
      TabIndex        =   978
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4304
      Left            =   38730
      TabIndex        =   977
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4305
      Left            =   38730
      TabIndex        =   976
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4306
      Left            =   38730
      TabIndex        =   975
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4307
      Left            =   38730
      TabIndex        =   974
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4308
      Left            =   38730
      TabIndex        =   973
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4309
      Left            =   38730
      TabIndex        =   972
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4310
      Left            =   38730
      TabIndex        =   971
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4311
      Left            =   38730
      TabIndex        =   970
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4312
      Left            =   38730
      TabIndex        =   969
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4313
      Left            =   38730
      TabIndex        =   968
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4314
      Left            =   38730
      TabIndex        =   967
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4315
      Left            =   38730
      TabIndex        =   966
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4316
      Left            =   38730
      TabIndex        =   965
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4317
      Left            =   38730
      TabIndex        =   964
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4318
      Left            =   38730
      TabIndex        =   963
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4319
      Left            =   38730
      TabIndex        =   962
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   4320
      Left            =   38730
      TabIndex        =   961
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.ComboBox cmb_CusLoadingProgs 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   600
      Left            =   7440
      TabIndex        =   960
      Text            =   "Cmb Cus Loading prog"
      Top             =   7260
      Width           =   6690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   101
      Left            =   2370
      TabIndex        =   958
      Text            =   "1"
      Top             =   825
      Width           =   1140
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3920
      Left            =   34545
      TabIndex        =   935
      Text            =   "Group Name"
      Top             =   6525
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3919
      Left            =   34545
      TabIndex        =   934
      Text            =   "Group Name"
      Top             =   6225
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3918
      Left            =   34545
      TabIndex        =   933
      Text            =   "Group Name"
      Top             =   5925
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3917
      Left            =   34545
      TabIndex        =   932
      Text            =   "Group Name"
      Top             =   5625
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3916
      Left            =   34545
      TabIndex        =   931
      Text            =   "Group Name"
      Top             =   5325
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3915
      Left            =   34545
      TabIndex        =   930
      Text            =   "Group Name"
      Top             =   5025
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3914
      Left            =   34545
      TabIndex        =   929
      Text            =   "Group Name"
      Top             =   4725
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3913
      Left            =   34545
      TabIndex        =   928
      Text            =   "Group Name"
      Top             =   4425
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3912
      Left            =   34545
      TabIndex        =   927
      Text            =   "Group Name"
      Top             =   4125
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3911
      Left            =   34545
      TabIndex        =   926
      Text            =   "Group Name"
      Top             =   3825
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3910
      Left            =   34545
      TabIndex        =   925
      Text            =   "Group Name"
      Top             =   3525
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3909
      Left            =   34545
      TabIndex        =   924
      Text            =   "Group Name"
      Top             =   3225
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3908
      Left            =   34545
      TabIndex        =   923
      Text            =   "Group Name"
      Top             =   2925
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3907
      Left            =   34545
      TabIndex        =   922
      Text            =   "Group Name"
      Top             =   2625
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3906
      Left            =   34545
      TabIndex        =   921
      Text            =   "Group Name"
      Top             =   2325
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3905
      Left            =   34545
      TabIndex        =   920
      Text            =   "Group Name"
      Top             =   2025
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3904
      Left            =   34545
      TabIndex        =   919
      Text            =   "Group Name"
      Top             =   1725
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3903
      Left            =   34545
      TabIndex        =   918
      Text            =   "Group Name"
      Top             =   1425
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3902
      Left            =   34545
      TabIndex        =   917
      Text            =   "Group Name"
      Top             =   1125
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   3901
      Left            =   34545
      TabIndex        =   916
      Text            =   "Group Name"
      Top             =   825
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3920
      Left            =   33420
      TabIndex        =   551
      Text            =   "1"
      Top             =   6525
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3919
      Left            =   33420
      TabIndex        =   552
      Text            =   "1"
      Top             =   6225
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3918
      Left            =   33420
      TabIndex        =   553
      Text            =   "1"
      Top             =   5925
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3917
      Left            =   33420
      TabIndex        =   554
      Text            =   "1"
      Top             =   5625
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3916
      Left            =   33420
      TabIndex        =   555
      Text            =   "1"
      Top             =   5325
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3915
      Left            =   33420
      TabIndex        =   556
      Text            =   "1"
      Top             =   5025
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3914
      Left            =   33420
      TabIndex        =   557
      Text            =   "1"
      Top             =   4725
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3913
      Left            =   33420
      TabIndex        =   558
      Text            =   "1"
      Top             =   4425
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3912
      Left            =   33420
      TabIndex        =   559
      Text            =   "1"
      Top             =   4125
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3911
      Left            =   33420
      TabIndex        =   560
      Text            =   "1"
      Top             =   3825
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3910
      Left            =   33420
      TabIndex        =   561
      Text            =   "1"
      Top             =   3525
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3909
      Left            =   33420
      TabIndex        =   562
      Text            =   "1"
      Top             =   3225
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3908
      Left            =   33420
      TabIndex        =   563
      Text            =   "1"
      Top             =   2925
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3907
      Left            =   33420
      TabIndex        =   564
      Text            =   "1"
      Top             =   2625
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3906
      Left            =   33420
      TabIndex        =   565
      Text            =   "1"
      Top             =   2325
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3905
      Left            =   33420
      TabIndex        =   566
      Text            =   "1"
      Top             =   2025
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3904
      Left            =   33420
      TabIndex        =   567
      Text            =   "1"
      Top             =   1725
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3903
      Left            =   33420
      TabIndex        =   568
      Text            =   "1"
      Top             =   1425
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3902
      Left            =   33420
      TabIndex        =   569
      Text            =   "1"
      Top             =   1125
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3901
      Left            =   33420
      TabIndex        =   570
      Text            =   "1"
      Top             =   840
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3820
      Left            =   32670
      TabIndex        =   631
      Text            =   "1"
      Top             =   6525
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3819
      Left            =   32670
      TabIndex        =   632
      Text            =   "1"
      Top             =   6225
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3818
      Left            =   32670
      TabIndex        =   633
      Text            =   "1"
      Top             =   5925
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3817
      Left            =   32670
      TabIndex        =   634
      Text            =   "1"
      Top             =   5625
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3816
      Left            =   32670
      TabIndex        =   635
      Text            =   "1"
      Top             =   5325
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3815
      Left            =   32670
      TabIndex        =   636
      Text            =   "1"
      Top             =   5025
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3814
      Left            =   32670
      TabIndex        =   637
      Text            =   "1"
      Top             =   4725
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3813
      Left            =   32670
      TabIndex        =   638
      Text            =   "1"
      Top             =   4425
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3812
      Left            =   32670
      TabIndex        =   639
      Text            =   "1"
      Top             =   4125
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3811
      Left            =   32670
      TabIndex        =   640
      Text            =   "1"
      Top             =   3825
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3810
      Left            =   32670
      TabIndex        =   641
      Text            =   "1"
      Top             =   3525
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3809
      Left            =   32670
      TabIndex        =   642
      Text            =   "1"
      Top             =   3225
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3808
      Left            =   32670
      TabIndex        =   643
      Text            =   "1"
      Top             =   2925
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3807
      Left            =   32670
      TabIndex        =   644
      Text            =   "1"
      Top             =   2625
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3806
      Left            =   32670
      TabIndex        =   645
      Text            =   "1"
      Top             =   2325
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3805
      Left            =   32670
      TabIndex        =   646
      Text            =   "1"
      Top             =   2025
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3804
      Left            =   32670
      TabIndex        =   647
      Text            =   "1"
      Top             =   1725
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3803
      Left            =   32670
      TabIndex        =   648
      Text            =   "1"
      Top             =   1425
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3802
      Left            =   32670
      TabIndex        =   649
      Text            =   "1"
      Top             =   1125
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3801
      Left            =   32670
      TabIndex        =   650
      Text            =   "1"
      Top             =   825
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3720
      Left            =   31920
      TabIndex        =   611
      Text            =   "1"
      Top             =   6525
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3719
      Left            =   31920
      TabIndex        =   612
      Text            =   "1"
      Top             =   6225
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3718
      Left            =   31920
      TabIndex        =   613
      Text            =   "1"
      Top             =   5925
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3717
      Left            =   31920
      TabIndex        =   614
      Text            =   "1"
      Top             =   5625
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3716
      Left            =   31920
      TabIndex        =   615
      Text            =   "1"
      Top             =   5325
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3715
      Left            =   31920
      TabIndex        =   616
      Text            =   "1"
      Top             =   5025
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3714
      Left            =   31920
      TabIndex        =   617
      Text            =   "1"
      Top             =   4725
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3713
      Left            =   31920
      TabIndex        =   618
      Text            =   "1"
      Top             =   4425
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3712
      Left            =   31920
      TabIndex        =   619
      Text            =   "1"
      Top             =   4125
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3711
      Left            =   31920
      TabIndex        =   620
      Text            =   "1"
      Top             =   3825
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3710
      Left            =   31920
      TabIndex        =   621
      Text            =   "1"
      Top             =   3525
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3709
      Left            =   31920
      TabIndex        =   622
      Text            =   "1"
      Top             =   3225
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3708
      Left            =   31920
      TabIndex        =   623
      Text            =   "1"
      Top             =   2925
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3707
      Left            =   31920
      TabIndex        =   624
      Text            =   "1"
      Top             =   2625
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3706
      Left            =   31920
      TabIndex        =   625
      Text            =   "1"
      Top             =   2325
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3705
      Left            =   31920
      TabIndex        =   626
      Text            =   "1"
      Top             =   2025
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3704
      Left            =   31920
      TabIndex        =   627
      Text            =   "1"
      Top             =   1725
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3703
      Left            =   31920
      TabIndex        =   628
      Text            =   "1"
      Top             =   1425
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3702
      Left            =   31920
      TabIndex        =   629
      Text            =   "1"
      Top             =   1125
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3701
      Left            =   31920
      TabIndex        =   630
      Text            =   "1"
      Top             =   825
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3620
      Left            =   31170
      TabIndex        =   591
      Text            =   "1"
      Top             =   6525
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3619
      Left            =   31170
      TabIndex        =   592
      Text            =   "1"
      Top             =   6225
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3618
      Left            =   31170
      TabIndex        =   593
      Text            =   "1"
      Top             =   5925
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3617
      Left            =   31170
      TabIndex        =   594
      Text            =   "1"
      Top             =   5625
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3616
      Left            =   31170
      TabIndex        =   595
      Text            =   "1"
      Top             =   5325
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3615
      Left            =   31170
      TabIndex        =   596
      Text            =   "1"
      Top             =   5025
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3614
      Left            =   31170
      TabIndex        =   597
      Text            =   "1"
      Top             =   4725
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3613
      Left            =   31170
      TabIndex        =   598
      Text            =   "1"
      Top             =   4425
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3612
      Left            =   31170
      TabIndex        =   599
      Text            =   "1"
      Top             =   4125
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3611
      Left            =   31170
      TabIndex        =   600
      Text            =   "1"
      Top             =   3825
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3610
      Left            =   31170
      TabIndex        =   601
      Text            =   "1"
      Top             =   3525
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3609
      Left            =   31170
      TabIndex        =   602
      Text            =   "1"
      Top             =   3225
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3608
      Left            =   31170
      TabIndex        =   603
      Text            =   "1"
      Top             =   2925
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3607
      Left            =   31170
      TabIndex        =   604
      Text            =   "1"
      Top             =   2625
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3606
      Left            =   31170
      TabIndex        =   605
      Text            =   "1"
      Top             =   2325
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3605
      Left            =   31170
      TabIndex        =   606
      Text            =   "1"
      Top             =   2025
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3604
      Left            =   31170
      TabIndex        =   607
      Text            =   "1"
      Top             =   1725
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3603
      Left            =   31170
      TabIndex        =   608
      Text            =   "1"
      Top             =   1425
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3602
      Left            =   31170
      TabIndex        =   609
      Text            =   "1"
      Top             =   1125
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3601
      Left            =   31170
      TabIndex        =   610
      Text            =   "1"
      Top             =   825
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3520
      Left            =   30420
      TabIndex        =   571
      Text            =   "1"
      Top             =   6525
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3519
      Left            =   30420
      TabIndex        =   572
      Text            =   "1"
      Top             =   6225
      WhatsThisHelpID =   1520
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3518
      Left            =   30420
      TabIndex        =   573
      Text            =   "1"
      Top             =   5925
      WhatsThisHelpID =   1519
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3517
      Left            =   30420
      TabIndex        =   574
      Text            =   "1"
      Top             =   5625
      WhatsThisHelpID =   1518
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3516
      Left            =   30420
      TabIndex        =   575
      Text            =   "1"
      Top             =   5325
      WhatsThisHelpID =   1517
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3515
      Left            =   30420
      TabIndex        =   576
      Text            =   "1"
      Top             =   5025
      WhatsThisHelpID =   1516
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3514
      Left            =   30420
      TabIndex        =   577
      Text            =   "1"
      Top             =   4725
      WhatsThisHelpID =   1514
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3513
      Left            =   30420
      TabIndex        =   578
      Text            =   "1"
      Top             =   4425
      WhatsThisHelpID =   1513
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3512
      Left            =   30420
      TabIndex        =   579
      Text            =   "1"
      Top             =   4125
      WhatsThisHelpID =   1512
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3511
      Left            =   30420
      TabIndex        =   580
      Text            =   "1"
      Top             =   3825
      WhatsThisHelpID =   1511
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3510
      Left            =   30420
      TabIndex        =   581
      Text            =   "1"
      Top             =   3525
      WhatsThisHelpID =   1510
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3509
      Left            =   30420
      TabIndex        =   582
      Text            =   "1"
      Top             =   3225
      WhatsThisHelpID =   1509
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3508
      Left            =   30420
      TabIndex        =   583
      Text            =   "1"
      Top             =   2925
      WhatsThisHelpID =   1508
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3507
      Left            =   30420
      TabIndex        =   584
      Text            =   "1"
      Top             =   2625
      WhatsThisHelpID =   1507
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3506
      Left            =   30420
      TabIndex        =   585
      Text            =   "1"
      Top             =   2325
      WhatsThisHelpID =   1506
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3505
      Left            =   30420
      TabIndex        =   586
      Text            =   "1"
      Top             =   2025
      WhatsThisHelpID =   1505
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3504
      Left            =   30420
      TabIndex        =   587
      Text            =   "1"
      Top             =   1725
      WhatsThisHelpID =   1504
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3503
      Left            =   30420
      TabIndex        =   588
      Text            =   "1"
      Top             =   1425
      WhatsThisHelpID =   1503
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3502
      Left            =   30420
      TabIndex        =   589
      Text            =   "1"
      Top             =   1125
      WhatsThisHelpID =   1502
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3501
      Left            =   30420
      TabIndex        =   590
      Text            =   "1"
      Top             =   825
      WhatsThisHelpID =   1501
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3420
      Left            =   29895
      TabIndex        =   651
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3419
      Left            =   29895
      TabIndex        =   652
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3418
      Left            =   29895
      TabIndex        =   653
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3417
      Left            =   29895
      TabIndex        =   654
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3416
      Left            =   29895
      TabIndex        =   655
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3415
      Left            =   29895
      TabIndex        =   656
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3414
      Left            =   29895
      TabIndex        =   657
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3413
      Left            =   29895
      TabIndex        =   658
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3412
      Left            =   29895
      TabIndex        =   659
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3411
      Left            =   29895
      TabIndex        =   660
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3410
      Left            =   29895
      TabIndex        =   661
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3409
      Left            =   29895
      TabIndex        =   662
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3408
      Left            =   29895
      TabIndex        =   663
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3407
      Left            =   29895
      TabIndex        =   664
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3406
      Left            =   29895
      TabIndex        =   665
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3405
      Left            =   29895
      TabIndex        =   666
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3404
      Left            =   29895
      TabIndex        =   667
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3403
      Left            =   29895
      TabIndex        =   668
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3402
      Left            =   29895
      TabIndex        =   669
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3401
      Left            =   29895
      TabIndex        =   670
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   3401
      Left            =   29895
      TabIndex        =   905
      Text            =   "4th"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3320
      Left            =   29445
      TabIndex        =   671
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3319
      Left            =   29445
      TabIndex        =   672
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3318
      Left            =   29445
      TabIndex        =   673
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3317
      Left            =   29445
      TabIndex        =   674
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3316
      Left            =   29445
      TabIndex        =   675
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3315
      Left            =   29445
      TabIndex        =   676
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3314
      Left            =   29445
      TabIndex        =   677
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3313
      Left            =   29445
      TabIndex        =   678
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3312
      Left            =   29445
      TabIndex        =   679
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3311
      Left            =   29445
      TabIndex        =   680
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3310
      Left            =   29445
      TabIndex        =   681
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3309
      Left            =   29445
      TabIndex        =   682
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3308
      Left            =   29445
      TabIndex        =   683
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3307
      Left            =   29445
      TabIndex        =   684
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3306
      Left            =   29445
      TabIndex        =   685
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3305
      Left            =   29445
      TabIndex        =   686
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3304
      Left            =   29445
      TabIndex        =   687
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3303
      Left            =   29445
      TabIndex        =   688
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3302
      Left            =   29445
      TabIndex        =   689
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3301
      Left            =   29445
      TabIndex        =   690
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   3301
      Left            =   29445
      TabIndex        =   904
      Text            =   "3rd"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3220
      Left            =   28995
      TabIndex        =   691
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3219
      Left            =   28995
      TabIndex        =   692
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3218
      Left            =   28995
      TabIndex        =   693
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3217
      Left            =   28995
      TabIndex        =   694
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3216
      Left            =   28995
      TabIndex        =   695
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3215
      Left            =   28995
      TabIndex        =   696
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3214
      Left            =   28995
      TabIndex        =   697
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3213
      Left            =   28995
      TabIndex        =   698
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3212
      Left            =   28995
      TabIndex        =   699
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3211
      Left            =   28995
      TabIndex        =   700
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3210
      Left            =   28995
      TabIndex        =   701
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3209
      Left            =   28995
      TabIndex        =   702
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3208
      Left            =   28995
      TabIndex        =   703
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3207
      Left            =   28995
      TabIndex        =   704
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3206
      Left            =   28995
      TabIndex        =   705
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3205
      Left            =   28995
      TabIndex        =   706
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3204
      Left            =   28995
      TabIndex        =   707
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3203
      Left            =   28995
      TabIndex        =   708
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3202
      Left            =   28995
      TabIndex        =   709
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3201
      Left            =   28995
      TabIndex        =   710
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   3201
      Left            =   28995
      TabIndex        =   903
      Text            =   "2nd"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3120
      Left            =   28545
      TabIndex        =   711
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3119
      Left            =   28545
      TabIndex        =   712
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3118
      Left            =   28545
      TabIndex        =   713
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3117
      Left            =   28545
      TabIndex        =   714
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3116
      Left            =   28545
      TabIndex        =   715
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3115
      Left            =   28545
      TabIndex        =   716
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3114
      Left            =   28545
      TabIndex        =   717
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3113
      Left            =   28545
      TabIndex        =   718
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3112
      Left            =   28545
      TabIndex        =   719
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3111
      Left            =   28545
      TabIndex        =   720
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3110
      Left            =   28545
      TabIndex        =   721
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3109
      Left            =   28545
      TabIndex        =   722
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3108
      Left            =   28545
      TabIndex        =   723
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3107
      Left            =   28545
      TabIndex        =   724
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3106
      Left            =   28545
      TabIndex        =   725
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3105
      Left            =   28545
      TabIndex        =   726
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3104
      Left            =   28545
      TabIndex        =   727
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3103
      Left            =   28545
      TabIndex        =   728
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3102
      Left            =   28545
      TabIndex        =   729
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3101
      Left            =   28545
      TabIndex        =   730
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   3101
      Left            =   28545
      TabIndex        =   902
      Text            =   "1st"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3020
      Left            =   28020
      TabIndex        =   731
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3019
      Left            =   28020
      TabIndex        =   732
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3018
      Left            =   28020
      TabIndex        =   733
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3017
      Left            =   28020
      TabIndex        =   734
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3016
      Left            =   28020
      TabIndex        =   735
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3015
      Left            =   28020
      TabIndex        =   736
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3014
      Left            =   28020
      TabIndex        =   737
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3013
      Left            =   28020
      TabIndex        =   738
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3012
      Left            =   28020
      TabIndex        =   739
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3011
      Left            =   28020
      TabIndex        =   740
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3010
      Left            =   28020
      TabIndex        =   741
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3009
      Left            =   28020
      TabIndex        =   742
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3008
      Left            =   28020
      TabIndex        =   743
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3007
      Left            =   28020
      TabIndex        =   744
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3006
      Left            =   28020
      TabIndex        =   745
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3005
      Left            =   28020
      TabIndex        =   746
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3004
      Left            =   28020
      TabIndex        =   747
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3003
      Left            =   28020
      TabIndex        =   748
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3002
      Left            =   28020
      TabIndex        =   749
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   3001
      Left            =   28020
      TabIndex        =   750
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   3001
      Left            =   28020
      TabIndex        =   900
      Text            =   "SP3"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2920
      Left            =   27570
      TabIndex        =   751
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2919
      Left            =   27570
      TabIndex        =   752
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2918
      Left            =   27570
      TabIndex        =   753
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2917
      Left            =   27570
      TabIndex        =   754
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2916
      Left            =   27570
      TabIndex        =   755
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2915
      Left            =   27570
      TabIndex        =   756
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2914
      Left            =   27570
      TabIndex        =   757
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2913
      Left            =   27570
      TabIndex        =   758
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2912
      Left            =   27570
      TabIndex        =   759
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2911
      Left            =   27570
      TabIndex        =   760
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2910
      Left            =   27570
      TabIndex        =   761
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2909
      Left            =   27570
      TabIndex        =   762
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2908
      Left            =   27570
      TabIndex        =   763
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2907
      Left            =   27570
      TabIndex        =   764
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2906
      Left            =   27570
      TabIndex        =   765
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2905
      Left            =   27570
      TabIndex        =   766
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2904
      Left            =   27570
      TabIndex        =   767
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2903
      Left            =   27570
      TabIndex        =   768
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2902
      Left            =   27570
      TabIndex        =   769
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2901
      Left            =   27570
      TabIndex        =   770
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   2901
      Left            =   27570
      TabIndex        =   899
      Text            =   "SP2"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2820
      Left            =   27120
      TabIndex        =   771
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2819
      Left            =   27120
      TabIndex        =   772
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2818
      Left            =   27120
      TabIndex        =   773
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2817
      Left            =   27120
      TabIndex        =   774
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2816
      Left            =   27120
      TabIndex        =   775
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2815
      Left            =   27120
      TabIndex        =   776
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2814
      Left            =   27120
      TabIndex        =   777
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2813
      Left            =   27120
      TabIndex        =   778
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2812
      Left            =   27120
      TabIndex        =   779
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2811
      Left            =   27120
      TabIndex        =   780
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2810
      Left            =   27120
      TabIndex        =   781
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2809
      Left            =   27120
      TabIndex        =   782
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2808
      Left            =   27120
      TabIndex        =   783
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2807
      Left            =   27120
      TabIndex        =   784
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2806
      Left            =   27120
      TabIndex        =   785
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2805
      Left            =   27120
      TabIndex        =   786
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2804
      Left            =   27120
      TabIndex        =   787
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2803
      Left            =   27120
      TabIndex        =   788
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2802
      Left            =   27120
      TabIndex        =   789
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2801
      Left            =   27120
      TabIndex        =   790
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   2801
      Left            =   27120
      TabIndex        =   898
      Text            =   "SP1"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2720
      Left            =   26595
      TabIndex        =   791
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2719
      Left            =   26595
      TabIndex        =   792
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2718
      Left            =   26595
      TabIndex        =   793
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2717
      Left            =   26595
      TabIndex        =   794
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2716
      Left            =   26595
      TabIndex        =   795
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2715
      Left            =   26595
      TabIndex        =   796
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2714
      Left            =   26595
      TabIndex        =   797
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2713
      Left            =   26595
      TabIndex        =   798
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2712
      Left            =   26595
      TabIndex        =   799
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2711
      Left            =   26595
      TabIndex        =   800
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2710
      Left            =   26595
      TabIndex        =   801
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2709
      Left            =   26595
      TabIndex        =   802
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2708
      Left            =   26595
      TabIndex        =   803
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2707
      Left            =   26595
      TabIndex        =   804
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2706
      Left            =   26595
      TabIndex        =   805
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2705
      Left            =   26595
      TabIndex        =   806
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2704
      Left            =   26595
      TabIndex        =   807
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2703
      Left            =   26595
      TabIndex        =   808
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2702
      Left            =   26595
      TabIndex        =   809
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2701
      Left            =   26595
      TabIndex        =   810
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   2701
      Left            =   26595
      TabIndex        =   896
      Text            =   "4th"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2620
      Left            =   26145
      TabIndex        =   811
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2619
      Left            =   26145
      TabIndex        =   812
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2618
      Left            =   26145
      TabIndex        =   813
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2617
      Left            =   26145
      TabIndex        =   814
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2616
      Left            =   26145
      TabIndex        =   815
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2615
      Left            =   26145
      TabIndex        =   816
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2614
      Left            =   26145
      TabIndex        =   817
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2613
      Left            =   26145
      TabIndex        =   818
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2612
      Left            =   26145
      TabIndex        =   819
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2611
      Left            =   26145
      TabIndex        =   820
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2610
      Left            =   26145
      TabIndex        =   821
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2609
      Left            =   26145
      TabIndex        =   822
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2608
      Left            =   26145
      TabIndex        =   823
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2607
      Left            =   26145
      TabIndex        =   824
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2606
      Left            =   26145
      TabIndex        =   825
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2605
      Left            =   26145
      TabIndex        =   826
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2604
      Left            =   26145
      TabIndex        =   827
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2603
      Left            =   26145
      TabIndex        =   828
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2602
      Left            =   26145
      TabIndex        =   829
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2601
      Left            =   26145
      TabIndex        =   830
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   2601
      Left            =   26145
      TabIndex        =   895
      Text            =   "3rd"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2520
      Left            =   25695
      TabIndex        =   831
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2519
      Left            =   25695
      TabIndex        =   832
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2518
      Left            =   25695
      TabIndex        =   833
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2517
      Left            =   25695
      TabIndex        =   834
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2516
      Left            =   25695
      TabIndex        =   835
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2515
      Left            =   25695
      TabIndex        =   836
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2514
      Left            =   25695
      TabIndex        =   837
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2513
      Left            =   25695
      TabIndex        =   838
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2512
      Left            =   25695
      TabIndex        =   839
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2511
      Left            =   25695
      TabIndex        =   840
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2510
      Left            =   25695
      TabIndex        =   841
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2509
      Left            =   25695
      TabIndex        =   842
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2508
      Left            =   25695
      TabIndex        =   843
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2507
      Left            =   25695
      TabIndex        =   844
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2506
      Left            =   25695
      TabIndex        =   845
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2505
      Left            =   25695
      TabIndex        =   846
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2504
      Left            =   25695
      TabIndex        =   847
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2503
      Left            =   25695
      TabIndex        =   848
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2502
      Left            =   25695
      TabIndex        =   849
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2501
      Left            =   25695
      TabIndex        =   850
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   2501
      Left            =   25695
      TabIndex        =   894
      Text            =   "2nd"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2420
      Left            =   25245
      TabIndex        =   851
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2419
      Left            =   25245
      TabIndex        =   852
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2418
      Left            =   25245
      TabIndex        =   853
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2417
      Left            =   25245
      TabIndex        =   854
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2416
      Left            =   25245
      TabIndex        =   855
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2415
      Left            =   25245
      TabIndex        =   856
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2414
      Left            =   25245
      TabIndex        =   857
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2413
      Left            =   25245
      TabIndex        =   858
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2412
      Left            =   25245
      TabIndex        =   859
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2411
      Left            =   25245
      TabIndex        =   860
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2410
      Left            =   25245
      TabIndex        =   861
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2409
      Left            =   25245
      TabIndex        =   862
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2408
      Left            =   25245
      TabIndex        =   863
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2407
      Left            =   25245
      TabIndex        =   864
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2406
      Left            =   25245
      TabIndex        =   865
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2405
      Left            =   25245
      TabIndex        =   866
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2404
      Left            =   25245
      TabIndex        =   867
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2403
      Left            =   25245
      TabIndex        =   868
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2402
      Left            =   25245
      TabIndex        =   869
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2401
      Left            =   25245
      TabIndex        =   870
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   2401
      Left            =   25245
      TabIndex        =   893
      Text            =   "1st"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2320
      Left            =   24045
      TabIndex        =   871
      Text            =   "1"
      Top             =   6525
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2319
      Left            =   24045
      TabIndex        =   872
      Text            =   "1"
      Top             =   6225
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2318
      Left            =   24045
      TabIndex        =   873
      Text            =   "1"
      Top             =   5925
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2317
      Left            =   24045
      TabIndex        =   874
      Text            =   "1"
      Top             =   5625
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2316
      Left            =   24045
      TabIndex        =   875
      Text            =   "1"
      Top             =   5325
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2315
      Left            =   24045
      TabIndex        =   876
      Text            =   "1"
      Top             =   5025
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2314
      Left            =   24045
      TabIndex        =   877
      Text            =   "1"
      Top             =   4725
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2313
      Left            =   24045
      TabIndex        =   878
      Text            =   "1"
      Top             =   4425
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2312
      Left            =   24045
      TabIndex        =   879
      Text            =   "1"
      Top             =   4125
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2311
      Left            =   24045
      TabIndex        =   880
      Text            =   "1"
      Top             =   3825
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2310
      Left            =   24045
      TabIndex        =   881
      Text            =   "1"
      Top             =   3525
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2309
      Left            =   24045
      TabIndex        =   882
      Text            =   "1"
      Top             =   3225
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2308
      Left            =   24045
      TabIndex        =   883
      Text            =   "1"
      Top             =   2925
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2307
      Left            =   24045
      TabIndex        =   884
      Text            =   "1"
      Top             =   2625
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2306
      Left            =   24045
      TabIndex        =   885
      Text            =   "1"
      Top             =   2325
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2305
      Left            =   24045
      TabIndex        =   886
      Text            =   "1"
      Top             =   2025
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2304
      Left            =   24045
      TabIndex        =   887
      Text            =   "1"
      Top             =   1725
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2303
      Left            =   24045
      TabIndex        =   888
      Text            =   "1"
      Top             =   1425
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2302
      Left            =   24045
      TabIndex        =   889
      Text            =   "1"
      Top             =   1125
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2301
      Left            =   24045
      TabIndex        =   890
      Text            =   "12345678"
      Top             =   825
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2220
      Left            =   21195
      TabIndex        =   509
      Text            =   "1"
      Top             =   6525
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2219
      Left            =   21195
      TabIndex        =   511
      Text            =   "1"
      Top             =   6225
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2218
      Left            =   21195
      TabIndex        =   513
      Text            =   "1"
      Top             =   5925
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2217
      Left            =   21195
      TabIndex        =   515
      Text            =   "1"
      Top             =   5625
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2216
      Left            =   21195
      TabIndex        =   517
      Text            =   "1"
      Top             =   5325
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2215
      Left            =   21195
      TabIndex        =   519
      Text            =   "1"
      Top             =   5025
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2214
      Left            =   21195
      TabIndex        =   521
      Text            =   "1"
      Top             =   4725
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2213
      Left            =   21195
      TabIndex        =   523
      Text            =   "1"
      Top             =   4425
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2212
      Left            =   21195
      TabIndex        =   525
      Text            =   "1"
      Top             =   4125
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2211
      Left            =   21195
      TabIndex        =   527
      Text            =   "1"
      Top             =   3825
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2210
      Left            =   21195
      TabIndex        =   529
      Text            =   "1"
      Top             =   3525
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2209
      Left            =   21195
      TabIndex        =   531
      Text            =   "1"
      Top             =   3225
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2208
      Left            =   21195
      TabIndex        =   533
      Text            =   "1"
      Top             =   2925
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2207
      Left            =   21195
      TabIndex        =   535
      Text            =   "1"
      Top             =   2625
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2206
      Left            =   21195
      TabIndex        =   537
      Text            =   "1"
      Top             =   2325
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2205
      Left            =   21195
      TabIndex        =   539
      Text            =   "1"
      Top             =   2025
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2204
      Left            =   21195
      TabIndex        =   541
      Text            =   "1"
      Top             =   1725
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2203
      Left            =   21195
      TabIndex        =   543
      Text            =   "1"
      Top             =   1425
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2202
      Left            =   21195
      TabIndex        =   545
      Text            =   "צה"
      Top             =   1125
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2201
      Left            =   21195
      TabIndex        =   547
      Text            =   "Abcdef Ghijklm nopqrstuv wx "
      Top             =   825
      Width           =   2790
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   2201
      Left            =   21195
      TabIndex        =   549
      Text            =   "Name"
      Top             =   525
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2120
      Left            =   20070
      TabIndex        =   510
      Text            =   "1"
      Top             =   6525
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2119
      Left            =   20070
      TabIndex        =   512
      Text            =   "1"
      Top             =   6225
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2118
      Left            =   20070
      TabIndex        =   514
      Text            =   "1"
      Top             =   5925
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2117
      Left            =   20070
      TabIndex        =   516
      Text            =   "1"
      Top             =   5625
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2116
      Left            =   20070
      TabIndex        =   518
      Text            =   "1"
      Top             =   5325
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2115
      Left            =   20070
      TabIndex        =   520
      Text            =   "1"
      Top             =   5025
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2114
      Left            =   20070
      TabIndex        =   522
      Text            =   "1"
      Top             =   4725
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2113
      Left            =   20070
      TabIndex        =   524
      Text            =   "1"
      Top             =   4425
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2112
      Left            =   20070
      TabIndex        =   526
      Text            =   "1"
      Top             =   4125
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2111
      Left            =   20070
      TabIndex        =   528
      Text            =   "1"
      Top             =   3825
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2110
      Left            =   20070
      TabIndex        =   530
      Text            =   "1"
      Top             =   3525
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2109
      Left            =   20070
      TabIndex        =   532
      Text            =   "1"
      Top             =   3225
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2108
      Left            =   20070
      TabIndex        =   534
      Text            =   "1"
      Top             =   2925
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2107
      Left            =   20070
      TabIndex        =   536
      Text            =   "1"
      Top             =   2625
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2106
      Left            =   20070
      TabIndex        =   538
      Text            =   "1"
      Top             =   2325
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2105
      Left            =   20070
      TabIndex        =   540
      Text            =   "1"
      Top             =   2025
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2104
      Left            =   20070
      TabIndex        =   542
      Text            =   "1"
      Top             =   1725
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2103
      Left            =   20070
      TabIndex        =   544
      Text            =   "1"
      Top             =   1425
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2102
      Left            =   20070
      TabIndex        =   546
      Text            =   "1"
      Top             =   1125
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   2101
      Left            =   20070
      TabIndex        =   548
      Text            =   "1"
      Top             =   825
      Width           =   1140
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   2101
      Left            =   20070
      TabIndex        =   550
      Text            =   "No."
      Top             =   525
      Width           =   1140
   End
   Begin VB.CheckBox chkGrpColours 
      BackColor       =   &H00D2A03C&
      Caption         =   "Colours"
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
      Height          =   210
      Index           =   2
      Left            =   33495
      MaskColor       =   &H00FF8080&
      TabIndex        =   936
      Top             =   525
      Width           =   1140
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1920
      Left            =   16845
      TabIndex        =   489
      Text            =   "Group Name"
      Top             =   6525
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1919
      Left            =   16845
      TabIndex        =   490
      Text            =   "Group Name"
      Top             =   6225
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1918
      Left            =   16845
      TabIndex        =   491
      Text            =   "Group Name"
      Top             =   5925
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1917
      Left            =   16845
      TabIndex        =   492
      Text            =   "Group Name"
      Top             =   5625
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1916
      Left            =   16845
      TabIndex        =   493
      Text            =   "Group Name"
      Top             =   5325
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1915
      Left            =   16845
      TabIndex        =   494
      Text            =   "Group Name"
      Top             =   5025
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1914
      Left            =   16845
      TabIndex        =   495
      Text            =   "Group Name"
      Top             =   4725
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1913
      Left            =   16845
      TabIndex        =   496
      Text            =   "Group Name"
      Top             =   4425
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1912
      Left            =   16845
      TabIndex        =   497
      Text            =   "Group Name"
      Top             =   4125
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1911
      Left            =   16845
      TabIndex        =   498
      Text            =   "Group Name"
      Top             =   3825
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1910
      Left            =   16845
      TabIndex        =   499
      Text            =   "Group Name"
      Top             =   3525
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1909
      Left            =   16845
      TabIndex        =   500
      Text            =   "Group Name"
      Top             =   3225
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1908
      Left            =   16845
      TabIndex        =   501
      Text            =   "Group Name"
      Top             =   2925
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1907
      Left            =   16845
      TabIndex        =   502
      Text            =   "Group Name"
      Top             =   2625
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1906
      Left            =   16845
      TabIndex        =   503
      Text            =   "Group Name"
      Top             =   2325
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1905
      Left            =   16845
      TabIndex        =   504
      Text            =   "Group Name"
      Top             =   2025
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1904
      Left            =   16845
      TabIndex        =   505
      Text            =   "Group Name"
      Top             =   1725
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1903
      Left            =   16845
      TabIndex        =   506
      Text            =   "Group Name"
      Top             =   1425
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1902
      Left            =   16845
      TabIndex        =   507
      Text            =   "Group Name"
      Top             =   1125
      Width           =   2790
   End
   Begin VB.TextBox lblGroupName 
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
      Index           =   1901
      Left            =   16845
      TabIndex        =   508
      Text            =   "Group Name"
      Top             =   825
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   220
      Left            =   3495
      TabIndex        =   35
      Text            =   "1"
      Top             =   6525
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   219
      Left            =   3495
      TabIndex        =   34
      Text            =   "1"
      Top             =   6225
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   218
      Left            =   3495
      TabIndex        =   33
      Text            =   "1"
      Top             =   5925
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   217
      Left            =   3495
      TabIndex        =   32
      Text            =   "1"
      Top             =   5625
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   216
      Left            =   3495
      TabIndex        =   31
      Text            =   "1"
      Top             =   5325
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   215
      Left            =   3495
      TabIndex        =   30
      Text            =   "1"
      Top             =   5025
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   214
      Left            =   3495
      TabIndex        =   29
      Text            =   "1"
      Top             =   4725
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   213
      Left            =   3495
      TabIndex        =   28
      Text            =   "1"
      Top             =   4425
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   212
      Left            =   3495
      TabIndex        =   27
      Text            =   "1"
      Top             =   4125
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   211
      Left            =   3495
      TabIndex        =   26
      Text            =   "1"
      Top             =   3825
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   210
      Left            =   3495
      TabIndex        =   25
      Text            =   "1"
      Top             =   3525
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   209
      Left            =   3495
      TabIndex        =   24
      Text            =   "1"
      Top             =   3225
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   208
      Left            =   3495
      TabIndex        =   23
      Text            =   "1"
      Top             =   2925
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   207
      Left            =   3495
      TabIndex        =   22
      Text            =   "1"
      Top             =   2625
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   206
      Left            =   3495
      TabIndex        =   21
      Text            =   "1"
      Top             =   2325
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   205
      Left            =   3495
      TabIndex        =   20
      Text            =   "1"
      Top             =   2025
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   204
      Left            =   3495
      TabIndex        =   19
      Text            =   "1"
      Top             =   1725
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   203
      Left            =   3495
      TabIndex        =   18
      Text            =   "1"
      Top             =   1425
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   202
      Left            =   3495
      TabIndex        =   915
      Text            =   "1"
      Top             =   1125
      Width           =   2790
   End
   Begin VB.TextBox txtBox 
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
      Index           =   201
      Left            =   3495
      TabIndex        =   914
      Text            =   "1"
      Top             =   825
      Width           =   2790
   End
   Begin VB.VScrollBar scrBar 
      Height          =   6615
      Index           =   2
      Left            =   39240
      Max             =   79
      TabIndex        =   913
      Top             =   240
      Value           =   1
      Width           =   315
   End
   Begin VB.VScrollBar scrBar 
      Height          =   6615
      Index           =   1
      Left            =   19695
      Max             =   79
      TabIndex        =   912
      Top             =   225
      Value           =   1
      Width           =   315
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Height          =   615
      Index           =   3901
      Left            =   33420
      TabIndex        =   911
      Text            =   "Group"
      Top             =   225
      Width           =   3930
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Height          =   615
      Index           =   3801
      Left            =   32670
      MultiLine       =   -1  'True
      TabIndex        =   910
      Text            =   "Database_frm.frx":0000
      Top             =   225
      Width           =   750
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Height          =   615
      Index           =   3701
      Left            =   31920
      MultiLine       =   -1  'True
      TabIndex        =   909
      Text            =   "Database_frm.frx":000C
      Top             =   225
      Width           =   690
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Height          =   615
      Index           =   3601
      Left            =   31170
      MultiLine       =   -1  'True
      TabIndex        =   908
      Text            =   "Database_frm.frx":001B
      Top             =   225
      Width           =   690
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Height          =   615
      Index           =   3501
      Left            =   30420
      MultiLine       =   -1  'True
      TabIndex        =   907
      Text            =   "Database_frm.frx":0025
      Top             =   225
      Width           =   690
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   3100
      Left            =   28545
      TabIndex        =   906
      Text            =   "Clean Lines"
      Top             =   225
      Width           =   1800
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   2800
      Left            =   27120
      TabIndex        =   901
      Text            =   "Weights"
      Top             =   225
      Width           =   1350
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   2400
      Left            =   25245
      TabIndex        =   897
      Text            =   "Soiled Lines"
      Top             =   225
      Width           =   1800
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Height          =   615
      Index           =   2301
      Left            =   24045
      TabIndex        =   892
      Text            =   "Long ID"
      Top             =   225
      Width           =   1140
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   2100
      Left            =   20070
      TabIndex        =   891
      Text            =   "Title"
      Top             =   225
      Width           =   3915
   End
   Begin VB.ComboBox cmbGroupName 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   600
      Left            =   15420
      TabIndex        =   488
      Text            =   "Cmb Group Name"
      Top             =   7260
      Width           =   2670
   End
   Begin VB.CheckBox chkGrpColours 
      BackColor       =   &H00D2A03C&
      Caption         =   "Colours"
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
      Height          =   210
      Index           =   1
      Left            =   15870
      MaskColor       =   &H00FF8080&
      TabIndex        =   487
      Top             =   525
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   119
      Left            =   2370
      TabIndex        =   17
      Text            =   "1"
      Top             =   6225
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   118
      Left            =   2370
      TabIndex        =   16
      Text            =   "1"
      Top             =   5925
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   117
      Left            =   2370
      TabIndex        =   15
      Text            =   "1"
      Top             =   5625
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   116
      Left            =   2370
      TabIndex        =   14
      Text            =   "1"
      Top             =   5325
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   115
      Left            =   2370
      TabIndex        =   13
      Text            =   "1"
      Top             =   5025
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   114
      Left            =   2370
      TabIndex        =   12
      Text            =   "1"
      Top             =   4725
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   113
      Left            =   2370
      TabIndex        =   11
      Text            =   "1"
      Top             =   4425
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   112
      Left            =   2370
      TabIndex        =   10
      Text            =   "1"
      Top             =   4125
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   111
      Left            =   2370
      TabIndex        =   9
      Text            =   "1"
      Top             =   3825
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   110
      Left            =   2370
      TabIndex        =   8
      Text            =   "1"
      Top             =   3525
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   109
      Left            =   2370
      TabIndex        =   7
      Text            =   "1"
      Top             =   3225
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   108
      Left            =   2370
      TabIndex        =   6
      Text            =   "1"
      Top             =   2925
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   107
      Left            =   2370
      TabIndex        =   5
      Text            =   "1"
      Top             =   2625
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   106
      Left            =   2370
      TabIndex        =   4
      Text            =   "1"
      Top             =   2325
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   105
      Left            =   2370
      TabIndex        =   3
      Text            =   "1"
      Top             =   2025
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   104
      Left            =   2370
      TabIndex        =   2
      Text            =   "1"
      Top             =   1725
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   103
      Left            =   2370
      TabIndex        =   1
      Text            =   "1"
      Top             =   1425
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   102
      Left            =   2370
      TabIndex        =   0
      Text            =   "1"
      Top             =   1125
      Width           =   1140
   End
   Begin VB.TextBox lblHeaderName 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Left            =   3495
      TabIndex        =   466
      Text            =   "Name"
      Top             =   525
      Width           =   2790
   End
   Begin VB.TextBox lblHeaderNum 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Left            =   2370
      TabIndex        =   465
      Text            =   "No."
      Top             =   525
      Width           =   1140
   End
   Begin VB.TextBox lblHidden 
      Alignment       =   2  'Center
      BackColor       =   &H00FF8080&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   -6450
      TabIndex        =   463
      Text            =   "lblHidden"
      Top             =   8250
      Width           =   4215
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1920
      Left            =   15720
      TabIndex        =   443
      Text            =   "1"
      Top             =   6525
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1919
      Left            =   15720
      TabIndex        =   444
      Text            =   "1"
      Top             =   6225
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1918
      Left            =   15720
      TabIndex        =   445
      Text            =   "1"
      Top             =   5925
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1917
      Left            =   15720
      TabIndex        =   446
      Text            =   "1"
      Top             =   5625
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1916
      Left            =   15720
      TabIndex        =   447
      Text            =   "1"
      Top             =   5325
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1915
      Left            =   15720
      TabIndex        =   448
      Text            =   "1"
      Top             =   5025
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1914
      Left            =   15720
      TabIndex        =   449
      Text            =   "1"
      Top             =   4725
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1913
      Left            =   15720
      TabIndex        =   450
      Text            =   "1"
      Top             =   4425
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1912
      Left            =   15720
      TabIndex        =   451
      Text            =   "1"
      Top             =   4125
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1911
      Left            =   15720
      TabIndex        =   452
      Text            =   "1"
      Top             =   3825
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1910
      Left            =   15720
      TabIndex        =   453
      Text            =   "1"
      Top             =   3525
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1909
      Left            =   15720
      TabIndex        =   454
      Text            =   "1"
      Top             =   3225
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1908
      Left            =   15720
      TabIndex        =   455
      Text            =   "1"
      Top             =   2925
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1907
      Left            =   15720
      TabIndex        =   456
      Text            =   "1"
      Top             =   2625
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1906
      Left            =   15720
      TabIndex        =   457
      Text            =   "1"
      Top             =   2325
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1905
      Left            =   15720
      TabIndex        =   458
      Text            =   "1"
      Top             =   2025
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1904
      Left            =   15720
      TabIndex        =   459
      Text            =   "1"
      Top             =   1725
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1903
      Left            =   15720
      TabIndex        =   460
      Text            =   "1"
      Top             =   1425
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1902
      Left            =   15720
      TabIndex        =   461
      Text            =   "1"
      Top             =   1125
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1901
      Left            =   15720
      TabIndex        =   462
      Text            =   "1"
      Top             =   825
      Width           =   1140
   End
   Begin VB.PictureBox picButtonHolder 
      Appearance      =   0  'Flat
      BackColor       =   &H00DBD9D4&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   2040
      Left            =   38220
      ScaleHeight     =   2040
      ScaleWidth      =   1365
      TabIndex        =   438
      Top             =   6960
      Width           =   1365
      Begin VB.CommandButton cmdCancel 
         Appearance      =   0  'Flat
         BackColor       =   &H00DBD9D4&
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   75
         TabIndex        =   442
         Top             =   1125
         Width           =   1215
      End
      Begin VB.CommandButton cmdExit 
         Appearance      =   0  'Flat
         BackColor       =   &H00DBD9D4&
         Caption         =   "&Exit"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   75
         TabIndex        =   441
         Top             =   1650
         Width           =   1215
      End
      Begin VB.CommandButton cmdDelete 
         Appearance      =   0  'Flat
         BackColor       =   &H00DBD9D4&
         Caption         =   "Delete"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   75
         TabIndex        =   440
         Top             =   75
         Width           =   1215
      End
      Begin VB.CommandButton cmdInsert 
         Appearance      =   0  'Flat
         BackColor       =   &H00DBD9D4&
         Caption         =   "Insert"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   161
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   75
         TabIndex        =   439
         Top             =   600
         Width           =   1215
      End
   End
   Begin VB.Frame fraColours 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Bag Colour Selection"
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
      Height          =   1665
      Left            =   240
      TabIndex        =   356
      Top             =   7740
      Width           =   6090
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00800080&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   39
         Left            =   1725
         TabIndex        =   437
         Top             =   1275
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00800000&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   38
         Left            =   1500
         TabIndex        =   436
         Top             =   1275
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00808000&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   37
         Left            =   1275
         TabIndex        =   435
         Top             =   1275
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   36
         Left            =   1050
         TabIndex        =   434
         Top             =   1275
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00008080&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   35
         Left            =   825
         TabIndex        =   433
         Top             =   1275
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00004080&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   34
         Left            =   600
         TabIndex        =   432
         Top             =   1275
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00000080&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   33
         Left            =   375
         TabIndex        =   431
         Top             =   1275
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   32
         Left            =   150
         TabIndex        =   430
         Top             =   1275
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00C000C0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   31
         Left            =   1725
         TabIndex        =   429
         Top             =   1050
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00C00000&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   30
         Left            =   1500
         TabIndex        =   428
         Top             =   1050
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C000&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   29
         Left            =   1275
         TabIndex        =   427
         Top             =   1050
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H0000C000&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   28
         Left            =   1050
         TabIndex        =   426
         Top             =   1050
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H0000C0C0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   27
         Left            =   825
         TabIndex        =   425
         Top             =   1050
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H000040C0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   26
         Left            =   600
         TabIndex        =   424
         Top             =   1050
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H000000C0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   25
         Left            =   375
         TabIndex        =   423
         Top             =   1050
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   24
         Left            =   150
         TabIndex        =   422
         Top             =   1050
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FF00FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   23
         Left            =   1725
         TabIndex        =   421
         Top             =   825
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FF0000&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   22
         Left            =   1500
         TabIndex        =   420
         Top             =   825
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFF00&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   21
         Left            =   1275
         TabIndex        =   419
         Top             =   825
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H0000FF00&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   20
         Left            =   1050
         TabIndex        =   418
         Top             =   825
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H0000FFFF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   19
         Left            =   825
         TabIndex        =   417
         Top             =   825
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H000080FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   18
         Left            =   600
         TabIndex        =   416
         Top             =   825
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   17
         Left            =   375
         TabIndex        =   415
         Top             =   825
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   16
         Left            =   150
         TabIndex        =   414
         Top             =   825
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FF80FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   15
         Left            =   1725
         TabIndex        =   413
         Top             =   600
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FF8080&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   14
         Left            =   1500
         TabIndex        =   412
         Top             =   600
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   13
         Left            =   1275
         TabIndex        =   411
         Top             =   600
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H0080FF80&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   12
         Left            =   1050
         TabIndex        =   410
         Top             =   600
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H0080FFFF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   11
         Left            =   825
         TabIndex        =   409
         Top             =   600
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H0080C0FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   10
         Left            =   600
         TabIndex        =   408
         Top             =   600
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H008080FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   9
         Left            =   375
         TabIndex        =   407
         Top             =   600
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   195
         Index           =   8
         Left            =   150
         TabIndex        =   406
         Top             =   600
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFC0FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   7
         Left            =   1725
         TabIndex        =   405
         Top             =   375
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFC0C0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   6
         Left            =   1500
         TabIndex        =   404
         Top             =   375
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFC0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   5
         Left            =   1275
         TabIndex        =   403
         Top             =   375
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   4
         Left            =   1050
         TabIndex        =   402
         Top             =   375
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   3
         Left            =   825
         TabIndex        =   401
         Top             =   375
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0E0FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   600
         TabIndex        =   400
         Top             =   375
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   375
         TabIndex        =   399
         Top             =   375
         Width           =   195
      End
      Begin VB.Label BagColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   150
         TabIndex        =   398
         Top             =   375
         Width           =   195
      End
      Begin VB.Line Line6 
         BorderWidth     =   3
         X1              =   2475
         X2              =   2250
         Y1              =   900
         Y2              =   975
      End
      Begin VB.Line Line5 
         BorderWidth     =   3
         X1              =   2475
         X2              =   2250
         Y1              =   900
         Y2              =   825
      End
      Begin VB.Line Line4 
         BorderWidth     =   3
         X1              =   1950
         X2              =   2475
         Y1              =   900
         Y2              =   900
      End
      Begin VB.Line Line3 
         BorderWidth     =   3
         X1              =   3300
         X2              =   3525
         Y1              =   900
         Y2              =   975
      End
      Begin VB.Line Line2 
         BorderWidth     =   3
         X1              =   3300
         X2              =   3525
         Y1              =   900
         Y2              =   825
      End
      Begin VB.Line Line1 
         BorderWidth     =   3
         X1              =   4050
         X2              =   3300
         Y1              =   900
         Y2              =   900
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00000080&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   28
         Left            =   4350
         TabIndex        =   397
         Top             =   1275
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H000000C0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   27
         Left            =   4350
         TabIndex        =   396
         Top             =   1050
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00800080&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   46
         Left            =   5700
         TabIndex        =   395
         Top             =   1275
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00C000C0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   45
         Left            =   5700
         TabIndex        =   394
         Top             =   1050
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00800000&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   43
         Left            =   5475
         TabIndex        =   393
         Top             =   1275
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00C00000&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   42
         Left            =   5475
         TabIndex        =   392
         Top             =   1050
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00808000&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   40
         Left            =   5250
         TabIndex        =   391
         Top             =   1275
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C000&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   39
         Left            =   5250
         TabIndex        =   390
         Top             =   1050
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00008000&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   37
         Left            =   5025
         TabIndex        =   389
         Top             =   1275
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H0000C000&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   36
         Left            =   5025
         TabIndex        =   388
         Top             =   1050
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00008080&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   34
         Left            =   4800
         TabIndex        =   387
         Top             =   1275
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H0000C0C0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   33
         Left            =   4800
         TabIndex        =   386
         Top             =   1050
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00004080&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   31
         Left            =   4575
         TabIndex        =   385
         Top             =   1275
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H000040C0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   30
         Left            =   4575
         TabIndex        =   384
         Top             =   1050
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FF00FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   26
         Left            =   5700
         TabIndex        =   383
         Top             =   825
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FF80FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   25
         Left            =   5700
         TabIndex        =   382
         Top             =   600
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFC0FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   24
         Left            =   5700
         TabIndex        =   381
         Top             =   375
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FF0000&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   23
         Left            =   5475
         TabIndex        =   380
         Top             =   825
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FF8080&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   22
         Left            =   5475
         TabIndex        =   379
         Top             =   600
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFC0C0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   21
         Left            =   5475
         TabIndex        =   378
         Top             =   375
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFF00&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   20
         Left            =   5250
         TabIndex        =   377
         Top             =   825
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   19
         Left            =   5250
         TabIndex        =   376
         Top             =   600
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFC0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   18
         Left            =   5250
         TabIndex        =   375
         Top             =   375
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H0000FF00&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   17
         Left            =   5025
         TabIndex        =   374
         Top             =   825
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H0080FF80&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   16
         Left            =   5025
         TabIndex        =   373
         Top             =   600
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   15
         Left            =   5025
         TabIndex        =   372
         Top             =   375
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H0000FFFF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   14
         Left            =   4800
         TabIndex        =   371
         Top             =   825
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H0080FFFF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   13
         Left            =   4800
         TabIndex        =   370
         Top             =   600
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   12
         Left            =   4800
         TabIndex        =   369
         Top             =   375
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H000080FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   11
         Left            =   4575
         TabIndex        =   368
         Top             =   825
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H0080C0FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   10
         Left            =   4575
         TabIndex        =   367
         Top             =   600
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0E0FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   9
         Left            =   4575
         TabIndex        =   366
         Top             =   375
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   8
         Left            =   4350
         TabIndex        =   365
         Top             =   825
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H008080FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   7
         Left            =   4350
         TabIndex        =   364
         Top             =   600
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0FF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   6
         Left            =   4350
         TabIndex        =   363
         Top             =   375
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   5
         Left            =   4125
         TabIndex        =   362
         Top             =   1275
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   3
         Left            =   4125
         TabIndex        =   361
         Top             =   600
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00808080&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   4125
         TabIndex        =   360
         Top             =   1050
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   4125
         TabIndex        =   359
         Top             =   825
         Width           =   195
      End
      Begin VB.Label ColorSel 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   4125
         TabIndex        =   358
         Top             =   375
         Width           =   195
      End
      Begin VB.Label lblForeColour 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "999"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   178
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   450
         Left            =   2475
         TabIndex        =   357
         Top             =   750
         Width           =   1080
         WordWrap        =   -1  'True
      End
      Begin VB.Shape shpBackColour 
         FillColor       =   &H00FF0000&
         FillStyle       =   0  'Solid
         Height          =   1065
         Left            =   2475
         Shape           =   4  'Rounded Rectangle
         Top             =   375
         Width           =   1065
      End
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1520
      Left            =   12720
      TabIndex        =   355
      Text            =   "1"
      Top             =   6525
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1519
      Left            =   12720
      TabIndex        =   354
      Text            =   "1"
      Top             =   6225
      WhatsThisHelpID =   1520
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1518
      Left            =   12720
      TabIndex        =   353
      Text            =   "1"
      Top             =   5925
      WhatsThisHelpID =   1519
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1517
      Left            =   12720
      TabIndex        =   352
      Text            =   "1"
      Top             =   5625
      WhatsThisHelpID =   1518
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1516
      Left            =   12720
      TabIndex        =   351
      Text            =   "1"
      Top             =   5325
      WhatsThisHelpID =   1517
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1515
      Left            =   12720
      TabIndex        =   350
      Text            =   "1"
      Top             =   5025
      WhatsThisHelpID =   1516
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1514
      Left            =   12720
      TabIndex        =   349
      Text            =   "1"
      Top             =   4725
      WhatsThisHelpID =   1514
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1513
      Left            =   12720
      TabIndex        =   348
      Text            =   "1"
      Top             =   4425
      WhatsThisHelpID =   1513
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1512
      Left            =   12720
      TabIndex        =   347
      Text            =   "1"
      Top             =   4125
      WhatsThisHelpID =   1512
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1511
      Left            =   12720
      TabIndex        =   346
      Text            =   "1"
      Top             =   3825
      WhatsThisHelpID =   1511
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1510
      Left            =   12720
      TabIndex        =   345
      Text            =   "1"
      Top             =   3525
      WhatsThisHelpID =   1510
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1509
      Left            =   12720
      TabIndex        =   344
      Text            =   "1"
      Top             =   3225
      WhatsThisHelpID =   1509
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1508
      Left            =   12720
      TabIndex        =   343
      Text            =   "1"
      Top             =   2925
      WhatsThisHelpID =   1508
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1507
      Left            =   12720
      TabIndex        =   342
      Text            =   "1"
      Top             =   2625
      WhatsThisHelpID =   1507
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1506
      Left            =   12720
      TabIndex        =   341
      Text            =   "1"
      Top             =   2325
      WhatsThisHelpID =   1506
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1505
      Left            =   12720
      TabIndex        =   340
      Text            =   "1"
      Top             =   2025
      WhatsThisHelpID =   1505
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1504
      Left            =   12720
      TabIndex        =   339
      Text            =   "1"
      Top             =   1725
      WhatsThisHelpID =   1504
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1503
      Left            =   12720
      TabIndex        =   338
      Text            =   "1"
      Top             =   1425
      WhatsThisHelpID =   1503
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1502
      Left            =   12720
      TabIndex        =   337
      Text            =   "1"
      Top             =   1125
      WhatsThisHelpID =   1502
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1501
      Left            =   12720
      TabIndex        =   336
      Text            =   "1"
      Top             =   825
      WhatsThisHelpID =   1501
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1620
      Left            =   13470
      TabIndex        =   335
      Text            =   "1"
      Top             =   6525
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1619
      Left            =   13470
      TabIndex        =   334
      Text            =   "1"
      Top             =   6225
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1618
      Left            =   13470
      TabIndex        =   333
      Text            =   "1"
      Top             =   5925
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1617
      Left            =   13470
      TabIndex        =   332
      Text            =   "1"
      Top             =   5625
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1616
      Left            =   13470
      TabIndex        =   331
      Text            =   "1"
      Top             =   5325
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1615
      Left            =   13470
      TabIndex        =   330
      Text            =   "1"
      Top             =   5025
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1614
      Left            =   13470
      TabIndex        =   329
      Text            =   "1"
      Top             =   4725
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1613
      Left            =   13470
      TabIndex        =   328
      Text            =   "1"
      Top             =   4425
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1612
      Left            =   13470
      TabIndex        =   327
      Text            =   "1"
      Top             =   4125
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1611
      Left            =   13470
      TabIndex        =   326
      Text            =   "1"
      Top             =   3825
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1610
      Left            =   13470
      TabIndex        =   325
      Text            =   "1"
      Top             =   3525
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1609
      Left            =   13470
      TabIndex        =   324
      Text            =   "1"
      Top             =   3225
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1608
      Left            =   13470
      TabIndex        =   323
      Text            =   "1"
      Top             =   2925
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1607
      Left            =   13470
      TabIndex        =   322
      Text            =   "1"
      Top             =   2625
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1606
      Left            =   13470
      TabIndex        =   321
      Text            =   "1"
      Top             =   2325
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1605
      Left            =   13470
      TabIndex        =   320
      Text            =   "1"
      Top             =   2025
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1604
      Left            =   13470
      TabIndex        =   319
      Text            =   "1"
      Top             =   1725
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1603
      Left            =   13470
      TabIndex        =   318
      Text            =   "1"
      Top             =   1425
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1602
      Left            =   13470
      TabIndex        =   317
      Text            =   "1"
      Top             =   1125
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1601
      Left            =   13470
      TabIndex        =   316
      Text            =   "1"
      Top             =   825
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1720
      Left            =   14220
      TabIndex        =   315
      Text            =   "1"
      Top             =   6525
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1719
      Left            =   14220
      TabIndex        =   314
      Text            =   "1"
      Top             =   6225
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1718
      Left            =   14220
      TabIndex        =   313
      Text            =   "1"
      Top             =   5925
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1717
      Left            =   14220
      TabIndex        =   312
      Text            =   "1"
      Top             =   5625
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1716
      Left            =   14220
      TabIndex        =   311
      Text            =   "1"
      Top             =   5325
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1715
      Left            =   14220
      TabIndex        =   310
      Text            =   "1"
      Top             =   5025
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1714
      Left            =   14220
      TabIndex        =   309
      Text            =   "1"
      Top             =   4725
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1713
      Left            =   14220
      TabIndex        =   308
      Text            =   "1"
      Top             =   4425
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1712
      Left            =   14220
      TabIndex        =   307
      Text            =   "1"
      Top             =   4125
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1711
      Left            =   14220
      TabIndex        =   306
      Text            =   "1"
      Top             =   3825
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1710
      Left            =   14220
      TabIndex        =   305
      Text            =   "1"
      Top             =   3525
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1709
      Left            =   14220
      TabIndex        =   304
      Text            =   "1"
      Top             =   3225
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1708
      Left            =   14220
      TabIndex        =   303
      Text            =   "1"
      Top             =   2925
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1707
      Left            =   14220
      TabIndex        =   302
      Text            =   "1"
      Top             =   2625
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1706
      Left            =   14220
      TabIndex        =   301
      Text            =   "1"
      Top             =   2325
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1705
      Left            =   14220
      TabIndex        =   300
      Text            =   "1"
      Top             =   2025
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1704
      Left            =   14220
      TabIndex        =   299
      Text            =   "1"
      Top             =   1725
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1703
      Left            =   14220
      TabIndex        =   298
      Text            =   "1"
      Top             =   1425
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1702
      Left            =   14220
      TabIndex        =   297
      Text            =   "1"
      Top             =   1125
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1701
      Left            =   14220
      TabIndex        =   296
      Text            =   "1"
      Top             =   825
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1820
      Left            =   14970
      TabIndex        =   295
      Text            =   "1"
      Top             =   6525
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1819
      Left            =   14970
      TabIndex        =   294
      Text            =   "1"
      Top             =   6225
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1818
      Left            =   14970
      TabIndex        =   293
      Text            =   "1"
      Top             =   5925
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1817
      Left            =   14970
      TabIndex        =   292
      Text            =   "1"
      Top             =   5625
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1816
      Left            =   14970
      TabIndex        =   291
      Text            =   "1"
      Top             =   5325
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1815
      Left            =   14970
      TabIndex        =   290
      Text            =   "1"
      Top             =   5025
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1814
      Left            =   14970
      TabIndex        =   289
      Text            =   "1"
      Top             =   4725
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1813
      Left            =   14970
      TabIndex        =   288
      Text            =   "1"
      Top             =   4425
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1812
      Left            =   14970
      TabIndex        =   287
      Text            =   "1"
      Top             =   4125
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1811
      Left            =   14970
      TabIndex        =   286
      Text            =   "1"
      Top             =   3825
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1810
      Left            =   14970
      TabIndex        =   285
      Text            =   "1"
      Top             =   3525
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1809
      Left            =   14970
      TabIndex        =   284
      Text            =   "1"
      Top             =   3225
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1808
      Left            =   14970
      TabIndex        =   283
      Text            =   "1"
      Top             =   2925
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1807
      Left            =   14970
      TabIndex        =   282
      Text            =   "1"
      Top             =   2625
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1806
      Left            =   14970
      TabIndex        =   281
      Text            =   "1"
      Top             =   2325
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1805
      Left            =   14970
      TabIndex        =   280
      Text            =   "1"
      Top             =   2025
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1804
      Left            =   14970
      TabIndex        =   279
      Text            =   "1"
      Top             =   1725
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1803
      Left            =   14970
      TabIndex        =   278
      Text            =   "1"
      Top             =   1425
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1802
      Left            =   14970
      TabIndex        =   277
      Text            =   "1"
      Top             =   1125
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1801
      Left            =   14970
      TabIndex        =   276
      Text            =   "1"
      Top             =   825
      Width           =   690
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1420
      Left            =   12195
      TabIndex        =   275
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1419
      Left            =   12195
      TabIndex        =   274
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1418
      Left            =   12195
      TabIndex        =   273
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1417
      Left            =   12195
      TabIndex        =   272
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1416
      Left            =   12195
      TabIndex        =   271
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1415
      Left            =   12195
      TabIndex        =   270
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1414
      Left            =   12195
      TabIndex        =   269
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1413
      Left            =   12195
      TabIndex        =   268
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1412
      Left            =   12195
      TabIndex        =   267
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1411
      Left            =   12195
      TabIndex        =   266
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1410
      Left            =   12195
      TabIndex        =   265
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1409
      Left            =   12195
      TabIndex        =   264
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1408
      Left            =   12195
      TabIndex        =   263
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1407
      Left            =   12195
      TabIndex        =   262
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1406
      Left            =   12195
      TabIndex        =   261
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1405
      Left            =   12195
      TabIndex        =   260
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1404
      Left            =   12195
      TabIndex        =   259
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1403
      Left            =   12195
      TabIndex        =   258
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1402
      Left            =   12195
      TabIndex        =   257
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1401
      Left            =   12195
      TabIndex        =   256
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1320
      Left            =   11745
      TabIndex        =   255
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1319
      Left            =   11745
      TabIndex        =   254
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1318
      Left            =   11745
      TabIndex        =   253
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1317
      Left            =   11745
      TabIndex        =   252
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1316
      Left            =   11745
      TabIndex        =   251
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1315
      Left            =   11745
      TabIndex        =   250
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1314
      Left            =   11745
      TabIndex        =   249
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1313
      Left            =   11745
      TabIndex        =   248
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1312
      Left            =   11745
      TabIndex        =   247
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1311
      Left            =   11745
      TabIndex        =   246
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1310
      Left            =   11745
      TabIndex        =   245
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1309
      Left            =   11745
      TabIndex        =   244
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1308
      Left            =   11745
      TabIndex        =   243
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1307
      Left            =   11745
      TabIndex        =   242
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1306
      Left            =   11745
      TabIndex        =   241
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1305
      Left            =   11745
      TabIndex        =   240
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1304
      Left            =   11745
      TabIndex        =   239
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1303
      Left            =   11745
      TabIndex        =   238
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1302
      Left            =   11745
      TabIndex        =   237
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1301
      Left            =   11745
      TabIndex        =   236
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1220
      Left            =   11295
      TabIndex        =   235
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1219
      Left            =   11295
      TabIndex        =   234
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1218
      Left            =   11295
      TabIndex        =   233
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1217
      Left            =   11295
      TabIndex        =   232
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1216
      Left            =   11295
      TabIndex        =   231
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1215
      Left            =   11295
      TabIndex        =   230
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1214
      Left            =   11295
      TabIndex        =   229
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1213
      Left            =   11295
      TabIndex        =   228
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1212
      Left            =   11295
      TabIndex        =   227
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1211
      Left            =   11295
      TabIndex        =   226
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1210
      Left            =   11295
      TabIndex        =   225
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1209
      Left            =   11295
      TabIndex        =   224
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1208
      Left            =   11295
      TabIndex        =   223
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1207
      Left            =   11295
      TabIndex        =   222
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1206
      Left            =   11295
      TabIndex        =   221
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1205
      Left            =   11295
      TabIndex        =   220
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1204
      Left            =   11295
      TabIndex        =   219
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1203
      Left            =   11295
      TabIndex        =   218
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1202
      Left            =   11295
      TabIndex        =   217
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1201
      Left            =   11295
      TabIndex        =   216
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1120
      Left            =   10845
      TabIndex        =   215
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1119
      Left            =   10845
      TabIndex        =   214
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1118
      Left            =   10845
      TabIndex        =   213
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1117
      Left            =   10845
      TabIndex        =   212
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1116
      Left            =   10845
      TabIndex        =   211
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1115
      Left            =   10845
      TabIndex        =   210
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1114
      Left            =   10845
      TabIndex        =   209
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1113
      Left            =   10845
      TabIndex        =   208
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1112
      Left            =   10845
      TabIndex        =   207
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1111
      Left            =   10845
      TabIndex        =   206
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1110
      Left            =   10845
      TabIndex        =   205
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1109
      Left            =   10845
      TabIndex        =   204
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1108
      Left            =   10845
      TabIndex        =   203
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1107
      Left            =   10845
      TabIndex        =   202
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1106
      Left            =   10845
      TabIndex        =   201
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1105
      Left            =   10845
      TabIndex        =   200
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1104
      Left            =   10845
      TabIndex        =   199
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1103
      Left            =   10845
      TabIndex        =   198
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1102
      Left            =   10845
      TabIndex        =   197
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1101
      Left            =   10845
      TabIndex        =   196
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1020
      Left            =   10320
      TabIndex        =   195
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1019
      Left            =   10320
      TabIndex        =   194
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1018
      Left            =   10320
      TabIndex        =   193
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1017
      Left            =   10320
      TabIndex        =   192
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1016
      Left            =   10320
      TabIndex        =   191
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1015
      Left            =   10320
      TabIndex        =   190
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1014
      Left            =   10320
      TabIndex        =   189
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1013
      Left            =   10320
      TabIndex        =   188
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1012
      Left            =   10320
      TabIndex        =   187
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1011
      Left            =   10320
      TabIndex        =   186
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1010
      Left            =   10320
      TabIndex        =   185
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1009
      Left            =   10320
      TabIndex        =   184
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1008
      Left            =   10320
      TabIndex        =   183
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1007
      Left            =   10320
      TabIndex        =   182
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1006
      Left            =   10320
      TabIndex        =   181
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1005
      Left            =   10320
      TabIndex        =   180
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1004
      Left            =   10320
      TabIndex        =   179
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1003
      Left            =   10320
      TabIndex        =   178
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1002
      Left            =   10320
      TabIndex        =   177
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   1001
      Left            =   10320
      TabIndex        =   176
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   920
      Left            =   9870
      TabIndex        =   175
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   919
      Left            =   9870
      TabIndex        =   174
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   918
      Left            =   9870
      TabIndex        =   173
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   917
      Left            =   9870
      TabIndex        =   172
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   916
      Left            =   9870
      TabIndex        =   171
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   915
      Left            =   9870
      TabIndex        =   170
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   914
      Left            =   9870
      TabIndex        =   169
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   913
      Left            =   9870
      TabIndex        =   168
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   912
      Left            =   9870
      TabIndex        =   167
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   911
      Left            =   9870
      TabIndex        =   166
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   910
      Left            =   9870
      TabIndex        =   165
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   909
      Left            =   9870
      TabIndex        =   164
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   908
      Left            =   9870
      TabIndex        =   163
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   907
      Left            =   9870
      TabIndex        =   162
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   906
      Left            =   9870
      TabIndex        =   161
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   905
      Left            =   9870
      TabIndex        =   160
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   904
      Left            =   9870
      TabIndex        =   159
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   903
      Left            =   9870
      TabIndex        =   158
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   902
      Left            =   9870
      TabIndex        =   157
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   901
      Left            =   9870
      TabIndex        =   156
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   820
      Left            =   9420
      TabIndex        =   155
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   819
      Left            =   9420
      TabIndex        =   154
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   818
      Left            =   9420
      TabIndex        =   153
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   817
      Left            =   9420
      TabIndex        =   152
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   816
      Left            =   9420
      TabIndex        =   151
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   815
      Left            =   9420
      TabIndex        =   150
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   814
      Left            =   9420
      TabIndex        =   149
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   813
      Left            =   9420
      TabIndex        =   148
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   812
      Left            =   9420
      TabIndex        =   147
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   811
      Left            =   9420
      TabIndex        =   146
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   810
      Left            =   9420
      TabIndex        =   145
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   809
      Left            =   9420
      TabIndex        =   144
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   808
      Left            =   9420
      TabIndex        =   143
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   807
      Left            =   9420
      TabIndex        =   142
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   806
      Left            =   9420
      TabIndex        =   141
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   805
      Left            =   9420
      TabIndex        =   140
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   804
      Left            =   9420
      TabIndex        =   139
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   803
      Left            =   9420
      TabIndex        =   138
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   802
      Left            =   9420
      TabIndex        =   137
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   801
      Left            =   9420
      TabIndex        =   136
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   720
      Left            =   8895
      TabIndex        =   135
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   719
      Left            =   8895
      TabIndex        =   134
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   718
      Left            =   8895
      TabIndex        =   133
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   717
      Left            =   8895
      TabIndex        =   132
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   716
      Left            =   8895
      TabIndex        =   131
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   715
      Left            =   8895
      TabIndex        =   130
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   714
      Left            =   8895
      TabIndex        =   129
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   713
      Left            =   8895
      TabIndex        =   128
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   712
      Left            =   8895
      TabIndex        =   127
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   711
      Left            =   8895
      TabIndex        =   126
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   710
      Left            =   8895
      TabIndex        =   125
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   709
      Left            =   8895
      TabIndex        =   124
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   708
      Left            =   8895
      TabIndex        =   123
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   707
      Left            =   8895
      TabIndex        =   122
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   706
      Left            =   8895
      TabIndex        =   121
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   705
      Left            =   8895
      TabIndex        =   120
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   704
      Left            =   8895
      TabIndex        =   119
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   703
      Left            =   8895
      TabIndex        =   118
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   702
      Left            =   8895
      TabIndex        =   117
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   701
      Left            =   8895
      TabIndex        =   116
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   620
      Left            =   8445
      TabIndex        =   115
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   619
      Left            =   8445
      TabIndex        =   114
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   618
      Left            =   8445
      TabIndex        =   113
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   617
      Left            =   8445
      TabIndex        =   112
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   616
      Left            =   8445
      TabIndex        =   111
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   615
      Left            =   8445
      TabIndex        =   110
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   614
      Left            =   8445
      TabIndex        =   109
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   613
      Left            =   8445
      TabIndex        =   108
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   612
      Left            =   8445
      TabIndex        =   107
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   611
      Left            =   8445
      TabIndex        =   106
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   610
      Left            =   8445
      TabIndex        =   105
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   609
      Left            =   8445
      TabIndex        =   104
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   608
      Left            =   8445
      TabIndex        =   103
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   607
      Left            =   8445
      TabIndex        =   102
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   606
      Left            =   8445
      TabIndex        =   101
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   605
      Left            =   8445
      TabIndex        =   100
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   604
      Left            =   8445
      TabIndex        =   99
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   603
      Left            =   8445
      TabIndex        =   98
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   602
      Left            =   8445
      TabIndex        =   97
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   601
      Left            =   8445
      TabIndex        =   96
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   520
      Left            =   7995
      TabIndex        =   95
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   519
      Left            =   7995
      TabIndex        =   94
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   518
      Left            =   7995
      TabIndex        =   93
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   517
      Left            =   7995
      TabIndex        =   92
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   516
      Left            =   7995
      TabIndex        =   91
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   515
      Left            =   7995
      TabIndex        =   90
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   514
      Left            =   7995
      TabIndex        =   89
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   513
      Left            =   7995
      TabIndex        =   88
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   512
      Left            =   7995
      TabIndex        =   87
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   511
      Left            =   7995
      TabIndex        =   86
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   510
      Left            =   7995
      TabIndex        =   85
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   509
      Left            =   7995
      TabIndex        =   84
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   508
      Left            =   7995
      TabIndex        =   83
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   507
      Left            =   7995
      TabIndex        =   82
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   506
      Left            =   7995
      TabIndex        =   81
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   505
      Left            =   7995
      TabIndex        =   80
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   504
      Left            =   7995
      TabIndex        =   79
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   503
      Left            =   7995
      TabIndex        =   78
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   502
      Left            =   7995
      TabIndex        =   77
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   501
      Left            =   7995
      TabIndex        =   76
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   420
      Left            =   7545
      TabIndex        =   75
      Text            =   "1"
      Top             =   6525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   419
      Left            =   7545
      TabIndex        =   74
      Text            =   "1"
      Top             =   6225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   418
      Left            =   7545
      TabIndex        =   73
      Text            =   "1"
      Top             =   5925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   417
      Left            =   7545
      TabIndex        =   72
      Text            =   "1"
      Top             =   5625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   416
      Left            =   7545
      TabIndex        =   71
      Text            =   "1"
      Top             =   5325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   415
      Left            =   7545
      TabIndex        =   70
      Text            =   "1"
      Top             =   5025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   414
      Left            =   7545
      TabIndex        =   69
      Text            =   "1"
      Top             =   4725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   413
      Left            =   7545
      TabIndex        =   68
      Text            =   "1"
      Top             =   4425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   412
      Left            =   7545
      TabIndex        =   67
      Text            =   "1"
      Top             =   4125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   411
      Left            =   7545
      TabIndex        =   66
      Text            =   "1"
      Top             =   3825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   410
      Left            =   7545
      TabIndex        =   65
      Text            =   "1"
      Top             =   3525
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   409
      Left            =   7545
      TabIndex        =   64
      Text            =   "1"
      Top             =   3225
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   408
      Left            =   7545
      TabIndex        =   63
      Text            =   "1"
      Top             =   2925
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   407
      Left            =   7545
      TabIndex        =   62
      Text            =   "1"
      Top             =   2625
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   406
      Left            =   7545
      TabIndex        =   61
      Text            =   "1"
      Top             =   2325
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   405
      Left            =   7545
      TabIndex        =   60
      Text            =   "1"
      Top             =   2025
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   404
      Left            =   7545
      TabIndex        =   59
      Text            =   "1"
      Top             =   1725
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   403
      Left            =   7545
      TabIndex        =   58
      Text            =   "1"
      Top             =   1425
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   402
      Left            =   7545
      TabIndex        =   57
      Text            =   "1"
      Top             =   1125
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   401
      Left            =   7560
      TabIndex        =   56
      Text            =   "1"
      Top             =   825
      Width           =   450
   End
   Begin VB.TextBox txtBox 
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
      Index           =   320
      Left            =   6345
      TabIndex        =   55
      Text            =   "1"
      Top             =   6525
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   319
      Left            =   6345
      TabIndex        =   54
      Text            =   "1"
      Top             =   6225
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   318
      Left            =   6345
      TabIndex        =   53
      Text            =   "1"
      Top             =   5925
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   317
      Left            =   6345
      TabIndex        =   52
      Text            =   "1"
      Top             =   5625
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   316
      Left            =   6345
      TabIndex        =   51
      Text            =   "1"
      Top             =   5325
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   315
      Left            =   6345
      TabIndex        =   50
      Text            =   "1"
      Top             =   5025
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   314
      Left            =   6345
      TabIndex        =   49
      Text            =   "1"
      Top             =   4725
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   313
      Left            =   6345
      TabIndex        =   48
      Text            =   "1"
      Top             =   4425
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   312
      Left            =   6345
      TabIndex        =   47
      Text            =   "1"
      Top             =   4125
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   311
      Left            =   6345
      TabIndex        =   46
      Text            =   "1"
      Top             =   3825
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   310
      Left            =   6345
      TabIndex        =   45
      Text            =   "1"
      Top             =   3525
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   309
      Left            =   6345
      TabIndex        =   44
      Text            =   "1"
      Top             =   3225
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   308
      Left            =   6345
      TabIndex        =   43
      Text            =   "1"
      Top             =   2925
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   307
      Left            =   6345
      TabIndex        =   42
      Text            =   "1"
      Top             =   2625
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   306
      Left            =   6345
      TabIndex        =   41
      Text            =   "1"
      Top             =   2325
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   305
      Left            =   6345
      TabIndex        =   40
      Text            =   "1"
      Top             =   2025
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   304
      Left            =   6345
      TabIndex        =   39
      Text            =   "1"
      Top             =   1725
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   303
      Left            =   6345
      TabIndex        =   38
      Text            =   "1"
      Top             =   1425
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   302
      Left            =   6345
      TabIndex        =   37
      Text            =   "1"
      Top             =   1125
      Width           =   1140
   End
   Begin VB.TextBox txtBox 
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
      Index           =   301
      Left            =   6345
      TabIndex        =   36
      Text            =   "12345678"
      Top             =   825
      Width           =   1140
   End
   Begin VB.TextBox lblNameTitle 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Left            =   2370
      TabIndex        =   464
      Text            =   "Title"
      Top             =   225
      Width           =   3915
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Height          =   615
      Index           =   301
      Left            =   6345
      TabIndex        =   467
      Text            =   "Long ID"
      Top             =   225
      Width           =   1140
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   401
      Left            =   7545
      TabIndex        =   469
      Text            =   "1st"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   501
      Left            =   7995
      TabIndex        =   470
      Text            =   "2nd"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   601
      Left            =   8445
      TabIndex        =   471
      Text            =   "3rd"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   701
      Left            =   8895
      TabIndex        =   472
      Text            =   "4th"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   400
      Left            =   7545
      TabIndex        =   468
      Text            =   "Soiled Lines"
      Top             =   225
      Width           =   1800
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   801
      Left            =   9420
      TabIndex        =   474
      Text            =   "SP1"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   901
      Left            =   9870
      TabIndex        =   475
      Text            =   "SP2"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   1001
      Left            =   10320
      TabIndex        =   476
      Text            =   "SP3"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   800
      Left            =   9420
      TabIndex        =   473
      Text            =   "Weights"
      Top             =   225
      Width           =   1350
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   1101
      Left            =   10845
      TabIndex        =   478
      Text            =   "1st"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   1201
      Left            =   11295
      TabIndex        =   479
      Text            =   "2nd"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   1301
      Left            =   11745
      TabIndex        =   480
      Text            =   "3rd"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   1401
      Left            =   12195
      TabIndex        =   481
      Text            =   "4th"
      Top             =   525
      Width           =   450
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Index           =   1100
      Left            =   10845
      TabIndex        =   477
      Text            =   "Clean Lines"
      Top             =   225
      Width           =   1800
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Height          =   615
      Index           =   1501
      Left            =   12720
      MultiLine       =   -1  'True
      TabIndex        =   482
      Text            =   "Database_frm.frx":0030
      Top             =   225
      Width           =   690
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Height          =   615
      Index           =   1601
      Left            =   13470
      MultiLine       =   -1  'True
      TabIndex        =   483
      Text            =   "Database_frm.frx":003B
      Top             =   225
      Width           =   690
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Height          =   615
      Index           =   1701
      Left            =   14220
      MultiLine       =   -1  'True
      TabIndex        =   484
      Text            =   "Database_frm.frx":0045
      Top             =   225
      Width           =   750
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Height          =   615
      Index           =   1801
      Left            =   14970
      MultiLine       =   -1  'True
      TabIndex        =   485
      Text            =   "Database_frm.frx":0054
      Top             =   225
      Width           =   750
   End
   Begin VB.TextBox lblBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
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
      Height          =   615
      Index           =   1901
      Left            =   15720
      TabIndex        =   486
      Text            =   "Group"
      Top             =   225
      Width           =   3930
   End
   Begin MSComctlLib.ImageCombo ImageCombo1 
      CausesValidation=   0   'False
      Height          =   345
      Left            =   10080
      TabIndex        =   959
      Top             =   8820
      Width           =   6075
      _ExtentX        =   10716
      _ExtentY        =   609
      _Version        =   393216
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      Text            =   "ImageCombo1"
   End
   Begin VB.Label lbl_PoolCusTitle 
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "POOL Customer"
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   2400
      TabIndex        =   1050
      Top             =   6900
      Width           =   3915
   End
   Begin VB.Label lblCusPoolName 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Label1"
      Height          =   315
      Left            =   3600
      TabIndex        =   1048
      Top             =   7200
      Width           =   2790
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   20
      Left            =   240
      TabIndex        =   957
      Top             =   6525
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   19
      Left            =   240
      TabIndex        =   956
      Top             =   6225
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   18
      Left            =   240
      TabIndex        =   955
      Top             =   5925
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   17
      Left            =   240
      TabIndex        =   954
      Top             =   5625
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   16
      Left            =   240
      TabIndex        =   953
      Top             =   5325
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   15
      Left            =   240
      TabIndex        =   952
      Top             =   5025
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   14
      Left            =   240
      TabIndex        =   951
      Top             =   4725
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   13
      Left            =   240
      TabIndex        =   950
      Top             =   4425
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   12
      Left            =   240
      TabIndex        =   949
      Top             =   4125
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   11
      Left            =   240
      TabIndex        =   948
      Top             =   3825
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   10
      Left            =   240
      TabIndex        =   947
      Top             =   3525
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   9
      Left            =   240
      TabIndex        =   946
      Top             =   3225
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   8
      Left            =   240
      TabIndex        =   945
      Top             =   2925
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   7
      Left            =   240
      TabIndex        =   944
      Top             =   2625
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   6
      Left            =   240
      TabIndex        =   943
      Top             =   2325
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   5
      Left            =   240
      TabIndex        =   942
      Top             =   2025
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   4
      Left            =   240
      TabIndex        =   941
      Top             =   1725
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   3
      Left            =   240
      TabIndex        =   940
      Top             =   1425
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   2
      Left            =   240
      TabIndex        =   939
      Top             =   1125
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   1
      Left            =   240
      TabIndex        =   938
      Top             =   825
      Width           =   2115
   End
   Begin VB.Label lblPicBox 
      Alignment       =   2  'Center
      BackColor       =   &H00D2A03C&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PicLbl"
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
      Height          =   615
      Index           =   0
      Left            =   240
      TabIndex        =   937
      Top             =   225
      Width           =   2115
   End
End
Attribute VB_Name = "Database_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Const MaxLocalDb = 2

Dim ShowPicOpt As Boolean
Dim PicIndex As Integer
Dim CatDBused As String

Dim SelectedDb              As Integer

Dim Loaded                  As Boolean
Dim Displayed               As Boolean

Dim ID                      As Integer
Dim db(MaxLocalDb)          As Integer 'db Number ie dbCategories
Dim dbTableName(MaxLocalDb) As String 'Local table name ie. Programs

Dim MaxNum(MaxLocalDb)      As Long
Dim MaxDbSize(MaxLocalDb)   As Integer

'Configure local db settings
Dim dbSettingValueLocal(MaxLocalDb, 20) As String

Const DbUseLongID = 0
Const DbUseSoiledLines = 1
Const DbSoiledLines2 = 2
Const DbUseSetpoints = 3
Const DbUseCleanLines = 4
Const DbCleanLines2 = 5
Const DbUseBatchSize = 6
Const DbUsePieceWeight = 7
Const DbUseType = 8
Const DbUseWashCodes = 9
Const DbUseBagColour = 10
Const DbLongCharAllow = 11
Const DbLongIDMax = 12
Const DbLongEntry = 13
Const DbPicAddress = 14
Const DbUsePrimaryLines = 15
Const DbPrimaryLines2 = 16


Dim LocalDbSize(MaxLocalDb)          As Long
Dim LocalNum()          As Long
Dim LocalName()         As String
Dim LocalLong()         As String   'Long Number
Dim LocalType()         As Integer  'Category Type ID ie 1=Hotel 2=Table Linen
Dim LocalColB()         As Long     'Backcolor
Dim LocalColF()         As Long     'Forecolor
Dim LocalBatch()        As Integer  'Batch Size
Dim LocalWash()         As Integer  'Wash Code / Program
Dim LocalPoolCus()      As Boolean  'Is Customer POOL
Dim LocalDryC()         As Integer  'Dry Code
Dim LocalSP1()          As Integer  'Setpoint 1 (Approaching Weight)
Dim LocalSP2()          As Integer  'Setpoint 2 (At Release Weight)
Dim LocalSP3()          As Integer  'Setpoint 3 (Overweight)
Dim LocalSLine1()       As Integer  'Soiled System Line 1st Choice
Dim LocalSLine2()       As Integer  'Soiled System Line 2nd Choice
Dim LocalSLine3()       As Integer  'Soiled System Line 3rd Choice
Dim LocalSLine4()       As Integer  'Soiled System Line 4th Choice
Dim LocalCLine1()       As Integer  'Clean System Line 1st Choice
Dim LocalCLine2()       As Integer  'Clean System Line 2nd Choice
Dim LocalCLine3()       As Integer  'Clean System Line 3rd Choice
Dim LocalCLine4()       As Integer  'Clean System Line 4th Choice
Dim LocalPLine1()       As Integer  'Primary System Line 1st Choice
Dim LocalPLine2()       As Integer  'Primary System Line 2nd Choice
Dim LocalPLine3()       As Integer  'Primary System Line 3rd Choice
Dim LocalPLine4()       As Integer  'Primary System Line 4th Choice
Dim LocalProg()         As Long     'Category Program allocation
Dim LocalPiece()        As Integer  'Piece Weight
Dim LocalPicFileName() As String
Dim LocalLoadingProg() As String
Dim n                   As Integer

'Each Set of boxes are 100 spaced by index
Const OffsetNum = 100
Const OffsetNam = 200
Const OffsetLng = 300
Const OffsetSL1 = 400
Const OffsetSL2 = 500
Const OffsetSL3 = 600
Const OffsetSL4 = 700
Const OffsetSP1 = 800
Const OffsetSP2 = 900
Const OffsetSP3 = 1000
Const OffsetCL1 = 1100
Const OffsetCL2 = 1200
Const OffsetCL3 = 1300
Const OffsetCL4 = 1400
Const OffsetBth = 1500
Const OffsetPce = 1600
Const OffsetTyp = 1700
Const OffsetWsh = 1800
Const OffsetGrp = 1900
Const OffsetSkip2000 = 2000
Const Offset2Num = 2100
Const Offset2Nam = 2200
Const Offset2Lng = 2300
Const Offset2SL1 = 2400
Const Offset2SL2 = 2500
Const Offset2SL3 = 2600
Const Offset2SL4 = 2700
Const Offset2SP1 = 2800
Const Offset2SP2 = 2900
Const Offset2SP3 = 3000
Const Offset2CL1 = 3100
Const Offset2CL2 = 3200
Const Offset2CL3 = 3300
Const Offset2CL4 = 3400
Const Offset2Bth = 3500
Const Offset2Pce = 3600
Const Offset2Typ = 3700
Const Offset2Wsh = 3800
Const Offset2Grp = 3900
Const OffsetPL1 = 4000
Const OffsetPL2 = 4100
Const OffsetPL3 = 4200
Const OffsetPL4 = 4300

Dim SelectIndex(MaxLocalDb)             As Integer

Dim cmbGrpPosition                      As Integer
Dim UseGroupColours(MaxLocalDb)       As Boolean
Dim ShowProgColours(MaxLocalDb)         As Boolean

Dim MaxScroll(MaxLocalDb)               As Integer
Dim ColourChangeEnabled(MaxLocalDb)     As Boolean
Dim CurrentBox                          As Integer

Private Function FindLocalIndex(BoxIndex As Integer)
    
    If BoxIndex >= OffsetPL1 Then
      If CatDBused = "0" Then
        FindLocalIndex = 1
      Else
        FindLocalIndex = 2
      End If
    ElseIf (BoxIndex < Offset2Num) Then
        FindLocalIndex = 1
    Else
        FindLocalIndex = 2
    End If
End Function
Private Sub ConfigDbSettings(LocalIndex As Integer, dbase As Integer)



'Read all Public Settings
Dim n As Integer
For n = 0 To MaxDbSettings
    If dbSettingName(n) <> "" Then
        dbSettingValue(n) = db_uspSettingGet("SettingsNetwork", "dbOptions", dbSettingName(n), 0, PCNum)
        'Debug.Print dbSettingName(n) & "  " & dbSettingValue(n)
    End If
Next n



'Set Local Settings
Select Case dbase
    
    Case dbNone
                        
        MaxNum(LocalIndex) = 1
        MaxDbSize(LocalIndex) = 1
        
        db(LocalIndex) = dbNone
        dbTableName(LocalIndex) = ""
                        
        dbSettingValueLocal(LocalIndex, DbUseLongID) = "0"
        dbSettingValueLocal(LocalIndex, DbUseSoiledLines) = "0"
        dbSettingValueLocal(LocalIndex, DbSoiledLines2) = "0"
        dbSettingValueLocal(LocalIndex, DbUseSetpoints) = "0"
        dbSettingValueLocal(LocalIndex, DbUseCleanLines) = "0"
        dbSettingValueLocal(LocalIndex, DbCleanLines2) = "0"
        dbSettingValueLocal(LocalIndex, DbUseBatchSize) = "0"
        dbSettingValueLocal(LocalIndex, DbUsePieceWeight) = "0"
        dbSettingValueLocal(LocalIndex, DbUseType) = "0"
        dbSettingValueLocal(LocalIndex, DbUseWashCodes) = "0"
        dbSettingValueLocal(LocalIndex, DbUseBagColour) = "0"
        dbSettingValueLocal(LocalIndex, DbLongCharAllow) = "0"
        dbSettingValueLocal(LocalIndex, DbLongIDMax) = "0"
        dbSettingValueLocal(LocalIndex, DbLongEntry) = "0"
        dbSettingValueLocal(LocalIndex, DbUsePrimaryLines) = "0"
        dbSettingValueLocal(LocalIndex, DbPrimaryLines2) = "0"
    
    Case dbGroups
               
        MaxNum(LocalIndex) = MaxGrp
        MaxDbSize(LocalIndex) = MaxGrpdb
        
        db(LocalIndex) = dbGroups
        dbTableName(LocalIndex) = "Groups"
        
        dbSettingValueLocal(LocalIndex, DbUseLongID) = dbSettingValue(GrpDbUseLongID)
        dbSettingValueLocal(LocalIndex, DbUseSoiledLines) = dbSettingValue(GrpDbUseSoiledLines)
        dbSettingValueLocal(LocalIndex, DbSoiledLines2) = dbSettingValue(GrpDbSoiledLines2)
        dbSettingValueLocal(LocalIndex, DbUseSetpoints) = dbSettingValue(GrpDbUseSetpoints)
        dbSettingValueLocal(LocalIndex, DbUseCleanLines) = dbSettingValue(GrpDbUseCleanLines)
        dbSettingValueLocal(LocalIndex, DbCleanLines2) = dbSettingValue(GrpDbCleanLines2)
        dbSettingValueLocal(LocalIndex, DbUseBatchSize) = dbSettingValue(GrpDbUseBatchSize)
        dbSettingValueLocal(LocalIndex, DbUsePieceWeight) = "0"
        dbSettingValueLocal(LocalIndex, DbUseType) = dbSettingValue(GrpDbUseType)
        dbSettingValueLocal(LocalIndex, DbUseWashCodes) = dbSettingValue(GrpDbUseWashCodes)
        dbSettingValueLocal(LocalIndex, DbUseBagColour) = dbSettingValue(GrpDbUseBagColour)
        dbSettingValueLocal(LocalIndex, DbLongCharAllow) = dbSettingValue(GrpDbLongCharAllow)
        dbSettingValueLocal(LocalIndex, DbLongIDMax) = dbSettingValue(GrpDbLongIDMax)
        dbSettingValueLocal(LocalIndex, DbLongEntry) = dbSettingValue(GrpDbLongEntry)
        dbSettingValueLocal(LocalIndex, DbUsePrimaryLines) = dbSettingValue(GrpDbUsePrimaryLines)
        dbSettingValueLocal(LocalIndex, DbPrimaryLines2) = dbSettingValue(GrpDbPrimaryLines2)
        
    
    Case dbCategories
        
        MaxNum(LocalIndex) = MaxCat
        MaxDbSize(LocalIndex) = MaxCatdb
        
        db(LocalIndex) = dbCategories
        dbTableName(LocalIndex) = "Categories"
        
        dbSettingValueLocal(LocalIndex, DbUseLongID) = dbSettingValue(CatDbUseLongID)
        dbSettingValueLocal(LocalIndex, DbUseSoiledLines) = "0"
        dbSettingValueLocal(LocalIndex, DbSoiledLines2) = "0"
        dbSettingValueLocal(LocalIndex, DbUseSetpoints) = dbSettingValue(CatDbUseSetpoints)
        dbSettingValueLocal(LocalIndex, DbUseCleanLines) = "0"
        dbSettingValueLocal(LocalIndex, DbCleanLines2) = "0"
        dbSettingValueLocal(LocalIndex, DbUseBatchSize) = "0"
        dbSettingValueLocal(LocalIndex, DbUsePieceWeight) = dbSettingValue(CatDbUsePieceWeight)
        dbSettingValueLocal(LocalIndex, DbUseType) = dbSettingValue(CatDbUseType)
        dbSettingValueLocal(LocalIndex, DbUseWashCodes) = dbSettingValue(CatDbUseWashCodes)
        dbSettingValueLocal(LocalIndex, DbUseBagColour) = dbSettingValue(CatDbUseBagColour)
        dbSettingValueLocal(LocalIndex, DbLongCharAllow) = dbSettingValue(CatDbLongCharAllow)
        dbSettingValueLocal(LocalIndex, DbLongIDMax) = dbSettingValue(CatDbLongIDMax)
        dbSettingValueLocal(LocalIndex, DbLongEntry) = dbSettingValue(CatDbLongEntry)
        dbSettingValueLocal(LocalIndex, DbPrimaryLines2) = dbSettingValue(GrpDbPrimaryLines2)
     Case dbCustomers
        
        MaxNum(LocalIndex) = MaxCus
        MaxDbSize(LocalIndex) = MaxCusdb
        
        db(LocalIndex) = dbCustomers
        dbTableName(LocalIndex) = "Customers"
        
        dbSettingValueLocal(LocalIndex, DbUseLongID) = dbSettingValue(CusDbUseLongID)
        dbSettingValueLocal(LocalIndex, DbUseSoiledLines) = "0"
        dbSettingValueLocal(LocalIndex, DbSoiledLines2) = "0"
        dbSettingValueLocal(LocalIndex, DbUseSetpoints) = "0"
        dbSettingValueLocal(LocalIndex, DbUseCleanLines) = "0"
        dbSettingValueLocal(LocalIndex, DbCleanLines2) = "0"
        dbSettingValueLocal(LocalIndex, DbUseBatchSize) = dbSettingValue(CusDbEnablePool) '"0"
        dbSettingValueLocal(LocalIndex, DbUsePieceWeight) = "0"
        dbSettingValueLocal(LocalIndex, DbUseType) = dbSettingValue(CusDbAutoCusChange) 'Tim Marker
        dbSettingValueLocal(LocalIndex, DbUseWashCodes) = "0"
        dbSettingValueLocal(LocalIndex, DbUseBagColour) = dbSettingValue(CusDbUseBagColour)
        dbSettingValueLocal(LocalIndex, DbLongCharAllow) = dbSettingValue(CusDbLongCharAllow)
        dbSettingValueLocal(LocalIndex, DbLongIDMax) = dbSettingValue(CusDbLongIDMax)
        dbSettingValueLocal(LocalIndex, DbLongEntry) = dbSettingValue(CusDbLongEntry)
    
    Case dbMachineNames
                        
        MaxNum(LocalIndex) = 4
        MaxDbSize(LocalIndex) = 4
        
        db(LocalIndex) = dbMachineNames
        dbTableName(LocalIndex) = "MachineNames"
                        
        dbSettingValueLocal(LocalIndex, DbUseLongID) = "0"
        dbSettingValueLocal(LocalIndex, DbUseSoiledLines) = "0"
        dbSettingValueLocal(LocalIndex, DbSoiledLines2) = "0"
        dbSettingValueLocal(LocalIndex, DbUseSetpoints) = "0"
        dbSettingValueLocal(LocalIndex, DbUseCleanLines) = "0"
        dbSettingValueLocal(LocalIndex, DbCleanLines2) = "0"
        dbSettingValueLocal(LocalIndex, DbUseBatchSize) = "0"
        dbSettingValueLocal(LocalIndex, DbUsePieceWeight) = "0"
        dbSettingValueLocal(LocalIndex, DbUseType) = "0"
        dbSettingValueLocal(LocalIndex, DbUseWashCodes) = "0"
        dbSettingValueLocal(LocalIndex, DbUseBagColour) = "0"
        dbSettingValueLocal(LocalIndex, DbLongCharAllow) = "0"
        dbSettingValueLocal(LocalIndex, DbLongIDMax) = "0"
        dbSettingValueLocal(LocalIndex, DbLongEntry) = "0"


End Select
  
  
Me.scrBar(LocalIndex).LargeChange = 1
Me.scrBar(LocalIndex).Min = 1
Me.scrBar(LocalIndex).Value = 1
     
   

   

CurrentBox = 0


  
End Sub

Private Sub BagColorSel_Click(Index As Integer)
    If ColourChangeEnabled(SelectedDb) Then
        shpBackColour.FillColor = BagColorSel(Index).BackColor
        LocalColB(SelectedDb, SelectIndex(SelectedDb)) = shpBackColour.FillColor
        'Call DisplayData(SelectedDb)
        Call DisplayData(1)
        Call DisplayData(2)
    End If
End Sub



Private Sub cmb_CusLoadingProgs_Click()
    Dim BoxOffset As Integer
    
    BoxOffset = SelectIndex(1) - (Me.scrBar(1).Value - 1) + OffsetTyp
    txtBox(BoxOffset).Text = cmb_CusLoadingProgs.Text
    LocalLoadingProg(SelectIndex(1)) = cmb_CusLoadingProgs.Text
    cmb_CusLoadingProgs.Visible = False
End Sub

Private Sub cmb_CusLoadingProgs_LostFocus()
    cmb_CusLoadingProgs.Visible = False
End Sub



Private Sub cmbCusName_Click()
    txt_PoolCusNum.Text = CmbGetNum(cmbCusName, EditCus)
    cmbCusName.Visible = False
End Sub

Private Sub cmbCusName_LostFocus()
   cmbCusName.Visible = False
   
End Sub

Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdDelete_Click()
    
    Dim n As Integer
     
    Dim LocalIndex As Integer
    
    LocalIndex = SelectedDb
     
    If LocalIndex > 0 Then
        
        If LocalDbSize(LocalIndex) > 1 Then
        
            n = SelectIndex(LocalIndex)
            
            If (n > 1) Then
                LocalNum(LocalIndex, n) = 0
                LocalName(LocalIndex, n) = ""
                LocalLong(LocalIndex, n) = ""
                LocalType(LocalIndex, n) = 0
                LocalColB(LocalIndex, n) = 0
                LocalColF(LocalIndex, n) = 0
                LocalBatch(LocalIndex, n) = 0
                LocalWash(LocalIndex, n) = 0
                LocalPoolCus(LocalIndex, n) = False
                LocalDryC(LocalIndex, n) = 0
                LocalSP1(LocalIndex, n) = 0
                LocalSP2(LocalIndex, n) = 0
                LocalSP3(LocalIndex, n) = 0
                LocalSLine1(LocalIndex, n) = 0
                LocalSLine2(LocalIndex, n) = 0
                LocalSLine3(LocalIndex, n) = 0
                LocalSLine4(LocalIndex, n) = 0
                LocalCLine1(LocalIndex, n) = 0
                LocalCLine2(LocalIndex, n) = 0
                LocalCLine3(LocalIndex, n) = 0
                LocalCLine4(LocalIndex, n) = 0
                LocalPLine1(LocalIndex, n) = 0
                LocalPLine2(LocalIndex, n) = 0
                LocalPLine3(LocalIndex, n) = 0
                LocalPLine4(LocalIndex, n) = 0
                
                LocalProg(LocalIndex, n) = 0
                LocalPiece(LocalIndex, n) = 0
                LocalPicFileName(n) = ""
                LocalLoadingProg(n) = ""
            End If
            
            For n = SelectIndex(LocalIndex) To (LocalDbSize(LocalIndex) - 1)
                LocalNum(LocalIndex, n) = LocalNum(LocalIndex, n + 1)
                LocalName(LocalIndex, n) = LocalName(LocalIndex, n + 1)
                LocalLong(LocalIndex, n) = LocalLong(LocalIndex, n + 1)
                If dbView(LocalIndex) = dbCustomers Then
                    LocalLoadingProg(n) = LocalLoadingProg(n + 1)
                Else
                    LocalType(LocalIndex, n) = LocalType(LocalIndex, n + 1)
                End If
                LocalColB(LocalIndex, n) = LocalColB(LocalIndex, n + 1)
                LocalColF(LocalIndex, n) = LocalColF(LocalIndex, n + 1)
                LocalBatch(LocalIndex, n) = LocalBatch(LocalIndex, n + 1)
                LocalWash(LocalIndex, n) = LocalWash(LocalIndex, n + 1)
                LocalPoolCus(LocalIndex, n) = LocalPoolCus(LocalIndex, n + 1)
                LocalDryC(LocalIndex, n) = LocalDryC(LocalIndex, n + 1)
                LocalSP1(LocalIndex, n) = LocalSP1(LocalIndex, n + 1)
                LocalSP2(LocalIndex, n) = LocalSP2(LocalIndex, n + 1)
                LocalSP3(LocalIndex, n) = LocalSP3(LocalIndex, n + 1)
                LocalSLine1(LocalIndex, n) = LocalSLine1(LocalIndex, n + 1)
                LocalSLine2(LocalIndex, n) = LocalSLine2(LocalIndex, n + 1)
                LocalSLine3(LocalIndex, n) = LocalSLine3(LocalIndex, n + 1)
                LocalSLine4(LocalIndex, n) = LocalSLine4(LocalIndex, n + 1)
                LocalCLine1(LocalIndex, n) = LocalCLine1(LocalIndex, n + 1)
                LocalCLine2(LocalIndex, n) = LocalCLine2(LocalIndex, n + 1)
                LocalCLine3(LocalIndex, n) = LocalCLine3(LocalIndex, n + 1)
                LocalCLine4(LocalIndex, n) = LocalCLine4(LocalIndex, n + 1)
                LocalPLine1(LocalIndex, n) = LocalPLine1(LocalIndex, n + 1)
                LocalPLine2(LocalIndex, n) = LocalPLine2(LocalIndex, n + 1)
                LocalPLine3(LocalIndex, n) = LocalPLine3(LocalIndex, n + 1)
                LocalPLine4(LocalIndex, n) = LocalPLine4(LocalIndex, n + 1)
                LocalProg(LocalIndex, n) = LocalProg(LocalIndex, n + 1)
                LocalPiece(LocalIndex, n) = LocalPiece(LocalIndex, n + 1)
                LocalPicFileName(n) = LocalPicFileName(n + 1)
                LocalNum(LocalIndex, n + 1) = 0
                LocalName(LocalIndex, n + 1) = ""
                LocalLong(LocalIndex, n + 1) = ""
                LocalType(LocalIndex, n + 1) = 0
                LocalColB(LocalIndex, n + 1) = 0
                LocalColF(LocalIndex, n + 1) = 0
                LocalBatch(LocalIndex, n + 1) = 0
                LocalWash(LocalIndex, n + 1) = 0
                LocalPoolCus(LocalIndex, n + 1) = 0
                LocalDryC(LocalIndex, n + 1) = 0
                LocalSP1(LocalIndex, n + 1) = 0
                LocalSP2(LocalIndex, n + 1) = 0
                LocalSP3(LocalIndex, n + 1) = 0
                LocalSLine1(LocalIndex, n + 1) = 0
                LocalSLine2(LocalIndex, n + 1) = 0
                LocalSLine3(LocalIndex, n + 1) = 0
                LocalSLine4(LocalIndex, n + 1) = 0
                LocalCLine1(LocalIndex, n + 1) = 0
                LocalCLine2(LocalIndex, n + 1) = 0
                LocalCLine3(LocalIndex, n + 1) = 0
                LocalCLine4(LocalIndex, n + 1) = 0
                LocalPLine1(LocalIndex, n + 1) = 0
                LocalPLine2(LocalIndex, n + 1) = 0
                LocalPLine3(LocalIndex, n + 1) = 0
                LocalPLine4(LocalIndex, n + 1) = 0
                
                LocalProg(LocalIndex, n + 1) = 0
                LocalPiece(LocalIndex, n + 1) = 0
                LocalPicFileName(n + 1) = ""
            Next n
            
            LocalDbSize(LocalIndex) = LocalDbSize(LocalIndex) - 1
            Call DimensionLocalData(LocalDbSize(LocalIndex))
        
        End If
        
        DisplayData (LocalIndex)

    End If
    
End Sub



Private Sub cmdInsert_Click()
    
    Dim n As Integer
    
    Dim LocalIndex As Integer
    
    LocalIndex = SelectedDb
     
    If LocalIndex > 0 And (LocalDbSize(LocalIndex) < MaxDbSize(LocalIndex)) Then
        
        LocalDbSize(LocalIndex) = LocalDbSize(LocalIndex) + 1
        Call DimensionLocalData(LocalDbSize(LocalIndex))
        
       ' Debug.Print "LocalDbSize Index = " & LocalIndex & " Size = " & LocalDbSize(LocalIndex)
        
        For n = (LocalDbSize(LocalIndex) - 1) To SelectIndex(LocalIndex) Step -1
            LocalNum(LocalIndex, n + 1) = LocalNum(LocalIndex, n)
            LocalName(LocalIndex, n + 1) = LocalName(LocalIndex, n)
            LocalLong(LocalIndex, n + 1) = LocalLong(LocalIndex, n)
            If dbView(LocalIndex) = dbCustomers Then
                LocalLoadingProg(n + 1) = LocalLoadingProg(n)
            Else
                LocalType(LocalIndex, n + 1) = LocalType(LocalIndex, n)
            End If
            LocalColB(LocalIndex, n + 1) = LocalColB(LocalIndex, n)
            LocalColF(LocalIndex, n + 1) = LocalColF(LocalIndex, n)
            LocalBatch(LocalIndex, n + 1) = LocalBatch(LocalIndex, n)
            LocalWash(LocalIndex, n + 1) = LocalWash(LocalIndex, n)
            LocalPoolCus(LocalIndex, n + 1) = LocalPoolCus(LocalIndex, n)
            LocalDryC(LocalIndex, n + 1) = LocalDryC(LocalIndex, n)
            LocalSP1(LocalIndex, n + 1) = LocalSP1(LocalIndex, n)
            LocalSP2(LocalIndex, n + 1) = LocalSP2(LocalIndex, n)
            LocalSP3(LocalIndex, n + 1) = LocalSP3(LocalIndex, n)
            LocalSLine1(LocalIndex, n + 1) = LocalSLine1(LocalIndex, n)
            LocalSLine2(LocalIndex, n + 1) = LocalSLine2(LocalIndex, n)
            LocalSLine3(LocalIndex, n + 1) = LocalSLine3(LocalIndex, n)
            LocalSLine4(LocalIndex, n + 1) = LocalSLine4(LocalIndex, n)
            LocalCLine1(LocalIndex, n + 1) = LocalCLine1(LocalIndex, n)
            LocalCLine2(LocalIndex, n + 1) = LocalCLine2(LocalIndex, n)
            LocalCLine3(LocalIndex, n + 1) = LocalCLine3(LocalIndex, n)
            LocalCLine4(LocalIndex, n + 1) = LocalCLine4(LocalIndex, n)
            LocalPLine1(LocalIndex, n + 1) = LocalPLine1(LocalIndex, n)
            LocalPLine2(LocalIndex, n + 1) = LocalPLine2(LocalIndex, n)
            LocalPLine3(LocalIndex, n + 1) = LocalPLine3(LocalIndex, n)
            LocalPLine4(LocalIndex, n + 1) = LocalPLine4(LocalIndex, n)
            LocalProg(LocalIndex, n + 1) = LocalProg(LocalIndex, n)
            LocalPiece(LocalIndex, n + 1) = LocalPiece(LocalIndex, n)
            LocalPicFileName(n + 1) = LocalPicFileName(n)
            
            LocalNum(LocalIndex, n) = 0
            LocalName(LocalIndex, n) = ""
            LocalLong(LocalIndex, n) = ""
            LocalType(LocalIndex, n) = 0
            LocalColB(LocalIndex, n) = 0
            LocalColF(LocalIndex, n) = 0
            LocalBatch(LocalIndex, n) = 0
            LocalWash(LocalIndex, n) = 0
            LocalPoolCus(LocalIndex, n) = 0
            LocalDryC(LocalIndex, n) = 0
            LocalSP1(LocalIndex, n) = 0
            LocalSP2(LocalIndex, n) = 0
            LocalSP3(LocalIndex, n) = 0
            LocalSLine1(LocalIndex, n) = 0
            LocalSLine2(LocalIndex, n) = 0
            LocalSLine3(LocalIndex, n) = 0
            LocalSLine4(LocalIndex, n) = 0
            LocalCLine1(LocalIndex, n) = 0
            LocalCLine2(LocalIndex, n) = 0
            LocalCLine3(LocalIndex, n) = 0
            LocalCLine4(LocalIndex, n) = 0
            LocalPLine1(LocalIndex, n) = 0
            LocalPLine2(LocalIndex, n) = 0
            LocalPLine3(LocalIndex, n) = 0
            LocalPLine4(LocalIndex, n) = 0
            
            LocalProg(LocalIndex, n) = 0
            LocalPiece(LocalIndex, n) = 0
            LocalPicFileName(n) = ""
            LocalLoadingProg(n) = ""
        Next n
        DisplayData (LocalIndex)
    
    End If
    
End Sub

Private Sub cmdExit_Click()
    
    Screen.MousePointer = vbHourglass
    Me.cmdCancel.Enabled = False
    Me.cmdExit.Enabled = False
    
    
    
    Call WriteDatabase(1)
    Call WriteDatabase(2)
                
    WritePLCData
       
    Screen.MousePointer = vbArrow
    
    Unload Me

End Sub

Private Sub ColorSel_Click(Index As Integer)
    If ColourChangeEnabled(SelectedDb) Then
        lblForeColour.ForeColor = ColorSel(Index).BackColor
        LocalColF(SelectedDb, SelectIndex(SelectedDb)) = lblForeColour.ForeColor
        'Call DisplayData(SelectedDb)
        Call DisplayData(1)
        Call DisplayData(2)
    End If
End Sub




Private Sub Form_Click()
    ImageCombo1.Visible = False
    cmb_CusLoadingProgs.Visible = False
    
End Sub

Private Sub Form_Load()
        
    Screen.MousePointer = vbHourglass
       
    Dim LocalIndex As Integer
       
    'Initial Dimension of Local Data Array
    ReDim LocalNum(MaxLocalDb, 1)
    ReDim LocalName(MaxLocalDb, 1)
    ReDim LocalLong(MaxLocalDb, 1)
    ReDim LocalType(MaxLocalDb, 1)
    ReDim LocalColB(MaxLocalDb, 1)
    ReDim LocalColF(MaxLocalDb, 1)
    ReDim LocalBatch(MaxLocalDb, 1)
    ReDim LocalWash(MaxLocalDb, 1)
    ReDim LocalPoolCus(MaxLocalDb, 1)
    ReDim LocalDryC(MaxLocalDb, 1)
    ReDim LocalSP1(MaxLocalDb, 1)
    ReDim LocalSP2(MaxLocalDb, 1)
    ReDim LocalSP3(MaxLocalDb, 1)
    ReDim LocalSLine1(MaxLocalDb, 1)
    ReDim LocalSLine2(MaxLocalDb, 1)
    ReDim LocalSLine3(MaxLocalDb, 1)
    ReDim LocalSLine4(MaxLocalDb, 1)
    ReDim LocalCLine1(MaxLocalDb, 1)
    ReDim LocalCLine2(MaxLocalDb, 1)
    ReDim LocalCLine3(MaxLocalDb, 1)
    ReDim LocalCLine4(MaxLocalDb, 1)
    ReDim LocalPLine1(MaxLocalDb, 1)
    ReDim LocalPLine2(MaxLocalDb, 1)
    ReDim LocalPLine3(MaxLocalDb, 1)
    ReDim LocalPLine4(MaxLocalDb, 1)

    ReDim LocalProg(MaxLocalDb, 1)
    ReDim LocalPiece(MaxLocalDb, 1)
    ReDim LocalPicFileName(1)
    ReDim LocalLoadingProg(1)
    
    Loaded = False
    Displayed = False
    LocalDbSize(0) = 0
    LocalDbSize(1) = 0
    LocalDbSize(2) = 0
    'CenterForm Me
    Me.Top = 800
    Me.Left = 0
        
    SelectedDb = 0 'Clear database selected for insert / delete etc
    CatDBused = db_uspSettingGet("SettingsNetwork", "dbOptions", dbSettingName(CatDbCatEqualGroup), 0, PCNum)
    
    LocalIndex = 1
    Call ConfigDbSettings(LocalIndex, dbView(LocalIndex))
    SetPictureOptions
    Call ReadDatabase(LocalIndex)
    
    LocalIndex = 2
    Call ConfigDbSettings(LocalIndex, dbView(LocalIndex))
    Call ReadDatabase(LocalIndex)
    
    fraColours.Visible = (dbSettingValueLocal(1, DbUseBagColour) <> "0") Or (dbSettingValueLocal(2, DbUseBagColour) <> "0")
    
    SetLanguage
    
    SetDisplayOption
    
    
    'Category Group Colours
    For LocalIndex = 1 To MaxLocalDb
        UseGroupColours(LocalIndex) = (dbSettingValue(GrpDbUseBagColour) <> "0") And (db(LocalIndex) = dbCategories)
        chkGrpColours(LocalIndex).Visible = UseGroupColours(LocalIndex)
        
        If UseGroupColours(LocalIndex) Then
            chkGrpColours(LocalIndex).Value = db_uspSettingGet("SettingsNetwork", "Category", "ProgColours" & Format$(LocalIndex), 1, PCNum)
        End If
            
        ShowProgColours(LocalIndex) = (UseGroupColours(LocalIndex) And (chkGrpColours(LocalIndex).Value = 1))
    Next
    
    Loaded = True
    
    Call DisplayData(1)
    Call DisplayData(2)
       
    SetPoolCustomerOptions
  

                
                
    Displayed = True
    Screen.MousePointer = vbNormal
    
End Sub
Private Sub SetPoolCustomerOptions()
    lbl_PoolCusTitle.Left = lblHeaderNum.Left
    txt_PoolCusNum.Left = lblHeaderNum.Left
    lblCusPoolName.Left = lblHeaderName.Left
    
    Dim Visible As Boolean
    Visible = dbSettingValue(CusDbEnablePool) <> "0" And dbView(1) = dbCustomers
    
    txt_PoolCusNum.Visible = Visible
    lblCusPoolName.Visible = Visible
    lbl_PoolCusTitle.Visible = Visible
    
   
    
    txt_PoolCusNum.Text = ""
    txt_PoolCusNum.Text = db_uspSettingGet("SettingsNetwork", "CustomerDB", "PoolCustomer", "", PCNum)
    
    'Get the combo for customer selection.
     PopulateCustomerCombo cmbCusName, ""
    
End Sub
 
 

Public Sub DimensionLocalData(NewSize As Long)
    
    Dim CurrentSize As Integer

    CurrentSize = UBound(LocalNum, 2)

    If (CurrentSize < NewSize) Then
    
        ReDim Preserve LocalNum(MaxLocalDb, NewSize)
        ReDim Preserve LocalName(MaxLocalDb, NewSize)
        ReDim Preserve LocalLong(MaxLocalDb, NewSize)
        ReDim Preserve LocalType(MaxLocalDb, NewSize)
        ReDim Preserve LocalColB(MaxLocalDb, NewSize)
        ReDim Preserve LocalColF(MaxLocalDb, NewSize)
        ReDim Preserve LocalBatch(MaxLocalDb, NewSize)
        ReDim Preserve LocalWash(MaxLocalDb, NewSize)
        ReDim Preserve LocalPoolCus(MaxLocalDb, NewSize)
        ReDim Preserve LocalDryC(MaxLocalDb, NewSize)
        ReDim Preserve LocalSP1(MaxLocalDb, NewSize)
        ReDim Preserve LocalSP2(MaxLocalDb, NewSize)
        ReDim Preserve LocalSP3(MaxLocalDb, NewSize)
        ReDim Preserve LocalSLine1(MaxLocalDb, NewSize)
        ReDim Preserve LocalSLine2(MaxLocalDb, NewSize)
        ReDim Preserve LocalSLine3(MaxLocalDb, NewSize)
        ReDim Preserve LocalSLine4(MaxLocalDb, NewSize)
        ReDim Preserve LocalCLine1(MaxLocalDb, NewSize)
        ReDim Preserve LocalCLine2(MaxLocalDb, NewSize)
        ReDim Preserve LocalCLine3(MaxLocalDb, NewSize)
        ReDim Preserve LocalCLine4(MaxLocalDb, NewSize)
        ReDim Preserve LocalPLine1(MaxLocalDb, NewSize)
        ReDim Preserve LocalPLine2(MaxLocalDb, NewSize)
        ReDim Preserve LocalPLine3(MaxLocalDb, NewSize)
        ReDim Preserve LocalPLine4(MaxLocalDb, NewSize)
        ReDim Preserve LocalProg(MaxLocalDb, NewSize)
        ReDim Preserve LocalPiece(MaxLocalDb, NewSize)
        ReDim Preserve LocalPicFileName(NewSize)
        ReDim Preserve LocalLoadingProg(NewSize)
        
   End If
    
End Sub
Public Sub ReadDatabase(LocalIndex As Integer)

    On Error GoTo ErrorReadDatabase
    
    Dim OrderByLong As Boolean
    Dim ReadPicInfo As Boolean
    Dim PicID As Integer
    ReadPicInfo = False
    
    Select Case db(LocalIndex)
        Case dbGroups
            Call db_uspCategoryGroupRead
            Call db_uspCategoryGroupSetStatus("ok")
            If (db(2) = 0 And LocalIndex = 1) Then Call db_uspCategoriesSetStatus("ok")
            LocalDbSize(LocalIndex) = GrpDbSize
        Case dbCategories
            Call db_uspCategoriesRead
            Call db_uspCategoriesSetStatus("ok")
            LocalDbSize(LocalIndex) = CatDbSize
        Case dbCustomers
            Call db_uspCustomersRead
            Call db_uspCustomersSetStatus("ok")
            LocalDbSize(LocalIndex) = CusDbSize
        Case dbMachineNames
            Call db_uspMachineNamesRead
            Call db_uspMachineNamesSetStatus("ok")
            LocalDbSize(LocalIndex) = McnDbSize
    End Select
        
    If LocalIndex = 1 And ShowPicOpt Then
        If (db(LocalIndex) = dbCategories) Or (db(LocalIndex) = dbGroups) Then
            ReadPicInfo = True
            Call db_uspCatPicFileRead
            Call db_uspCatPicSetStatus("ok")
        End If
    End If
        
        
        
    Call DimensionLocalData(LocalDbSize(LocalIndex))

    'Copy Public Data to Local Data
    Select Case db(LocalIndex)
        Case dbGroups
            For n = 1 To LocalDbSize(LocalIndex)
                LocalNum(LocalIndex, n) = GrpNum(n)
                LocalName(LocalIndex, n) = GrpName(n)
                LocalLong(LocalIndex, n) = GrpLong(n)
                LocalType(LocalIndex, n) = GrpType(n)
                LocalColB(LocalIndex, n) = GrpColB(n)
                LocalColF(LocalIndex, n) = GrpColF(n)
                LocalBatch(LocalIndex, n) = GrpBatch(n)
                LocalWash(LocalIndex, n) = GrpWash(n)
                LocalDryC(LocalIndex, n) = GrpDryC(n)
                LocalSP1(LocalIndex, n) = GrpSP1(n)
                LocalSP2(LocalIndex, n) = GrpSP2(n)
                LocalSP3(LocalIndex, n) = GrpSP3(n)
                LocalSLine1(LocalIndex, n) = GrpSLine1(n)
                LocalSLine2(LocalIndex, n) = GrpSLine2(n)
                LocalSLine3(LocalIndex, n) = GrpSLine3(n)
                LocalSLine4(LocalIndex, n) = GrpSLine4(n)
                LocalCLine1(LocalIndex, n) = GrpCLine1(n)
                LocalCLine2(LocalIndex, n) = GrpCLine2(n)
                LocalCLine3(LocalIndex, n) = GrpCLine3(n)
                LocalCLine4(LocalIndex, n) = GrpCLine4(n)
                LocalPLine1(LocalIndex, n) = GrpPLine1(n)
                LocalPLine2(LocalIndex, n) = GrpPLine2(n)
                LocalPLine3(LocalIndex, n) = GrpPLine3(n)
                LocalPLine4(LocalIndex, n) = GrpPLine4(n)
                
                LocalProg(LocalIndex, n) = 0
                LocalPiece(LocalIndex, n) = GrpPiece(n)
                If ReadPicInfo Then
                    Call dbGetID(EditPic, GrpNum(n), PicID)
                    LocalPicFileName(n) = CatPicFilePath(PicID)
                End If
            Next n
                      
                
            
        Case dbCategories
            For n = 1 To LocalDbSize(LocalIndex)
                LocalNum(LocalIndex, n) = CatNum(n)
                LocalName(LocalIndex, n) = CatName(n)
                LocalLong(LocalIndex, n) = CatLong(n)
                LocalType(LocalIndex, n) = 0
                LocalColB(LocalIndex, n) = CatColB(n)
                LocalColF(LocalIndex, n) = CatColF(n)
                LocalBatch(LocalIndex, n) = 0
                LocalWash(LocalIndex, n) = CatWash(n)
                LocalDryC(LocalIndex, n) = 0
                LocalSP1(LocalIndex, n) = CatSP1(n)
                LocalSP2(LocalIndex, n) = CatSP2(n)
                LocalSP3(LocalIndex, n) = CatSP3(n)
                LocalSLine1(LocalIndex, n) = 0
                LocalSLine2(LocalIndex, n) = 0
                LocalSLine3(LocalIndex, n) = 0
                LocalSLine4(LocalIndex, n) = 0
                LocalCLine1(LocalIndex, n) = 0
                LocalCLine2(LocalIndex, n) = 0
                LocalCLine3(LocalIndex, n) = 0
                LocalCLine4(LocalIndex, n) = 0
                LocalPLine1(LocalIndex, n) = 0
                LocalPLine2(LocalIndex, n) = 0
                LocalPLine3(LocalIndex, n) = 0
                LocalPLine4(LocalIndex, n) = 0
                LocalProg(LocalIndex, n) = CatGroup(n)
                LocalPiece(LocalIndex, n) = CatPiece(n)
                If ReadPicInfo Then
                    Call dbGetID(EditPic, CatNum(n), PicID)
                    LocalPicFileName(n) = CatPicFilePath(PicID)
                End If
            Next n
            
            
        Case dbCustomers
            For n = 1 To LocalDbSize(LocalIndex)
                LocalNum(LocalIndex, n) = CusNum(n)
                LocalName(LocalIndex, n) = CusName(n)
                LocalLong(LocalIndex, n) = CusLong(n)
                LocalType(LocalIndex, n) = 0
                LocalColB(LocalIndex, n) = CusColB(n)
                LocalColF(LocalIndex, n) = CusColF(n)
                LocalBatch(LocalIndex, n) = 0
                LocalPoolCus(LocalIndex, n) = CusPool(n)
                LocalDryC(LocalIndex, n) = 0
                LocalSP1(LocalIndex, n) = 0
                LocalSP2(LocalIndex, n) = 0
                LocalSP3(LocalIndex, n) = 0
                LocalSLine1(LocalIndex, n) = 0
                LocalSLine2(LocalIndex, n) = 0
                LocalSLine3(LocalIndex, n) = 0
                LocalSLine4(LocalIndex, n) = 0
                LocalCLine1(LocalIndex, n) = 0
                LocalCLine2(LocalIndex, n) = 0
                LocalCLine3(LocalIndex, n) = 0
                LocalCLine4(LocalIndex, n) = 0
                LocalPLine1(LocalIndex, n) = 0
                LocalPLine2(LocalIndex, n) = 0
                LocalPLine3(LocalIndex, n) = 0
                LocalPLine4(LocalIndex, n) = 0
                
                LocalProg(LocalIndex, n) = 0
                LocalPiece(LocalIndex, n) = 0
                LocalLoadingProg(n) = CusLoadingProg(n)
            Next n
          
        Case Else
            For n = 1 To LocalDbSize(LocalIndex)
                LocalLong(LocalIndex, n) = 0
                LocalType(LocalIndex, n) = 0
                LocalBatch(LocalIndex, n) = 0
                LocalWash(LocalIndex, n) = 0
                LocalPoolCus(LocalIndex, n) = 0
                LocalDryC(LocalIndex, n) = 0
                LocalSP1(LocalIndex, n) = 0
                LocalSP2(LocalIndex, n) = 0
                LocalSP3(LocalIndex, n) = 0
                LocalSLine1(LocalIndex, n) = 0
                LocalSLine2(LocalIndex, n) = 0
                LocalSLine3(LocalIndex, n) = 0
                LocalSLine4(LocalIndex, n) = 0
                LocalCLine1(LocalIndex, n) = 0
                LocalCLine2(LocalIndex, n) = 0
                LocalCLine3(LocalIndex, n) = 0
                LocalCLine4(LocalIndex, n) = 0
                LocalPLine1(LocalIndex, n) = 0
                LocalPLine2(LocalIndex, n) = 0
                LocalPLine3(LocalIndex, n) = 0
                LocalPLine4(LocalIndex, n) = 0
                LocalProg(LocalIndex, n) = 0
                LocalPiece(LocalIndex, n) = 0
                If ReadPicInfo Then LocalPicFileName(n) = ""
            Next n
          
    End Select
       
    Select Case db(LocalIndex)
        
        Case dbMachineNames
            For n = 1 To LocalDbSize(LocalIndex)
                LocalNum(LocalIndex, n) = McnNum(n)
                LocalName(LocalIndex, n) = McnName(n)
                LocalColB(LocalIndex, n) = McnColB(n)
                LocalColF(LocalIndex, n) = McnColF(n)
            Next n
        
    End Select

Exit Sub
ErrorReadDatabase:
    ErrorHandler Err, "Database_frm ReadDatabase", Err.Description, True
    Resume Next
    
End Sub
Public Sub WriteDatabase(LocalIndex As Integer)
    
    On Error GoTo ErrorWriteDatabase
    
    Dim n               As Integer
    Dim m               As Integer
    Dim EmptyBagFound   As Boolean
    Dim DbSize          As Long
    Dim WritePicInfo As Boolean
    
    EmptyFound = False
    
    DbSize = LocalDbSize(LocalIndex)
    
    'Check if empty bag exists in database
    If (db(LocalIndex) = dbGroups) Then
        For n = 1 To DbSize
            If LocalNum(LocalIndex, n) = MaxGrp Then
                EmptyFound = True
            End If
        Next n
        If Not EmptyFound Then
            DbSize = (DbSize + 1)
            Call DimensionLocalData(DbSize)
            LocalNum(LocalIndex, DbSize) = MaxGrp
            LocalName(LocalIndex, DbSize) = TextWord(138)
            LocalLong(LocalIndex, DbSize) = TextWord(139)
        End If
    End If
    
    'Check if empty bag exists in database
    If (db(LocalIndex) = dbCategories) Then
        For n = 1 To DbSize
            If LocalNum(LocalIndex, n) = MaxCat Then
                EmptyFound = True
            End If
        Next n
        If Not EmptyFound Then
            DbSize = (DbSize + 1)
            Call DimensionLocalData(DbSize)
            LocalNum(LocalIndex, DbSize) = MaxCat
            LocalProg(LocalIndex, DbSize) = MaxGrp
            LocalName(LocalIndex, DbSize) = TextWord(138)
            LocalLong(LocalIndex, DbSize) = TextWord(139)
        End If
    End If
    
    'Check if empty bag exists in database
     If DbSize = 0 Then
        DbSize = (DbSize + 1)
        Call DimensionLocalData(DbSize)
        LocalNum(LocalIndex, DbSize) = 1
        LocalName(LocalIndex, DbSize) = "-"
        LocalLong(LocalIndex, DbSize) = "-"
    End If
    
    
    'Set the Status to delete
    If (db(LocalIndex) = dbCategories) Then
        Call db_uspCategoriesSetStatus("delete")
    ElseIf (db(LocalIndex) = dbGroups) Then
        Call db_uspCategoryGroupSetStatus("delete")
        If (db(2) = 0 And LocalIndex = 1) Then Call db_uspCategoriesSetStatus("delete")
    ElseIf (db(LocalIndex) = dbCustomers) Then
        Call db_uspCustomersSetStatus("delete")
    ElseIf (db(LocalIndex) = dbMachineNames) Then
        Call db_uspMachineNamesSetStatus("delete")
    End If
    
    If LocalIndex = 1 And ShowPicOpt Then
        If (db(LocalIndex) = dbCategories) Or (db(LocalIndex) = dbGroups) Then
            WritePicInfo = True
            Call db_uspCatPicSetStatus("delete")
        End If
    End If
    '' test Robin making connection to DB in advance ''''
    
    dbConnect
    
    For n = 1 To DbSize
        
        If (db(LocalIndex) = dbCategories) Then
             If (LocalNum(LocalIndex, n) <> 0) Then Call db_uspCategoryWrite(LocalNum(LocalIndex, n), LocalName(LocalIndex, n), LocalLong(LocalIndex, n), _
                                    LocalType(LocalIndex, n), LocalProg(LocalIndex, n), LocalPiece(LocalIndex, n), LocalColB(LocalIndex, n), _
                                    LocalColF(LocalIndex, n), LocalSP1(LocalIndex, n), LocalSP2(LocalIndex, n), LocalSP3(LocalIndex, n), LocalWash(LocalIndex, n), "updated", False)
        ElseIf (db(LocalIndex) = dbGroups) Then
            If (LocalNum(LocalIndex, n) <> 0) Then
                        Call db_uspCategoryGroupWrite(LocalNum(LocalIndex, n), LocalName(LocalIndex, n), LocalLong(LocalIndex, n), _
                                    LocalType(LocalIndex, n), LocalPiece(LocalIndex, n), LocalColB(LocalIndex, n), LocalColF(LocalIndex, n), _
                                    LocalBatch(LocalIndex, n), LocalWash(LocalIndex, n), LocalDryC(LocalIndex, n), LocalSP1(LocalIndex, n), _
                                    LocalSP2(LocalIndex, n), LocalSP3(LocalIndex, n), LocalSLine1(LocalIndex, n), LocalSLine2(LocalIndex, n), _
                                    LocalSLine3(LocalIndex, n), LocalSLine4(LocalIndex, n), _
                                    LocalCLine1(LocalIndex, n), LocalCLine2(LocalIndex, n), LocalCLine3(LocalIndex, n), LocalCLine4(LocalIndex, n), _
                                    LocalPLine1(LocalIndex, n), LocalPLine2(LocalIndex, n), LocalPLine3(LocalIndex, n), LocalPLine4(LocalIndex, n), _
                                    "updated", False)
                   If (db(2) = 0 And LocalIndex = 1) Then 'CatDB is not being used set all cats to equal Program code.
                        Call db_uspCategoryWrite(LocalNum(LocalIndex, n), LocalName(LocalIndex, n), LocalLong(LocalIndex, n), _
                                    LocalType(LocalIndex, n), LocalNum(LocalIndex, n), LocalPiece(LocalIndex, n), LocalColB(LocalIndex, n), _
                                    LocalColF(LocalIndex, n), LocalSP1(LocalIndex, n), LocalSP2(LocalIndex, n), LocalSP3(LocalIndex, n), LocalWash(LocalIndex, n), "updated", False)
                                    
                    End If
            End If
        ElseIf (db(LocalIndex) = dbCustomers) Then
            'If Long ID being used for entry then ensure customer has a number (used only as reference)
            If (dbSettingValueLocal(LocalIndex, DbLongEntry) <> "0") Then
                If (LocalLong(n) <> "") Then
                    If (LocalNum(LocalIndex, n) = 0) Then
                        LocalNum(LocalIndex, n) = db_uspCustomerNumCreate
                    End If
                    Call db_uspCustomerWrite(LocalNum(LocalIndex, n), LocalName(LocalIndex, n), LocalLong(LocalIndex, n), LocalColB(LocalIndex, n), _
                                            LocalColF(LocalIndex, n), LocalLoadingProg(n), LocalPoolCus(LocalIndex, n), "updated", False)
                End If
            Else
                If (LocalNum(LocalIndex, n) <> 0) Then Call db_uspCustomerWrite(LocalNum(LocalIndex, n), LocalName(LocalIndex, n), LocalLong(LocalIndex, n), _
                                            LocalColB(LocalIndex, n), LocalColF(LocalIndex, n), LocalLoadingProg(n), LocalPoolCus(LocalIndex, n), "updated", False)
            End If
            If (dbSettingValue(CusDbEnablePool) <> "0") And (n = 1) Then
                db_uspSettingSave "SettingsNetwork", "CustomerDB", "PoolCustomer", txt_PoolCusNum.Text, PCNum, False, False
            End If
        ElseIf (db(LocalIndex) = dbMachineNames) Then
            If (LocalNum(LocalIndex, n) <> 0) Then Call db_uspMachineNamesWrite(LocalNum(LocalIndex, n), LocalName(LocalIndex, n), LocalColB(LocalIndex, n), LocalColF(LocalIndex, n), "updated", False)
        End If
        If WritePicInfo Then
            If (LocalNum(LocalIndex, n) <> 0) Then Call db_uspCatPicFileWrite(LocalNum(LocalIndex, n), LocalPicFileName(n), "updated", False)
            Call db_uspCatPicDeleteWithStatus("delete", False)
         End If
                 
    Next n
       
    'Delete any entries that have been removed
    If (db(LocalIndex) = dbCategories) Then
        Call db_uspCategoriesDeleteWithStatus("delete", False)
    ElseIf (db(LocalIndex) = dbGroups) Then
        Call db_uspCategoryGroupDeleteWithStatus("delete", False)
        If (db(2) = 0 And LocalIndex = 1) Then Call db_uspCategoriesDeleteWithStatus("delete", False)
    ElseIf (db(LocalIndex) = dbCustomers) Then
        Call db_uspCustomersDeleteWithStatus("delete", False)
    ElseIf (db(LocalIndex) = dbMachineNames) Then
        Call db_uspMachineNamesDeleteWithStatus("delete", False)
    End If
    ' Testing Robin ''''''''''''''''''''''''''''''''''''''
    
    dbDisconnect
        ''--End -----------------------------------------------------------
    'Sync ACOS Db
    'If (db(LocalIndex) = dbCategories) Then Call db_usp_ORDEIP_Sync_CategoryMaster
    'If (db(LocalIndex) = dbCustomers) Then Call db_usp_ORDEIP_Sync_CustomerMaster
    
       
    'Update the Global Array - By reading the database again
    Call ReadDatabase(LocalIndex)
            
    'Write to PLC 0 new value so other PC see a change
    Data(0) = DatabaseChanged + 1
    If Data(0) > 32000 Then Data(0) = 0
    Comms_frm.WritePLC MasterPLC, "D", 65, 1, Data(), False, "DatabaseWriteDatabase"
        
        
        '''
Exit Sub
ErrorWriteDatabase:
    
    'dbDisconnect Err, "Database_frm WriteDatabase", Err.Description
    ErrorHandler Err, "Database_frm WriteDatabase", Err.Description, False
    Resume Next
End Sub

 
 
Private Sub DisplayData(LocalIndex As Integer)
           
    'Ensure Update when scrolling down
    If CurrentBox <> 0 Then Me.BoxLostFocus (CurrentBox)
       
    
    Dim n                   As Integer
    Dim CurrentTextPosn     As Integer
    Dim AddCat              As Boolean
    Dim Index               As Integer
    Dim FColour             As Long
    Dim BColour             As Long
    Dim Enab                As Boolean
    Dim PrimaryIndex        As Integer
    
      
    Const DisabledColour = vbButtonFace
     
    If Not Loaded Then Exit Sub 'Don't run until arrays have been dimensioned correctly
     
    'Find which DB primary lines should be assigned to ..
    If CatDBused = "0" Then
       PrimaryIndex = 1
    Else
       PrimaryIndex = 2
    End If
     
    '1st Database
    If (LocalIndex = 1) Then
    
        MaxScroll(LocalIndex) = LocalDbSize(LocalIndex) - 19
        Me.scrBar(LocalIndex).Max = MaxScroll(LocalIndex) 'upto 99 with 20 txt boxes
        Me.scrBar(LocalIndex).Visible = (LocalDbSize(LocalIndex) > 20)
            
        Index = 1
            
        For n = 1 To LocalDbSize(LocalIndex)
                   
            If Index <= 20 Then

                If (n >= Me.scrBar(LocalIndex).Value) Then
                    If ShowPicOpt Then
                        lblPicBox(Index) = LocalPicFileName(n)
                        lblPicBox(Index).BackColor = vbWhite
                    End If
                    
                    txtBox(OffsetNum + Index) = LocalNum(LocalIndex, n)
                    txtBox(OffsetNam + Index) = LocalName(LocalIndex, n)
                    txtBox(OffsetLng + Index) = LocalLong(LocalIndex, n)
                    txtBox(OffsetSL1 + Index) = Format$(LocalSLine1(LocalIndex, n))
                    txtBox(OffsetSL2 + Index) = Format$(LocalSLine2(LocalIndex, n))
                    txtBox(OffsetSL3 + Index) = Format$(LocalSLine3(LocalIndex, n))
                    txtBox(OffsetSL4 + Index) = Format$(LocalSLine4(LocalIndex, n))
                    txtBox(OffsetSP1 + Index) = Format$(LocalSP1(LocalIndex, n))
                    txtBox(OffsetSP2 + Index) = Format$(LocalSP2(LocalIndex, n))
                    txtBox(OffsetSP3 + Index) = Format$(LocalSP3(LocalIndex, n))
                    txtBox(OffsetCL1 + Index) = Format$(LocalCLine1(LocalIndex, n))
                    txtBox(OffsetCL2 + Index) = Format$(LocalCLine2(LocalIndex, n))
                    txtBox(OffsetCL3 + Index) = Format$(LocalCLine3(LocalIndex, n))
                    txtBox(OffsetCL4 + Index) = Format$(LocalCLine4(LocalIndex, n))
                      If dbView(LocalIndex) = dbCustomers Then
                        If LocalPoolCus(LocalIndex, n) Then
                            txtBox(OffsetBth + Index).Text = "1"
                        Else
                            txtBox(OffsetBth + Index).Text = "0"
                        End If
                    Else
                        txtBox(OffsetBth + Index) = Format$(LocalBatch(LocalIndex, n))
                        
                    End If
                    txtBox(OffsetWsh + Index) = Format$(LocalWash(LocalIndex, n))
                    
                    If PrimaryIndex = LocalIndex Then
                        txtBox(OffsetPL1 + Index) = Format$(LocalPLine1(LocalIndex, n))
                        txtBox(OffsetPL2 + Index) = Format$(LocalPLine2(LocalIndex, n))
                        txtBox(OffsetPL3 + Index) = Format$(LocalPLine3(LocalIndex, n))
                        txtBox(OffsetPL4 + Index) = Format$(LocalPLine4(LocalIndex, n))
                    End If
                    
                    If dbView(LocalIndex) = dbCustomers Then
                        txtBox(OffsetTyp + Index) = Format$(LocalLoadingProg(n))
                    Else
                        txtBox(OffsetTyp + Index) = Format$(LocalType(LocalIndex, n))
                    End If
                    txtBox(OffsetPce + Index) = Format$(LocalPiece(LocalIndex, n))
                    txtBox(OffsetGrp + Index) = Format$(LocalProg(LocalIndex, n))
                    
                    
                    txtBox(OffsetNum + Index).BackColor = vbWhite
                    txtBox(OffsetNam + Index).BackColor = vbWhite
                    txtBox(OffsetLng + Index).BackColor = vbWhite
                    txtBox(OffsetSL1 + Index).BackColor = vbWhite
                    txtBox(OffsetSL2 + Index).BackColor = vbWhite
                    txtBox(OffsetSL3 + Index).BackColor = vbWhite
                    txtBox(OffsetSL4 + Index).BackColor = vbWhite
                    txtBox(OffsetSP1 + Index).BackColor = vbWhite
                    txtBox(OffsetSP2 + Index).BackColor = vbWhite
                    txtBox(OffsetSP3 + Index).BackColor = vbWhite
                    txtBox(OffsetCL1 + Index).BackColor = vbWhite
                    txtBox(OffsetCL2 + Index).BackColor = vbWhite
                    txtBox(OffsetCL3 + Index).BackColor = vbWhite
                    txtBox(OffsetCL4 + Index).BackColor = vbWhite
                    txtBox(OffsetBth + Index).BackColor = vbWhite
                    txtBox(OffsetPce + Index).BackColor = vbWhite
                    txtBox(OffsetTyp + Index).BackColor = vbWhite
                    txtBox(OffsetWsh + Index).BackColor = vbWhite
                    txtBox(OffsetPce + Index).BackColor = vbWhite
                    txtBox(OffsetGrp + Index).BackColor = vbWhite
                    
                    If PrimaryIndex = LocalIndex Then
                        txtBox(OffsetPL1 + Index).BackColor = vbWhite
                        txtBox(OffsetPL2 + Index).BackColor = vbWhite
                        txtBox(OffsetPL3 + Index).BackColor = vbWhite
                        txtBox(OffsetPL4 + Index).BackColor = vbWhite
                    End If
                    'Group Colours - If the Group database is shown then read the local values
                    If (db(LocalIndex) = dbCategories) Then
                        If dbView(1) = dbGroups And (LocalIndex <> 1) Then
                            Call dbGetLocalID(1, LocalProg(LocalIndex, n), ID)
                            lblGroupName(Index + OffsetGrp).Text = LocalName(1, ID)
                            lblGroupName(Index + OffsetGrp).BackColor = vbWhite
                        ElseIf dbView(2) = dbGroups And (LocalIndex <> 2) Then
                            Call dbGetLocalID(2, LocalProg(LocalIndex, n), ID)
                            lblGroupName(Index + OffsetGrp).Text = LocalName(2, ID)
                            lblGroupName(Index + OffsetGrp).BackColor = vbWhite
                        Else
                            Call dbGetID(EditGrp, LocalProg(LocalIndex, n), ID)
                            lblGroupName(Index + OffsetGrp).Text = GrpName(ID)
                            lblGroupName(Index + OffsetGrp).BackColor = vbWhite
                        End If
                        Call GroupColours(Index + OffsetGrp, LocalProg(LocalIndex, n))
                        
                    End If
                                            
                    'Show Colours
                    'FColour = LocalColF(n)
                    'BColour = LocalColB(n)
                    
                    If LocalColF(LocalIndex, n) = LocalColB(LocalIndex, n) Or (dbSettingValueLocal(LocalIndex, DbUseBagColour) = "0") Then
                        LocalColF(LocalIndex, n) = txtBox(OffsetNam + Index).ForeColor
                        LocalColB(LocalIndex, n) = txtBox(OffsetNam + Index).BackColor
                    End If
                                           
                    'Long ID Boxes over number boxes when used as entry
                    If (dbSettingValueLocal(LocalIndex, DbLongEntry) <> "0") Then
                        txtBox(OffsetLng + Index).ForeColor = LocalColF(LocalIndex, n)
                        txtBox(OffsetLng + Index).BackColor = LocalColB(LocalIndex, n)
                    Else
                        txtBox(OffsetNum + Index).ForeColor = LocalColF(LocalIndex, n)
                        txtBox(OffsetNum + Index).BackColor = LocalColB(LocalIndex, n)
                    End If
                                           
                    Index = Index + 1
                
                
                
                End If
            
            End If
        
        Next n
        
        'Blank the rest of the display if not used
        Do Until Index > 20
                   
            txtBox(OffsetNum + Index) = ""
            txtBox(OffsetNam + Index) = ""
            txtBox(OffsetLng + Index) = ""
            txtBox(OffsetSL1 + Index) = ""
            txtBox(OffsetSL2 + Index) = ""
            txtBox(OffsetSL3 + Index) = ""
            txtBox(OffsetSL4 + Index) = ""
            txtBox(OffsetSP1 + Index) = ""
            txtBox(OffsetSP2 + Index) = ""
            txtBox(OffsetSP3 + Index) = ""
            txtBox(OffsetCL1 + Index) = ""
            txtBox(OffsetCL2 + Index) = ""
            txtBox(OffsetCL3 + Index) = ""
            txtBox(OffsetCL4 + Index) = ""
            txtBox(OffsetBth + Index) = ""
            txtBox(OffsetPce + Index) = ""
            txtBox(OffsetTyp + Index) = ""
            txtBox(OffsetWsh + Index) = ""
            txtBox(OffsetPce + Index) = ""
            txtBox(OffsetGrp + Index) = ""
            lblGroupName(OffsetGrp + Index) = ""
            lblPicBox(Index) = ""
            
            If PrimaryIndex = LocalIndex Then
                txtBox(OffsetPL1 + Index) = ""
                txtBox(OffsetPL2 + Index) = ""
                txtBox(OffsetPL3 + Index) = ""
                txtBox(OffsetPL4 + Index) = ""
            End If
            
            txtBox(OffsetNum + Index).BackColor = DisabledColour
            txtBox(OffsetNam + Index).BackColor = DisabledColour
            txtBox(OffsetLng + Index).BackColor = DisabledColour
            txtBox(OffsetSL1 + Index).BackColor = DisabledColour
            txtBox(OffsetSL2 + Index).BackColor = DisabledColour
            txtBox(OffsetSL3 + Index).BackColor = DisabledColour
            txtBox(OffsetSL4 + Index).BackColor = DisabledColour
            txtBox(OffsetSP1 + Index).BackColor = DisabledColour
            txtBox(OffsetSP2 + Index).BackColor = DisabledColour
            txtBox(OffsetSP3 + Index).BackColor = DisabledColour
            txtBox(OffsetCL1 + Index).BackColor = DisabledColour
            txtBox(OffsetCL2 + Index).BackColor = DisabledColour
            txtBox(OffsetCL3 + Index).BackColor = DisabledColour
            txtBox(OffsetCL4 + Index).BackColor = DisabledColour
            txtBox(OffsetBth + Index).BackColor = DisabledColour
            txtBox(OffsetPce + Index).BackColor = DisabledColour
            txtBox(OffsetTyp + Index).BackColor = DisabledColour
            txtBox(OffsetWsh + Index).BackColor = DisabledColour
            txtBox(OffsetPce + Index).BackColor = DisabledColour
            txtBox(OffsetGrp + Index).BackColor = DisabledColour
            
            If PrimaryIndex = LocalIndex Then
                txtBox(OffsetPL1 + Index).BackColor = DisabledColour
                txtBox(OffsetPL2 + Index).BackColor = DisabledColour
                txtBox(OffsetPL3 + Index).BackColor = DisabledColour
                txtBox(OffsetPL4 + Index).BackColor = DisabledColour
            End If
            
            lblGroupName(OffsetGrp + Index).BackColor = DisabledColour
            lblPicBox(Index).BackColor = DisabledColour
            Index = Index + 1
            
        Loop
           
        'Enable / Disable boxes depending if used
        For Index = 1 To 20
            Enab = (Index <= LocalDbSize(LocalIndex))
        
            
            txtBox(OffsetNum + Index).Enabled = Enab
            txtBox(OffsetNam + Index).Enabled = Enab
            txtBox(OffsetLng + Index).Enabled = Enab
            txtBox(OffsetSL1 + Index).Enabled = Enab
            txtBox(OffsetSL2 + Index).Enabled = Enab
            txtBox(OffsetSL3 + Index).Enabled = Enab
            txtBox(OffsetSL4 + Index).Enabled = Enab
            txtBox(OffsetSP1 + Index).Enabled = Enab
            txtBox(OffsetSP2 + Index).Enabled = Enab
            txtBox(OffsetSP3 + Index).Enabled = Enab
            txtBox(OffsetCL1 + Index).Enabled = Enab
            txtBox(OffsetCL2 + Index).Enabled = Enab
            txtBox(OffsetCL3 + Index).Enabled = Enab
            txtBox(OffsetCL4 + Index).Enabled = Enab
            txtBox(OffsetBth + Index).Enabled = Enab
            txtBox(OffsetPce + Index).Enabled = Enab
            txtBox(OffsetTyp + Index).Enabled = Enab
            txtBox(OffsetWsh + Index).Enabled = Enab
            txtBox(OffsetPce + Index).Enabled = Enab
            txtBox(OffsetGrp + Index).Enabled = Enab
            lblGroupName(OffsetGrp + Index).Enabled = Enab
            lblPicBox(Index).Enabled = Enab
            If PrimaryIndex = LocalIndex Then
                txtBox(OffsetPL1 + Index).Enabled = Enab
                txtBox(OffsetPL2 + Index).Enabled = Enab
                txtBox(OffsetPL3 + Index).Enabled = Enab
                txtBox(OffsetPL4 + Index).Enabled = Enab
            End If
        Next Index
        
        Call HighlightRow(LocalIndex, SelectIndex(LocalIndex))
    
    End If
    
    '2nd Database
    If (LocalIndex = 2) Then
        MaxScroll(LocalIndex) = LocalDbSize(LocalIndex) - 19
        Me.scrBar(LocalIndex).Max = MaxScroll(LocalIndex) 'upto 99 with 20 txt boxes
        Me.scrBar(LocalIndex).Visible = (LocalDbSize(LocalIndex) > 20)
            
        Index = 1
            
        For n = 1 To LocalDbSize(LocalIndex)
                   
            If Index <= 20 Then
                
                If (n >= Me.scrBar(LocalIndex).Value) Then
                                   
                    txtBox(Offset2Num + Index) = LocalNum(LocalIndex, n)
                    txtBox(Offset2Nam + Index) = LocalName(LocalIndex, n)
                    txtBox(Offset2Lng + Index) = LocalLong(LocalIndex, n)
                    txtBox(Offset2SL1 + Index) = Format$(LocalSLine1(LocalIndex, n))
                    txtBox(Offset2SL2 + Index) = Format$(LocalSLine2(LocalIndex, n))
                    txtBox(Offset2SL3 + Index) = Format$(LocalSLine3(LocalIndex, n))
                    txtBox(Offset2SL4 + Index) = Format$(LocalSLine4(LocalIndex, n))
                    txtBox(Offset2SP1 + Index) = Format$(LocalSP1(LocalIndex, n))
                    txtBox(Offset2SP2 + Index) = Format$(LocalSP2(LocalIndex, n))
                    txtBox(Offset2SP3 + Index) = Format$(LocalSP3(LocalIndex, n))
                    txtBox(Offset2CL1 + Index) = Format$(LocalCLine1(LocalIndex, n))
                    txtBox(Offset2CL2 + Index) = Format$(LocalCLine2(LocalIndex, n))
                    txtBox(Offset2CL3 + Index) = Format$(LocalCLine3(LocalIndex, n))
                    txtBox(Offset2CL4 + Index) = Format$(LocalCLine4(LocalIndex, n))
                    txtBox(Offset2Bth + Index) = Format$(LocalBatch(LocalIndex, n))
                    txtBox(Offset2Wsh + Index) = Format$(LocalWash(LocalIndex, n))
                    txtBox(Offset2Typ + Index) = Format$(LocalType(LocalIndex, n))
                    txtBox(Offset2Pce + Index) = Format$(LocalPiece(LocalIndex, n))
                    txtBox(Offset2Grp + Index) = Format$(LocalProg(LocalIndex, n))
                    If PrimaryIndex = LocalIndex Then
                        txtBox(OffsetPL1 + Index) = Format$(LocalPLine1(LocalIndex, n))
                        txtBox(OffsetPL2 + Index) = Format$(LocalPLine2(LocalIndex, n))
                        txtBox(OffsetPL3 + Index) = Format$(LocalPLine3(LocalIndex, n))
                        txtBox(OffsetPL4 + Index) = Format$(LocalPLine4(LocalIndex, n))
                    End If
                    txtBox(Offset2Num + Index).BackColor = vbWhite
                    txtBox(Offset2Nam + Index).BackColor = vbWhite
                    txtBox(Offset2Lng + Index).BackColor = vbWhite
                    txtBox(Offset2SL1 + Index).BackColor = vbWhite
                    txtBox(Offset2SL2 + Index).BackColor = vbWhite
                    txtBox(Offset2SL3 + Index).BackColor = vbWhite
                    txtBox(Offset2SL4 + Index).BackColor = vbWhite
                    txtBox(Offset2SP1 + Index).BackColor = vbWhite
                    txtBox(Offset2SP2 + Index).BackColor = vbWhite
                    txtBox(Offset2SP3 + Index).BackColor = vbWhite
                    txtBox(Offset2CL1 + Index).BackColor = vbWhite
                    txtBox(Offset2CL2 + Index).BackColor = vbWhite
                    txtBox(Offset2CL3 + Index).BackColor = vbWhite
                    txtBox(Offset2CL4 + Index).BackColor = vbWhite
                    txtBox(Offset2Bth + Index).BackColor = vbWhite
                    txtBox(Offset2Pce + Index).BackColor = vbWhite
                    txtBox(Offset2Typ + Index).BackColor = vbWhite
                    txtBox(Offset2Wsh + Index).BackColor = vbWhite
                    txtBox(Offset2Pce + Index).BackColor = vbWhite
                    txtBox(Offset2Grp + Index).BackColor = vbWhite
                    If PrimaryIndex = LocalIndex Then
                        txtBox(OffsetPL1 + Index).BackColor = vbWhite
                        txtBox(OffsetPL2 + Index).BackColor = vbWhite
                        txtBox(OffsetPL3 + Index).BackColor = vbWhite
                        txtBox(OffsetPL4 + Index).BackColor = vbWhite
                    End If
                    'Group Colours
'                    If (db(LocalIndex) = dbCategories) Then
'                        Call dbGetLocalID(LocalIndex, LocalProg(LocalIndex, n), ID)
'                        lblGroupName(Index + Offset2Grp).Text = LocalName(LocalIndex, ID)
'                        lblGroupName(Index + Offset2Grp).BackColor = vbWhite
'                        Call GroupColours(Index + Offset2Grp, LocalProg(LocalIndex, n))
'                    End If
                                            
                    'Group Colours - If the Group database is shown then read the local values
                    If (db(LocalIndex) = dbCategories) Then
                        If dbView(1) = dbGroups And (LocalIndex <> 1) Then
                            Call dbGetLocalID(1, LocalProg(1, n), ID)
                            lblGroupName(Index + Offset2Grp).Text = LocalName(1, ID)
                            lblGroupName(Index + Offset2Grp).BackColor = vbWhite
                        ElseIf dbView(2) = dbGroups And (LocalIndex <> 2) Then
                            Call dbGetLocalID(2, LocalProg(2, n), ID)
                            lblGroupName(Index + Offset2Grp).Text = LocalName(2, ID)
                            lblGroupName(Index + Offset2Grp).BackColor = vbWhite
                        Else
                            Call dbGetID(EditGrp, LocalProg(LocalIndex, n), ID)
                            lblGroupName(Index + Offset2Grp).Text = GrpName(ID)
                            lblGroupName(Index + Offset2Grp).BackColor = vbWhite
                        End If
                        Call GroupColours(Index + Offset2Grp, LocalProg(LocalIndex, n))
                        
                    End If
                                            
                    'Show Colours
                    'FColour = LocalColF(n)
                    'BColour = LocalColB(n)
                    
                    If LocalColF(LocalIndex, n) = LocalColB(LocalIndex, n) Or (dbSettingValueLocal(LocalIndex, DbUseBagColour) = "0") Then
                        LocalColF(LocalIndex, n) = txtBox(Offset2Nam + Index).ForeColor
                        LocalColB(LocalIndex, n) = txtBox(Offset2Nam + Index).BackColor
                    End If
                                           
                    'Long ID Boxes over number boxes when used as entry
                    If (dbSettingValueLocal(LocalIndex, DbLongEntry) <> "0") Then
                        txtBox(Offset2Lng + Index).ForeColor = LocalColF(LocalIndex, n)
                        txtBox(Offset2Lng + Index).BackColor = LocalColB(LocalIndex, n)
                    Else
                        txtBox(Offset2Num + Index).ForeColor = LocalColF(LocalIndex, n)
                        txtBox(Offset2Num + Index).BackColor = LocalColB(LocalIndex, n)
                    End If
                                          

                                          
                                          
                    Index = Index + 1
                
                
                
                End If
            
            End If
        
        Next n
        
        'Blank the rest of the display if not used
        Do Until Index > 20
                   
            txtBox(Offset2Num + Index) = ""
            txtBox(Offset2Nam + Index) = ""
            txtBox(Offset2Lng + Index) = ""
            txtBox(Offset2SL1 + Index) = ""
            txtBox(Offset2SL2 + Index) = ""
            txtBox(Offset2SL3 + Index) = ""
            txtBox(Offset2SL4 + Index) = ""
            txtBox(Offset2SP1 + Index) = ""
            txtBox(Offset2SP2 + Index) = ""
            txtBox(Offset2SP3 + Index) = ""
            txtBox(Offset2CL1 + Index) = ""
            txtBox(Offset2CL2 + Index) = ""
            txtBox(Offset2CL3 + Index) = ""
            txtBox(Offset2CL4 + Index) = ""
            txtBox(Offset2Bth + Index) = ""
            txtBox(Offset2Pce + Index) = ""
            txtBox(Offset2Typ + Index) = ""
            txtBox(Offset2Wsh + Index) = ""
            txtBox(Offset2Pce + Index) = ""
            txtBox(Offset2Grp + Index) = ""
            lblGroupName(Offset2Grp + Index) = ""
            If PrimaryIndex = LocalIndex Then
                txtBox(OffsetPL1 + Index) = ""
                txtBox(OffsetPL2 + Index) = ""
                txtBox(OffsetPL3 + Index) = ""
                txtBox(OffsetPL4 + Index) = ""
            End If
            'lblPicBox(Index) = ""
                    
            txtBox(Offset2Num + Index).BackColor = DisabledColour
            txtBox(Offset2Nam + Index).BackColor = DisabledColour
            txtBox(Offset2Lng + Index).BackColor = DisabledColour
            txtBox(Offset2SL1 + Index).BackColor = DisabledColour
            txtBox(Offset2SL2 + Index).BackColor = DisabledColour
            txtBox(Offset2SL3 + Index).BackColor = DisabledColour
            txtBox(Offset2SL4 + Index).BackColor = DisabledColour
            txtBox(Offset2SP1 + Index).BackColor = DisabledColour
            txtBox(Offset2SP2 + Index).BackColor = DisabledColour
            txtBox(Offset2SP3 + Index).BackColor = DisabledColour
            txtBox(Offset2CL1 + Index).BackColor = DisabledColour
            txtBox(Offset2CL2 + Index).BackColor = DisabledColour
            txtBox(Offset2CL3 + Index).BackColor = DisabledColour
            txtBox(Offset2CL4 + Index).BackColor = DisabledColour
            
            If PrimaryIndex = LocalIndex Then
                txtBox(OffsetPL1 + Index).BackColor = DisabledColour
                txtBox(OffsetPL2 + Index).BackColor = DisabledColour
                txtBox(OffsetPL3 + Index).BackColor = DisabledColour
                txtBox(OffsetPL4 + Index).BackColor = DisabledColour
            End If
            
            txtBox(Offset2Bth + Index).BackColor = DisabledColour
            txtBox(Offset2Pce + Index).BackColor = DisabledColour
            txtBox(Offset2Typ + Index).BackColor = DisabledColour
            txtBox(Offset2Wsh + Index).BackColor = DisabledColour
            txtBox(Offset2Pce + Index).BackColor = DisabledColour
            txtBox(Offset2Grp + Index).BackColor = DisabledColour
            lblGroupName(Offset2Grp + Index).BackColor = DisabledColour
            
            Index = Index + 1
            
        Loop
           
        'Enable / Disable boxes depending if used
        For Index = 1 To 20
            Enab = (Index <= LocalDbSize(LocalIndex))
            txtBox(Offset2Num + Index).Enabled = Enab
            txtBox(Offset2Nam + Index).Enabled = Enab
            txtBox(Offset2Lng + Index).Enabled = Enab
            txtBox(Offset2SL1 + Index).Enabled = Enab
            txtBox(Offset2SL2 + Index).Enabled = Enab
            txtBox(Offset2SL3 + Index).Enabled = Enab
            txtBox(Offset2SL4 + Index).Enabled = Enab
            txtBox(Offset2SP1 + Index).Enabled = Enab
            txtBox(Offset2SP2 + Index).Enabled = Enab
            txtBox(Offset2SP3 + Index).Enabled = Enab
            txtBox(Offset2CL1 + Index).Enabled = Enab
            txtBox(Offset2CL2 + Index).Enabled = Enab
            txtBox(Offset2CL3 + Index).Enabled = Enab
            txtBox(Offset2CL4 + Index).Enabled = Enab
            txtBox(Offset2Bth + Index).Enabled = Enab
            txtBox(Offset2Pce + Index).Enabled = Enab
            txtBox(Offset2Typ + Index).Enabled = Enab
            txtBox(Offset2Wsh + Index).Enabled = Enab
            txtBox(Offset2Pce + Index).Enabled = Enab
            txtBox(Offset2Grp + Index).Enabled = Enab
            If PrimaryIndex = LocalIndex Then
                txtBox(OffsetPL1 + Index).Enabled = Enab
                txtBox(OffsetPL2 + Index).Enabled = Enab
                txtBox(OffsetPL3 + Index).Enabled = Enab
                txtBox(OffsetPL4 + Index).Enabled = Enab
            End If
            lblGroupName(Offset2Grp + Index).Enabled = Enab
        Next Index
        
        Call HighlightRow(LocalIndex, SelectIndex(LocalIndex))
    
    End If
    
End Sub


Private Sub Form_LostFocus()
    Me.ZOrder vbBringToFront
End Sub

Private Sub ImageCombo1_Click()
    Dim OffSet As Integer
    OffSet = (scrBar(1).Value - 1)
    If PicIndex > 0 Then
        lblPicBox(PicIndex) = ImageCombo1.SelectedItem.Key
        LocalPicFileName(PicIndex + OffSet) = ImageCombo1.SelectedItem.Key
    End If
    ImageCombo1.Visible = False
End Sub

Private Sub ImageCombo1_LostFocus()
    ImageCombo1.Visible = False
End Sub

Private Sub lblBox_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub

Private Sub lblCusPoolName_Change()
    'txt_PoolCusNum.Text dbget
End Sub

Private Sub lblCusPoolName_Click()
    With cmbCusName
        .Top = lblCusPoolName.Top
        .Left = lblCusPoolName.Left
        .Visible = True
        .SetFocus
        .ZOrder vbBringToFront
    End With
    
End Sub

Private Sub lblHeaderName_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub lblHeaderNum_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub lblNameTitle_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub lblGroupName_Click(Index As Integer)
    With cmbGroupName
        .Top = lblGroupName(Index).Top
        .Left = lblGroupName(Index).Left
        .Visible = True
        .SetFocus
        .ZOrder vbBringToFront
    End With
    cmbGrpPosition = Index
End Sub

Private Sub lblGroupName_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub

Private Sub lblPicName_Change(Index As Integer)

End Sub

Private Sub lblPicBox_Click(Index As Integer)
On Error Resume Next

    With ImageCombo1
        .SelectedItem = .ComboItems(1)
        If lblPicBox(Index).Caption <> "" Then
            .SelectedItem = .ComboItems(lblPicBox(Index).Caption)
        End If
        .Top = lblPicBox(Index).Top
        .Left = lblPicBox(Index).Left
        .Visible = True
        .SetFocus
        .ZOrder vbBringToFront
        .Locked = True
    End With
    PicIndex = Index
End Sub

Private Sub scrBar_Change(Index As Integer)
    Call DisplayData(Index)
End Sub

Public Function BoxKeyDown(BoxIndex As Integer, KeyCode As Integer)
    
    Dim Index       As Integer
    Dim NextBox     As Integer
    Dim LocalIndex  As Integer
    
    'Stop double backspace
    'If KeyCode = 8 Then Exit Function
    
    LocalIndex = FindLocalIndex(BoxIndex)
        
    'Get 1 to 20 for index
    Index = Val(Right$(Format$(BoxIndex), 2))
        
    'Cursor Actions
    Select Case KeyCode
    
        Case vbKeyDown
            If Index < 20 Then
                If txtBox(BoxIndex + 1).Enabled Then txtBox(BoxIndex + 1).SetFocus
            ElseIf scrBar(LocalIndex).Value < MaxScroll(LocalIndex) Then
                scrBar(LocalIndex).Value = scrBar(LocalIndex).Value + 1
                DisplayData (LocalIndex)
            End If
                 
        Case vbKeyUp
            If Index > 1 Then
                txtBox(BoxIndex - 1).SetFocus
            ElseIf scrBar(LocalIndex).Value > 1 Then
                scrBar(LocalIndex).Value = scrBar(LocalIndex).Value - 1
                DisplayData (LocalIndex)
            End If
                   
        Case vbKeyRight
NextRightBox:
            If BoxIndex < 4300 Then
                BoxIndex = BoxIndex + 100
                If (BoxIndex >= OffsetSkip2000) And (BoxIndex <= OffsetSkip2000 + 20) Then
                    BoxIndex = BoxIndex + 100
                End If
                If Not txtBox(BoxIndex).Visible Or Not txtBox(BoxIndex).Enabled Then GoTo NextRightBox
                txtBox(BoxIndex).SetFocus
            End If
                       
        Case vbKeyLeft
NextLeftBox:
            If BoxIndex > 200 Then
                BoxIndex = BoxIndex - 100
                If (BoxIndex >= OffsetSkip2000) And (BoxIndex <= OffsetSkip2000 + 20) Then
                    BoxIndex = BoxIndex - 100
                End If
                If Not txtBox(BoxIndex).Visible Or Not txtBox(BoxIndex).Enabled Then GoTo NextLeftBox
                txtBox(BoxIndex).SetFocus
            End If
            
        Case vbKeyDelete
            If DeleteEnabled Then
                'Do Nothing
            Else
                'KeyCode = 0
            End If
            'Don't Allow Number to be deleted
            If BoxIndex < 200 Then KeyCode = 0
            
        Case vbKeyBack
            If txtBox(BoxIndex).SelStart > 0 And txtBox(BoxIndex).SelLength = 0 Then
                txtBox(BoxIndex).SelStart = txtBox(BoxIndex).SelStart - 1
                KeyCode = vbKeyDelete
            End If
        Case Else
            'Do Nothing
            
    End Select
    
    BoxKeyDown = KeyCode

    
End Function
Public Function BoxKeyPress(BoxIndex As Integer, KeyAscii As Integer)
    
    Dim Text            As String
    Dim Min             As Integer
    Dim Limit           As Long
    Dim CompareString   As String
    Dim StringLength    As Integer
    Dim AnyChr          As Boolean
     
    Dim LocalIndex      As Integer
     
    LocalIndex = FindLocalIndex(BoxIndex)
     
    Text = txtBox(BoxIndex).Text
    
    'Set default compare values
    StringLength = 255
    Min = 0
    Limit = 32767
    CompareString = Numeric
    AnyChr = False
    
    '1St Database
    If LocalIndex = 1 Then
    
        Select Case BoxIndex
            
            
            
            Case OffsetNum To (OffsetNum + 20)
                Limit = MaxNum(LocalIndex)
                CompareString = Numeric
                'CompareString = "" 'Not Allowed to change the number
            Case OffsetNam To (OffsetNam + 20)
                StringLength = dbMaxNameChar
                AnyChr = True
            Case OffsetLng To (OffsetLng + 20)
                Select Case dbSettingValueLocal(LocalIndex, DbLongCharAllow)
                    Case "0" 'Numeric Only
                        CompareString = Numeric
                    Case "1" 'Alpha Only
                        CompareString = Alpha
                    Case "2" 'AlphaNumeric
                        CompareString = AlphaNumeric
                End Select
                StringLength = Val(dbSettingValueLocal(LocalIndex, DbLongIDMax))
            Case OffsetSL1 To (OffsetSL4 + 20)
                If UseStorageAreas Then
                    If StorageAreaMax(0) = 0 Then
                        Limit = 8
                    Else
                        Limit = StorageAreaMax(0)
                    End If
                Else
                    Limit = PLCMaxLines(0)
                End If
            Case OffsetSP1 To (OffsetSP3 + 20)
                Limit = MaxWeight
            Case OffsetCL1 To (OffsetCL4 + 20)
                If UseStorageAreas Then
                    If StorageAreaMax(1) = 0 Then
                        Limit = 8
                    Else
                        Limit = StorageAreaMax(1)
                    End If
                Else
                    Limit = PLCMaxLines(1)
                End If
            Case OffsetBth To (OffsetBth + 20)
                If dbView(LocalIndex) = dbCustomers Then
                    Limit = 1 ' IS POOL Field
                Else
                    Limit = MaxBatch
                End If
            Case OffsetTyp To (OffsetTyp + 20)
                Limit = MaxType
            Case OffsetPce To (OffsetPce + 20)
                Limit = 9999
            Case OffsetWsh To (OffsetWsh + 20)
                Limit = Washcode_Max_Value
            Case OffsetGrp To (OffsetGrp + 20)
                Limit = MaxGrp
                CompareString = Numeric
            Case OffsetPL1 To (OffsetPL4 + 20)
              If UseStorageAreas Then
                  If StorageAreaMax(2) = 0 Then
                      Limit = 8
                  Else
                      Limit = StorageAreaMax(2)
                  End If
              Else
                  Limit = PLCMaxLines(2)
              End If
        End Select
    End If
    
    '2nd Database
    If LocalIndex = 2 Then
                
        Select Case BoxIndex
        
            Case Offset2Num To (Offset2Num + 20)
                Limit = MaxNum(LocalIndex)
                CompareString = Numeric
                'CompareString = "" 'Not Allowed to change the number
            Case Offset2Nam To (Offset2Nam + 20)
                StringLength = dbMaxNameChar
                AnyChr = True
            Case Offset2Lng To (Offset2Lng + 20)
                Select Case dbSettingValueLocal(LocalIndex, DbLongCharAllow)
                    Case "0" 'Numeric Only
                        CompareString = Numeric
                    Case "1" 'Alpha Only
                        CompareString = Alpha
                    Case "2" 'AlphaNumeric
                        CompareString = AlphaNumeric
                End Select
                StringLength = Val(dbSettingValueLocal(LocalIndex, DbLongIDMax))
            Case Offset2SL1 To (Offset2SL4 + 20)
                If UseStorageAreas Then
                    If StorageAreaMax(0) = 0 Then
                        Limit = 8
                    Else
                        Limit = StorageAreaMax(0)
                    End If
                Else
                    Limit = PLCMaxLines(0)
                End If
            Case Offset2SP1 To (Offset2SP3 + 20)
                Limit = MaxWeight
            Case Offset2CL1 To (Offset2CL4 + 20)
                If UseStorageAreas Then
                    If StorageAreaMax(1) = 0 Then
                        Limit = 8
                    Else
                        Limit = StorageAreaMax(1)
                    End If
                Else
                    Limit = PLCMaxLines(1)
                End If
            Case Offset2Bth To (Offset2Bth + 20)
                Limit = MaxBatch
            Case Offset2Typ To (Offset2Typ + 20)
                Limit = MaxType
            Case Offset2Pce To (Offset2Pce + 20)
                Limit = 9999
            Case Offset2Wsh To (Offset2Wsh + 20)
                Limit = Washcode_Max_Value
            Case Offset2Grp To (Offset2Grp + 20)
                Limit = MaxGrp
                CompareString = Numeric
            Case OffsetPL1 To (OffsetPL4 + 20)
                If UseStorageAreas Then
                    If StorageAreaMax(2) = 0 Then
                        Limit = 8
                    Else
                        Limit = StorageAreaMax(2)
                    End If
                Else
                    Limit = PLCMaxLines(2)
                End If
            
            
        End Select
    
    End If
    
    If Not AnyChr And (InStr(CompareString, Chr(KeyAscii)) = 0) Then KeyAscii = 0
        
    'Workout what the text will be when the new chr is entered
    Dim TxtLen As Integer
    Dim TxtNow As String
    Dim TxtNew As String
    Dim SelStart As Integer
    Dim SelLength As Integer
    Dim LeftTxt As String
    Dim RightTxt As String
    
    
    TxtLen = Len(txtBox(BoxIndex).Text)
    TxtNow = txtBox(BoxIndex).Text
    SelStart = txtBox(BoxIndex).SelStart
    SelLength = txtBox(BoxIndex).SelLength
    
    LeftTxt = Left$(TxtNow, SelStart)
    RightTxt = Right$(TxtNow, TxtLen - (SelStart + SelLength))
    
    TxtNew = LeftTxt & Chr(KeyAscii) & RightTxt
    
    If Val(TxtNew) > Limit Then KeyAscii = 0
    If Len(TxtNew) > StringLength Then KeyAscii = 0
      
    BoxKeyPress = KeyAscii
      
End Function
Public Sub BoxLostFocus(BoxIndex As Integer)
    
    On Error GoTo BoxLostFocusError
    
    Dim Index   As Integer
    Dim n       As Integer
    Dim BoxText As String
        
    Dim LocalIndex As Integer
        
    LocalIndex = FindLocalIndex(BoxIndex)
        
    'Get 1 to 20 for index
    Index = Val(Right$(Format$(BoxIndex), 2))
    
    'n = Index 'Val(txtBox(100 + Index))
    n = Val(Index + (Me.scrBar(LocalIndex).Value - 1))
    
    BoxText = txtBox(BoxIndex).Text
    
    If LocalIndex = 1 Then
    
        Select Case BoxIndex
                   
            Case OffsetNum To (OffsetNum + 20)
                LocalNum(LocalIndex, n) = Val(BoxText)
            Case OffsetNam To (OffsetNam + 20)
                LocalName(LocalIndex, n) = BoxText
            Case OffsetLng To (OffsetLng + 20)
                LocalLong(LocalIndex, n) = BoxText
            Case OffsetSL1 To (OffsetSL1 + 20)
                If Val(BoxText) < MinSoiledLine1 Then BoxText = ""
                If Val(BoxText) > MaxSoiledLine1 Then BoxText = ""
                txtBox(BoxIndex).Text = BoxText
                LocalSLine1(LocalIndex, n) = Val(BoxText)
            Case OffsetSL2 To (OffsetSL2 + 20)
                If Val(BoxText) < MinSoiledLine2 Then BoxText = ""
                If Val(BoxText) > MaxSoiledLine2 Then BoxText = ""
                txtBox(BoxIndex).Text = BoxText
                LocalSLine2(LocalIndex, n) = Val(BoxText)
            Case OffsetSL3 To (OffsetSL3 + 20)
                If Val(BoxText) < MinSoiledLine3 Then BoxText = ""
                If Val(BoxText) > MaxSoiledLine3 Then BoxText = ""
                txtBox(BoxIndex).Text = BoxText
                LocalSLine3(LocalIndex, n) = Val(BoxText)
            Case OffsetSL4 To (OffsetSL4 + 20)
                If Val(BoxText) < MinSoiledLine4 Then BoxText = ""
                If Val(BoxText) > MaxSoiledLine4 Then BoxText = ""
                txtBox(BoxIndex).Text = BoxText
                LocalSLine4(LocalIndex, n) = Val(BoxText)
            Case OffsetSP1 To (OffsetSP1 + 20)
                LocalSP1(LocalIndex, n) = Val(BoxText)
            Case OffsetSP2 To (OffsetSP2 + 20)
                LocalSP2(LocalIndex, n) = Val(BoxText)
            Case OffsetSP3 To (OffsetSP3 + 20)
                LocalSP3(LocalIndex, n) = Val(BoxText)
            Case OffsetCL1 To (OffsetCL1 + 20)
                LocalCLine1(LocalIndex, n) = Val(BoxText)
            Case OffsetCL2 To (OffsetCL2 + 20)
                LocalCLine2(LocalIndex, n) = Val(BoxText)
            Case OffsetCL3 To (OffsetCL3 + 20)
                LocalCLine3(LocalIndex, n) = Val(BoxText)
            Case OffsetCL4 To (OffsetCL4 + 20)
                LocalCLine4(LocalIndex, n) = Val(BoxText)
            Case OffsetBth To (OffsetBth + 20)
                If dbView(LocalIndex) = dbCustomers Then
                    LocalPoolCus(LocalIndex, n) = Val(BoxText)
                Else
                    LocalBatch(LocalIndex, n) = Val(BoxText)
                End If
                
            Case OffsetTyp To (OffsetTyp + 20)
                LocalType(LocalIndex, n) = Val(BoxText)
            Case OffsetPce To (OffsetPce + 20)
                LocalPiece(LocalIndex, n) = Val(BoxText)
            Case OffsetWsh To (OffsetWsh + 20)
                LocalWash(LocalIndex, n) = Val(BoxText)
            Case OffsetGrp To (OffsetGrp + 20)
                LocalProg(LocalIndex, n) = Val(BoxText)
            Case OffsetPL1 To (OffsetPL1 + 20)
                LocalPLine1(LocalIndex, n) = Val(BoxText)
            Case OffsetPL2 To (OffsetPL2 + 20)
                LocalPLine2(LocalIndex, n) = Val(BoxText)
            Case OffsetPL3 To (LocalIndex + 20)
                LocalPLine3(LocalIndex, n) = Val(BoxText)
            Case OffsetPL4 To (OffsetPL4 + 20)
                LocalPLine4(LocalIndex, n) = Val(BoxText)
        End Select
    
    End If
    
    If LocalIndex = 2 Then
        Select Case BoxIndex
                   
            Case Offset2Num To (Offset2Num + 20)
                LocalNum(LocalIndex, n) = Val(BoxText)
            Case Offset2Nam To (Offset2Nam + 20)
                LocalName(LocalIndex, n) = BoxText
            Case Offset2Lng To (Offset2Lng + 20)
                LocalLong(LocalIndex, n) = BoxText
            Case Offset2SL1 To (Offset2SL1 + 20)
                If Val(BoxText) < MinSoiledLine1 Then BoxText = ""
                If Val(BoxText) > MaxSoiledLine1 Then BoxText = ""
                txtBox(BoxIndex).Text = BoxText
                LocalSLine1(LocalIndex, n) = Val(BoxText)
            Case Offset2SL2 To (Offset2SL2 + 20)
                If Val(BoxText) < MinSoiledLine2 Then BoxText = ""
                If Val(BoxText) > MaxSoiledLine2 Then BoxText = ""
                txtBox(BoxIndex).Text = BoxText
                LocalSLine2(LocalIndex, n) = Val(BoxText)
            Case Offset2SL3 To (Offset2SL3 + 20)
                If Val(BoxText) < MinSoiledLine3 Then BoxText = ""
                If Val(BoxText) > MaxSoiledLine3 Then BoxText = ""
                txtBox(BoxIndex).Text = BoxText
                LocalSLine3(LocalIndex, n) = Val(BoxText)
            Case Offset2SL4 To (Offset2SL4 + 20)
                If Val(BoxText) < MinSoiledLine4 Then BoxText = ""
                If Val(BoxText) > MaxSoiledLine4 Then BoxText = ""
                txtBox(BoxIndex).Text = BoxText
                LocalSLine4(LocalIndex, n) = Val(BoxText)
            Case Offset2SP1 To (Offset2SP1 + 20)
                LocalSP1(LocalIndex, n) = Val(BoxText)
            Case Offset2SP2 To (Offset2SP2 + 20)
                LocalSP2(LocalIndex, n) = Val(BoxText)
            Case Offset2SP3 To (Offset2SP3 + 20)
                LocalSP3(LocalIndex, n) = Val(BoxText)
            Case Offset2CL1 To (Offset2CL1 + 20)
                LocalCLine1(LocalIndex, n) = Val(BoxText)
            Case Offset2CL2 To (Offset2CL2 + 20)
                LocalCLine2(LocalIndex, n) = Val(BoxText)
            Case Offset2CL3 To (Offset2CL3 + 20)
                LocalCLine3(LocalIndex, n) = Val(BoxText)
            Case Offset2CL4 To (Offset2CL4 + 20)
                LocalCLine4(LocalIndex, n) = Val(BoxText)
            Case Offset2Bth To (Offset2Bth + 20)
                LocalBatch(LocalIndex, n) = Val(BoxText)
            Case Offset2Typ To (Offset2Typ + 20)
                LocalType(LocalIndex, n) = Val(BoxText)
            Case Offset2Pce To (Offset2Pce + 20)
                LocalPiece(LocalIndex, n) = Val(BoxText)
            Case Offset2Wsh To (Offset2Wsh + 20)
                LocalWash(LocalIndex, n) = Val(BoxText)
            Case Offset2Grp To (Offset2Grp + 20)
                LocalProg(LocalIndex, n) = Val(BoxText)
            Case OffsetPL1 To (OffsetPL1 + 20)
                LocalPLine1(LocalIndex, n) = Val(BoxText)
            Case OffsetPL2 To (OffsetPL2 + 20)
                LocalPLine2(LocalIndex, n) = Val(BoxText)
            Case OffsetPL3 To (OffsetPL3 + 20)
                LocalPLine3(LocalIndex, n) = Val(BoxText)
            Case OffsetPL4 To (OffsetPL4 + 20)
                LocalPLine4(LocalIndex, n) = Val(BoxText)
        End Select
    
    End If
    
    'Group Database has colour or name changed then update category if displayed
    If Displayed Then
        If ((BoxIndex >= OffsetNam) And (BoxIndex <= OffsetNam + 20)) Or ((BoxIndex >= Offset2Nam) And (BoxIndex <= Offset2Nam + 20)) Then
            If (dbView(LocalIndex) = dbGroups) Then
                If (dbView(1) = dbCategories) Then
                    Call DisplayData(1)
                ElseIf (dbView(2) = dbCategories) Then
                    Call DisplayData(2)
                End If
            End If
        End If
    End If
    
Exit Sub
BoxLostFocusError:
    ErrorHandler Err, "Program Form  BoxLostFocus", Err.Description, False
    Resume Next
End Sub


Public Sub SetDisplayOption()
                    
    On Error GoTo SetDislayOptionError
                    
    Dim Box             As TextBox
    Dim MoveLeft        As Double
    Dim DontMove        As Boolean
    Dim Index           As Integer
    Dim Visible         As Boolean
    Const Spacing = 90
    
    Dim LocalIndex  As Integer
    Dim NextDbLeft  As Long
               
    Dim NextLeft    As Long
               
    Dim lbl         As TextBox
                
    
    
    '1st Database
    LocalIndex = 1
    MoveLeft = 0
    
    For Each Box In txtBox()

        DontMove = False
        
        LocalIndex = FindLocalIndex(Box.Index)
        
        Select Case Box.Index
            Case OffsetNum To (OffsetNum + 20)
                Visible = True
                DontMove = True
            Case OffsetNam To (OffsetNam + 20)
                Visible = True
                DontMove = True
            Case OffsetLng To (OffsetLng + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseLongID) <> "0") And (dbSettingValueLocal(LocalIndex, DbLongEntry) = "0")
            Case OffsetSL1 To (OffsetSL4 + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseSoiledLines) <> "0")
            Case OffsetSP1 To (OffsetSP3 + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseSetpoints) <> "0")
            Case OffsetCL1 To (OffsetCL4 + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseCleanLines) <> "0")
            Case OffsetBth To (OffsetBth + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseBatchSize) <> "0")
            Case OffsetTyp To (OffsetTyp + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseType) <> "0") 'Tim Marker
                If dbView(LocalIndex) = dbCustomers Then
                    Box.Width = 3000
                End If
            Case OffsetPce To (OffsetPce + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUsePieceWeight) <> "0")
            Case OffsetWsh To (OffsetWsh + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseWashCodes) <> "0")
            Case OffsetGrp To (OffsetGrp + 20)
                Visible = (db(LocalIndex) = dbCategories)
            Case Offset2Num To (Offset2Num + 20)
                Visible = (dbView(LocalIndex) <> dbNone)
            Case Offset2Nam To (Offset2Nam + 20)
                Visible = (dbView(LocalIndex) <> dbNone)
            Case Offset2Lng To (Offset2Lng + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseLongID) <> "0") And (dbSettingValueLocal(LocalIndex, DbLongEntry) = "0")
            Case Offset2SL1 To (Offset2SL4 + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseSoiledLines) <> "0")
            Case Offset2SP1 To (Offset2SP3 + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseSetpoints) <> "0")
            Case Offset2CL1 To (Offset2CL4 + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseCleanLines) <> "0")
            Case Offset2Bth To (Offset2Bth + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseBatchSize) <> "0")
            Case Offset2Typ To (Offset2Typ + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseType) <> "0")
            Case Offset2Pce To (Offset2Pce + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUsePieceWeight) <> "0")
            Case Offset2Wsh To (Offset2Wsh + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseWashCodes) <> "0")
            Case Offset2Grp To (Offset2Grp + 20)
                Visible = (db(LocalIndex) = dbCategories)
            Case OffsetPL1 To (OffsetPL4 + 20)
                Visible = (db(LocalIndex) <> dbCustomers) And (db(LocalIndex) <> dbNone) And (dbSettingValueLocal(LocalIndex, DbUsePrimaryLines) <> "0")
        End Select

        txtBox(Box.Index).Visible = Visible
 
        
        'Calculate Next Left Position if first box Not Visible
        Index = Val(Right$(Format$(Box.Index), 2))
        If Not DontMove And (Index = 1) And Not Visible Then
            If Box.Index = (OffsetPL1 + 1) Then
                MoveLeft = MoveLeft + txtBox(Box.Index).Width
            ElseIf Box.Index = (OffsetGrp + 1) Then
                MoveLeft = MoveLeft + (txtBox(Box.Index).Width + lblGroupName(Box.Index).Width)
            Else
                MoveLeft = MoveLeft + (txtBox(Box.Index + 100).Left - txtBox(Box.Index).Left)
            End If
    
        End If

        txtBox(Box.Index).Left = (txtBox(Box.Index).Left - MoveLeft)

        
        If Not ShowPicOpt Then
            txtBox(Box.Index).Left = txtBox(Box.Index).Left - lblPicBox(1).Width
        End If
    Next Box



    MoveLeft = 0



    For Each lbl In lblBox()

        ExtraLeft = 0
        
        LocalIndex = FindLocalIndex(lbl.Index)
        
        Select Case lbl.Index
            Case OffsetNum To (OffsetNum + 20)
                Visible = True
                DontMove = True
            Case OffsetNam To (OffsetNam + 20)
                Visible = True
                DontMove = True
            Case OffsetLng To (OffsetLng + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseLongID) <> "0") And (dbSettingValueLocal(LocalIndex, DbLongEntry) = "0")
            Case OffsetSL1 To (OffsetSL4 + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseSoiledLines) <> "0")
            Case OffsetSP1 To (OffsetSP3 + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseSetpoints) <> "0")
            Case OffsetCL1 To (OffsetCL4 + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseCleanLines) <> "0")
            Case OffsetBth To (OffsetBth + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseBatchSize) <> "0")
            Case OffsetTyp To (OffsetTyp + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseType) <> "0")
                If Visible And (dbView(LocalIndex) = dbCustomers) Then
                    lbl.Width = 3000
                End If
            Case OffsetPce To (OffsetPce + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUsePieceWeight) <> "0")
            Case OffsetWsh To (OffsetWsh + 20)
                Visible = (dbSettingValueLocal(LocalIndex, DbUseWashCodes) <> "0")
            Case OffsetGrp To (OffsetGrp + 20)
                Visible = (db(LocalIndex) = dbCategories)
            Case Offset2Num To (Offset2Num + 20)
                Visible = (dbView(LocalIndex) <> dbNone)
            Case Offset2Nam To (Offset2Nam + 20)
                Visible = (dbView(LocalIndex) <> dbNone)
            Case Offset2Lng To (Offset2Lng + 20)
                Visible = (dbView(LocalIndex) <> dbNone) And (dbSettingValueLocal(LocalIndex, DbUseLongID) <> "0") And (dbSettingValueLocal(LocalIndex, DbLongEntry) = "0")
            Case Offset2SL1 To (Offset2SL4 + 20)
                Visible = (dbView(LocalIndex) <> dbNone) And (dbSettingValueLocal(LocalIndex, DbUseSoiledLines) <> "0")
            Case Offset2SP1 To (Offset2SP3 + 20)
                Visible = (dbView(LocalIndex) <> dbNone) And (dbSettingValueLocal(LocalIndex, DbUseSetpoints) <> "0")
            Case Offset2CL1 To (Offset2CL4 + 20)
                Visible = (dbView(LocalIndex) <> dbNone) And (dbSettingValueLocal(LocalIndex, DbUseCleanLines) <> "0")
            Case Offset2Bth To (Offset2Bth + 20)
                Visible = (dbView(LocalIndex) <> dbNone) And (dbSettingValueLocal(LocalIndex, DbUseBatchSize) <> "0")
            Case Offset2Typ To (Offset2Typ + 20)
                Visible = (dbView(LocalIndex) <> dbNone) And (dbSettingValueLocal(LocalIndex, DbUseType) <> "0")
            Case Offset2Pce To (Offset2Pce + 20)
                Visible = (dbView(LocalIndex) <> dbNone) And (dbSettingValueLocal(LocalIndex, DbUsePieceWeight) <> "0")
            Case Offset2Wsh To (Offset2Wsh + 20)
                Visible = (dbView(LocalIndex) <> dbNone) And (dbSettingValueLocal(LocalIndex, DbUseWashCodes) <> "0")
            Case Offset2Grp To (Offset2Grp + 20)
                Visible = (dbView(LocalIndex) <> dbNone) And (db(LocalIndex) = dbCategories)
            Case OffsetPL1 To (OffsetPL4 + 20)
                Visible = (dbView(LocalIndex) <> dbNone) And (db(LocalIndex) <> dbCustomers) And (dbSettingValueLocal(LocalIndex, DbUsePrimaryLines) <> "0")
        End Select
        
        
        
        lblBox(lbl.Index).Visible = Visible

        'Calculate Next Left Position if first box Not Visible
        Index = Val(Right$(Format$(lbl.Index), 2))
        If Not DontMove And (Index = 1) And Not Visible Then
            If lbl.Index = (OffsetPL1 + 0) Or lbl.Index = (OffsetPL1 + 1) Then
                MoveLeft = MoveLeft + lblBox(lbl.Index).Width
            ElseIf lbl.Index = (OffsetGrp + 0) Or lbl.Index = (OffsetGrp + 1) Then
                MoveLeft = MoveLeft + lblBox(lbl.Index).Width
            Else
                MoveLeft = MoveLeft + (lblBox(lbl.Index + 100).Left - lblBox(lbl.Index).Left)
            End If
        End If

        lblBox(lbl.Index).Left = (lblBox(lbl.Index).Left - MoveLeft)
        If Not ShowPicOpt Then
            lblBox(lbl.Index).Left = lblBox(lbl.Index).Left - lblPicBox(1).Width
        End If
        
       
        'Position Scroll Bars After program position has been set
        If lbl.Index = (OffsetGrp + 1) Then
            chkGrpColours(1).Left = chkGrpColours(1).Left - MoveLeft
            scrBar(1).Left = scrBar(1).Left - MoveLeft
            If Not ShowPicOpt Then
                scrBar(1).Left = scrBar(1).Left - lblPicBox(1).Width
            End If
        End If
        

        
'        If lbl.Index = (Offset2Grp + 1) Then
'            chkGrpColours(2).Left = chkGrpColours(2).Left - MoveLeft
'            scrBar(2).Left = scrBar(2).Left - MoveLeft
'            If Not ShowPicOpt Then
'                scrBar(2).Left = scrBar(2).Left - lblPicBox(1).Width
'            End If
'        End If
        
        If lbl.Index = (OffsetPL4 + 1) Then
            chkGrpColours(2).Left = chkGrpColours(2).Left - MoveLeft
            If Visible Then
                scrBar(2).Left = (scrBar(2).Left - MoveLeft)
            Else
                scrBar(2).Left = (scrBar(2).Left - lblBox(lbl.Index).Width - MoveLeft)
            End If
            
            If Not ShowPicOpt Then
                scrBar(2).Left = scrBar(2).Left - lblPicBox(1).Width
            End If
        End If
        
    Next lbl
    If (dbSettingValueLocal(1, DbUseType) <> "0") And (dbView(1) = dbCustomers) Then
        Call db_uspLoadingProgramReadNames(cmb_CusLoadingProgs, True)
        scrBar(1).Left = scrBar(1).Left + 2310 'Tim update scrbar position
    End If
    
    'Program must be last to position lblGroupName
    PopulateGroupCombo cmbGroupName, ""
    cmbGroupName.Visible = False
    
    For Each lbl In lblGroupName()
        Debug.Print "lbl.Index " & lbl.Index
        lblGroupName(lbl.Index).Left = txtBox(lbl.Index).Left + txtBox(lbl.Index).Width
        lblGroupName(lbl.Index).Text = ""
        LocalIndex = FindLocalIndex(lbl.Index)
        lblGroupName(lbl.Index).Visible = (dbView(LocalIndex) <> dbNone) And (db(LocalIndex) = dbCategories)
    Next lbl
  
    
    picButtonHolder.Left = picButtonHolder.Left - MoveLeft
    If (dbView(1) <> dbCustomers) And Not ShowPicOpt Then
         picButtonHolder.Left = picButtonHolder.Left - lblPicBox(1).Width
     End If
    
    'Stop Buttons moving into colours
    If picButtonHolder.Left < 6240 Then picButtonHolder.Left = 6240 + Spacing
    
    Me.Width = picButtonHolder.Left + picButtonHolder.Width + (Spacing * 3)
    
    cmbCusName.Visible = False
    
    CenterForm Me
    
    
    
    '-----------------------
    'Reduced Line Selections
    '-----------------------
    LocalIndex = 1
    If (dbSettingValueLocal(LocalIndex, DbSoiledLines2) <> "0") Then
        lblBox(OffsetSL1 + 1).Width = lblBox(OffsetSL1 + 1).Width * 2 - 15
        lblBox(OffsetSL2 + 1).Width = lblBox(OffsetSL2 + 1).Width * 2 - 15
        lblBox(OffsetSL2 + 1).Left = lblBox(OffsetSL3 + 1).Left
        lblBox(OffsetSL3 + 1).Visible = False
        lblBox(OffsetSL4 + 1).Visible = False
        For n = 1 To 20
            txtBox(OffsetSL1 + n).Width = txtBox(OffsetSL1 + n).Width * 2 - 15
            txtBox(OffsetSL2 + n).Width = txtBox(OffsetSL2 + n).Width * 2 - 15
            txtBox(OffsetSL2 + n).Left = txtBox(OffsetSL3 + n).Left
            txtBox(OffsetSL3 + n).Visible = False
            txtBox(OffsetSL4 + n).Visible = False
        Next n
    End If
    
    If (dbSettingValueLocal(LocalIndex, DbCleanLines2) <> "0") Then
        lblBox(OffsetCL1 + 1).Width = lblBox(OffsetCL1 + 1).Width * 2 - 15
        lblBox(OffsetCL2 + 1).Width = lblBox(OffsetCL2 + 1).Width * 2 - 15
        lblBox(OffsetCL2 + 1).Left = lblBox(OffsetCL3 + 1).Left
        lblBox(OffsetCL3 + 1).Visible = False
        lblBox(OffsetCL4 + 1).Visible = False
        For n = 1 To 20
            txtBox(OffsetCL1 + n).Width = txtBox(OffsetCL1 + n).Width * 2 - 15
            txtBox(OffsetCL2 + n).Width = txtBox(OffsetCL2 + n).Width * 2 - 15
            txtBox(OffsetCL2 + n).Left = txtBox(OffsetCL3 + n).Left
            txtBox(OffsetCL3 + n).Visible = False
            txtBox(OffsetCL4 + n).Visible = False
        Next n
    End If
    
    LocalIndex = 2
    If (dbSettingValueLocal(LocalIndex, DbSoiledLines2) <> "0") Then
        lblBox(Offset2SL1 + 1).Width = lblBox(Offset2SL1 + 1).Width * 2 - 15
        lblBox(Offset2SL2 + 1).Width = lblBox(Offset2SL2 + 1).Width * 2 - 15
        lblBox(Offset2SL2 + 1).Left = lblBox(Offset2SL3 + 1).Left
        lblBox(Offset2SL3 + 1).Visible = False
        lblBox(Offset2SL4 + 1).Visible = False
        For n = 1 To 20
            txtBox(Offset2SL1 + n).Width = txtBox(Offset2SL1 + n).Width * 2 - 15
            txtBox(Offset2SL2 + n).Width = txtBox(Offset2SL2 + n).Width * 2 - 15
            txtBox(Offset2SL2 + n).Left = txtBox(Offset2SL3 + n).Left
            txtBox(Offset2SL3 + n).Visible = False
            txtBox(Offset2SL4 + n).Visible = False
        Next n
    End If
    
    If (dbSettingValueLocal(LocalIndex, DbCleanLines2) <> "0") Then
        lblBox(Offset2CL1 + 1).Width = lblBox(Offset2CL1 + 1).Width * 2 - 15
        lblBox(Offset2CL2 + 1).Width = lblBox(Offset2CL2 + 1).Width * 2 - 15
        lblBox(Offset2CL2 + 1).Left = lblBox(Offset2CL3 + 1).Left
        lblBox(Offset2CL3 + 1).Visible = False
        lblBox(Offset2CL4 + 1).Visible = False
        For n = 1 To 20
            txtBox(Offset2CL1 + n).Width = txtBox(Offset2CL1 + n).Width * 2 - 15
            txtBox(Offset2CL2 + n).Width = txtBox(Offset2CL2 + n).Width * 2 - 15
            txtBox(Offset2CL2 + n).Left = txtBox(Offset2CL3 + n).Left
            txtBox(Offset2CL3 + n).Visible = False
            txtBox(Offset2CL4 + n).Visible = False
        Next n
    End If
    If (dbSettingValueLocal(LocalIndex, DbPrimaryLines2) <> "0") Then
        lblBox(OffsetPL1 + 1).Width = lblBox(OffsetPL1 + 1).Width * 2 - 15
        lblBox(OffsetPL2 + 1).Width = lblBox(OffsetPL2 + 1).Width * 2 - 15
        lblBox(OffsetPL2 + 1).Left = lblBox(OffsetPL3 + 1).Left
        lblBox(OffsetPL3 + 1).Visible = False
        lblBox(OffsetPL4 + 1).Visible = False
        For n = 1 To 20
            txtBox(OffsetPL1 + n).Width = txtBox(OffsetPL1 + n).Width * 2 - 15
            txtBox(OffsetPL2 + n).Width = txtBox(OffsetPL2 + n).Width * 2 - 15
            txtBox(OffsetPL2 + n).Left = txtBox(OffsetPL3 + n).Left
            txtBox(OffsetPL3 + n).Visible = False
            txtBox(OffsetPL4 + n).Visible = False
        Next n
    End If
    'Long ID Boxes over number boxes when used as entry
    LocalIndex = 1
    If (dbSettingValueLocal(LocalIndex, DbLongEntry) <> "0") Then
        For n = 1 To 20
            txtBox(n + OffsetLng).Visible = True
            txtBox(n + OffsetLng).Left = txtBox(n + OffsetNum).Left
            txtBox(n + OffsetLng).ZOrder vbBringToFront
        Next n
    End If
    
    LocalIndex = 2
    If (dbSettingValueLocal(LocalIndex, DbLongEntry) <> "0") Then
        For n = 1 To 20
            txtBox(n + Offset2Lng).Visible = True
            txtBox(n + Offset2Lng).Left = txtBox(n + Offset2Num).Left
            txtBox(n + Offset2Lng).ZOrder vbBringToFront
        Next n
    End If
    
    cmb_CusLoadingProgs.Visible = False
    
    
Exit Sub
SetDislayOptionError:
    ErrorHandler Err, "Database_frm SetDislayOption", Err.Description, False
    Resume Next
    
End Sub





Private Sub WritePLCData()
    
    Dim LocalIndex As Integer
    
    cmdExit.Enabled = False
    cmdCancel.Enabled = False
    
    DisplayForm wait_frm
    Screen.MousePointer = vbHourglass
        
    'Update all Sotring Stations using the data
    'Send All Category data for the sorting stations to the PLC
    Dim Bank        As Integer
       
    For Bank = 1 To MaxStationBanks
               
        Call SendAllStationPLC(Bank)
        
    Next Bank
        
    
    'Transfer Block Data to PLC if required
    LocalIndex = 1
    If (db(LocalIndex) = dbGroups) Then
        If (dbSettingValueLocal(LocalIndex, DbUseWashCodes) <> "0") And (PLC_Transfer_WashCode > 0) Then
            DataBaseToPLC PLC_Stn_WashCode, PLC_Transfer_WashCode, "GrpWash", MaxGrpdb
        End If
        If (dbSettingValueLocal(LocalIndex, DbUseSoiledLines) <> "0") Then
            If (PLC_Transfer_Line1 > 0) Then DataBaseToPLC PLC_Stn_Line1, PLC_Transfer_Line1, "GrpSLine1", MaxGrpdb
            If (PLC_Transfer_Line2 > 0) Then DataBaseToPLC PLC_Stn_Line2, PLC_Transfer_Line2, "GrpSLine2", MaxGrpdb
            If (PLC_Transfer_Line3 > 0) Then DataBaseToPLC PLC_Stn_Line3, PLC_Transfer_Line3, "GrpSLine3", MaxGrpdb
            If (PLC_Transfer_Line4 > 0) Then DataBaseToPLC PLC_Stn_Line4, PLC_Transfer_Line4, "GrpSLine4", MaxGrpdb
        End If
        If (dbSettingValueLocal(LocalIndex, DbUseSetpoints) <> "0") Then
            If (PLC_Transfer_SP1 > 0) Then DataBaseToPLC PLC_Stn_SP1, PLC_Transfer_SP1, "GrpSP1", MaxGrpdb
            If (PLC_Transfer_SP2 > 0) Then DataBaseToPLC PLC_Stn_SP2, PLC_Transfer_SP2, "GrpSP2", MaxGrpdb
            If (PLC_Transfer_SP3 > 0) Then DataBaseToPLC PLC_Stn_SP3, PLC_Transfer_SP3, "GrpSP3", MaxGrpdb
        End If
        If (dbSettingValueLocal(LocalIndex, DbUseCleanLines) <> "0") Then
            If (PLC_Transfer_ClnLine1 > 0) Then DataBaseToPLC PLC_Stn_ClnLine1, PLC_Transfer_ClnLine1, "GrpCLine1", MaxGrpdb
            If (PLC_Transfer_ClnLine2 > 0) Then DataBaseToPLC PLC_Stn_ClnLine2, PLC_Transfer_ClnLine2, "GrpCLine2", MaxGrpdb
            If (PLC_Transfer_ClnLine3 > 0) Then DataBaseToPLC PLC_Stn_ClnLine3, PLC_Transfer_ClnLine3, "GrpCLine3", MaxGrpdb
            If (PLC_Transfer_ClnLine4 > 0) Then DataBaseToPLC PLC_Stn_ClnLine4, PLC_Transfer_ClnLine4, "GrpCLine4", MaxGrpdb
        End If
        If (dbSettingValueLocal(LocalIndex, DbUseBatchSize) <> "0") Then
            If (PLC_Transfer_Batch > 0) Then DataBaseToPLC PLC_Stn_Batch, PLC_Transfer_Batch, "GrpBatch", MaxGrpdb
        End If
        If (dbSettingValueLocal(LocalIndex, DbUseType) <> "0") Then
            If (PLC_Transfer_Type > 0) Then DataBaseToPLC PLC_Stn_Type, PLC_Transfer_Type, "GrpType", MaxGrpdb
        End If
        If (dbSettingValueLocal(LocalIndex, DbUsePieceWeight) <> "0") Then
            If (PLC_Transfer_Piece > 0) Then DataBaseToPLC PLC_Stn_Piece, PLC_Transfer_Piece, "GrpPiece", MaxGrpdb
        End If
        
    End If
    
    LocalIndex = 2
    If (db(LocalIndex) = dbGroups) Then
        If (dbSettingValueLocal(LocalIndex, DbUseWashCodes) <> "0") And (PLC_Transfer_WashCode > 0) Then
            DataBaseToPLC PLC_Stn_WashCode, PLC_Transfer_WashCode, "GrpWash", MaxGrpdb
        End If
        If (dbSettingValueLocal(LocalIndex, DbUseSoiledLines) <> "0") Then
            If (PLC_Transfer_Line1 > 0) Then DataBaseToPLC PLC_Stn_Line1, PLC_Transfer_Line1, "GrpSLine1", MaxGrpdb
            If (PLC_Transfer_Line2 > 0) Then DataBaseToPLC PLC_Stn_Line2, PLC_Transfer_Line2, "GrpSLine2", MaxGrpdb
            If (PLC_Transfer_Line3 > 0) Then DataBaseToPLC PLC_Stn_Line3, PLC_Transfer_Line3, "GrpSLine3", MaxGrpdb
            If (PLC_Transfer_Line4 > 0) Then DataBaseToPLC PLC_Stn_Line4, PLC_Transfer_Line4, "GrpSLine4", MaxGrpdb
        End If
        If (dbSettingValueLocal(LocalIndex, DbUseSetpoints) <> "0") Then
            If (PLC_Transfer_SP1 > 0) Then DataBaseToPLC PLC_Stn_SP1, PLC_Transfer_SP1, "GrpSP1", MaxGrpdb
            If (PLC_Transfer_SP2 > 0) Then DataBaseToPLC PLC_Stn_SP2, PLC_Transfer_SP2, "GrpSP2", MaxGrpdb
            If (PLC_Transfer_SP3 > 0) Then DataBaseToPLC PLC_Stn_SP3, PLC_Transfer_SP3, "GrpSP3", MaxGrpdb
        End If
        If (dbSettingValueLocal(LocalIndex, DbUseCleanLines) <> "0") Then
            If (PLC_Transfer_ClnLine1 > 0) Then DataBaseToPLC PLC_Stn_ClnLine1, PLC_Transfer_ClnLine1, "GrpCLine1", MaxGrpdb
            If (PLC_Transfer_ClnLine2 > 0) Then DataBaseToPLC PLC_Stn_ClnLine2, PLC_Transfer_ClnLine2, "GrpCLine2", MaxGrpdb
            If (PLC_Transfer_ClnLine3 > 0) Then DataBaseToPLC PLC_Stn_ClnLine3, PLC_Transfer_ClnLine3, "GrpCLine3", MaxGrpdb
            If (PLC_Transfer_ClnLine4 > 0) Then DataBaseToPLC PLC_Stn_ClnLine4, PLC_Transfer_ClnLine4, "GrpCLine4", MaxGrpdb
        End If
   
        If (dbSettingValueLocal(LocalIndex, DbUseBatchSize) <> "0") Then
            If (PLC_Transfer_Batch > 0) Then DataBaseToPLC PLC_Stn_Batch, PLC_Transfer_Batch, "GrpBatch", MaxGrpdb
        End If
        If (dbSettingValueLocal(LocalIndex, DbUseType) <> "0") Then
            If (PLC_Transfer_Type > 0) Then DataBaseToPLC PLC_Stn_Type, PLC_Transfer_Type, "GrpType", MaxGrpdb
        End If
        If (dbSettingValueLocal(LocalIndex, DbUsePieceWeight) <> "0") Then
            If (PLC_Transfer_Piece > 0) Then DataBaseToPLC PLC_Stn_Piece, PLC_Transfer_Piece, "GrpPiece", MaxGrpdb
        End If
        
    End If
    
     If (dbSettingValueLocal(1, DbUsePrimaryLines) <> "0") Or (dbSettingValueLocal(2, DbUsePrimaryLines) <> "0") Then
        If (PLC_Transfer_PrimLine1 > 0) Then DataBaseToPLC PLC_Stn_PrimLine1, PLC_Transfer_PrimLine1, "GrpPLine1", MaxGrpdb
        If (PLC_Transfer_PrimLine2 > 0) Then DataBaseToPLC PLC_Stn_PrimLine2, PLC_Transfer_PrimLine2, "GrpPLine2", MaxGrpdb
        If (PLC_Transfer_PrimLine3 > 0) Then DataBaseToPLC PLC_Stn_PrimLine3, PLC_Transfer_PrimLine3, "GrpPLine3", MaxGrpdb
        If (PLC_Transfer_PrimLine4 > 0) Then DataBaseToPLC PLC_Stn_PrimLine4, PLC_Transfer_PrimLine4, "GrpPLine4", MaxGrpdb
    End If
    Screen.MousePointer = vbArrow
    

    Unload Me

End Sub



Private Sub txt_PoolCusNum_Change()
    ' Find the customer number and set the name

    Dim CusID As Integer
    With txt_PoolCusNum
    
        dbGetID EditCus, Val(.Text), CusID
        If CusID > 0 Then
            lblCusPoolName.Caption = CusName(CusID)
            .BackColor = CusColB(CusID)
            .ForeColor = CusColF(CusID)
        Else
            lblCusPoolName.Caption = ""
            .BackColor = vbWhite
            .ForeColor = vbBlack
        End If
        
    End With
End Sub

Private Sub txt_PoolCusNum_KeyPress(KeyAscii As Integer)
    KeyAscii = CheckAsciiNumber(KeyAscii)
    KeyAscii = CheckValidNumber(txt_PoolCusNum.Text, KeyAscii, 0, MaxCus)
End Sub



Private Sub txtBox_Change(Index As Integer)
    
    'If not Name or Long ID the show Zero's as "" makes the display clearer
    ValidIndex = True
    If ((Index >= OffsetNum) And (Index <= (OffsetNum + 20))) Then ValidIndex = False
    If ((Index >= OffsetNam) And (Index <= (OffsetNam + 20))) Then ValidIndex = False
    If ((Index >= OffsetLng) And (Index <= (OffsetLng + 20))) Then ValidIndex = False
    If ((Index >= Offset2Num) And (Index <= (Offset2Num + 20))) Then ValidIndex = False
    If ((Index >= Offset2Nam) And (Index <= (Offset2Nam + 20))) Then ValidIndex = False
    If ((Index >= Offset2Lng) And (Index <= (Offset2Lng + 20))) Then ValidIndex = False
    If ((Index >= OffsetTyp) And (Index <= (OffsetTyp + 20) And (dbView(1) = dbCustomers))) Then ValidIndex = False
    If ValidIndex Then
        If Val(txtBox(Index).Text) = 0 Then txtBox(Index).Text = ""
    End If
    
    Dim n As Integer
    Dim LocalIndex As Integer
    
    LocalIndex = FindLocalIndex(Index)
    
    
    
    If ((Index >= OffsetGrp) And (Index <= OffsetGrp + 20)) Or ((Index >= Offset2Grp) And (Index <= Offset2Grp + 20)) Then
        n = Val(txtBox(Index))
        'If the Group database is shown then read the local values
        If dbView(1) = dbGroups And (LocalIndex <> 1) Then
            Call dbGetLocalID(1, CLng(n), ID)
            lblGroupName(Index).Text = LocalName(1, ID)
        ElseIf dbView(2) = dbGroups And (LocalIndex <> 2) Then
            Call dbGetLocalID(2, CLng(n), ID)
            lblGroupName(Index).Text = LocalName(2, ID)
        Else
            Call dbGetID(EditGrp, CLng(n), ID)
            lblGroupName(Index).Text = GrpName(ID)
        End If
        Call GroupColours(Index, CLng(n))
             
    End If

End Sub

Private Sub txtBox_GotFocus(BoxIndex As Integer)
    
    CurrentBox = Index
    
    Dim BoxNum As Integer
    Dim Num As Long
    Dim LocalIndex As Integer
    
    LocalIndex = FindLocalIndex(BoxIndex)
    
    SelectedDb = LocalIndex
        
        'Get 1 to 20 for index
    Index = Val(Right$(Format$(BoxIndex), 2))
       
    SelectIndex(LocalIndex) = (Index + (Me.scrBar(LocalIndex).Value - 1))
    
    Call HighlightRow(LocalIndex, SelectIndex(LocalIndex))
    
    'Number Box Clicked
    If (BoxIndex >= OffsetNum And BoxIndex <= (OffsetNum + 20)) Or (BoxIndex >= Offset2Num And BoxIndex <= (Offset2Num + 20)) Then
        'Get box number 1 to 20
        BoxNum = Val(Right$(Format$(txtBox(BoxIndex)), 2))
        Num = Val(txtBox(BoxIndex).Text)
        
        ColourChangeEnabled(LocalIndex) = True
        
        If (Num > 0) And (Num <= MaxNum(LocalIndex)) Then
            lblForeColour.ForeColor = txtBox(BoxIndex).ForeColor
            lblForeColour.Caption = Format$(Num)
            shpBackColour.FillColor = txtBox(BoxIndex).BackColor
        End If
        
        HighlightTextBox txtBox(BoxIndex)

        
    Else
        ColourChangeEnabled(LocalIndex) = False
        HighlightTextBox txtBox(BoxIndex)
        If (dbView(1) = dbCustomers) And (BoxIndex > OffsetTyp) And (BoxIndex <= OffsetTyp + 20) Then
            cmb_CusLoadingProgs.Visible = True
            cmb_CusLoadingProgs.Width = txtBox(BoxIndex).Width
            cmb_CusLoadingProgs.Top = txtBox(BoxIndex).Top
            cmb_CusLoadingProgs.Left = txtBox(BoxIndex).Left
        End If
    
    
    End If
End Sub

Private Sub txtBox_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    KeyCode = BoxKeyDown(Index, KeyCode)
End Sub

Private Sub txtBox_KeyPress(Index As Integer, KeyAscii As Integer)
    KeyAscii = BoxKeyPress(Index, KeyAscii)
End Sub

Private Sub txtBox_LostFocus(Index As Integer)
    BoxLostFocus Index
End Sub
Private Sub SetLanguage()
    
    If (db(1) = dbGroups) Then
        Me.Caption = TextWord(680)
        lblNameTitle.Text = TextWord(676)
    ElseIf (db(1) = dbCustomers) Then
        Me.Caption = TextWord(396)
        lblNameTitle.Text = TextWord(33)
    ElseIf (db(1) = dbCategories) Then
        Me.Caption = TextWord(397)
        lblNameTitle.Text = TextWord(35)
    ElseIf (db(1) = dbMachineNames) Then
        Me.Caption = TextWord(506) & " " & TextWord(310)
        lblNameTitle.Text = TextWord(502)
    End If
    
    If (db(2) = dbGroups) Then
        Me.Caption = Me.Caption & " - " & TextWord(680)
        lblBox(2100).Text = TextWord(676)
    ElseIf (db(2) = dbCustomers) Then
        Me.Caption = Me.Caption & " - " & TextWord(396)
        lblBox(2100).Text = TextWord(33)
    ElseIf (db(2) = dbCategories) Then
        Me.Caption = Me.Caption & " - " & TextWord(397)
        lblBox(2100).Text = TextWord(35)
    ElseIf (db(2) = dbMachineNames) Then
        Me.Caption = Me.Caption & " - " & TextWord(506) & " " & TextWord(310)
        lblBox(2100).Text = TextWord(502)
    End If
    
    'Main Titles
    lblHeaderNum.Text = TextWord(335)
    lblHeaderName.Text = TextWord(614)
    
    lblBox(2101).Text = TextWord(335)
    lblBox(2201).Text = TextWord(614)
    
    'Long ID
    lblBox(301).Text = TextWord(613)
    lblBox(2301).Text = TextWord(613)
    
    'Soiled Lines
    lblBox(400).Text = TextWord(830) '(608)
    lblBox(401).Text = TextWord(616)
    lblBox(501).Text = TextWord(617)
    lblBox(601).Text = TextWord(618)
    lblBox(701).Text = TextWord(619)
    
    lblBox(2400).Text = TextWord(830) '(608)
    lblBox(2401).Text = TextWord(616)
    lblBox(2501).Text = TextWord(617)
    lblBox(2601).Text = TextWord(618)
    lblBox(2701).Text = TextWord(619)
    
    'Setpoints
    lblBox(800).Text = TextWord(219)
    lblBox(801).Text = TextWord(259) & "1"
    lblBox(901).Text = TextWord(259) & "2"
    lblBox(1001).Text = TextWord(259) & "3"
    
    lblBox(2800).Text = TextWord(219)
    lblBox(2801).Text = TextWord(259) & "1"
    lblBox(2901).Text = TextWord(259) & "2"
    lblBox(3001).Text = TextWord(259) & "3"
    
    'Clean Lines
    lblBox(1100).Text = TextWord(831) '(609)
    lblBox(1101).Text = TextWord(616)
    lblBox(1201).Text = TextWord(617)
    lblBox(1301).Text = TextWord(618)
    lblBox(1401).Text = TextWord(619)
    
    lblBox(3100).Text = TextWord(831) '(609)
    lblBox(3101).Text = TextWord(616)
    lblBox(3201).Text = TextWord(617)
    lblBox(3301).Text = TextWord(618)
    lblBox(3401).Text = TextWord(619)
    
    'Primary Lines
    lblBox(4000).Text = TextWord(610) '(609)  Zane
    lblBox(4001).Text = TextWord(616)
    lblBox(4101).Text = TextWord(617)
    lblBox(4201).Text = TextWord(618)
    lblBox(4301).Text = TextWord(619)
    
    'Batch Size
    If dbView(1) = dbCustomers Then
        lblBox(1501).Text = TextWord(971)
    Else
        lblBox(1501).Text = TextWord(520)
    End If
    
    lblBox(3501).Text = TextWord(520)
    
    'Piece Weight
    lblBox(1601).Text = TextWord(363)
    lblBox(3601).Text = TextWord(363)
    
    'Category Type
    
    If (db(1) = dbCustomers) Then
        lblBox(1701).Text = TextWord(32)
        lblBox(3701).Text = TextWord(32)
    Else
        lblBox(1701).Text = TextWord(503)
        lblBox(3701).Text = TextWord(503)
    End If
    
    
    
    'Washcode
    lblBox(1801).Text = TextWord(125)
    lblBox(3801).Text = TextWord(125)
    
    'Program
    lblBox(1901).Text = TextWord(676) '676 = Program 677 = Prog.
    lblBox(3901).Text = TextWord(676) '676 = Program 677 = Prog.
    
    'Other boxes and Buttons
    Me.cmdDelete.Caption = TextWord(65)
    Me.cmdInsert.Caption = TextWord(64)
    Me.cmdCancel.Caption = TextWord(61)
    Me.cmdExit.Caption = TextWord(309)
    Me.fraColours.Caption = TextWord(463)
    
    Me.chkGrpColours(1).Caption = TextWord(442)
    Me.chkGrpColours(2).Caption = TextWord(442)
    
    lbl_PoolCusTitle.Caption = TextWord(970)
    
End Sub
Private Sub GroupColours(Index As Integer, GrpNum As Long)
    
    Dim ID As Integer
    Dim LocalIndex As Integer
    Dim myColF As Long
    Dim myColB As Long
    
    LocalIndex = FindLocalIndex(Index)
    
    'If the Group database is shown then read the local values
    If dbView(1) = dbGroups And (LocalIndex <> 1) Then
        Call dbGetLocalID(1, GrpNum, ID)
        myColF = LocalColF(1, ID)
        myColB = LocalColB(1, ID)
    ElseIf dbView(2) = dbGroups And (LocalIndex <> 2) Then
        Call dbGetLocalID(2, GrpNum, ID)
        myColF = LocalColF(2, ID)
        myColB = LocalColB(2, ID)
    Else
        Call dbGetID(EditGrp, GrpNum, ID)
        myColF = GrpColF(ID)
        myColB = GrpColB(ID)
    End If
    
    If (((myColF = 0) And (myColB = 0)) Or Not ShowProgColours(LocalIndex)) Then
       lblGroupName(Index).ForeColor = vbBlack '&H800000 'Blue Text
       lblGroupName(Index).BackColor = vbWhite '&HFFFFFF    'White Background
       txtBox(Index).ForeColor = vbBlack '&H800000 'Blue Text
       txtBox(Index).BackColor = vbWhite '&HFFFFFF    'White Background
    Else
       lblGroupName(Index).ForeColor = myColF
       lblGroupName(Index).BackColor = myColB
       txtBox(Index).ForeColor = myColF
       txtBox(Index).BackColor = myColB
    End If
    

    
End Sub
Private Sub chkGrpColours_Click(Index As Integer)
    ShowProgColours(Index) = chkGrpColours(Index).Value
    Call db_uspSettingSave("SettingsNetwork", "Category", "ProgColours" & Format$(Index), chkGrpColours(Index).Value, PCNum)
    Call DisplayData(SelectedDb)
End Sub

Private Sub cmbGroupName_Click()
    
    Dim Index As Integer
    Dim LocalIndex As Integer
    Dim n As Integer
    
    lblGroupName(cmbGrpPosition).Text = cmbGroupName.Text
    txtBox(cmbGrpPosition).Text = CmbGetNum(cmbGroupName, EditGrp)
    Call GroupColours(cmbGrpPosition, Val(txtBox(cmbGrpPosition).Text))
    
    'Get 1 to 20 for index
    LocalIndex = FindLocalIndex(cmbGrpPosition)
    Index = Val(Right$(Format$(cmbGrpPosition), 2))
    n = Val(Index + (Me.scrBar(LocalIndex).Value - 1))
    LocalProg(LocalIndex, n) = Val(txtBox(cmbGrpPosition).Text)
    cmbGroupName.Visible = False
End Sub

Private Sub cmbGroupName_LostFocus()
    cmbGrpPosition = 0
    cmbGroupName.Visible = False
End Sub

Private Sub HighlightRow(LocalIndex As Integer, HRow As Integer)
    
    
    Dim Box         As TextBox
    Dim Index       As Integer
    Dim Row         As Integer
    
    Dim StartBox    As Integer
    Dim EndBox      As Integer
    Dim SkipIndex   As Integer
    
    Dim ValidBox    As Boolean
    Dim SkipBox     As Boolean
     
    Const NormForeColor = vbBlack
    Const NormBackColor = vbWhite
    Const HighForeColor = vbBlack
    Const HighBackColor = &HDBD9D4    'KG Grey
    
    
    
    If LocalIndex = 1 Then
            
        
        If (dbSettingValueLocal(LocalIndex, DbUseBagColour) = "0") Then StartBox = OffsetNum Else StartBox = OffsetNam
        If Not ShowProgColours(LocalIndex) Then EndBox = OffsetGrp Else EndBox = OffsetWsh
        If CatDBused = "0" Then EndBox = OffsetPL4
        If (dbSettingValueLocal(LocalIndex, DbLongEntry) <> "0") Then
            SkipIndex = OffsetLng
        Else
            SkipIndex = 0
        End If
            
        Row = HRow - (Me.scrBar(LocalIndex).Value - 1)
        
        For Each Box In txtBox()
            If Box.Index > 4000 Then
                Debug.Print "TT"
            End If
            ValidIndex = (Box.Index >= StartBox) And (Box.Index <= EndBox + 20)
            SkipBox = (Box.Index >= SkipIndex) And (Box.Index <= SkipIndex + 20)
            If ValidIndex And Not SkipBox Then
                Index = Val(Right$(Format$(Box.Index), 2))
                If (Index <= LocalDbSize(LocalIndex)) Then
                    If (Index = Row) Then
                        txtBox(Box.Index).ForeColor = HighForeColor
                        txtBox(Box.Index).BackColor = HighBackColor
                    Else
                        txtBox(Box.Index).ForeColor = NormForeColor
                        txtBox(Box.Index).BackColor = NormBackColor
                    End If
                    'If not showing program colours then highlight the Program label also
                    If ((Box.Index >= OffsetGrp) And (Box.Index <= OffsetGrp + 20)) Then
                        lblGroupName(Box.Index).ForeColor = txtBox(Box.Index).ForeColor
                        lblGroupName(Box.Index).BackColor = txtBox(Box.Index).BackColor
                    End If
                End If
            End If
        Next Box
    
    ElseIf LocalIndex = 2 Then
        
        If (dbSettingValueLocal(LocalIndex, DbUseBagColour) = "0") Then StartBox = Offset2Num Else StartBox = Offset2Nam
        If Not ShowProgColours(LocalIndex) Then EndBox = Offset2Grp Else EndBox = Offset2Wsh
        If (dbSettingValueLocal(LocalIndex, DbLongEntry) <> "0") Then
            SkipIndex = Offset2Lng
        Else
            SkipIndex = 0
        End If
            
        Row = HRow - (Me.scrBar(LocalIndex).Value - 1)
        
        For Each Box In txtBox()
            If Box.Index > 4000 Then
                Debug.Print "TT"
            End If
            
            ValidIndex = (Box.Index >= StartBox) And (Box.Index <= EndBox + 20)
            SkipBox = (Box.Index >= SkipIndex) And (Box.Index <= SkipIndex + 20)
            If ValidIndex And Not SkipBox Then
                Index = Val(Right$(Format$(Box.Index), 2))
                If (Index <= LocalDbSize(LocalIndex)) Then
                    If (Index = Row) Then
                        txtBox(Box.Index).ForeColor = HighForeColor
                        txtBox(Box.Index).BackColor = HighBackColor
                    Else
                        txtBox(Box.Index).ForeColor = NormForeColor
                        txtBox(Box.Index).BackColor = NormBackColor
                    End If
                    'If not showing program colours then highlight the Program label also
                    If ((Box.Index >= Offset2Grp) And (Box.Index <= Offset2Grp + 20)) Then
                        lblGroupName(Box.Index).ForeColor = txtBox(Box.Index).ForeColor
                        lblGroupName(Box.Index).BackColor = txtBox(Box.Index).BackColor
                    End If
                End If
            End If
        Next Box
    
    
    
    End If
End Sub

Private Sub txtbox_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Me.txtBox(Index).ToolTipText = Format$(Index)
End Sub
Public Sub dbGetLocalID(LocalIndex As Integer, Num As Long, ID As Integer)
    
    'Get the Array position where a Cat,Cus etc is stored.
        
    Dim n As Integer
    
    ID = 0
           
    For n = 1 To LocalDbSize(LocalIndex)
        If LocalNum(LocalIndex, n) = Num Then
            ID = n
        End If
    Next n
           
End Sub

Public Sub PopImageCombo()
        Dim FTPPath As String
        'FTPPath = GetSetting("TrackView", "Config", "FTPPath", 0)
        FTPPath = db_uspPicDBGetFTPPath()
        If (FTPPath <> "") Then
            GetImagesFromFTP (FTPPath)
            ImageCombo1.ImageList = MDIMaindisp_frm.ImageList1
            Dim img As ListImage
            For Each img In MDIMaindisp_frm.ImageList1.ListImages
                ImageCombo1.ComboItems.Add img.Index, img.Key, img.Key, img.Index, img.Index, 1
            Next
        End If
End Sub
Public Sub SetPictureOptions()
 On Error Resume Next
    ImageCombo1.Visible = False
    lblPicBox(0) = TextWord(934)
    Dim lbl As Label
    If db(1) = dbCategories Or db(1) = dbGroups Then
        ShowPicOpt = Val(dbSettingValue(GrpDbPicAddress)) > 0
    Else
        ShowPicOpt = False
    End If
    If ShowPicOpt Then
        For Each lbl In lblPicBox
            lbl.Visible = True
        Next lbl
        PopImageCombo
    Else
        For Each lbl In lblPicBox
            lbl.Visible = False
        Next lbl
            lblHeaderName.Left = lblPicBox(1).Left + lblHeaderNum.Width + 10
            lblNameTitle.Left = lblPicBox(1).Left
            lblHeaderNum.Left = lblPicBox(1).Left
    End If
End Sub
