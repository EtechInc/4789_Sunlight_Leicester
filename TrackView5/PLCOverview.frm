VERSION 5.00
Begin VB.Form PLCOverview_frm 
   Caption         =   "PLC Information"
   ClientHeight    =   8955
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6540
   LinkTopic       =   "Form1"
   ScaleHeight     =   8955
   ScaleWidth      =   6540
   Begin VB.Timer tmrUpdate 
      Interval        =   500
      Left            =   300
      Top             =   300
   End
   Begin VB.ListBox lstInfo 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   161
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   8700
      IntegralHeight  =   0   'False
      ItemData        =   "PLCOverview.frx":0000
      Left            =   150
      List            =   "PLCOverview.frx":0002
      TabIndex        =   0
      Top             =   150
      Width           =   6240
   End
End
Attribute VB_Name = "PLCOverview_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    
    With lstInfo
        
    For PLC = 0 To MaxPLC
        For SEQ = 1 To MaxSequences
            If SeqStepDescription(SEQ, 1, PLC) <> "" Then
                .AddItem Format$(SEQ, "#0") & " -  " & SeqName(SEQ, PLC) & "  " & Sequences(SEQ, PLC)
                .ItemData(.NewIndex) = SEQ
            End If
            
        Next SEQ
    Next PLC
        
    End With
    
End Sub
