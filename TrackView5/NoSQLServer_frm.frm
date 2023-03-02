VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form NoSQLServer_frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "SQL Server not ready"
   ClientHeight    =   1425
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6300
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1425
   ScaleWidth      =   6300
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrConnect 
      Interval        =   30000
      Left            =   300
      Top             =   300
   End
   Begin VB.TextBox txtPass 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   3120
      PasswordChar    =   "*"
      TabIndex        =   1
      Text            =   "Text1"
      Top             =   840
      Width           =   1575
   End
   Begin MSComCtl2.Animation aniConnect 
      Height          =   690
      Left            =   2400
      TabIndex        =   0
      Top             =   75
      Width           =   1440
      _ExtentX        =   2540
      _ExtentY        =   1217
      _Version        =   393216
      Center          =   -1  'True
      BackColor       =   14408148
      FullWidth       =   96
      FullHeight      =   46
   End
   Begin VB.Label lblPass 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Enter Password"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1320
      TabIndex        =   2
      Top             =   900
      Width           =   1755
   End
End
Attribute VB_Name = "NoSQLServer_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
            
    'CenterForm Me (Don't use as will crash)
    Me.Left = (Screen.Width - Me.Width) / 2
    Me.Top = (Screen.Height - Me.Height) / 2
    
    txtPass.Text = ""
    
    aniConnect.AutoPlay = True
    aniConnect.Open App.Path & "\Graphics\Findcomp.avi"
     
        
End Sub

Private Sub txtPass_Change()

    CheckConnPwordOK = (txtPass.Text = "7701")
    If CheckConnPwordOK Then
        AccessLevel = accDesigner 'Enable SQL Server Path and Database name to be changed
        txtPass.BackColor = &H80FF80    'Green
    Else
        txtPass.BackColor = vbWhite
    End If
    
End Sub


