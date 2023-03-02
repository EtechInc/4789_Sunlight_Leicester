Attribute VB_Name = "API_Windows"
'Displays the Exit dialog box
Public Declare Sub ExitWindowsDialog Lib "shell32.dll" Alias "#60" (ByVal hwndOwner As Long)

'Exit Windows parameters
Private Declare Function ExitwindowsEx Lib "User32" Alias "ExitWindowsEx" (ByVal dwoption As String, ByVal dwcharge As String)

'Get / Set Computer Name
Private Declare Function SetComputerName Lib "kernel32" Alias "SetComputerNameA" (ByVal lpComputerName As String) As Long
Private Declare Function GetComputerName Lib "kernel32" Alias "GetComputerNameA" (ByVal lpBuffer As String, nSize As Long) As Long

Public Sub WindowsExitDialog(FormName As Form)
    ExitWindowsDialog FormName.hWnd
End Sub

Public Sub WindowsShutDown()
    Shell ("Shutdown /s /t 0")
    End
End Sub

Public Sub WindowsReStart()
    Shell ("Shutdown /r /t 0")
    End
End Sub

Public Sub SetCompName(Name As String)
    
    If Len(Name) > 15 Then Name = Left(Name, 15)
    If (Name <> "") Then
        Call SetComputerName(Name)
    End If
    
    'Dim ComName As String
    'ComName = InputBox("Please enter a new computer name.")
    'SetComputerName ComName
    'MsgBox "Computername Set To " & ComName
    
End Sub

Public Function GetCompName()
      
    Dim BuffLen As Long, Buffer As String

    BuffLen = 16 'Max Characters(15) + 1

    Buffer = String(BuffLen, "*")
    GetComputerName Buffer, BuffLen
        
    GetCompName = Left(Buffer, BuffLen)
    
    'Buffer = Left(Buffer, BuffLen)
    'MsgBox "This Computer's Name Is : " & CBuffer

End Function
