VERSION 5.00
Begin VB.Form TicketPrint 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   Caption         =   "Ticket Print"
   ClientHeight    =   15495
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   10995
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   HasDC           =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   15495
   ScaleWidth      =   10995
   ShowInTaskbar   =   0   'False
   Begin VB.Timer tmrCheck 
      Interval        =   5000
      Left            =   10350
      Top             =   900
   End
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   2610
      Left            =   -300
      Picture         =   "TicketPrint.frx":0000
      ScaleHeight     =   2610
      ScaleWidth      =   12225
      TabIndex        =   0
      Top             =   -375
      Width           =   12225
   End
   Begin VB.Label lblTicketWeight 
      BackColor       =   &H00FFFFFF&
      Caption         =   "53kg"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   615
      Left            =   3825
      TabIndex        =   10
      Top             =   5400
      Width           =   6990
   End
   Begin VB.Label lblTicketCategory 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Sheets"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   615
      Left            =   3825
      TabIndex        =   9
      Top             =   4575
      Width           =   6990
   End
   Begin VB.Label lblTicketCustomer 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Kannegiesser"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   615
      Left            =   3825
      TabIndex        =   8
      Top             =   3750
      Width           =   6990
   End
   Begin VB.Label lblTicketTime 
      BackColor       =   &H00FFFFFF&
      Caption         =   "14:42"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   615
      Left            =   3825
      TabIndex        =   7
      Top             =   3000
      Width           =   6990
   End
   Begin VB.Label lblTicketDate 
      BackColor       =   &H00FFFFFF&
      Caption         =   "12/01/2003"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   615
      Left            =   3825
      TabIndex        =   6
      Top             =   2250
      Width           =   6990
   End
   Begin VB.Label lblDate 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Caption         =   "Date:"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   615
      Left            =   1425
      TabIndex        =   5
      Top             =   2250
      Width           =   2265
   End
   Begin VB.Label lblTime 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Caption         =   "Time:"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   615
      Left            =   1425
      TabIndex        =   4
      Top             =   3000
      Width           =   2265
   End
   Begin VB.Label lblWgt 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Caption         =   "Weight:"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   615
      Left            =   150
      TabIndex        =   3
      Top             =   5400
      Width           =   3540
   End
   Begin VB.Label lblCat 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Caption         =   "Category:"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   615
      Left            =   150
      TabIndex        =   2
      Top             =   4575
      Width           =   3540
   End
   Begin VB.Label lblCust 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      Caption         =   "Customer:"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   615
      Left            =   150
      TabIndex        =   1
      Top             =   3750
      Width           =   3540
   End
End
Attribute VB_Name = "TicketPrint"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim PLCStn As Integer
Private Sub Form_Load()
    
    'Me.Top = 0
    'Me.Left = 200
    SetFormLanguage
    PLCStn = TicketPLC
    'Me.Visible = True
    'Me.Show
    
End Sub
Public Sub SetFormLanguage()
    
    On Error Resume Next
    
    lblDate.Caption = TextWord(237)
    lblTime.Caption = TextWord(151)
    lblCust.Caption = TextWord(33)
    lblCat.Caption = TextWord(676)
    lblWgt.Caption = TextWord(214)
    lblItems.Caption = TextWord(205)
    

End Sub

Private Sub tmrCheck_Timer()
    
    On Error GoTo tmrCheckError
    
    If BagCat(TicketBagNo, PLCStn) > 0 Then
                        
        lblTicketDate.Caption = Format$(Now, "dd/mm/yyyy")
        lblTicketTime.Caption = Format$(Now, "HH:mm")
        lblTicketCustomer.Caption = CusName(BagCus(TicketBagNo, PLCStn))
        lblTicketCategory.Caption = GrpName(BagCat(TicketBagNo, PLCStn))
        lblTicketWeight.Caption = Format$(BagWgt(TicketBagNo, PLCStn) / 10) & TextWord(224)
        
        Set Printer = Printers(TicketPrinter)
        TicketPrint.PrintForm
            
        Data(0) = 0
        Comms_frm.WritePLC PLCStn, "E", (TicketBagNo * 5) - 5, 1, Data(), False, "TicketPrint"
                    
        BagCat(TicketBagNo, PLCStn) = 0
        
        
                        
    End If
    
    
    
Exit Sub
tmrCheckError:
    ErrorHandler Err, "Ticket Print tmrCheck", Err.Description, False
    Resume Next
End Sub
