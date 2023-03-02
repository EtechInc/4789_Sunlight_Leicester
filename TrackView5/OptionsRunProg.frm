VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Begin VB.Form Options_frm 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Options"
   ClientHeight    =   9360
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   13470
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   9360
   ScaleWidth      =   13470
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdRestoreDat 
      Caption         =   "Restore Files"
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
      TabIndex        =   237
      Top             =   8850
      Width           =   1440
   End
   Begin VB.Frame Frame9 
      Caption         =   "Access Levels"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   1515
      Left            =   75
      TabIndex        =   226
      Top             =   7725
      Width           =   6090
      Begin VB.TextBox txtPCNum 
         Alignment       =   2  'Center
         ForeColor       =   &H00800000&
         Height          =   315
         Left            =   3600
         TabIndex        =   235
         Text            =   "0"
         ToolTipText     =   "Enter Bank to Display at Start"
         Top             =   375
         Width           =   390
      End
      Begin VB.TextBox txtPCName 
         ForeColor       =   &H00800000&
         Height          =   315
         Left            =   300
         TabIndex        =   234
         Text            =   "Master"
         Top             =   375
         Width           =   3240
      End
      Begin VB.CheckBox chkAccSupervisor 
         BackColor       =   &H8000000B&
         Caption         =   "Supervisor Allowed Only Once"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   300
         TabIndex        =   228
         ToolTipText     =   "Turns off all Loading Program Menus"
         Top             =   825
         Width           =   2715
      End
      Begin VB.CheckBox chkAccEngineer 
         BackColor       =   &H8000000B&
         Caption         =   "Engineer Allowed Only Once"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   300
         TabIndex        =   227
         ToolTipText     =   "Turns off all Loading Program Menus"
         Top             =   1125
         Width           =   2415
      End
      Begin VB.Label Label1 
         Caption         =   "PC Name and Number"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   0
         Left            =   4125
         TabIndex        =   236
         Top             =   450
         Width           =   1740
      End
   End
   Begin VB.Frame fraPrinters 
      Caption         =   "Printers"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   1515
      Left            =   75
      TabIndex        =   176
      Top             =   3300
      Width           =   6090
      Begin VB.ComboBox cmbTicketPrinter 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Left            =   375
         TabIndex        =   180
         Text            =   "Ticket Printer"
         Top             =   825
         Width           =   3240
      End
      Begin VB.ComboBox cmbReportsPrinter 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Left            =   375
         TabIndex        =   179
         Text            =   "Reports Printer"
         Top             =   450
         Width           =   3240
      End
      Begin VB.Label Label3 
         Caption         =   "Ticket Printer"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   3675
         TabIndex        =   178
         Top             =   900
         Width           =   2265
      End
      Begin VB.Label Label2 
         Caption         =   "Reports Printer"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   3675
         TabIndex        =   177
         Top             =   525
         Width           =   2265
      End
   End
   Begin VB.Frame Frame8 
      Caption         =   "PLC Names"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   1515
      Left            =   6300
      TabIndex        =   170
      Top             =   7725
      Width           =   3315
      Begin VB.TextBox txt_PLCName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   2
         Left            =   150
         TabIndex        =   173
         Text            =   "PLC 2"
         Top             =   1050
         Width           =   3015
      End
      Begin VB.TextBox txt_PLCName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   1
         Left            =   150
         TabIndex        =   172
         Text            =   "PLC 1"
         Top             =   750
         Width           =   3015
      End
      Begin VB.TextBox txt_PLCName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   0
         Left            =   150
         TabIndex        =   171
         Text            =   "PLC 0"
         Top             =   450
         Width           =   3015
      End
   End
   Begin VB.Frame Frame7 
      Caption         =   "Discharger Names"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   4740
      Left            =   9825
      TabIndex        =   158
      Top             =   75
      Width           =   3540
      Begin VB.TextBox txt_DischName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   0
         Left            =   225
         TabIndex        =   184
         Top             =   4275
         Width           =   2940
      End
      Begin VB.TextBox txt_DischName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   13
         Left            =   225
         TabIndex        =   183
         Top             =   3975
         Width           =   2940
      End
      Begin VB.TextBox txt_DischName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   12
         Left            =   225
         TabIndex        =   182
         Top             =   3675
         Width           =   2940
      End
      Begin VB.TextBox txt_DischName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   11
         Left            =   225
         TabIndex        =   181
         Top             =   3375
         Width           =   2940
      End
      Begin VB.TextBox txt_DischName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   10
         Left            =   225
         TabIndex        =   169
         Top             =   3075
         Width           =   2940
      End
      Begin VB.TextBox txt_DischName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   9
         Left            =   225
         TabIndex        =   168
         Top             =   2775
         Width           =   2940
      End
      Begin VB.TextBox txt_DischName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   8
         Left            =   225
         TabIndex        =   166
         Top             =   2475
         Width           =   2940
      End
      Begin VB.TextBox txt_DischName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   7
         Left            =   225
         TabIndex        =   159
         Top             =   2175
         Width           =   2940
      End
      Begin VB.TextBox txt_DischName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   6
         Left            =   225
         TabIndex        =   165
         Top             =   1875
         Width           =   2940
      End
      Begin VB.TextBox txt_DischName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   5
         Left            =   225
         TabIndex        =   160
         Top             =   1575
         Width           =   2940
      End
      Begin VB.TextBox txt_DischName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   4
         Left            =   225
         TabIndex        =   164
         Top             =   1275
         Width           =   2940
      End
      Begin VB.TextBox txt_DischName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   3
         Left            =   225
         TabIndex        =   163
         Top             =   975
         Width           =   2940
      End
      Begin VB.TextBox txt_DischName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   2
         Left            =   225
         TabIndex        =   161
         Text            =   "Powertrans No.2"
         Top             =   675
         Width           =   2940
      End
      Begin VB.TextBox txt_DischName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   1
         Left            =   225
         TabIndex        =   162
         Text            =   "Powertrans Top No.1"
         Top             =   375
         Width           =   2940
      End
   End
   Begin VB.Frame Frame6 
      Caption         =   "Sorting Station Names"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   3090
      Left            =   6300
      TabIndex        =   153
      Top             =   75
      Width           =   3315
      Begin VB.TextBox txt_StnName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   8
         Left            =   150
         TabIndex        =   233
         Top             =   2550
         Width           =   3015
      End
      Begin VB.TextBox txt_StnName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   7
         Left            =   150
         TabIndex        =   232
         Top             =   2250
         Width           =   3015
      End
      Begin VB.TextBox txt_StnName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   6
         Left            =   150
         TabIndex        =   231
         Top             =   1950
         Width           =   3015
      End
      Begin VB.TextBox txt_StnName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   5
         Left            =   150
         TabIndex        =   230
         Top             =   1650
         Width           =   3015
      End
      Begin VB.TextBox txt_StnName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   4
         Left            =   150
         TabIndex        =   157
         Top             =   1350
         Width           =   3015
      End
      Begin VB.TextBox txt_StnName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   3
         Left            =   150
         TabIndex        =   156
         Top             =   1050
         Width           =   3015
      End
      Begin VB.TextBox txt_StnName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   2
         Left            =   150
         TabIndex        =   155
         Text            =   "Stations 11-20"
         Top             =   750
         Width           =   3015
      End
      Begin VB.TextBox txt_StnName 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   1
         Left            =   150
         TabIndex        =   154
         Text            =   "Stations 1-10"
         Top             =   450
         Width           =   3015
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "Unloading Programs"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   2715
      Left            =   6300
      TabIndex        =   33
      Top             =   4950
      Width           =   7065
      Begin VB.CheckBox chk_AllowBatchChange 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   14
         Left            =   6750
         TabIndex        =   223
         Top             =   2400
         Width           =   240
      End
      Begin VB.CheckBox chkShowCustomersULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   14
         Left            =   6750
         TabIndex        =   222
         Top             =   1725
         Width           =   240
      End
      Begin VB.CheckBox chkShowBatchULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   14
         Left            =   6750
         TabIndex        =   221
         Top             =   825
         Width           =   240
      End
      Begin VB.CheckBox chkShowLineULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   14
         Left            =   6750
         TabIndex        =   220
         Top             =   600
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCus 
         BackColor       =   &H8000000B&
         Caption         =   "Batch Must Be Same Customer"
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   14
         Left            =   6750
         TabIndex        =   219
         Top             =   2175
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCat 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   14
         Left            =   6750
         TabIndex        =   218
         Top             =   1950
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice1st 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   14
         Left            =   6750
         TabIndex        =   217
         Top             =   1050
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice2nd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   14
         Left            =   6750
         TabIndex        =   216
         Top             =   1275
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice3rd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   14
         Left            =   6750
         TabIndex        =   215
         Top             =   1500
         Width           =   240
      End
      Begin VB.CheckBox chk_AllowBatchChange 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   13
         Left            =   6450
         TabIndex        =   213
         Top             =   2400
         Width           =   240
      End
      Begin VB.CheckBox chkShowCustomersULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   13
         Left            =   6450
         TabIndex        =   212
         Top             =   1725
         Width           =   240
      End
      Begin VB.CheckBox chkShowBatchULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   13
         Left            =   6450
         TabIndex        =   211
         Top             =   825
         Width           =   240
      End
      Begin VB.CheckBox chkShowLineULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   13
         Left            =   6450
         TabIndex        =   210
         Top             =   600
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCus 
         BackColor       =   &H8000000B&
         Caption         =   "Batch Must Be Same Customer"
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   13
         Left            =   6450
         TabIndex        =   209
         Top             =   2175
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCat 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   13
         Left            =   6450
         TabIndex        =   208
         Top             =   1950
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice1st 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   13
         Left            =   6450
         TabIndex        =   207
         Top             =   1050
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice2nd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   13
         Left            =   6450
         TabIndex        =   206
         Top             =   1275
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice3rd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   13
         Left            =   6450
         TabIndex        =   205
         Top             =   1500
         Width           =   240
      End
      Begin VB.CheckBox chk_AllowBatchChange 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   12
         Left            =   6150
         TabIndex        =   203
         Top             =   2400
         Width           =   240
      End
      Begin VB.CheckBox chkShowCustomersULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   12
         Left            =   6150
         TabIndex        =   202
         Top             =   1725
         Width           =   240
      End
      Begin VB.CheckBox chkShowBatchULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   12
         Left            =   6150
         TabIndex        =   201
         Top             =   825
         Width           =   240
      End
      Begin VB.CheckBox chkShowLineULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   12
         Left            =   6150
         TabIndex        =   200
         Top             =   600
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCus 
         BackColor       =   &H8000000B&
         Caption         =   "Batch Must Be Same Customer"
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   12
         Left            =   6150
         TabIndex        =   199
         Top             =   2175
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCat 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   12
         Left            =   6150
         TabIndex        =   198
         Top             =   1950
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice1st 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   12
         Left            =   6150
         TabIndex        =   197
         Top             =   1050
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice2nd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   12
         Left            =   6150
         TabIndex        =   196
         Top             =   1275
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice3rd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   12
         Left            =   6150
         TabIndex        =   195
         Top             =   1500
         Width           =   240
      End
      Begin VB.CheckBox chk_AllowBatchChange 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   11
         Left            =   5850
         TabIndex        =   193
         Top             =   2400
         Width           =   240
      End
      Begin VB.CheckBox chkShowCustomersULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   11
         Left            =   5850
         TabIndex        =   192
         Top             =   1725
         Width           =   240
      End
      Begin VB.CheckBox chkShowBatchULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   11
         Left            =   5850
         TabIndex        =   191
         Top             =   825
         Width           =   240
      End
      Begin VB.CheckBox chkShowLineULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   11
         Left            =   5850
         TabIndex        =   190
         Top             =   600
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCus 
         BackColor       =   &H8000000B&
         Caption         =   "Batch Must Be Same Customer"
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   11
         Left            =   5850
         TabIndex        =   189
         Top             =   2175
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCat 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   11
         Left            =   5850
         TabIndex        =   188
         Top             =   1950
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice1st 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   11
         Left            =   5850
         TabIndex        =   187
         Top             =   1050
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice2nd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   11
         Left            =   5850
         TabIndex        =   186
         Top             =   1275
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice3rd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   11
         Left            =   5850
         TabIndex        =   185
         Top             =   1500
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCus 
         BackColor       =   &H8000000B&
         Caption         =   "Batch Must Be Same Customer"
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   0
         Left            =   2550
         TabIndex        =   132
         Top             =   2175
         Visible         =   0   'False
         Width           =   225
      End
      Begin VB.CheckBox chk_BatchSameCat 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   0
         Left            =   2550
         TabIndex        =   131
         Top             =   1950
         Visible         =   0   'False
         Width           =   240
      End
      Begin VB.CheckBox chk_AllowBatchChange 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   0
         Left            =   2550
         TabIndex        =   130
         Top             =   2400
         Width           =   240
      End
      Begin VB.CheckBox chkShowCustomersULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   0
         Left            =   2550
         TabIndex        =   129
         Top             =   1725
         Width           =   240
      End
      Begin VB.CheckBox chkShowBatchULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   0
         Left            =   2550
         TabIndex        =   128
         Top             =   825
         Width           =   240
      End
      Begin VB.CheckBox chkShowLineULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   0
         Left            =   2550
         TabIndex        =   127
         Top             =   600
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice1st 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   0
         Left            =   2550
         TabIndex        =   126
         Top             =   1050
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice2nd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   0
         Left            =   2550
         TabIndex        =   125
         Top             =   1275
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice3rd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   0
         Left            =   2550
         TabIndex        =   124
         Top             =   1500
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice3rd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   10
         Left            =   5550
         TabIndex        =   123
         Top             =   1500
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice2nd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   10
         Left            =   5550
         TabIndex        =   122
         Top             =   1275
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice1st 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   10
         Left            =   5550
         TabIndex        =   121
         Top             =   1050
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice3rd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   9
         Left            =   5250
         TabIndex        =   120
         Top             =   1500
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice2nd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   9
         Left            =   5250
         TabIndex        =   119
         Top             =   1275
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice1st 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   9
         Left            =   5250
         TabIndex        =   118
         Top             =   1050
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice3rd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   8
         Left            =   4950
         TabIndex        =   117
         Top             =   1500
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice2nd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   8
         Left            =   4950
         TabIndex        =   116
         Top             =   1275
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice1st 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   8
         Left            =   4950
         TabIndex        =   115
         Top             =   1050
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice3rd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   7
         Left            =   4650
         TabIndex        =   114
         Top             =   1500
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice2nd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   7
         Left            =   4650
         TabIndex        =   113
         Top             =   1275
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice1st 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   7
         Left            =   4650
         TabIndex        =   112
         Top             =   1050
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice3rd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   6
         Left            =   4350
         TabIndex        =   111
         Top             =   1500
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice2nd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   6
         Left            =   4350
         TabIndex        =   110
         Top             =   1275
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice1st 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   6
         Left            =   4350
         TabIndex        =   109
         Top             =   1050
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice3rd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   5
         Left            =   4050
         TabIndex        =   108
         Top             =   1500
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice2nd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   5
         Left            =   4050
         TabIndex        =   107
         Top             =   1275
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice1st 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   5
         Left            =   4050
         TabIndex        =   106
         Top             =   1050
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice3rd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   4
         Left            =   3750
         TabIndex        =   105
         Top             =   1500
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice2nd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   4
         Left            =   3750
         TabIndex        =   104
         Top             =   1275
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice1st 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   4
         Left            =   3750
         TabIndex        =   103
         Top             =   1050
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice3rd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   3
         Left            =   3450
         TabIndex        =   102
         Top             =   1500
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice2nd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   3
         Left            =   3450
         TabIndex        =   101
         Top             =   1275
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice1st 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   3
         Left            =   3450
         TabIndex        =   100
         Top             =   1050
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice3rd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   2
         Left            =   3150
         TabIndex        =   99
         Top             =   1500
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice2nd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   2
         Left            =   3150
         TabIndex        =   98
         Top             =   1275
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice1st 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   2
         Left            =   3150
         TabIndex        =   97
         Top             =   1050
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice3rd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   1
         Left            =   2850
         TabIndex        =   96
         Top             =   1500
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice2nd 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   1
         Left            =   2850
         TabIndex        =   95
         Top             =   1275
         Width           =   240
      End
      Begin VB.CheckBox chk_CategoryChoice1st 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   1
         Left            =   2850
         TabIndex        =   94
         Top             =   1050
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCat 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   10
         Left            =   5550
         TabIndex        =   93
         Top             =   1950
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCus 
         BackColor       =   &H8000000B&
         Caption         =   "Batch Must Be Same Customer"
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   10
         Left            =   5550
         TabIndex        =   92
         Top             =   2175
         Width           =   240
      End
      Begin VB.CheckBox chkShowLineULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   10
         Left            =   5550
         TabIndex        =   91
         Top             =   600
         Width           =   240
      End
      Begin VB.CheckBox chkShowBatchULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   10
         Left            =   5550
         TabIndex        =   90
         Top             =   825
         Width           =   240
      End
      Begin VB.CheckBox chkShowCustomersULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   10
         Left            =   5550
         TabIndex        =   89
         Top             =   1725
         Width           =   240
      End
      Begin VB.CheckBox chk_AllowBatchChange 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   10
         Left            =   5550
         TabIndex        =   88
         Top             =   2400
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCat 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   9
         Left            =   5250
         TabIndex        =   87
         Top             =   1950
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCus 
         BackColor       =   &H8000000B&
         Caption         =   "Batch Must Be Same Customer"
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   9
         Left            =   5250
         TabIndex        =   86
         Top             =   2175
         Width           =   240
      End
      Begin VB.CheckBox chkShowLineULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   9
         Left            =   5250
         TabIndex        =   85
         Top             =   600
         Width           =   240
      End
      Begin VB.CheckBox chkShowBatchULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   9
         Left            =   5250
         TabIndex        =   84
         Top             =   825
         Width           =   240
      End
      Begin VB.CheckBox chkShowCustomersULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   9
         Left            =   5250
         TabIndex        =   83
         Top             =   1725
         Width           =   240
      End
      Begin VB.CheckBox chk_AllowBatchChange 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   9
         Left            =   5250
         TabIndex        =   82
         Top             =   2400
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCat 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   8
         Left            =   4950
         TabIndex        =   81
         Top             =   1950
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCus 
         BackColor       =   &H8000000B&
         Caption         =   "Batch Must Be Same Customer"
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   8
         Left            =   4950
         TabIndex        =   80
         Top             =   2175
         Width           =   240
      End
      Begin VB.CheckBox chkShowLineULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   8
         Left            =   4950
         TabIndex        =   79
         Top             =   600
         Width           =   240
      End
      Begin VB.CheckBox chkShowBatchULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   8
         Left            =   4950
         TabIndex        =   78
         Top             =   825
         Width           =   240
      End
      Begin VB.CheckBox chkShowCustomersULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   8
         Left            =   4950
         TabIndex        =   77
         Top             =   1725
         Width           =   240
      End
      Begin VB.CheckBox chk_AllowBatchChange 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   8
         Left            =   4950
         TabIndex        =   76
         Top             =   2400
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCat 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   7
         Left            =   4650
         TabIndex        =   75
         Top             =   1950
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCus 
         BackColor       =   &H8000000B&
         Caption         =   "Batch Must Be Same Customer"
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   7
         Left            =   4650
         TabIndex        =   74
         Top             =   2175
         Width           =   240
      End
      Begin VB.CheckBox chkShowLineULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   7
         Left            =   4650
         TabIndex        =   73
         Top             =   600
         Width           =   240
      End
      Begin VB.CheckBox chkShowBatchULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   7
         Left            =   4650
         TabIndex        =   72
         Top             =   825
         Width           =   240
      End
      Begin VB.CheckBox chkShowCustomersULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   7
         Left            =   4650
         TabIndex        =   71
         Top             =   1725
         Width           =   240
      End
      Begin VB.CheckBox chk_AllowBatchChange 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   7
         Left            =   4650
         TabIndex        =   70
         Top             =   2400
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCat 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   6
         Left            =   4350
         TabIndex        =   69
         Top             =   1950
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCus 
         BackColor       =   &H8000000B&
         Caption         =   "Batch Must Be Same Customer"
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   6
         Left            =   4350
         TabIndex        =   68
         Top             =   2175
         Width           =   240
      End
      Begin VB.CheckBox chkShowLineULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   6
         Left            =   4350
         TabIndex        =   67
         Top             =   600
         Width           =   240
      End
      Begin VB.CheckBox chkShowBatchULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   6
         Left            =   4350
         TabIndex        =   66
         Top             =   825
         Width           =   240
      End
      Begin VB.CheckBox chkShowCustomersULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   6
         Left            =   4350
         TabIndex        =   65
         Top             =   1725
         Width           =   240
      End
      Begin VB.CheckBox chk_AllowBatchChange 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   6
         Left            =   4350
         TabIndex        =   64
         Top             =   2400
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCat 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   5
         Left            =   4050
         TabIndex        =   63
         Top             =   1950
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCus 
         BackColor       =   &H8000000B&
         Caption         =   "Batch Must Be Same Customer"
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   5
         Left            =   4050
         TabIndex        =   62
         Top             =   2175
         Width           =   240
      End
      Begin VB.CheckBox chkShowLineULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   5
         Left            =   4050
         TabIndex        =   61
         Top             =   600
         Width           =   240
      End
      Begin VB.CheckBox chkShowBatchULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   5
         Left            =   4050
         TabIndex        =   60
         Top             =   825
         Width           =   240
      End
      Begin VB.CheckBox chkShowCustomersULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   5
         Left            =   4050
         TabIndex        =   59
         Top             =   1725
         Width           =   240
      End
      Begin VB.CheckBox chk_AllowBatchChange 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   5
         Left            =   4050
         TabIndex        =   58
         Top             =   2400
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCat 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   4
         Left            =   3750
         TabIndex        =   57
         Top             =   1950
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCus 
         BackColor       =   &H8000000B&
         Caption         =   "Batch Must Be Same Customer"
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   4
         Left            =   3750
         TabIndex        =   56
         Top             =   2175
         Width           =   240
      End
      Begin VB.CheckBox chkShowLineULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   4
         Left            =   3750
         TabIndex        =   55
         Top             =   600
         Width           =   240
      End
      Begin VB.CheckBox chkShowBatchULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   4
         Left            =   3750
         TabIndex        =   54
         Top             =   825
         Width           =   240
      End
      Begin VB.CheckBox chkShowCustomersULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   4
         Left            =   3750
         TabIndex        =   53
         Top             =   1725
         Width           =   240
      End
      Begin VB.CheckBox chk_AllowBatchChange 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   4
         Left            =   3750
         TabIndex        =   52
         Top             =   2400
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCat 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   3
         Left            =   3450
         TabIndex        =   51
         Top             =   1950
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCus 
         BackColor       =   &H8000000B&
         Caption         =   "Batch Must Be Same Customer"
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   3
         Left            =   3450
         TabIndex        =   50
         Top             =   2175
         Width           =   240
      End
      Begin VB.CheckBox chkShowLineULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   3
         Left            =   3450
         TabIndex        =   49
         Top             =   600
         Width           =   240
      End
      Begin VB.CheckBox chkShowBatchULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   3
         Left            =   3450
         TabIndex        =   48
         Top             =   825
         Width           =   240
      End
      Begin VB.CheckBox chkShowCustomersULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   3
         Left            =   3450
         TabIndex        =   47
         Top             =   1725
         Width           =   240
      End
      Begin VB.CheckBox chk_AllowBatchChange 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   3
         Left            =   3450
         TabIndex        =   46
         Top             =   2400
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCat 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   2
         Left            =   3150
         TabIndex        =   45
         Top             =   1950
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCus 
         BackColor       =   &H8000000B&
         Caption         =   "Batch Must Be Same Customer"
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   2
         Left            =   3150
         TabIndex        =   44
         Top             =   2175
         Width           =   240
      End
      Begin VB.CheckBox chkShowLineULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   2
         Left            =   3150
         TabIndex        =   43
         Top             =   600
         Width           =   240
      End
      Begin VB.CheckBox chkShowBatchULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   2
         Left            =   3150
         TabIndex        =   42
         Top             =   825
         Width           =   240
      End
      Begin VB.CheckBox chkShowCustomersULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   2
         Left            =   3150
         TabIndex        =   41
         Top             =   1725
         Width           =   240
      End
      Begin VB.CheckBox chk_AllowBatchChange 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   2
         Left            =   3150
         TabIndex        =   40
         Top             =   2400
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCat 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   1
         Left            =   2850
         TabIndex        =   39
         Top             =   1950
         Width           =   240
      End
      Begin VB.CheckBox chk_BatchSameCus 
         BackColor       =   &H8000000B&
         Caption         =   "Batch Must Be Same Customer"
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   1
         Left            =   2850
         TabIndex        =   38
         Top             =   2175
         Width           =   240
      End
      Begin VB.CheckBox chkShowLineULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   1
         Left            =   2850
         TabIndex        =   37
         Top             =   600
         Width           =   240
      End
      Begin VB.CheckBox chkShowBatchULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   1
         Left            =   2850
         TabIndex        =   36
         Top             =   825
         Width           =   240
      End
      Begin VB.CheckBox chkShowCustomersULD 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   1
         Left            =   2850
         TabIndex        =   35
         Top             =   1725
         Width           =   240
      End
      Begin VB.CheckBox chk_AllowBatchChange 
         BackColor       =   &H8000000B&
         ForeColor       =   &H00FF0000&
         Height          =   240
         Index           =   1
         Left            =   2850
         TabIndex        =   34
         Top             =   2400
         Width           =   240
      End
      Begin VB.Label Label14 
         Caption         =   "14"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   14
         Left            =   6750
         TabIndex        =   224
         Top             =   375
         Width           =   240
      End
      Begin VB.Label Label14 
         Caption         =   "13"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   13
         Left            =   6450
         TabIndex        =   214
         Top             =   375
         Width           =   240
      End
      Begin VB.Label Label14 
         Caption         =   "12"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   12
         Left            =   6150
         TabIndex        =   204
         Top             =   375
         Width           =   240
      End
      Begin VB.Label Label14 
         Caption         =   "11"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   11
         Left            =   5850
         TabIndex        =   194
         Top             =   375
         Width           =   240
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Caption         =   "Prg"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   10
         Left            =   2475
         TabIndex        =   152
         Top             =   375
         Width           =   315
      End
      Begin VB.Label Label14 
         Caption         =   "10"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   9
         Left            =   5550
         TabIndex        =   151
         Top             =   375
         Width           =   240
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Caption         =   "9"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   8
         Left            =   5250
         TabIndex        =   150
         Top             =   375
         Width           =   165
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Caption         =   "8"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   7
         Left            =   4950
         TabIndex        =   149
         Top             =   375
         Width           =   165
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Caption         =   "7"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   6
         Left            =   4650
         TabIndex        =   148
         Top             =   375
         Width           =   165
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Caption         =   "6"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   5
         Left            =   4350
         TabIndex        =   147
         Top             =   375
         Width           =   165
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Caption         =   "5"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   4
         Left            =   4050
         TabIndex        =   146
         Top             =   375
         Width           =   165
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Caption         =   "4"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   3
         Left            =   3750
         TabIndex        =   145
         Top             =   375
         Width           =   165
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Caption         =   "3"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   1
         Left            =   3450
         TabIndex        =   144
         Top             =   375
         Width           =   165
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Caption         =   "2"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   2
         Left            =   3150
         TabIndex        =   143
         Top             =   375
         Width           =   165
      End
      Begin VB.Label Label13 
         Alignment       =   1  'Right Justify
         Caption         =   "Allow Batch Change"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   3
         Left            =   225
         TabIndex        =   142
         Top             =   2400
         Width           =   2265
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Caption         =   "1"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   0
         Left            =   2850
         TabIndex        =   141
         Top             =   375
         Width           =   165
      End
      Begin VB.Label Label13 
         Alignment       =   1  'Right Justify
         Caption         =   "Mix Customers in Batch"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   2
         Left            =   225
         TabIndex        =   140
         Top             =   2175
         Width           =   2265
      End
      Begin VB.Label Label13 
         Alignment       =   1  'Right Justify
         Caption         =   "Mix Category in Batch"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   1
         Left            =   225
         TabIndex        =   139
         Top             =   1950
         Width           =   2265
      End
      Begin VB.Label Label13 
         Alignment       =   1  'Right Justify
         Caption         =   "Show Customers"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   0
         Left            =   225
         TabIndex        =   138
         Top             =   1725
         Width           =   2265
      End
      Begin VB.Label Label12 
         Alignment       =   1  'Right Justify
         Caption         =   "Show 3rd Category"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   225
         TabIndex        =   137
         Top             =   1500
         Width           =   2265
      End
      Begin VB.Label Label11 
         Alignment       =   1  'Right Justify
         Caption         =   "Show 2nd Category"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   225
         TabIndex        =   136
         Top             =   1275
         Width           =   2265
      End
      Begin VB.Label Label10 
         Alignment       =   1  'Right Justify
         Caption         =   "Show 1st Category"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   225
         TabIndex        =   135
         Top             =   1050
         Width           =   2265
      End
      Begin VB.Label Label9 
         Alignment       =   1  'Right Justify
         Caption         =   "Show Batch"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   225
         TabIndex        =   134
         Top             =   825
         Width           =   2265
      End
      Begin VB.Label Label8 
         Alignment       =   1  'Right Justify
         Caption         =   "Show Lines"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   225
         TabIndex        =   133
         Top             =   600
         Width           =   2265
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "Loading Programs"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   1515
      Left            =   6300
      TabIndex        =   31
      Top             =   3300
      Width           =   3315
      Begin VB.TextBox txtStartup 
         Alignment       =   2  'Center
         ForeColor       =   &H00800000&
         Height          =   315
         Left            =   2400
         TabIndex        =   229
         Text            =   "0"
         ToolTipText     =   "Enter Bank to Display at Start"
         Top             =   600
         Width           =   390
      End
      Begin VB.CheckBox chkUseLoadingBig 
         BackColor       =   &H8000000B&
         Caption         =   "Use Loading Display"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   300
         TabIndex        =   225
         ToolTipText     =   "Turns off all Loading Program Menus"
         Top             =   675
         Width           =   2265
      End
      Begin VB.CheckBox chk_UseLoadingProg 
         BackColor       =   &H8000000B&
         Caption         =   "Use Loading Programs"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   300
         TabIndex        =   32
         ToolTipText     =   "Turns off all Loading Program Menus"
         Top             =   300
         Width           =   2265
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "File Paths"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   2715
      Left            =   75
      TabIndex        =   19
      Top             =   4950
      Width           =   6090
      Begin VB.OptionButton optPath 
         Caption         =   "Option1"
         Height          =   210
         Index           =   2
         Left            =   75
         TabIndex        =   23
         Top             =   1500
         Width           =   225
      End
      Begin VB.OptionButton optPath 
         Caption         =   "Option1"
         Height          =   210
         Index           =   1
         Left            =   75
         TabIndex        =   22
         Top             =   1200
         Width           =   225
      End
      Begin VB.OptionButton optPath 
         Caption         =   "Option1"
         Height          =   210
         Index           =   0
         Left            =   75
         TabIndex        =   21
         Top             =   900
         Width           =   225
      End
      Begin VB.CommandButton cmdBrowse 
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
         Left            =   4650
         TabIndex        =   20
         Top             =   750
         Width           =   1215
      End
      Begin VB.Label lblMisc 
         Caption         =   "Default Master PC"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   1
         Left            =   4650
         TabIndex        =   30
         Top             =   1500
         Width           =   1290
      End
      Begin VB.Label lblMisc 
         Caption         =   "Default Network"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   0
         Left            =   4650
         TabIndex        =   29
         Top             =   1200
         Width           =   1290
      End
      Begin VB.Label lblWorkingPath 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         ForeColor       =   &H00800000&
         Height          =   315
         Left            =   375
         TabIndex        =   28
         Top             =   450
         Width           =   4200
      End
      Begin VB.Label lblPath 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   2
         Left            =   375
         TabIndex        =   27
         Top             =   1425
         Width           =   4200
      End
      Begin VB.Label lblPath 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   1
         Left            =   375
         TabIndex        =   25
         Top             =   1125
         Width           =   4200
      End
      Begin VB.Label lblMisc 
         Caption         =   "Working Path"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   2
         Left            =   4650
         TabIndex        =   24
         Top             =   525
         Width           =   1290
      End
      Begin VB.Label lblPath 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         ForeColor       =   &H00800000&
         Height          =   315
         Index           =   0
         Left            =   375
         TabIndex        =   26
         Top             =   825
         Width           =   4200
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "General Options"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   3090
      Left            =   75
      TabIndex        =   2
      Top             =   75
      Width           =   6090
      Begin VB.CheckBox chk_PrintTickets 
         Caption         =   "Print Tickets"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   375
         TabIndex        =   175
         ToolTipText     =   "Enables print buttons"
         Top             =   2025
         Width           =   2490
      End
      Begin VB.CheckBox chk_TextBoxAutoClear 
         BackColor       =   &H8000000B&
         Caption         =   "Text Box Auto Clear"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   3300
         TabIndex        =   174
         ToolTipText     =   "Clears old cell value when mouse clicked"
         Top             =   2400
         Width           =   2190
      End
      Begin VB.CheckBox chk_run_PVI_Manager 
         Caption         =   "Run PVI Manager"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   3300
         TabIndex        =   167
         Top             =   2700
         Width           =   2490
      End
      Begin VB.CheckBox chk_Master 
         Caption         =   "Master PC"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   375
         TabIndex        =   17
         ToolTipText     =   "Master holds Databases"
         Top             =   750
         Width           =   2490
      End
      Begin VB.CheckBox chkBackup 
         Caption         =   "Backup Master PC"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   3300
         TabIndex        =   16
         ToolTipText     =   "Copy databases to Slave Machine"
         Top             =   1425
         Width           =   2490
      End
      Begin VB.CheckBox chk_Debug 
         Caption         =   "Debug to File"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   3300
         TabIndex        =   15
         Top             =   1200
         Width           =   2490
      End
      Begin VB.CheckBox chk_Operator_Unloading 
         Caption         =   "Operator Unloading Programs"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   3300
         TabIndex        =   14
         Top             =   2175
         Width           =   2490
      End
      Begin VB.CheckBox chk_Operator_Loading 
         Caption         =   "Operator Loading Programs"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   3300
         TabIndex        =   13
         Top             =   1950
         Width           =   2640
      End
      Begin VB.CheckBox chk_Demo 
         Caption         =   "Demo Version"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   3300
         TabIndex        =   12
         Top             =   750
         Width           =   2490
      End
      Begin VB.CheckBox chk_OperatorEdit 
         Caption         =   "Operator Can Edit Bags"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   3300
         TabIndex        =   11
         Top             =   1725
         Width           =   2715
      End
      Begin VB.CheckBox chk_tcp_visible 
         Caption         =   "TCP/IP Driver Visible"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   375
         TabIndex        =   10
         Top             =   2700
         Width           =   2490
      End
      Begin VB.CheckBox chk_trap_errors 
         Caption         =   "Trap Errors (Handler)"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   3300
         TabIndex        =   9
         Top             =   975
         Width           =   2490
      End
      Begin VB.CheckBox chk_run_tcp_Driver 
         Caption         =   "Run TCP/IP Driver"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   375
         TabIndex        =   8
         Top             =   2475
         Width           =   2490
      End
      Begin VB.CheckBox chk_shutdown 
         Caption         =   "Shutdown Windows on Exit"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   375
         TabIndex        =   7
         Top             =   975
         Width           =   2940
      End
      Begin VB.CheckBox chk_shutdown_all 
         Caption         =   "Shutdown All PC's on Exit"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   375
         TabIndex        =   6
         Top             =   1200
         Visible         =   0   'False
         Width           =   2490
      End
      Begin VB.CheckBox chk_ReportsStation 
         Caption         =   "Reports Station"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   375
         TabIndex        =   5
         ToolTipText     =   "Collect reports from PLC - Only 1 PC per system"
         Top             =   1575
         Width           =   2490
      End
      Begin VB.CheckBox chk_printer 
         Caption         =   "Reports Printer Station"
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   375
         TabIndex        =   4
         ToolTipText     =   "Enables print buttons"
         Top             =   1800
         Width           =   2490
      End
      Begin VB.TextBox txt_SystemName 
         ForeColor       =   &H00800000&
         Height          =   315
         Left            =   375
         TabIndex        =   3
         Text            =   "Supertrack TrackView II"
         Top             =   375
         Width           =   2490
      End
      Begin VB.Label Label1 
         Caption         =   "System Name"
         ForeColor       =   &H00800000&
         Height          =   240
         Index           =   1
         Left            =   3000
         TabIndex        =   18
         Top             =   450
         Width           =   2715
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog 
      Left            =   11325
      Top             =   8175
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton cmd_cancel 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
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
      Left            =   12150
      TabIndex        =   1
      Top             =   8325
      Width           =   1215
   End
   Begin VB.CommandButton Cmd_exit 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
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
      Left            =   12150
      TabIndex        =   0
      Top             =   8850
      Width           =   1215
   End
End
Attribute VB_Name = "Options_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim PCNumber As Integer



Private Sub chk_Demo_Click()
    Demo = chk_Demo.Value
End Sub

Private Sub chk_tcp_visible_Click()
    'FileSaveSetting "SettingsLocal", "TCP_IP_Driver", "Display", chk_tcp_visible.Value, App.Path
    'FileSaveSetting "SettingsTCP", "TCP_IP_Driver", "Display", chk_tcp_visible.Value, App.Path
    If chk_tcp_visible.Value Then
        TCPIPDriverShow = True
    Else
        TCPIPDriverHide = True
    End If
End Sub

Private Sub Cmd_Cancel_Click()
    Unload Me
End Sub

Private Sub Cmd_exit_Click()

    On Error GoTo Cmd_exit_Error
    
    Screen.MousePointer = vbHourglass
    
    FileSaveSetting "SettingsLocal", "Common", "Run TCP/IP Driver", Me.chk_run_tcp_Driver.Value, LocalPath
    FileSaveSetting "SettingsTCP", "TCP_IP_Driver", "Display", Me.chk_tcp_visible.Value, LocalPath
    
    FileSaveSetting "SettingsLocal", "Config", "MasterPC", chk_Master.Value, LocalPath
    
    FileSaveSetting "SettingsLocal", "Config", "WorkingPath", lblWorkingPath.Caption, LocalPath
    FileSaveSetting "SettingsLocal", "Config", "BrowsePath", lblPath(0).Caption, LocalPath
    FileSaveSetting "SettingsNetwork", "MIS", "MISWorkingPath", lblMISWorkingPath.Caption, NetPath
    FileSaveSetting "SettingsNetwork", "MIS", "MISMachineIDPath", lblMISMachineIDPath.Caption, NetPath
    FileSaveSetting "SettingsNetwork", "MIS", "MISMachineID", Val(txtMachineID.Text), NetPath
    FileSaveSetting "SettingsLocal", "Config", "MIS_FileUse", chk_UseMIS.Value, LocalPath
        
    FileSaveSetting "SettingsLocal", "Common", "Run PVI Manager", chk_run_PVI_Manager.Value, LocalPath
    FileSaveSetting "SettingsNetwork", "Common", "Debug", chk_Debug.Value, NetPath
    
    FileSaveSetting "SettingsLocal", "Config", "Reports_Station", chk_ReportsStation.Value, LocalPath
    FileSaveSetting "SettingsLocal", "Config", "Printer_Station", chk_printer.Value, LocalPath
    FileSaveSetting "SettingsLocal", "Config", "Ticket_Printer", chk_PrintTickets.Value, LocalPath
    FileSaveSetting "SettingsLocal", "Printers", "Reports", cmbReportsPrinter.ItemData(cmbReportsPrinter.ListIndex), LocalPath
    FileSaveSetting "SettingsLocal", "Printers", "Ticket", cmbTicketPrinter.ItemData(cmbTicketPrinter.ListIndex), LocalPath
    ReportsPrinter = cmbReportsPrinter.ItemData(cmbReportsPrinter.ListIndex)
    TicketPrinter = cmbTicketPrinter.ItemData(cmbTicketPrinter.ListIndex)
    
    FileSaveSetting "SettingsLocal", "Common", "Demo", chk_Demo.Value, LocalPath
    FileSaveSetting "SettingsNetwork", "Common", "Trap Errors", chk_trap_errors.Value, NetPath
    FileSaveSetting "SettingsLocal", "Common", "Backup", chkBackup.Value, LocalPath
    FileSaveSetting "SettingsNetwork", "Common", "OperatorEditBags", chk_OperatorEdit.Value, NetPath
    FileSaveSetting "SettingsNetwork", "Common", "OperatorLoading", chk_Operator_Loading.Value, NetPath
    FileSaveSetting "SettingsNetwork", "Common", "OperatorUnloading", chk_Operator_Unloading.Value, NetPath
    FileSaveSetting "SettingsLocal", "Common", "Shutdown", chk_shutdown.Value, LocalPath
    FileSaveSetting "SettingsNetwork", "Common", "TxtBoxAutoClear", chk_TextBoxAutoClear.Value, NetPath
    FileSaveSetting "SettingsNetwork", "System", "SystemName", txt_SystemName.Text, NetPath
    
    Dim DischName As TextBox
    For Each DischName In txt_DischName()
        FileSaveSetting "SettingsNetwork", "Config", "DischargerName" & Str(DischName.Index), txt_DischName(DischName.Index).Text, NetPath
    Next DischName
    
    Dim StnName As TextBox
    For Each StnName In txt_StnName()
        FileSaveSetting "SettingsNetwork", "Config", "StationName" & Str(StnName.Index), txt_StnName(StnName.Index).Text, NetPath
    Next StnName
    
    Dim PLCName As TextBox
    For Each PLCName In txt_PLCName()
        FileSaveSetting "SettingsNetwork", "Config", "PLCName" & Str(PLCName.Index), txt_PLCName(PLCName.Index).Text, NetPath
    Next PLCName
       
    FileSaveSetting "SettingsNetwork", "Stations", "UseLoadingProgram", chk_UseLoadingProg.Value, NetPath
    FileSaveSetting "SettingsNetwork", "Stations", "UseLoadingBig", Me.chkUseLoadingBig.Value, NetPath
    
    Dim chk As CheckBox
    For Each chk In chk_CategoryChoice1st()
        FileSaveSetting "SettingsNetwork", "CallOff", "ShowLine" & Str(chk.Index), chkShowLineULD(chk.Index).Value, NetPath
        FileSaveSetting "SettingsNetwork", "CallOff", "ShowBatch" & Str(chk.Index), chkShowBatchULD(chk.Index).Value, NetPath
        FileSaveSetting "SettingsNetwork", "CallOff", "CategoryChoice1st" & Str(chk.Index), chk_CategoryChoice1st(chk.Index).Value, NetPath
        FileSaveSetting "SettingsNetwork", "CallOff", "CategoryChoice2nd" & Str(chk.Index), chk_CategoryChoice2nd(chk.Index).Value, NetPath
        FileSaveSetting "SettingsNetwork", "CallOff", "CategoryChoice3rd" & Str(chk.Index), chk_CategoryChoice3rd(chk.Index).Value, NetPath
        FileSaveSetting "SettingsNetwork", "CallOff", "ShowCustomers" & Str(chk.Index), chkShowCustomersULD(chk.Index).Value, NetPath
        FileSaveSetting "SettingsNetwork", "CallOff", "BatchSameCat" & Str(chk.Index), chk_BatchSameCat(chk.Index).Value, NetPath
        FileSaveSetting "SettingsNetwork", "CallOff", "BatchSameCus" & Str(chk.Index), chk_BatchSameCus(chk.Index).Value, NetPath
        FileSaveSetting "SettingsNetwork", "CallOff", "AllowBatchChange" & Str(chk.Index), chk_AllowBatchChange(chk.Index).Value, NetPath
    Next chk
        
        
    FileSaveSetting "SettingsLocal", "Access", "AccSupervisor", Me.chkAccSupervisor.Value, LocalPath
    FileSaveSetting "SettingsLocal", "Access", "AccEngineer", Me.chkAccEngineer.Value, LocalPath
    FileSaveSetting "SettingsLocal", "Access", "PCNum", Me.txtPCNum, LocalPath
    PCNumber = Val(Me.txtPCNum.Text)
    FileSaveSetting "SettingsNetwork", "Access", "PCName" & Format$(PCNumber), Me.txtPCName.Text, NetPath
    
    
    FileSaveSetting "SettingsLocal", "LoadingBigDisplay", "StartForm", Me.txtStartup.Text, LocalPath
    
    Screen.MousePointer = vbNormal
    Unload Me

Exit Sub
Cmd_exit_Error:
    ErrorHandler Err, "Options_frm Cmd_exit", Err.Description, False
    Resume Next

End Sub

Private Sub cmdBrowse_Click()
    
  ' Set Cancel to True
  CommonDialog.CancelError = True
  On Error GoTo cmdBrowseErrHandler
  CommonDialog.Filter = "Executable (*.exe)|*.exe"
  CommonDialog.InitDir = "C:\Windows\Desktop"
  CommonDialog.DialogTitle = "Find Master PC Tview.exe"
  CommonDialog.Flags = cdlOFNFileMustExist And cdlOFNPathMustExist
  
  CommonDialog.ShowOpen
  lblPath(0).Caption = Left$(CommonDialog.FileName, Len(CommonDialog.FileName) - Len(CommonDialog.FileTitle))
    
  Exit Sub

cmdBrowseErrHandler:
  ' User pressed the Cancel button
  
End Sub



Private Sub Form_Load()
    
    CenterForm Me
    Me.Top = 100
       
    
    'Get the Working Path
    lblWorkingPath.Caption = FileGetSetting("SettingsLocal", "Config", "WorkingPath", LocalPath, LocalPath)
    
    
    
    'Get the saved browsed path
    lblPath(0).Caption = FileGetSetting("SettingsLocal", "Config", "BrowsePath", "", LocalPath)
    'Get the Network Path
    lblPath(1).Caption = "\\TrackView_1\c\TrackView II\"
    'get the Local Path
    lblPath(2).Caption = LocalPath
        
    
        
    'Settings from registry
    
    chk_Master.Value = FileGetSetting("SettingsLocal", "Config", "MasterPC", 0, LocalPath)
    chk_run_tcp_Driver.Value = FileGetSetting("SettingsLocal", "Common", "Run TCP/IP Driver", 0)
    chk_tcp_visible.Value = FileGetSetting("SettingsTCP", "TCP_IP_Driver", "Display", 1, LocalPath)
    chk_run_PVI_Manager.Value = FileGetSetting("SettingsLocal", "Common", "Run PVI Manager", 0, LocalPath)
    chk_Debug.Value = FileGetSetting("SettingsNetwork", "Common", "Debug", 0, NetPath)
    
    chk_ReportsStation.Value = FileGetSetting("SettingsLocal", "Config", "Reports_Station", 0, LocalPath)
    chk_printer.Value = FileGetSetting("SettingsLocal", "Config", "Printer_Station", 0, LocalPath)
    chk_PrintTickets.Value = FileGetSetting("SettingsLocal", "Config", "Ticket_Printer", 0, LocalPath)
    
    chk_Demo.Value = FileGetSetting("SettingsLocal", "Common", "Demo", 0, LocalPath)
    chk_trap_errors.Value = FileGetSetting("SettingsNetwork", "Common", "Trap Errors", 1, NetPath)
    chkBackup.Value = FileGetSetting("SettingsLocal", "Common", "Backup", 0, LocalPath)
    chk_OperatorEdit.Value = FileGetSetting("SettingsNetwork", "Common", "OperatorEditBags", 0, NetPath)
    chk_Operator_Loading.Value = FileGetSetting("SettingsNetwork", "Common", "OperatorLoading", 0, NetPath)
    chk_Operator_Unloading.Value = FileGetSetting("SettingsNetwork", "Common", "OperatorUnloading", 0, NetPath)
    chk_shutdown.Value = FileGetSetting("SettingsLocal", "Common", "Shutdown", 0, LocalPath)
    chk_TextBoxAutoClear.Value = FileGetSetting("SettingsNetwork", "Common", "TxtBoxAutoClear", 1, NetPath)
           
    txt_SystemName.Text = FileGetSetting("SettingsNetwork", "System", "SystemName", App.Title, NetPath)
    
    Dim DischName As TextBox
    For Each DischName In txt_DischName()
        txt_DischName(DischName.Index).Text = FileGetSetting("SettingsNetwork", "Config", "DischargerName" & Str(DischName.Index), "Discharger Name Not Set", NetPath)
    Next DischName
    
    Dim StnName As TextBox
    For Each StnName In txt_StnName()
        txt_StnName(StnName.Index).Text = FileGetSetting("SettingsNetwork", "Config", "StationName" & Str(StnName.Index), "Station Name Not Set", NetPath)
    Next StnName
    
    Dim PLCName As TextBox
    For Each PLCName In txt_PLCName()
        txt_PLCName(PLCName.Index).Text = FileGetSetting("SettingsNetwork", "Config", "PLCName" & Str(PLCName.Index), "PLC " & Str(PLCName.Index), NetPath)
    Next PLCName
    
    chk_UseLoadingProg.Value = FileGetSetting("SettingsNetwork", "Stations", "UseLoadingProgram", 1, NetPath)
    Me.chkUseLoadingBig.Value = FileGetSetting("SettingsNetwork", "Stations", "UseLoadingBig", 0, NetPath)
        
    Dim chk As CheckBox
    For Each chk In chk_CategoryChoice1st()
        chkShowLineULD(chk.Index).Value = FileGetSetting("SettingsNetwork", "CallOff", "ShowLine" & Str(chk.Index), 0, NetPath)
        chkShowBatchULD(chk.Index).Value = FileGetSetting("SettingsNetwork", "CallOff", "ShowBatch" & Str(chk.Index), 0, NetPath)
        chk_CategoryChoice1st(chk.Index).Value = FileGetSetting("SettingsNetwork", "CallOff", "CategoryChoice1st" & Str(chk.Index), 0, NetPath)
        chk_CategoryChoice2nd(chk.Index).Value = FileGetSetting("SettingsNetwork", "CallOff", "CategoryChoice2nd" & Str(chk.Index), 0, NetPath)
        chk_CategoryChoice3rd(chk.Index).Value = FileGetSetting("SettingsNetwork", "CallOff", "CategoryChoice3rd" & Str(chk.Index), 0, NetPath)
        chkShowCustomersULD(chk.Index).Value = FileGetSetting("SettingsNetwork", "CallOff", "ShowCustomers" & Str(chk.Index), 0, NetPath)
        chk_BatchSameCat(chk.Index).Value = FileGetSetting("SettingsNetwork", "CallOff", "BatchSameCat" & Str(chk.Index), 0, NetPath)
        chk_BatchSameCus(chk.Index).Value = FileGetSetting("SettingsNetwork", "CallOff", "BatchSameCus" & Str(chk.Index), 0, NetPath)
        chk_AllowBatchChange(chk.Index).Value = FileGetSetting("SettingsNetwork", "CallOff", "AllowBatchChange" & Str(chk.Index), 0, NetPath)
    Next chk
    
    'Set printers
    Dim PrintDevice As Printer
    Dim TotalPrinters As Integer
    TotalPrinters = 0
    
    For Each PrintDevice In Printers()
        TotalPrinters = TotalPrinters + 1
        cmbReportsPrinter.AddItem PrintDevice.DeviceName
        cmbReportsPrinter.ItemData(cmbReportsPrinter.NewIndex) = (TotalPrinters - 1)
        cmbTicketPrinter.AddItem PrintDevice.DeviceName
        cmbTicketPrinter.ItemData(cmbTicketPrinter.NewIndex) = (TotalPrinters - 1)
    Next PrintDevice
    
    ReportsPrinter = FileGetSetting("SettingsLocal", "Printers", "Reports", 0, LocalPath)
    TicketPrinter = FileGetSetting("SettingsLocal", "Printers", "Ticket", 0, LocalPath)
    
    'Note TotalPrinters = (Printers + 1)
    If ReportsPrinter < TotalPrinters Then cmbReportsPrinter.ListIndex = ReportsPrinter
    If TicketPrinter < TotalPrinters Then cmbTicketPrinter.ListIndex = TicketPrinter
   
    Me.chkAccSupervisor.Value = FileGetSetting("SettingsLocal", "Access", "AccSupervisor", 1, LocalPath)
    Me.chkAccEngineer.Value = FileGetSetting("SettingsLocal", "Access", "AccEngineer", 1, LocalPath)
    Me.txtPCNum.Text = FileGetSetting("SettingsLocal", "Access", "PCNum", 0, LocalPath)
    PCNumber = Val(Me.txtPCNum.Text)
    Me.txtPCName.Text = FileGetSetting("SettingsNetwork", "Access", "PCName" & Format$(PCNumber), "", NetPath)
    
    
    'Start-up form
    Me.txtStartup.Text = FileGetSetting("SettingsLocal", "LoadingBigDisplay", "StartForm", "0", LocalPath)
    
End Sub
    
Private Sub txt_spaces_Change()
    Spaces = Val(txt_spaces.Text)
End Sub

Private Sub Frame2_DragDrop(Source As Control, X As Single, Y As Single)

End Sub

Private Sub Frame9_DragDrop(Source As Control, X As Single, Y As Single)

End Sub

Private Sub lblPath_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    lblPath(Index).ToolTipText = lblPath(Index).Caption
End Sub

Private Sub lblWorkingPath_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    lblWorkingPath.ToolTipText = lblWorkingPath.Caption
End Sub

Private Sub optPath_Click(Index As Integer)
    lblWorkingPath.Caption = lblPath(Index).Caption
End Sub
Private Sub cmdRestoreDat_Click()
    Dim db As Integer
    CopyFiles LocalPath & "dbLastGood\", LocalPath & "Data\", "*.dat"
    For db = 0 To MaxDB
        If dbUsed(db) Then dbTryRepair(db) = 1
    Next db
    dbRepair
    Unload Me
End Sub

