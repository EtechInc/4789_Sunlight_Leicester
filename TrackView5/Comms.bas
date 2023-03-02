Attribute VB_Name = "Comms"
'Communications with Different PLC Types
Public PLCType(MaxPLC)  As Integer
Public Const m68k = 0                    'CP260 Motorola and Mitsubishi
Public Const i386 = 1                    'CP360 Intel

'Communications Declerations
Public PLCConnected(MaxPLC) As Boolean

Public MaxTCPConnections    As Integer
Public SendString           As String
Public WaitPLCReplyWrite    As Integer
Public WaitPLCReplyRead()   As Integer
Public Data(500)            As Integer
Public Data32(500)          As Long
Public ConnectsRead()       As Long
Public ConnectsWrite()      As Long
Public PLCStation()         As Integer
Public BytesRead()          As Long
Public BytesWrite()         As Long
Public MaxBytesRead()       As Long
Public MaxBytesWrite()      As Long
Public NotConnected         As Byte

'Communications Device Types
Public DeviceBytes(10)      As Integer
Public Const DeviceC = 1
Public Const DeviceD = 2
Public Const DeviceBag = 3
Public Const DeviceRBPosn = 4
Public Const DeviceD32 = 5
Public Const DeviceMCN = 6

Public Const PLCWriteCritical = 0
Public Const PLCWriteNonCritical = 1

Public Sub CommsSetDeviceBytes()
    DeviceBytes(DeviceC) = 2        'C
    DeviceBytes(DeviceD) = 2        'D
    DeviceBytes(DeviceBag) = 32 '28     'Bag
    DeviceBytes(DeviceRBPosn) = 304 'RB Position
    DeviceBytes(DeviceD32) = 4      'D32
    DeviceBytes(DeviceMCN) = 12      'MCN machine
End Sub
Public Function EncodeWrite(PLC_Station_No As Integer, Device As String, Start As Integer, _
                    Amount As Integer, Data As Variant)
    
    Dim SendString      As String
    Dim HexString       As String
    Dim DataString      As String
    Dim DataStr         As String
    Dim ByteLen         As Integer
    Dim WriteStn        As String
    Dim WriteStart      As String
    Dim WriteLength     As String
    Dim BinString       As String
    Dim CheckSum        As String
    Dim TotalRegisters  As Integer
    
    'Format PLC Station number
    If PLC_Station_No >= 0 And PLC_Station_No <= 255 Then
        Convert_Hex PLC_Station_No, 2, WriteStn
    Else
        MsgBox "Invalid PLC Station", vbOKOnly, "EncodeWrite"
        GoTo Failed:
    End If
    
    'Format the device
    Select Case Device
        
        Case "C", "c"
            WriteDevice = "01"
            ByteLen = DeviceBytes(DeviceC)
            WriteCmd = "03"
        Case "D", "d"
            WriteDevice = "02"
            ByteLen = DeviceBytes(DeviceD)
            WriteCmd = "03"
        Case "E", "e", "R", "r"
            WriteDevice = "03"
            ByteLen = DeviceBytes(DeviceD)
            WriteCmd = "03"
        Case "Bag", "BAG"
            WriteDevice = "03"
            ByteLen = DeviceBytes(DeviceBag)
            WriteCmd = "03"
        Case "RB_Posn", "RB_POSN", "rb_posn"
            WriteDevice = "04"
            ByteLen = DeviceBytes(DeviceRBPosn)
            WriteCmd = "03"
        Case "D32", "d32"
            WriteDevice = "05"
            ByteLen = DeviceBytes(DeviceD32)
            WriteCmd = "03"
        Case Else
            MsgBox "Invalid Device", vbOKOnly, "EncodeWrite"
            GoTo Failed
    
    End Select
                    
    'Format Start
    If Start >= 0 And Start <= 65535 Then
        Convert_Hex Start, 4, WriteStart
    Else
        GoTo Failed:
    End If
    'Format Amount
    If Amount > 0 And Amount <= 1000 Then '120 Then
        Convert_Hex Amount, 4, WriteLength
    Else
        MsgBox "Invalid Amount", vbOKOnly, "EncodeWrite"
        GoTo Failed:
    End If
    
    'Is PLC i386 or M68K
    WriteData = ""
    TotalRegisters = ((Amount * ByteLen) / 2)
    For n = 0 To TotalRegisters - 1
        Convert_Hex CInt(Data(n)), 4, HexString
        If (PLCType(PLC_Station_No) = i386) Then
            DataString = Right(HexString, 2) & Left(HexString, 2)
            WriteData = WriteData + DataString
        Else
            WriteData = WriteData + HexString
        End If
        
        
    Next n
    
    SendString = WriteStn & WriteCmd & WriteDevice & WriteStart & WriteLength _
        & WriteData
    
    
    'ConvertAsciiToBinary SendString, BinString
    'CheckSum_Binary BinString, CheckSum
    'EncodeWrite = BinString & CheckSum
    EncodeWrite = SendString
    
Exit Function
Failed:
    EncodeWrite = "Failed"
   
End Function
    

Public Sub ConvertBinaryToAscii(InString As String, OutString As String)
    
    Dim HexString As String
    Dim AsciiString As String
    
    HexString = ""
    
    Check = 0
    
    If Len(InString) < 2 Then Exit Sub
        
    For n = 1 To Len(InString)
        AsciiString = Hex$(Asc(Mid$(InString, n, 1)))
        If Len(AsciiString) = 1 Then AsciiString = "0" & AsciiString
        HexString = HexString & AsciiString
    Next
  
    OutString = HexString

End Sub
Public Sub ConvertAsciiToBinary(InString As String, OutString As String)
                 
    OutString = ""
    For n = 1 To Len(InString) Step 2
        OutString = OutString & Chr$(Format$(Val("&H" & Mid$(InString, n, 2))))
    Next
    
End Sub
Public Sub CheckSum_Binary(InString As String, OutString As String)
    
    Dim Check As Long
    Check = 0
    
    For n = 1 To Len(InString)
        'Check = Check + Val("&H" & Mid$(InString, n, 1))
        Check = Check + Asc(Mid$(InString, n, 1))
    Next
  
    OutString = Chr(Check And 255) 'Convert to 2 digits only
    
End Sub
Public Sub CheckSum_Ascii(InString As String, OutString As String)
    
    Dim Check As Integer
    Check = 0
    
    For n = 1 To Len(InString)
        Check = Check + Val(Asc(Mid$(InString, n, 1)))
    Next
    
    OutString = Chr(Hex(Check And 255)) 'Convert to 2 digits only
    

End Sub



Public Sub Convert_Hex(Data As Integer, Length As Integer, ReplyString As String)

Dim HexString As String

'Debug.Print "Convert_Hex Data=" & Data

HexString = Trim(Hex(Data))
If Len(HexString) > Length Then HexString = 0
Do While Len(HexString) < Length
    HexString = "0" & HexString
Loop
ReplyString = HexString

End Sub

Public Sub ConvertIntToByte(Input1 As Integer, OutputH As Integer, OutputL As Integer)
    
    Dim HexString As String
    
    HexString = Hex(Input1)
    
    'Make 4 digit Hex string
    Do While Len(HexString) < 4
        HexString = "0" & HexString
    Loop
    
    OutputL = Val("&H" & Right$(HexString, 2))
    
    OutputH = Val("&H" & Left$(HexString, 2))
    
End Sub

Public Sub ConvertByteToInt(InputH As Integer, InputL As Integer, Output1 As Integer)

    Dim HexStringL As String
    Dim HexStringH As String
        
    If InputL > 255 Then InputL = 255
    If InputH > 255 Then InputH = 255
        
    HexStringL = Hex(InputL)
    'Make 2 digit Hex string
    Do While Len(HexStringL) < 2
        HexStringL = "0" & HexStringL
    Loop
    
    HexStringH = Hex(InputH)
    'Make 2 digit Hex string
    Do While Len(HexStringH) < 2
        HexStringH = "0" & HexStringH
    Loop
    
    Output1 = Val("&H" & HexStringH & HexStringL)
    

End Sub

Public Sub ConvertLongToInt(Input1 As Long, OutputH As Integer, OutputL As Integer)
    
    Dim HexString As String
    
    HexString = Hex(Input1)
    
    'Make 8 digit Hex string
    Do While Len(HexString) < 8
        HexString = "0" & HexString
    Loop
    
    OutputL = Val("&H" & Right$(HexString, 4))
    
    OutputH = Val("&H" & Left$(HexString, 4))
    
End Sub

Public Sub ConvertIntToLong(InputH As Integer, InputL As Integer, Output1 As Long)
    
    Dim HexStringL As String
    Dim HexStringH As String
            
    'If InputL < 0 Then InputL = InputL + 65536
                
    HexStringL = Hex(InputL)
    'Make 4 digit Hex string
    Do While Len(HexStringL) < 4
        HexStringL = "0" & HexStringL
    Loop
    
    HexStringH = Hex(InputH)
    'Make 4 digit Hex string
    Do While Len(HexStringH) < 4
        HexStringH = "0" & HexStringH
    Loop
    
    Output1 = CDbl("&H" & HexStringH & HexStringL)
       
End Sub

