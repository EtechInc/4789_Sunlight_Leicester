Attribute VB_Name = "MISSQL"

Public MISSQLServerUse             As Boolean
Public MISSQLServerStatus          As Long
Public MISSQLServerLastStatus      As Long
Public MISSQLServerBlockRead       As Boolean
Public MISSQLServerReTryCount      As Integer

Public MISSQLTestNoConnection      As Boolean

Public Const StatusNotUsed = 0
Public Const StatusOnline = 1
Public Const StatusOffline = 2
Public Const StatusRunIfNoConnection = 4


Public MISSQLServerAllowExtraInfo  As Boolean

Public MISSQLServerPath            As String
Public MISSQLServerDbName          As String
Public MISSQLServerConnected       As Boolean

Public MISSQLcn                    As ADODB.Connection


Public Const ActionFailed = 0
Public Const ActionComplete = 1

'Get Batch Contents
Public Type GetBatchContents_Type
    CategoryID      As Long
    CategoryName    As String
    CustID          As Long
    CustName        As String
    Weight          As Long
End Type
Public GetBatchContentsRecords   As Integer
Public GetBatchContents()        As GetBatchContents_Type

'Batch Number (Bag.Bid)
Public Type BatchID_Type
    PLCNumber       As Long
    Number          As Long
    MachID          As Long
    LocationNumber  As Long
    ElementIndex    As Long
    TimeStamp       As Date
End Type

Public BatchID(MaxPLC) As BatchID_Type

'Batch Contents Buffer - Only filled if MISSQL server is offline
Public Type BatchContentsBuffer_Type
    Cus  As Long
    Cat  As Long
    Wgt  As Long
    Cnt  As Long
    Stn  As Long
    Mcn  As Long
    Grp  As Long
    Bid  As Long
    Dst  As Long
    Day  As Long
    Spe  As Long
    MISSQLID  As Long
End Type

Public BatchContentsRecords   As Integer
Public BatchContents()        As BatchContentsBuffer_Type


Public Sub MISSQLMain()

    MISSQLServerPath = db_uspSettingGet("SettingsNetwork", "MISSQLServer", "MISSQLServerPath", DefaultMISSQLPath, PCNum)
    MISSQLServerDbName = db_uspSettingGet("SettingsNetwork", "MISSQLServer", "MISSQLServerDbName", "MISDB3", PCNum)
    MISSQLServerUse = db_uspSettingGet("SettingsNetwork", "MISSQLServer", "MISSQLServerUse", False, PCNum)
    
    Call MISSQLServerSetStatus
        
    'Call MISSQLServerConnect
    
End Sub

Public Sub MISSQLServerSetStatus()
    
    On Error GoTo MISSQLServerSetStatus_Error
    
    Dim MISSQLServerIgnore As Boolean
    
    MISSQLServerIgnore = db_uspSettingGet("SettingsNetwork", "MISSQLServer", "MISSQLRunIfNoConnection", 0, PCNum)
    
    MISSQLServerBlockRead = False 'Clear blocking of comms reading
    
    If MISSQLServerUse Then
        If (MISSQLServerReTryCount = 0) Then
            MISSQLServerStatus = StatusOnline
        Else
            MISSQLServerStatus = StatusOffline
            If MISSQLServerIgnore Then MISSQLServerStatus = (MISSQLServerStatus + StatusRunIfNoConnection)
        End If
        'Add Run If No Connection Option - PLC can see and decide what to do
        'If MISSQLServerIgnore Then MISSQLServerStatus = (MISSQLServerStatus + StatusRunIfNoConnection)
    Else
        MISSQLServerStatus = StatusNotUsed
    End If
    
    If MISSQLServerStatus <> MISSQLServerLastStatus Then
        'Write Status to PLC
        Data32(0) = MISSQLServerStatus
        WriteD32 MasterPLC, 217, 1, Data32()
        MISSQLServerBlockRead = True 'Block comms reading to allow write to complete
    End If
    
    MISSQLServerLastStatus = MISSQLServerStatus 'Allow testing without PLC connection
    
Exit Sub
MISSQLServerSetStatus_Error:
    
    ErrorHandler Err, "MISSQL.bas MISSQLServerSetStatus", Err.Description, False
    Resume Next

End Sub

Public Sub MISSQLServerConnect()
       
    On Error GoTo MISSQLServerConnect_Error
          
    If Not MISSQLServerConnected And (MISSQLServerReTryCount = 0) Then
          
        Set MISSQLcn = New ADODB.Connection
              
        If Not MISSQLTestNoConnection Then
            MISSQLcn.Open "Provider=MISSQLNCLI10;Server=" & MISSQLServerPath & ";Database=" & MISSQLServerDbName & ";Uid=MIS;Pwd=1234;"
        Else
            'Invalid test connection string to cause connection to fail
            MISSQLcn.Open "Provider=MISSQLNCLI10;Server=" & MISSQLServerPath & ";Database=" & MISSQLServerDbName & ";Uid=MIS_LIG;Pwd=testfail;"
        End If
        
        MISSQLServerConnected = True
                        
    End If
    
Exit Sub
MISSQLServerConnect_Error:
    
    ErrorHandler Err, "MISSQL.bas MISSQLServerConnect", Err.Description, False
    
    MISSQLServerConnected = False
    MISSQLServerReTryCount = 30
    Call MISSQLServerSetStatus
    
End Sub

Public Sub MISSQLServerDisconnect()
    
    On Error GoTo MISSQLServerDisconnect_Error
    
    MISSQLServerConnected = False
    
    MISSQLcn.Close
    
    Set MISSQLcn = Nothing
    
Exit Sub
MISSQLServerDisconnect_Error:
    
    ErrorHandler Err, "MISSQL.bas MISSQLServerDisconnect", Err.Description, False
    
    MISSQLServerConnected = False
    
End Sub

Public Function MISSQLServer_uspCreateBatchID(MachID As Long, LocationNumber As Long, ElementIndex As Long)
    
    On Error GoTo MISSQLServer_uspCreateBatchID_Error
    
    If Not MISSQLServerUse Then Exit Function
    
    Call MISSQLServerConnect
    
    If MISSQLServerConnected Then
    
        Dim MISSQLcmd As ADODB.Command
               
        Set MISSQLcmd = New ADODB.Command
        
        Set MISSQLcmd.ActiveConnection = MISSQLcn
        
        MISSQLcmd.CommandType = adCmdStoredProc
        MISSQLcmd.CommandText = "BatchManagement.uspCreateBatchID"
        
        MISSQLcmd.Parameters.Item("@MachID") = MachID
        MISSQLcmd.Parameters.Item("@LocationNumber") = LocationNumber
        MISSQLcmd.Parameters.Item("@ElementIndex") = ElementIndex
        MISSQLcmd.Parameters.Item("@TimeStamp") = Null
           
        Call MISSQLcmd.Execute
        
        If IsNull(MISSQLcmd.Parameters.Item("@BatchNumber")) Then
            MISSQLServer_uspCreateBatchID = 0
        Else
            MISSQLServer_uspCreateBatchID = MISSQLcmd.Parameters.Item("@BatchNumber")
        End If
           
        'If MISSQLcmd.Parameters.Count > 0 Then
        '    For i = 0 To MISSQLcmd.Parameters.Count - 1
        '        Debug.Print "Parameter " & i
        '        Debug.Print "Name:      " & MISSQLcmd.Parameters(i).Name
        '        Debug.Print "Type:      " & MISSQLcmd.Parameters(i).Type
        '        Debug.Print "Direction: " & MISSQLcmd.Parameters(i).Direction
        '        Debug.Print "Size:      " & MISSQLcmd.Parameters(i).Size
        '        Debug.Print "Value:     " & MISSQLcmd.Parameters(i).Value
        '        Debug.Print
        '    Next i
        'Else
        '    Debug.Print "No parameters!"
        '    Debug.Assert False
        'End If
        
    End If
    
    Call MISSQLServerDisconnect
    
Exit Function
MISSQLServer_uspCreateBatchID_Error:
        
    ErrorHandler Err, "MISSQL.bas MISSQLServer_uspCreateBatchID", Err.Description, False
    
    Call MISSQLServerDisconnect
    
End Function


Public Sub MISSQLServer_uspGetBatchContents(BatchNumber As Long)
          
    On Error GoTo MISSQLServer_uspGetBatchContents_Error
          
    If Not MISSQLServerUse Then Exit Sub
          
    Dim MISSQLcmd  As ADODB.Command
    Dim rs      As ADODB.Recordset
    Dim n       As Integer
    
    Call MISSQLServerConnect
                     
    If MISSQLServerConnected Then
                     
        Set MISSQLcmd = New ADODB.Command
        
        Set MISSQLcmd.ActiveConnection = MISSQLcn
        
        MISSQLcmd.CommandType = adCmdStoredProc
        MISSQLcmd.CommandText = "BatchManagement.uspGetBatchContents"
            
        MISSQLcmd.Parameters.Item("@BatchNumber") = BatchNumber
              
        Call MISSQLcmd.Execute
            
        MyMISSQL = "Select * from Results"
        Set rs = MISSQLcmd.Execute(MyMISSQL)
               
        GetBatchContentsRecords = 0
        
        n = 1
        Do While Not rs.EOF
            
            'GetBatchContentsRecords = GetBatchContentsRecords + 1
            'ReDim Preserve GetBatchContents(GetBatchContentsRecords) As GetBatchContents_Type
            
            ReDim Preserve GetBatchContents(n) As GetBatchContents_Type
            
            GetBatchContents(n).CategoryID = rs.Fields("CategoryID")
            GetBatchContents(n).CategoryName = rs.Fields("CategoryName")
            GetBatchContents(n).CustID = rs.Fields("CustID")
            GetBatchContents(n).CustName = rs.Fields("CustName")
            GetBatchContents(n).Weight = rs.Fields("Weight")
            
            GetBatchContentsRecords = n
            
            n = n + 1
            
            rs.MoveNext
        Loop
       
    End If
    
    Call MISSQLServerDisconnect
    
Exit Sub
MISSQLServer_uspGetBatchContents_Error:
        
    ErrorHandler Err, "MISSQL.bas MISSQLServer_uspGetBatchContents", Err.Description, False
           
    Call MISSQLServerDisconnect
      
End Sub
                                        
Public Function MISSQLServer_uspInsertBatchContents(BatchNumber As Long, CarrierID As String, CategoryID As Long, CustID As Long, Weight As Long)
           
    On Error GoTo MISSQLServer_uspInsertBatchContents_Error
           
    MISSQLServer_uspInsertBatchContents = ActionFailed
           
    If Not MISSQLServerUse Then Exit Function
           
    Call MISSQLServerConnect
    
    If MISSQLServerConnected Then
    
        Dim MISSQLcmd As ADODB.Command
               
        Set MISSQLcmd = New ADODB.Command
        
        Set MISSQLcmd.ActiveConnection = MISSQLcn
        
        MISSQLcmd.CommandType = adCmdStoredProc
        MISSQLcmd.CommandText = "BatchManagement.uspInsertBatchContents"
        
        
        MISSQLcmd.Parameters.Item("@BatchNumber") = BatchNumber
        MISSQLcmd.Parameters.Item("@CarrierID") = CarrierID
        MISSQLcmd.Parameters.Item("@CategoryID") = CategoryID
        MISSQLcmd.Parameters.Item("@CustID") = CustID
        MISSQLcmd.Parameters.Item("@Weight") = Weight
        MISSQLcmd.Parameters.Item("@TimeStamp") = Null
           
        Call MISSQLcmd.Execute
        
        MISSQLServer_uspInsertBatchContents = ActionComplete
        
    End If
        
    Call MISSQLServerDisconnect
        
Exit Function
MISSQLServer_uspInsertBatchContents_Error:
        
    ErrorHandler Err, "MISSQL.bas MISSQLServer_uspInsertBatchContents", Err.Description, False
       
    Call MISSQLServerDisconnect
       
End Function
Public Function MISSQLServer_uspBatchContentsMoveFromTo(FromBatchNumber As Long, ToBatchNumber As Long)
           
    On Error GoTo MISSQLServer_uspBatchContentsMoveFromTo_Error
           
    MISSQLServer_uspBatchContentsMoveFromTo = ActionFailed
           
    If Not MISSQLServerUse Then Exit Function
           
    Call MISSQLServerConnect
    
    If MISSQLServerConnected Then
    
        Dim MISSQLcmd As ADODB.Command
               
        Set MISSQLcmd = New ADODB.Command
        
        Set MISSQLcmd.ActiveConnection = MISSQLcn
        
        MISSQLcmd.CommandType = adCmdStoredProc
        MISSQLcmd.CommandText = "BatchManagement.uspBatchContentsMoveFromTo"
                
        MISSQLcmd.Parameters.Item("@FromBatchNumber") = FromBatchNumber
        MISSQLcmd.Parameters.Item("@ToBatchNumber") = ToBatchNumber
                   
        Call MISSQLcmd.Execute
        
        MISSQLServer_uspBatchContentsMoveFromTo = ActionComplete
        
    End If
       
    Call MISSQLServerDisconnect
       
Exit Function
MISSQLServer_uspBatchContentsMoveFromTo_Error:
        
    ErrorHandler Err, "MISSQL.bas MISSQLServer_uspBatchContentsMoveFromTo", Err.Description, False
       
    Call MISSQLServerDisconnect
       
End Function
Public Sub MISSQLServer_ReadContentsBuffer(Optional TestInsert As Boolean)
    
    Dim Status  As Integer
    Dim n       As Integer
    
    Status = ActionFailed
    
    If (BatchContentsRecords > 0) Then
        
        With BatchContents(1)
            If .Stn = .MISSQLID Then
                'Sorting Station mix then add to station contents
                Status = MISSQLServer_uspInsertBatchContents(.MISSQLID, "0", .Cat, .Cus, .Wgt)
            ElseIf .Stn <> .MISSQLID Then
                'Station Release then add to station contents - only if something has been added
                If (.Wgt > 0) Then
                    Status = MISSQLServer_uspInsertBatchContents(.MISSQLID, "0", .Cat, .Cus, .Wgt)
                End If
                'Station Release then copy contents
                Status = MISSQLServer_uspBatchContentsMoveFromTo(.Stn, .MISSQLID)
            End If
        
        End With
        
        'Shuffle Contents
        If Status = ActionComplete Then
            If (BatchContentsRecords > 1) Then
                For n = 1 To (BatchContentsRecords - 1)
                    BatchContents(n + 0) = BatchContents(n + 1)
                    BatchContents(n + 1) = BatchContents(0)
                Next n
            End If
            BatchContentsRecords = BatchContentsRecords - 1
            ReDim Preserve BatchContents(BatchContentsRecords)
        End If
    End If
    
End Sub

Public Sub MISSQLServer_WriteContentsBuffer(Cus As Long, _
                                        Cat As Long, _
                                        Wgt As Long, _
                                        Cnt As Long, _
                                        Stn As Long, _
                                        Mcn As Long, _
                                        Grp As Long, _
                                        Bid As Long, _
                                        Dst As Long, _
                                        Day As Long, _
                                        Spe As Long, _
                                        MISSQLID As Long)
    
    Dim n As Integer
    
    BatchContentsRecords = (BatchContentsRecords + 1)
    
    If (BatchContentsRecords < 1000) Then
    
        ReDim Preserve BatchContents(BatchContentsRecords) As BatchContentsBuffer_Type
    
        n = BatchContentsRecords
        
        With BatchContents(n)
            .Cus = Cus
            .Cat = Cat
            .Wgt = Wgt
            .Stn = Stn
            .Mcn = Mcn
            .Grp = Grp
            .Bid = Bid
            .Dst = Dst
            .Day = Day
            .Spe = Spe
            .MISSQLID = MISSQLID
        End With
               
    Else
        MsgBox "Batch Contents Buffer Full", vbCritical, "MISSQL.bas"
    End If
    
End Sub

