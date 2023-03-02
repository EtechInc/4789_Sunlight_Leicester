Attribute VB_Name = "tcpAuthenication"
Public Type SessionInfo_typ
    UserName As String
    Domain As String
    SessionID As String
End Type

Public SessionInfo As SessionInfo_typ

Public Sub GetEnviromentSettings() 'Read all windows enviroments settings
    Dim i As Integer
    i = 1
    While Environ$(i) <> ""
        Debug.Print Environ(i)
        i = i + 1
    Wend
    'We can use the USERNAME,USERDOMAIN, MAYBE SESSIONNAME
End Sub

Public Sub GetSessionInfo()
    GetEnviromentSettings
    
    Debug.Print GetMACid
    
    SessionInfo.UserName = Environ$("USERNAME")
    SessionInfo.Domain = Environ$("USERDOMAIN")
    SessionInfo.SessionID = Environ$("SESSIONNAME")
    
End Sub

Public Function GetMACid() As String

Dim computer As String
Dim wmi As Variant
Dim query As Variant
Dim mac As Variant
Dim mac_ids As String

computer = "."

Set wmi = GetObject("winmgmts:" & _
    "{impersonationLevel=impersonate}!\\" & _
    computer & "\root\cimv2")

Set query = wmi.ExecQuery("SELECT * FROM Win32_NetworkAdapterConfiguration where IPEnabled = true")

For Each mac In query
    mac_ids = mac_ids & ", " & mac.MacAddress
Next mac

If Len(mac_ids) > 0 Then mac_ids = Mid$(mac_ids, 3)

GetMACid = mac_ids

End Function

Public Function CheckTcpDriverAuthenication() As Boolean
    ' To check if the trackview instance is authorised to load TCP/IP Driver. We check the MAC Address/es AND USER NAME + DOMAIN ANd POSSIBLY SESSIONID

    
End Function
