VERSION 5.00
Begin VB.Form LoadingBig 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Sorting Stations 1-10"
   ClientHeight    =   8955
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   14115
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   8955
   ScaleWidth      =   14115
   ShowInTaskbar   =   0   'False
   Begin VB.Timer tmrUpdate 
      Interval        =   1000
      Left            =   150
      Top             =   225
   End
   Begin VB.ListBox lstCat 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   4545
      Left            =   6225
      TabIndex        =   49
      Top             =   6675
      Width           =   4290
   End
   Begin VB.ListBox lstCus 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   4545
      Left            =   2325
      TabIndex        =   0
      Top             =   6825
      Width           =   4290
   End
   Begin VB.CommandButton cmdAllCustomers 
      Caption         =   "All This Customer"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1515
      Left            =   9225
      TabIndex        =   62
      Top             =   75
      Width           =   1590
   End
   Begin VB.CommandButton cmdCursor 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   2
      Left            =   12450
      Picture         =   "LoadingBig.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   60
      Top             =   8100
      Width           =   765
   End
   Begin VB.CommandButton cmdCursor 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   1
      Left            =   11700
      Picture         =   "LoadingBig.frx":0442
      Style           =   1  'Graphical
      TabIndex        =   59
      Top             =   8100
      Width           =   765
   End
   Begin VB.CommandButton cmdCursor 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   0
      Left            =   10950
      Picture         =   "LoadingBig.frx":0884
      Style           =   1  'Graphical
      TabIndex        =   58
      Top             =   8100
      Width           =   765
   End
   Begin VB.TextBox txtCatName 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   465
      Left            =   4875
      TabIndex        =   48
      Text            =   "9999"
      Top             =   1125
      Width           =   4290
   End
   Begin VB.TextBox txtCat 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   465
      Left            =   3225
      TabIndex        =   47
      Text            =   "999999"
      Top             =   1125
      Width           =   1590
   End
   Begin VB.CommandButton cmdSend 
      Caption         =   "Update selected Station"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   4875
      TabIndex        =   44
      Top             =   75
      Width           =   4290
   End
   Begin VB.TextBox txtStn 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   465
      Left            =   3225
      TabIndex        =   43
      Text            =   "Station No"
      Top             =   75
      Width           =   1590
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "Z"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   19
      Left            =   10050
      TabIndex        =   22
      Top             =   8100
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "M"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   25
      Left            =   10050
      TabIndex        =   28
      Top             =   7350
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   " "
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   26
      Left            =   10050
      TabIndex        =   29
      Top             =   6600
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   5
      Left            =   9300
      TabIndex        =   8
      Top             =   8100
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   20
      Left            =   8550
      TabIndex        =   23
      Top             =   8100
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "W"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   1
      Left            =   7800
      TabIndex        =   4
      Top             =   8100
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "V"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   22
      Left            =   7050
      TabIndex        =   25
      Top             =   8100
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "U"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   6
      Left            =   6300
      TabIndex        =   9
      Top             =   8100
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "T"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   4
      Left            =   5550
      TabIndex        =   7
      Top             =   8100
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "S"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   11
      Left            =   4800
      TabIndex        =   14
      Top             =   8100
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "R"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   3
      Left            =   4050
      TabIndex        =   6
      Top             =   8100
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "Q"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   0
      Left            =   3300
      TabIndex        =   3
      Top             =   8100
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "P"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   9
      Left            =   2550
      TabIndex        =   12
      Top             =   8100
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   8
      Left            =   1800
      TabIndex        =   11
      Top             =   8100
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "N"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   24
      Left            =   1050
      TabIndex        =   27
      Top             =   8100
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "L"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   18
      Left            =   9300
      TabIndex        =   21
      Top             =   7350
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "K"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   17
      Left            =   8550
      TabIndex        =   20
      Top             =   7350
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "J"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   16
      Left            =   7800
      TabIndex        =   19
      Top             =   7350
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   7
      Left            =   7050
      TabIndex        =   10
      Top             =   7350
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "H"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   15
      Left            =   6300
      TabIndex        =   18
      Top             =   7350
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "G"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   14
      Left            =   5550
      TabIndex        =   17
      Top             =   7350
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "F"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   13
      Left            =   4800
      TabIndex        =   16
      Top             =   7350
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "E"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   2
      Left            =   4050
      TabIndex        =   5
      Top             =   7350
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "D"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   12
      Left            =   3300
      TabIndex        =   15
      Top             =   7350
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "C"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   21
      Left            =   2550
      TabIndex        =   24
      Top             =   7350
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "B"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   23
      Left            =   1800
      TabIndex        =   26
      Top             =   7350
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "A"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   10
      Left            =   1050
      TabIndex        =   13
      Top             =   7350
      Width           =   765
   End
   Begin VB.CommandButton cmdDel 
      Caption         =   "DEL"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Left            =   9300
      TabIndex        =   41
      Top             =   6600
      Width           =   765
   End
   Begin VB.CommandButton cmdBS 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Left            =   8550
      Picture         =   "LoadingBig.frx":0CC6
      Style           =   1  'Graphical
      TabIndex        =   40
      Top             =   6600
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   36
      Left            =   7800
      TabIndex        =   39
      Top             =   6600
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "9"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   35
      Left            =   7050
      TabIndex        =   32
      Top             =   6600
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "8"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   34
      Left            =   6300
      TabIndex        =   31
      Top             =   6600
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "7"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   33
      Left            =   5550
      TabIndex        =   30
      Top             =   6600
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "6"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   32
      Left            =   4800
      TabIndex        =   35
      Top             =   6600
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "5"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   31
      Left            =   4050
      TabIndex        =   34
      Top             =   6600
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "4"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   30
      Left            =   3300
      TabIndex        =   33
      Top             =   6600
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   29
      Left            =   2550
      TabIndex        =   38
      Top             =   6600
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "2"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   28
      Left            =   1800
      TabIndex        =   37
      Top             =   6600
      Width           =   765
   End
   Begin VB.CommandButton cmdKey 
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   21.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   27
      Left            =   1050
      TabIndex        =   36
      Top             =   6600
      Width           =   765
   End
   Begin VB.TextBox txtCusName 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   465
      Left            =   4875
      TabIndex        =   2
      Text            =   "9999"
      Top             =   600
      Width           =   4290
   End
   Begin VB.TextBox txtCus 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   465
      Left            =   3225
      TabIndex        =   1
      Text            =   "999999"
      Top             =   600
      Width           =   1590
   End
   Begin VB.CommandButton cmdCursor 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Index           =   3
      Left            =   11700
      Picture         =   "LoadingBig.frx":1108
      Style           =   1  'Graphical
      TabIndex        =   61
      Top             =   7350
      Width           =   765
   End
   Begin VB.Label BagData2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   16
      Left            =   12225
      TabIndex        =   115
      Top             =   3450
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   16
      Left            =   12225
      TabIndex        =   114
      Top             =   2775
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   15
      Left            =   12225
      TabIndex        =   113
      Top             =   5025
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   15
      Left            =   12225
      TabIndex        =   112
      Top             =   4350
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   14
      Left            =   10500
      TabIndex        =   111
      Top             =   3450
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   14
      Left            =   10500
      TabIndex        =   110
      Top             =   2775
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   13
      Left            =   10500
      TabIndex        =   109
      Top             =   5025
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   13
      Left            =   10500
      TabIndex        =   108
      Top             =   4350
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   12
      Left            =   8775
      TabIndex        =   107
      Top             =   3450
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   12
      Left            =   8775
      TabIndex        =   106
      Top             =   2775
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   11
      Left            =   8775
      TabIndex        =   105
      Top             =   5025
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   11
      Left            =   8775
      TabIndex        =   104
      Top             =   4350
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   10
      Left            =   7050
      TabIndex        =   103
      Top             =   3450
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   10
      Left            =   7050
      TabIndex        =   102
      Top             =   2775
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   9
      Left            =   7050
      TabIndex        =   101
      Top             =   5025
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   9
      Left            =   7050
      TabIndex        =   100
      Top             =   4350
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   8
      Left            =   5325
      TabIndex        =   99
      Top             =   3450
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   8
      Left            =   5325
      TabIndex        =   98
      Top             =   2775
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   7
      Left            =   5325
      TabIndex        =   97
      Top             =   5025
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   7
      Left            =   5325
      TabIndex        =   96
      Top             =   4350
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   6
      Left            =   3600
      TabIndex        =   94
      Top             =   2775
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   6
      Left            =   3600
      TabIndex        =   95
      Top             =   3450
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   1140
      Index           =   6
      Left            =   3600
      Shape           =   4  'Rounded Rectangle
      Top             =   2775
      Width           =   1740
   End
   Begin VB.Label BagData2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   5
      Left            =   3600
      TabIndex        =   93
      Top             =   5025
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   5
      Left            =   3600
      TabIndex        =   92
      Top             =   4350
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   4
      Left            =   1875
      TabIndex        =   91
      Top             =   3450
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   4
      Left            =   1875
      TabIndex        =   90
      Top             =   2775
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   3
      Left            =   1875
      TabIndex        =   89
      Top             =   5025
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   3
      Left            =   1875
      TabIndex        =   88
      Top             =   4350
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   1
      Left            =   150
      TabIndex        =   87
      Top             =   5025
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   1
      Left            =   150
      TabIndex        =   86
      Top             =   4350
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label BagData2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   390
      Index           =   2
      Left            =   150
      TabIndex        =   85
      Top             =   3450
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Label lblStnNum 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   390
      Index           =   16
      Left            =   12300
      TabIndex        =   84
      Top             =   2400
      Width           =   315
   End
   Begin VB.Label lblStnNum 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   390
      Index           =   15
      Left            =   12375
      TabIndex        =   83
      Top             =   5475
      Width           =   315
   End
   Begin VB.Label lblStnNum 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   390
      Index           =   14
      Left            =   10650
      TabIndex        =   82
      Top             =   2400
      Width           =   315
   End
   Begin VB.Label lblStnNum 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   390
      Index           =   13
      Left            =   10650
      TabIndex        =   81
      Top             =   5475
      Width           =   315
   End
   Begin VB.Label lblStnNum 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   390
      Index           =   12
      Left            =   8925
      TabIndex        =   80
      Top             =   2400
      Width           =   315
   End
   Begin VB.Label lblStnNum 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   390
      Index           =   11
      Left            =   8925
      TabIndex        =   79
      Top             =   5475
      Width           =   315
   End
   Begin VB.Label lblStnNum 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   390
      Index           =   10
      Left            =   7200
      TabIndex        =   78
      Top             =   2400
      Width           =   315
   End
   Begin VB.Label lblStnNum 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   390
      Index           =   9
      Left            =   7200
      TabIndex        =   77
      Top             =   5475
      Width           =   315
   End
   Begin VB.Label lblStnNum 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   390
      Index           =   8
      Left            =   5475
      TabIndex        =   76
      Top             =   2400
      Width           =   315
   End
   Begin VB.Label lblStnNum 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   390
      Index           =   7
      Left            =   5475
      TabIndex        =   75
      Top             =   5475
      Width           =   315
   End
   Begin VB.Label lblStnNum 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   390
      Index           =   6
      Left            =   3750
      TabIndex        =   74
      Top             =   2400
      Width           =   315
   End
   Begin VB.Label lblStnNum 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   390
      Index           =   5
      Left            =   3750
      TabIndex        =   73
      Top             =   5475
      Width           =   315
   End
   Begin VB.Label lblStnNum 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   390
      Index           =   4
      Left            =   2025
      TabIndex        =   72
      Top             =   2400
      Width           =   315
   End
   Begin VB.Label lblStnNum 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   390
      Index           =   3
      Left            =   2025
      TabIndex        =   71
      Top             =   5475
      Width           =   315
   End
   Begin VB.Label lblStnNum 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "52"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   390
      Index           =   2
      Left            =   300
      TabIndex        =   70
      Top             =   2400
      Width           =   315
   End
   Begin VB.Label lblStnNum 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   390
      Index           =   1
      Left            =   300
      TabIndex        =   69
      Top             =   5475
      Width           =   315
   End
   Begin VB.Label lblWeight 
      Alignment       =   2  'Center
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   390
      Index           =   16
      Left            =   12225
      TabIndex        =   68
      Top             =   2025
      Width           =   1740
   End
   Begin VB.Label lblWeight 
      Alignment       =   2  'Center
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   390
      Index           =   15
      Left            =   12300
      TabIndex        =   67
      Top             =   5850
      Width           =   1740
   End
   Begin VB.Label lblWeight 
      Alignment       =   2  'Center
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   390
      Index           =   14
      Left            =   10500
      TabIndex        =   66
      Top             =   2025
      Width           =   1740
   End
   Begin VB.Label lblWeight 
      Alignment       =   2  'Center
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   390
      Index           =   13
      Left            =   10575
      TabIndex        =   65
      Top             =   5850
      Width           =   1740
   End
   Begin VB.Label lblWeight 
      Alignment       =   2  'Center
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   390
      Index           =   12
      Left            =   8775
      TabIndex        =   64
      Top             =   2025
      Width           =   1740
   End
   Begin VB.Label lblWeight 
      Alignment       =   2  'Center
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   390
      Index           =   11
      Left            =   8775
      TabIndex        =   63
      Top             =   5850
      Width           =   1740
   End
   Begin VB.Label lblWeight 
      Alignment       =   2  'Center
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   390
      Index           =   10
      Left            =   7050
      TabIndex        =   57
      Top             =   2025
      Width           =   1740
   End
   Begin VB.Label lblWeight 
      Alignment       =   2  'Center
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   390
      Index           =   9
      Left            =   7050
      TabIndex        =   56
      Top             =   5850
      Width           =   1740
   End
   Begin VB.Label lblWeight 
      Alignment       =   2  'Center
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   390
      Index           =   8
      Left            =   5325
      TabIndex        =   55
      Top             =   2025
      Width           =   1740
   End
   Begin VB.Label lblWeight 
      Alignment       =   2  'Center
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   390
      Index           =   7
      Left            =   5325
      TabIndex        =   54
      Top             =   5850
      Width           =   1740
   End
   Begin VB.Label lblWeight 
      Alignment       =   2  'Center
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   390
      Index           =   6
      Left            =   3600
      TabIndex        =   53
      Top             =   2025
      Width           =   1740
   End
   Begin VB.Label lblWeight 
      Alignment       =   2  'Center
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   390
      Index           =   5
      Left            =   3600
      TabIndex        =   52
      Top             =   5850
      Width           =   1740
   End
   Begin VB.Label lblWeight 
      Alignment       =   2  'Center
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   390
      Index           =   4
      Left            =   1875
      TabIndex        =   51
      Top             =   2025
      Width           =   1740
   End
   Begin VB.Shape shpStation 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      Height          =   1740
      Index           =   6
      Left            =   3600
      Shape           =   4  'Rounded Rectangle
      Top             =   2400
      Width           =   1740
   End
   Begin VB.Label lblWeight 
      Alignment       =   2  'Center
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   390
      Index           =   3
      Left            =   1875
      TabIndex        =   50
      Top             =   5850
      Width           =   1740
   End
   Begin VB.Label lblWeight 
      Alignment       =   2  'Center
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   390
      Index           =   1
      Left            =   150
      TabIndex        =   46
      Top             =   5850
      Width           =   1740
   End
   Begin VB.Label lblWeight 
      Alignment       =   2  'Center
      Caption         =   "99kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   390
      Index           =   2
      Left            =   150
      TabIndex        =   45
      Top             =   2025
      Width           =   1740
   End
   Begin VB.Label BagData 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "99999"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   161
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   2
      Left            =   150
      TabIndex        =   42
      Top             =   2775
      Width           =   1740
      WordWrap        =   -1  'True
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   1140
      Index           =   2
      Left            =   150
      Shape           =   4  'Rounded Rectangle
      Top             =   2775
      Width           =   1740
   End
   Begin VB.Shape shpStation 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      Height          =   1740
      Index           =   2
      Left            =   150
      Shape           =   4  'Rounded Rectangle
      Top             =   2400
      Width           =   1740
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   1140
      Index           =   1
      Left            =   150
      Shape           =   4  'Rounded Rectangle
      Top             =   4350
      Width           =   1740
   End
   Begin VB.Shape shpStation 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      Height          =   1740
      Index           =   1
      Left            =   150
      Shape           =   4  'Rounded Rectangle
      Top             =   4125
      Width           =   1740
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   1140
      Index           =   4
      Left            =   1875
      Shape           =   4  'Rounded Rectangle
      Top             =   2775
      Width           =   1740
   End
   Begin VB.Shape shpStation 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      Height          =   1740
      Index           =   4
      Left            =   1875
      Shape           =   4  'Rounded Rectangle
      Top             =   2400
      Width           =   1740
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   1140
      Index           =   3
      Left            =   1875
      Shape           =   4  'Rounded Rectangle
      Top             =   4350
      Width           =   1740
   End
   Begin VB.Shape shpStation 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      Height          =   1740
      Index           =   3
      Left            =   1875
      Shape           =   4  'Rounded Rectangle
      Top             =   4125
      Width           =   1740
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   1140
      Index           =   5
      Left            =   3600
      Shape           =   4  'Rounded Rectangle
      Top             =   4350
      Width           =   1740
   End
   Begin VB.Shape shpStation 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      Height          =   1740
      Index           =   5
      Left            =   3600
      Shape           =   4  'Rounded Rectangle
      Top             =   4125
      Width           =   1740
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   1140
      Index           =   7
      Left            =   5325
      Shape           =   4  'Rounded Rectangle
      Top             =   4350
      Width           =   1740
   End
   Begin VB.Shape shpStation 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      Height          =   1740
      Index           =   7
      Left            =   5325
      Shape           =   4  'Rounded Rectangle
      Top             =   4125
      Width           =   1740
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   1140
      Index           =   8
      Left            =   5325
      Shape           =   4  'Rounded Rectangle
      Top             =   2775
      Width           =   1740
   End
   Begin VB.Shape shpStation 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      Height          =   1740
      Index           =   8
      Left            =   5325
      Shape           =   4  'Rounded Rectangle
      Top             =   2400
      Width           =   1740
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   1140
      Index           =   9
      Left            =   7050
      Shape           =   4  'Rounded Rectangle
      Top             =   4350
      Width           =   1740
   End
   Begin VB.Shape shpStation 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      Height          =   1740
      Index           =   9
      Left            =   7050
      Shape           =   4  'Rounded Rectangle
      Top             =   4125
      Width           =   1740
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   1140
      Index           =   10
      Left            =   7050
      Shape           =   4  'Rounded Rectangle
      Top             =   2775
      Width           =   1740
   End
   Begin VB.Shape shpStation 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      Height          =   1740
      Index           =   10
      Left            =   7050
      Shape           =   4  'Rounded Rectangle
      Top             =   2400
      Width           =   1740
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   1140
      Index           =   11
      Left            =   8775
      Shape           =   4  'Rounded Rectangle
      Top             =   4350
      Width           =   1740
   End
   Begin VB.Shape shpStation 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      Height          =   1740
      Index           =   11
      Left            =   8775
      Shape           =   4  'Rounded Rectangle
      Top             =   4125
      Width           =   1740
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   1140
      Index           =   12
      Left            =   8775
      Shape           =   4  'Rounded Rectangle
      Top             =   2775
      Width           =   1740
   End
   Begin VB.Shape shpStation 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      Height          =   1740
      Index           =   12
      Left            =   8775
      Shape           =   4  'Rounded Rectangle
      Top             =   2400
      Width           =   1740
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   1140
      Index           =   13
      Left            =   10500
      Shape           =   4  'Rounded Rectangle
      Top             =   4350
      Width           =   1740
   End
   Begin VB.Shape shpStation 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      Height          =   1740
      Index           =   13
      Left            =   10500
      Shape           =   4  'Rounded Rectangle
      Top             =   4125
      Width           =   1740
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   1140
      Index           =   14
      Left            =   10500
      Shape           =   4  'Rounded Rectangle
      Top             =   2775
      Width           =   1740
   End
   Begin VB.Shape shpStation 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      Height          =   1740
      Index           =   14
      Left            =   10500
      Shape           =   4  'Rounded Rectangle
      Top             =   2400
      Width           =   1740
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   1140
      Index           =   15
      Left            =   12225
      Shape           =   4  'Rounded Rectangle
      Top             =   4350
      Width           =   1740
   End
   Begin VB.Shape shpStation 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      Height          =   1740
      Index           =   15
      Left            =   12225
      Shape           =   4  'Rounded Rectangle
      Top             =   4125
      Width           =   1740
   End
   Begin VB.Shape BagRing 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   1140
      Index           =   16
      Left            =   12225
      Shape           =   4  'Rounded Rectangle
      Top             =   2775
      Width           =   1740
   End
   Begin VB.Shape shpStation 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      Height          =   1740
      Index           =   16
      Left            =   12225
      Shape           =   4  'Rounded Rectangle
      Top             =   2400
      Width           =   1740
   End
End
Attribute VB_Name = "LoadingBig"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Dim SelectedStn         As Integer
Dim StnBank             As Integer
Dim StartStn            As Integer
Dim EndStn              As Integer
Dim StationsFirstBag    As Integer
Dim PLCStn              As Integer
Dim OldDisplayOption    As Integer

Dim SpecialCounting     As Boolean

Dim WorkingWith         As Integer

Dim ValidCat            As Boolean
Dim ValidCus            As Boolean
Dim ValidStn            As Boolean

Dim LocalMaxCat         As Long

Const GotFocusStn = 1
Const GotFocusCat = 2
Const GotFocusCus = 3
Const GotFocusCatName = 4
Const GotFocusCusName = 5

Const CursorLeft = 0
Const CursorDown = 1
Const CursorRight = 2
Const CursorUp = 3


Private Sub BagData_Click(Index As Integer)
    SelectedStn = StartStn + (Index - 1)
    DisplayValues
End Sub

Private Sub BagData2_Click(Index As Integer)
    SelectedStn = StartStn + (Index - 1)
    DisplayValues
End Sub

Private Sub cmdAllCustomers_Click()
    
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG LoadingBig_frm", "cmdAllCustomers", False
    
    On Error Resume Next
    
    Dim Bag As Integer
    Dim Cat As Integer
    Dim Cus As Long
    Dim Cnt As Integer
    Dim Amount As Integer
           
    'Write data to PLC
    
        
    DisplayForm wait_frm
           
    Call Comms_frm.LockWritePLC(True, PLCStn)
    
    Amount = (EndStn - StartStn)
    
    For Bag = StationsFirstBag To (StationsFirstBag + Amount)
               
        If Not SpecialCounting Then
            'Send bag Data
            Cat = BagCat(Bag, PLCStn)
            Cus = GetNumValFromLong(txtCus.Text, EditCus)
            If Demo Then BagCus(Bag, PLCStn) = Cus
            Call WriteBag(PLCStn, Bag, Cat, 0, 0, 0, Cus, 0)
        Else
            'Write Report
            Cat = BagCat(Bag, PLCStn)
            Cus = BagCus(Bag, PLCStn)
            Cnt = BagCnt(Bag, PLCStn)
            If Cnt > 0 Then ReportWrite Cus, CLng(Cat), 0, CLng(Cnt), 0, 0, (Bag - StationsFirstBag) + StartStn, 0, 0, 0, ReportsPath
            'Send New Cat / Cus and Clear Count
            Cus = GetNumValFromLong(txtCus.Text, EditCus)
            If Demo Then BagCus(Bag, PLCStn) = Cus
            Cnt = 0
            Call WriteBag(PLCStn, Bag, Cat, 0, 0, Cnt, Cus, 0)
        End If
        
    Next Bag
    
    Call Comms_frm.LockWritePLC(False, PLCStn)
    
    Unload wait_frm
       
End Sub

Private Sub cmdBS_Click()
    KeyPressed "{BACKSPACE}"
End Sub

Private Sub cmdCursor_Click(Index As Integer)
    
    Select Case Index
        Case CursorLeft
            KeyPressed "{LEFT}"
        Case CursorRight
            KeyPressed "{RIGHT}"
        Case CursorDown
            KeyPressed "{DOWN}"
        Case CursorUp
            KeyPressed "{UP}"
    End Select
    
End Sub

Private Sub cmdDel_Click()
    KeyPressed "{DEL}"
End Sub

Private Sub cmdKey_Click(Index As Integer)
    KeyPressed cmdKey(Index).Caption
End Sub

Private Sub KeyPressed(Key As String)
            
    Select Case WorkingWith
        Case GotFocusStn
            txtStn.SetFocus
        Case GotFocusCat
            txtCat.SetFocus
        Case GotFocusCus
            txtCus.SetFocus
        Case GotFocusCatName
            txtCatName.SetFocus
        Case GotFocusCusName
            txtCusName.SetFocus
            
    End Select
        
    SendKeys Key
        
    
End Sub



Private Sub cmdSend_Click()
    
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG LoadingBig_frm", "Cmd_OK_Click", False
       
    On Error Resume Next
    
    'Write The Display Values to the PLC
    '-----------------------------------
       
    Dim Bag As Integer
    Dim Cat As Integer
    Dim Cus As Long
    Dim Cnt As Integer
           
    Bag = StationsFirstBag + (SelectedStn - StartStn)
    
                     
    
    
    Call Comms_frm.LockWritePLC(True, PLCStn)
    
    'Send bag Data
    If Not SpecialCounting Then
        Cat = GetNumValFromLong(txtCat.Text, EditCat)
        Cus = GetNumValFromLong(txtCus.Text, EditCus)
        If Demo Then
            BagCat(Bag, PLCStn) = Cat
            BagCus(Bag, PLCStn) = Cus
        End If
        Call WriteBag(PLCStn, Bag, Cat, 0, 0, 0, Cus, 0)
    Else
        'Write Report
        Cat = BagCat(Bag, PLCStn)
        Cus = BagCus(Bag, PLCStn)
        Cnt = BagCnt(Bag, PLCStn)
        ReportWrite Cus, CLng(Cat), 0, CLng(Cnt), 0, 0, CLng(SelectedStn), 0, 0, 0, ReportsPath
        'Send New Cat / Cus and Clear Count
        Cat = GetNumValFromLong(txtCat.Text, EditCat)
        Cus = GetNumValFromLong(txtCus.Text, EditCus)
        If Demo Then
            BagCat(Bag, PLCStn) = Cat
            BagCus(Bag, PLCStn) = Cus
        End If
        Call WriteBag(PLCStn, Bag, Cat, 0, 0, 0, Cus, 0)
    End If
    
    Call Comms_frm.LockWritePLC(False, PLCStn)
        
    If Not SpecialCounting Then
        SendStationPLC PLCStn, SelectedStn, Cat, Cus
    End If
   

End Sub


Private Sub Form_Load()
    
    
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG - Loading_frm", "Form_Load Start", False
    
    CheckFormPosition Me
    Me.Top = 100
    
    StnBank = ThisStation
    PLCStn = PLC_StnBank(StnBank)
    
        
    StartStn = Loading_StartStn(StnBank)
    EndStn = Loading_EndStn(StnBank)
    StationsFirstBag = Loading_BagStart(StnBank)
    SpecialCounting = Loading_Counting(StnBank)
    
    If SpecialCounting Then
        LocalMaxCat = MaxCatdb
    Else
        LocalMaxCat = MaxCat
    End If
    
    SelectedStn = StartStn
    
    Me.Caption = FileGetSetting("SettingsNetwork", "Config", "StationName" & Str(StnBank), "No Name! " & Index, NetPath)
    
    SetDisplay
    
    SetLanguage
    
    UpdateDisplay
    
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    
    'Don't close this form if it has been loaded at start-up and
    'Access Level is below Programmer
    
    Dim LoadAtStart As String
    
    LoadAtStart = FileGetSetting("SettingsLocal", "LoadingBigDisplay", "StartForm", "0", LocalPath)
    
    If AccessLevel < accProgrammer And Val(LoadAtStart) = StnBank Then
        If UnloadMode = 0 Then Cancel = True
    End If

End Sub

Private Sub lstCat_Click()
    
    On Error Resume Next
       
    txtCat.Text = ListGetNum(lstCat, EditCat)
    
    lstCat.Visible = False
    
End Sub

Private Sub lstCat_LostFocus()
    lstCat.Visible = False
End Sub

Private Sub lstCus_Click()
    On Error Resume Next
       
    txtCus.Text = ListGetNum(lstCus, EditCus)
    
    lstCus.Visible = False
    
    
    
End Sub

Private Sub lstCus_LostFocus()
    lstCus.Visible = False
End Sub

Private Sub tmrUpdate_Timer()
    
    UpdateDisplay
    
End Sub

Private Sub txtCat_Change()
    
    txtCatName.Text = BoxCatCusName(txtCat, EditCat, CLng(LocalMaxCat))
        
    ValidCat = txtCatName.Text <> ""
    
    EnableButtons
    
    
End Sub

Private Sub txtCat_Click()
    HighlightTextBox txtCat
End Sub

Private Sub txtCat_GotFocus()
    WorkingWith = GotFocusCat
End Sub

Private Sub txtCat_KeyDown(KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txtCat, KeyCode)
End Sub

Private Sub txtCat_KeyPress(KeyAscii As Integer)
    BoxKeyPress txtCat, KeyAscii, EditCat, LocalMaxCat
End Sub

Private Sub txtCatName_Change()
    'PopulateCategoryList lstCat, "", txtCatName.Text
    If lstCat.Visible Then PopulateCategoryListFromGroup GetNumValFromLong(txtCus.Text, EditCus), "CusGroups", lstCat, CInt(LocalMaxCat), txtCatName, True
End Sub

Private Sub txtCatName_Click()
    Dim Vis As Boolean
    
    txtCatName = ""
    txtCat = ""
    
    With lstCat
        Vis = Not .Visible
        lstCus.Visible = False
        If Vis Then
            .Left = txtCatName.Left
            .Top = txtCatName.Top + txtCatName.Height
            'PopulateCategoryList lstCat, "", txtCatName.Text
            PopulateCategoryListFromGroup GetNumValFromLong(txtCus.Text, EditCus), "CusGroups", lstCat, CInt(LocalMaxCat), txtCatName, True
            .Visible = True
        Else
            .Visible = False
        End If
    End With
    
    'HighlightTextBox txtCatName
End Sub

Private Sub txtCatName_GotFocus()
    WorkingWith = GotFocusCatName
End Sub

Private Sub txtCus_Change()
    
    txtCusName.Text = BoxCatCusName(txtCus, EditCus, MaxCusdb)
    
    ValidCus = txtCusName.Text <> ""
    
    EnableButtons
    
End Sub

Private Sub txtCus_Click()
    HighlightTextBox txtCus
End Sub

Private Sub txtCus_GotFocus()
    WorkingWith = GotFocusCus
End Sub

Private Sub txtCus_KeyDown(KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txtCus, KeyCode)
End Sub

Private Sub txtCus_KeyPress(KeyAscii As Integer)
    BoxKeyPress txtCus, KeyAscii, EditCus
End Sub

Private Sub txtCusName_Change()
    If lstCus.Visible Then PopulateCustomerList lstCus, "", txtCusName.Text
End Sub

Private Sub txtCusName_Click()
    
    Dim Vis As Boolean
    
    txtCusName = ""
    txtCus = ""
    
    With lstCus
        Vis = Not .Visible
        lstCat.Visible = False
        If Vis Then
            .Left = txtCusName.Left
            .Top = txtCusName.Top + txtCusName.Height
            PopulateCustomerList lstCus, "", txtCusName.Text
            .Visible = True
        Else
            .Visible = False
        End If
    End With
    
    
End Sub


Private Sub txtCusName_GotFocus()
    WorkingWith = GotFocusCusName
End Sub
Private Sub SetDisplay()
    
    
    
    Me.lstCat.Visible = False
    Me.lstCus.Visible = False
        
    'Add Names to Category Selection List
    'PopulateCategoryList lstCat, ""
    PopulateCategoryListFromGroup GetNumValFromLong(txtCus.Text, EditCus), "CusGroups", lstCat, CInt(LocalMaxCat), txtCatName, True
    'Add Names to Customer Selection List
    PopulateCustomerList lstCus, ""
    
    
    Dim n           As Integer
    Dim Stn         As Label
    Dim TotalStns   As Integer
        
    
        
    txtCus.Text = GetLongFromNumVal(CLng(BagCat(StationsFirstBag + (SelectedStn - StartStn), PLCStn)), EditCus)
    txtCat.Text = GetLongFromNumVal(CLng(BagCus(StationsFirstBag + (SelectedStn - StartStn), PLCStn)), EditCat)
    txtStn.Text = Format$(SelectedStn)
    
    
    TotalStns = 0
    For Each Stn In BagData()
        
        n = StartStn + Stn.Index - 1
        
        lblStnNum(Stn.Index).Caption = Format$(n)
        
        If n > EndStn Then
            BagData(Stn.Index).Visible = False
            BagData2(Stn.Index).Visible = False
            Me.shpStation(Stn.Index).Visible = False
            Me.BagRing(Stn.Index).Visible = False
            Me.lblWeight(Stn.Index).Visible = False
            Me.lblStnNum(Stn.Index).Visible = False
        End If
        TotalStns = TotalStns + 1
    Next Stn
    
    'Center visible stations from the total stations drawn on the form
    Dim MoveLeft As Integer
    MoveLeft = 0
    For n = 1 To TotalStns Step 2
        If Not shpStation(n).Visible Then MoveLeft = MoveLeft + (shpStation(n).Width / 2)
    Next n
    
    'Center visible stations
    For Each Stn In BagData()
        BagData(Stn.Index).Left = BagData(Stn.Index).Left + MoveLeft
        BagData2(Stn.Index).Left = BagData2(Stn.Index).Left + MoveLeft
        Me.shpStation(Stn.Index).Left = Me.shpStation(Stn.Index).Left + MoveLeft
        Me.BagRing(Stn.Index).Left = Me.BagRing(Stn.Index).Left + MoveLeft
        Me.lblWeight(Stn.Index).Left = Me.lblWeight(Stn.Index).Left + MoveLeft
        Me.lblStnNum(Stn.Index).Left = Me.lblStnNum(Stn.Index).Left + MoveLeft
    Next Stn
    
    Dim Button As CommandButton
    For Each Button In cmdKey()
        If Not SpecialCounting Then cmdKey(Button.Index).Visible = False
    Next Button
    
    For Each Button In cmdCursor()
        If Not SpecialCounting Then cmdCursor(Button.Index).Visible = False
    Next Button
    
    Me.cmdBS.Visible = SpecialCounting
    Me.cmdDel.Visible = SpecialCounting
    
End Sub

Private Sub txtStn_Change()
    
    ValidStn = Val(txtStn.Text) >= StartStn And Val(txtStn.Text) <= EndStn
    
    EnableButtons

End Sub

Private Sub txtStn_Click()
    HighlightTextBox txtStn
End Sub

Private Sub txtStn_GotFocus()
    WorkingWith = GotFocusStn
End Sub
Private Sub DisplayValues()
    
    Dim n As Integer
    
    txtStn.Text = Format$(SelectedStn)
    
    n = StationsFirstBag + (SelectedStn - StartStn)
    
    txtCus.Text = GetLongFromNumVal(BagCus(n, PLCStn), EditCus)
    txtCat.Text = GetLongFromNumVal(CLng(BagCat(n, PLCStn)), EditCat)
    
    

End Sub
Public Sub UpdateBag(Index As Integer)
        
    On Error GoTo UpdateBagError
        
        
    Dim BagBackColor As ColorConstants
    Dim BagForeColor As ColorConstants
    Dim BagBorderColor As ColorConstants
    Dim Cus             As Integer
    Dim Cat             As Integer
    Dim Wgt             As Integer
    Dim Day             As Integer
    Dim Dst             As Integer
    Dim LongStr         As String
    
    Cat = Val(BagCat(StationsFirstBag + (Index - 1), PLCStn))
    Cus = Val(BagCus(StationsFirstBag + (Index - 1), PLCStn))
    Wgt = Val(BagWgt(StationsFirstBag + (Index - 1), PLCStn))
    Day = Val(BagDay(StationsFirstBag + (Index - 1), PLCStn))
    Dst = Val(BagDst(StationsFirstBag + (Index - 1), PLCStn))
             
     If (((Cat > 0) Or EditStorage) And (Index <> 0)) Then
         
         Select Case DisplayOption
            Case myCat
                BagData(Index).Caption = Format(Cat)
                If Cat = MaxCat Then BagData(Index).Caption = TextWord(139)
            Case myCus
                BagData(Index).Caption = Format(Cus)
            Case myDst
                BagData(Index).Caption = Format(Dst)
            Case myCatLong
                LongStr = Space(AbbrCusInBag)
                Text = CatLong(Cat)
                If (dbSettingValue(CatDbLongIDShowLeft) <> "0") Then
                    Text = Left$(Text, AbbrCatInBag)
                Else
                    Text = Right$(Text, AbbrCatInBag)
                End If
                Mid$(LongStr, 1, (Len(Text))) = Text
                If AbbrCatInBag <= 5 Then
                    BagData(Index).Caption = RTrim(Left$(LongStr, 5))
                Else
                    BagData(Index).Caption = Left$(LongStr, 4) & " " & Mid$(LongStr, 5, Len(LongStr) - 4)
                End If
            Case myCusLong
                LongStr = Space(AbbrCusInBag)
                Text = CusLong(Cus)
                If (dbSettingValue(CusDbLongIDShowLeft) <> "0") Then
                    Text = Left$(Text, AbbrCusInBag)
                Else
                    Text = Right$(Text, AbbrCusInBag)
                End If
                Mid$(LongStr, 1, (Len(Text))) = Text
                If AbbrCusInBag <= 5 Then
                    BagData(Index).Caption = RTrim(Left$(LongStr, 5))
                Else
                    BagData(Index).Caption = Left$(LongStr, 4) & " " & Mid$(LongStr, 5, Len(LongStr) - 4)
                End If
            Case myDay
                BagData(Index).Caption = UCase(TextWord(690 + Day)) 'Mon, Tue etc..
                'BagData(Index).Caption = Format(Day)  'Number Only
            Case myCatCusDay
                BagData(Index).Caption = " " & Format$(Cat, "00") & "  " & Format$(Cus, "00") & " " & Format$(Day, "0")
            'Case myCatDst
            '    LongStr = Space(7)
            '    Mid$(LongStr, 2, 3) = Format$(Cat, "000")
            '    Mid$(LongStr, 6, 2) = Format$(Dst, "00")
            '    BagData(Index).Caption = LongStr
            Case 10
                BagData(Index).Caption = Index
         
         End Select
         
         'Bag Color Section
         If (Cat > 0) Then
             Select Case ColourChoice '0=No Color, 1=Category, 2=Cusotmer, 3=Cat or Cus
                 Case 1
                     BagBackColor = CatColB(Cat)
                     BagForeColor = CatColF(Cat)
                 Case 2
                     BagBackColor = CusColB(Cus)
                     BagForeColor = CusColF(Cus)
                 Case 3
                     If ((DisplayOption = 0) Or (DisplayOption = 3)) Then
                         BagBackColor = CatColB(Cat)
                         BagForeColor = CatColF(Cat)
                     ElseIf ((DisplayOption = 1) Or (DisplayOption = 4)) Then
                         BagBackColor = CusColB(Cus)
                         BagForeColor = CusColF(Cus)
                     ElseIf (DisplayOption = 2) Then
                         BagBackColor = Maindisp2_BagColour
                         BagForeColor = vbWhite
                     End If
                 Case Else
                     BagBackColor = Maindisp2_BagColour
                     BagForeColor = vbWhite
             End Select
             
                              
             If (BagDst(StationsFirstBag + (Index - 1), PLCStn) > 0) Then BagBorderColor = BagForeColor Else BagBorderColor = BagBackColor     'BagBackColor
             If BagRing(Index).BackColor <> BagBackColor Then BagRing(Index).BackColor = BagBackColor
             If BagRing(Index).BorderColor <> BagBorderColor Then BagRing(Index).BorderColor = BagBorderColor
             If BagData(Index).ForeColor <> BagForeColor Then BagData(Index).ForeColor = BagForeColor
             
         Else
             If EditStorage And BagRing(Index).BackColor <> DarkGrey Then
                 BagRing(Index).BackColor = DarkGrey
                 BagRing(Index).BorderColor = DarkGrey
                 BagData(Index).ForeColor = LightGrey
             End If
         End If
         
         BagData(Index).Visible = True
         BagRing(Index).Visible = True
         'BagShadow(Index).Visible = True
     
         BagRing(Index).BackStyle = 1 'Solid
     
     Else
         
         BagData(Index).Visible = False
         'BagShadow(Index).Visible = False
                   
         
         'Show all bag positions with grey circle except bags in transit
         'where the FillColor  is set to vbRed H255 at design time
         If BagRing(Index).FillColor = vbRed Then
             BagRing(Index).Visible = False
         Else
             BagRing(Index).BackStyle = 0 'Transparent
             BagRing(Index).BorderColor = DarkGrey
         End If
            
     End If
            
     If DisplayOption <> OldDisplayOption Then
     
        Select Case DisplayOption
                
             Case 0, 1, 2
                                          
                BagData(Index).Top = BagRing(Index).Top + 300
                BagData(Index).FontSize = 36
                   
             
             Case 3, 4
                 
                BagData(Index).Top = BagRing(Index).Top + 600
                BagData(Index).FontSize = 14
            
               
        End Select
        
        
    
    End If
    
Exit Sub

UpdateBagError:
    If Err = 340 Then 'Element Does Not Exist
        Exit Sub
    Else
        ErrorHandler Err, "TrackView UpdateBag", Err.Description & "  Bag =" & Str(Index), False
        Resume Next
    End If
End Sub

Private Sub txtStn_KeyDown(KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txtStn, KeyCode)
End Sub


Private Sub txtStn_KeyPress(KeyAscii As Integer)
    BoxKeyPress txtStn, KeyAscii, EditStn
End Sub


Private Sub EnableButtons()
    
    Me.cmdSend.Enabled = (ValidStn And ValidCat And ValidCus)
    
    Me.cmdAllCustomers.Enabled = ValidCus
    
End Sub

Private Sub SetLanguage()

    Me.cmdSend.Caption = TextWord(627)
    
    Me.cmdAllCustomers.Caption = TextWord(626)
End Sub

Private Sub UpdateDisplay()
    
    'Display Weight Labels
    Dim Bag    As Label
    Dim Index   As Integer
    
    For Each Bag In BagData()
        
        Index = Bag.Index
        
        If Bag.Visible Then
        
            'UpdateBag Index
            UpdateBagSpecial Index
            
            If Not SpecialCounting Then
                lblWeight(Index).Caption = Format$(BagWgt(StationsFirstBag + Index - 1, PLCStn) / 10, "00") & " " & TextWord(224)
                'Show weight labels in White if in the Q
                If StnInQ(StartStn + Index - 1) > 0 Then
                    If lblWeight(Index).ForeColor <> vbWhite Then lblWeight(Index).ForeColor = vbWhite
                Else
                    If lblWeight(Index).ForeColor <> vbHighlight Then lblWeight(Index).ForeColor = vbHighlight
                End If
            Else
                lblWeight(Index).Caption = Format$(BagCnt(StationsFirstBag + Index - 1, PLCStn), "0000")
            End If
            
        
        End If
        
        DoEvents

    Next Bag
    
    OldDisplayOption = DisplayOption

End Sub
Function DisplayBagSpecial(Bag, BagData, PLCStn)
    
    Dim LongStr As String
    Dim CatNo   As Integer
    Dim CusNo   As Integer
    Dim Text    As String
    
    If TrapErrors Then On Error GoTo Error_DisplayBag
    'transfer data from array into bag locations
    
    CatNo = BagCat(Bag, PLCStn)
    CusNo = BagCus(Bag, PLCStn)
    
    Select Case BagData
        Case 0
            If CatNo <> MaxCat And CatNo <= LocalMaxCat Then
                DisplayBagSpecial = Format$(CatNo, "00")
            ElseIf CatNo = MaxCat Then
                DisplayBagSpecial = TextWord(139)
            Else
                DisplayBagSpecial = "**"
            End If
        Case 1
            If CusNo < MaxCus Then
                DisplayBagSpecial = Format$(CusNo, "00")
            ElseIf CusNo = MaxCus Then
                DisplayBagSpecial = TextWord(139)
            Else
                DisplayBagSpecial = "**"
            End If
        Case 2
            DisplayBagSpecial = Format$(BagDst(Bag, PLCStn), "00")
            
        Case 3
            
            Text = CatLong(CatNo)
            'If (dbSettingValue(CatDbLongIDShowLeft) <> "0") Then
            '    Text = Left$(Text, AbbrCatInBag)
            'Else
            '    Text = Right$(Text, AbbrCatInBag)
            'End If
            DisplayBagSpecial = Text
                        
        Case 4
            
            Text = CusLong(CusNo)
            If (dbSettingValue(CusDbLongIDShowLeft) <> "0") Then
                Text = Left$(Text, AbbrCusInBag)
            Else
                Text = Right$(Text, AbbrCusInBag)
            End If
            DisplayBagSpecial = Text
                        
    End Select

Exit Function

Error_DisplayBag:
    
    If Err = 9 Then
        Resume Next
    Else
        ErrorHandler Err, "DisplayBag", "BagData = " & Str(BagData), True
        Resume Next
    End If

Exit Function

End Function
Public Sub UpdateBagSpecial(Index As Integer)
        
    On Error GoTo UpdateBagError
        
        
    Dim BagBackColor As ColorConstants
    Dim BagForeColor As ColorConstants
    Dim BagBorderColor As ColorConstants
    Dim Cus As Integer
    Dim Cat As Integer
                  
     Cat = Val(BagCat(StationsFirstBag + (Index - 1), PLCStn))
     Cus = Val(BagCus(StationsFirstBag + (Index - 1), PLCStn))
             
     If (((Cat > 0) Or EditStorage) And (Index <> 0)) Then
         
        'DisplayOption 0=Cat, 1=Cus, 2=Dest ,3=CatAbbr ,4=CusAbbr
        'If DisplayOption > 2 Then
            BagData(Index).Caption = DisplayBagSpecial(StationsFirstBag + (Index - 1), 3, PLCStn)
            BagData2(Index).Caption = DisplayBagSpecial(StationsFirstBag + (Index - 1), 4, PLCStn)
        'Else
        '    BagData(Index).Caption = DisplayBagSpecial(StationsFirstBag + (Index - 1), 1, PLCStn)
        '    BagData2(Index).Caption = DisplayBagSpecial(StationsFirstBag + (Index - 1), 2, PLCStn)
        'End If
         
        'Bag Color Section
         If (Cat > 0) Then
             Select Case ColourChoice '0=No Color, 1=Category, 2=Cusotmer, 3=Cat or Cus
                 Case 1
                     BagBackColor = CatColB(Cat)
                     BagForeColor = CatColF(Cat)
                 Case 2
                     BagBackColor = CusColB(Cus)
                     BagForeColor = CusColF(Cus)
                 Case 3
                     If ((DisplayOption = 0) Or (DisplayOption = 3)) Then
                         BagBackColor = CatColB(Cat)
                         BagForeColor = CatColF(Cat)
                     ElseIf ((DisplayOption = 1) Or (DisplayOption = 4)) Then
                         BagBackColor = CusColB(Cus)
                         BagForeColor = CusColF(Cus)
                     ElseIf (DisplayOption = 2) Then
                         BagBackColor = Maindisp2_BagColour
                         BagForeColor = vbWhite
                     End If
                 Case Else
                     BagBackColor = Maindisp2_BagColour
                     BagForeColor = vbWhite
             End Select
             
                              
             If (BagDst(StationsFirstBag + (Index - 1), PLCStn) > 0) Then BagBorderColor = BagForeColor Else BagBorderColor = BagBackColor     'BagBackColor
             If BagRing(Index).BackColor <> BagBackColor Then BagRing(Index).BackColor = BagBackColor
             'If BagRing(Index).BorderColor <> BagBorderColor Then BagRing(Index).BorderColor = BagBorderColor
             If BagData(Index).ForeColor <> BagForeColor Then BagData(Index).ForeColor = BagForeColor
             If BagData2(Index).ForeColor <> BagForeColor Then BagData2(Index).ForeColor = BagForeColor
             
         Else
             If EditStorage And BagRing(Index).BackColor <> DarkGrey Then
                 BagRing(Index).BackColor = DarkGrey
             '    BagRing(Index).BorderColor = DarkGrey
                 BagData(Index).ForeColor = LightGrey
                 BagData2(Index).ForeColor = LightGrey
             End If
         End If
         
         BagRing(Index).BackStyle = 1 'Solid
                     
     End If
            
     
    
Exit Sub

UpdateBagError:
    If Err = 340 Then 'Element Does Not Exist
        Exit Sub
    Else
        ErrorHandler Err, "TrackView UpdateBag", Err.Description & "  Bag =" & Str(Index), False
        Resume Next
    End If
End Sub
