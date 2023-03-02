Attribute VB_Name = "dbStandard"
Public SQLServerPath            As String
Public SQLServerDbName          As String
Public SQLServerFound           As Boolean
Public CheckConnPwordOK         As Boolean

'Category Database Used?
Public dbCatUsed                As Boolean    'Category Database Used


Public Const MaxDbSettings = 70     'Array of Setting Options for Database Options

Public Const dbMaxCatdbInGroup = 99   'Max Number of Stored Categories in a group the Group.mdb must have the same fields
Public Const dbMaxNameChar = 25     'Max 25 - If more required change in SQL Server

Public Const dbMaxRepairTries = 10  'Max Number of attemts to repair a database

'db Constants
Public Const dbNone = 0
Public Const dbCustomers = 1
Public Const dbLanguage = 2
Public Const dbBagData = 3
Public Const dbGroups = 4
Public Const dbReports = 5
Public Const dbSequences = 6
Public Const dbSettings = 7
Public Const dbTCPDriver = 8
Public Const dbIO = 9
Public Const dbAlarmHistory = 10
Public Const dbVNC = 11
Public Const dbCategories = 12
'Public Const dbGroups = 13

Public Const dbMachineNames = 22

Public dbView(2)                As Integer  'Database Form - db selection Grp, Cat or Cus

Public cn                       As ADODB.Connection
Public rs                       As ADODB.Recordset


Public dbBackupTime             As String


'VNC
Public VNCPath                  As String
Public VNCName(MaxVNC)          As String
Public VNCCmd(MaxVNC)           As String

'Category Groups
Public GroupNo           As Integer  'Returned from dbGetGrpInfo
Public GroupName         As String   'Returned from dbGetGrpInfo

Public GrpDbSize        As Integer
Public GrpName()        As String
Public GrpNum()         As Long
Public GrpLong()        As String   'Long Number
Public GrpType()        As Integer  'Grpegory Type ID ie 1=Hotel 2=Table Linen
Public GrpPiece()       As Integer  'Piece weight
Public GrpColB()        As Long     'Backcolor
Public GrpColF()        As Long     'Forecolor
Public GrpBatch()       As Integer  'Batch Size
Public GrpWash()        As Integer  'Wash Code / Program
Public GrpDryC()        As Integer  'Dry Code
Public GrpSP1()         As Integer  'Setpoint 1 (Approaching Weight)
Public GrpSP2()         As Integer  'Setpoint 2 (At Release Weight)
Public GrpSP3()         As Integer  'Setpoint 3 (Overweight)
Public GrpSLine1()      As Integer  'Soiled System Line 1st Choice
Public GrpSLine2()      As Integer  'Soiled System Line 2nd Choice
Public GrpSLine3()      As Integer  'Soiled System Line 3rd Choice
Public GrpSLine4()      As Integer  'Soiled System Line 4th Choice
Public GrpCLine1()      As Integer  'Clean System Line 1st Choice
Public GrpCLine2()      As Integer  'Clean System Line 2nd Choice
Public GrpCLine3()      As Integer  'Clean System Line 3rd Choice
Public GrpCLine4()      As Integer  'Clean System Line 4th Choice
Public GrpPLine1()      As Integer  'Primary System Line 1st Choice
Public GrpPLine2()      As Integer  'Primary System Line 2nd Choice
Public GrpPLine3()      As Integer  'Primary System Line 3rd Choice
Public GrpPLine4()      As Integer  'Primary System Line 4th Choice
'Customers
Public CusDbSize        As Integer
Public CusName()        As String
Public CusNum()         As Long     'Customer Number
Public CusLong()        As String   'Long Number
Public CusColB()        As Long     'Backcolor
Public CusColF()        As Long     'Forecolor
Public CusLoadingProg()   As String     ' Loading prog from automatic cust change
Public CusPool()        As Boolean

'Categories
Public CatDbSize        As Integer
Public CatName()        As String
Public CatNum()         As Long
Public CatLong()        As String   'Long Number
Public CatGroup()        As Integer  'Program Number
Public CatPiece()       As Integer  'Piece weight
Public CatColB()        As Long     'Backcolor
Public CatColF()        As Long     'Forecolor
Public CatSP1()         As Integer  'Setpoint 1 (Approaching Weight)
Public CatSP2()         As Integer  'Setpoint 2 (At Release Weight)
Public CatSP3()         As Integer  'Setpoint 3 (Overweight)
Public CatWash()        As Integer  'Wash Code / Program
Public CatType()        As Integer  'Grpegory Type ID ie 1=Hotel 2=Table Linen
Public CatPicFilePath() As String
Public CatPicFileNum() As Long
Public CatPicdbSize As Integer

'Machine Names
Public McnDbSize        As Integer
Public McnName()        As String
Public McnNum()         As Long     'Customer Number
Public McnColB()        As Long     'Backcolor
Public McnColF()        As Long     'Forecolor

Public DatabaseChanged          As Integer  'ID Sent to PLC to Allow other PC's to Update when the Database is changed

'Stored Loading Programs
Public Const LD_File = 50           'Number of Stations Saved in a Loading Program
Public Type Ldg
    ProgramName As String
    ProgramCat() As Long
    ProgramCus() As Long
    Used() As Boolean
End Type
Public Loading As Ldg

'Stored Unloading Programs
Public Const MaxSteps = 20         'Max unloading program steps
Public Type Uld
    Name As String
    Bags(MaxSteps) As Long
    Lin(MaxSteps)  As Long
    Batch(MaxSteps) As Long
    Grp1(MaxSteps) As Long
    Grp2(MaxSteps) As Long
    Grp3(MaxSteps) As Long
End Type
Public UnloadGrp As Uld

'Setting Options
Public dbSettingName(MaxDbSettings)    As String
Public dbSettingValue(MaxDbSettings)   As String

'Database Setting Constants - see dbConfig
Public Const GrpDbUseLongID = 0
Public Const GrpDbUseSoiledLines = 1
Public Const GrpDbSoiledLines2 = 2
Public Const GrpDbUseSetpoints = 3
Public Const GrpDbUseCleanLines = 4
Public Const GrpDbCleanLines2 = 5
Public Const GrpDbUseBatchSize = 6
Public Const GrpDbUsePieceWeight = 7
Public Const GrpDbUseType = 8
Public Const GrpDbUseWashCodes = 9
Public Const GrpDbUseBagColour = 10
Public Const GrpDbLongIDInBag = 20
Public Const GrpDbLongIDShowLeft = 21
Public Const GrpDbLongCharAllow = 22
Public Const GrpDbLongIDMax = 23
Public Const GrpDbLongEntry = 24
Public Const GrpDbPicAddress = 25
Public Const GrpDbUsePrimaryLines = 15
Public Const GrpDbPrimaryLines2 = 16



Public Const dbBackupAtStart = 31
Public Const dbBackupAtTime = 32
Public Const dbBackupTimeValue = 33

'Database Setting Constants - see dbConfig
Public Const CusDbUseLongID = 40
Public Const CusDbUseBagColour = 41
Public Const CusDbLongIDInBag = 42
Public Const CusDbLongIDShowLeft = 43
Public Const CusDbLongCharAllow = 44
Public Const CusDbLongIDMax = 45
Public Const CusDbLongEntry = 46
Public Const CusDbCusIsRoute = 47
Public Const CusDbAutoCusChange = 48
Public Const CusDbEnablePool = 49

'Database Setting Constants - see dbConfig
Public Const CatDbUseLongID = 50
Public Const CatDbUseBagColour = 51
Public Const CatDbLongIDInBag = 52
Public Const CatDbLongIDShowLeft = 53
Public Const CatDbLongCharAllow = 54
Public Const CatDbLongIDMax = 55
Public Const CatDbLongEntry = 56
Public Const CatDbUsePieceWeight = 57
Public Const CatDbUseType = 58
Public Const CatDbUseSetpoints = 59
Public Const CatDbUseWashCodes = 60
Public Const CatDbCatEqualGroup = 61

'Entry Checks For Long Customer ID
Public Const Numeric = "0123456789"
Public Const NumericDecimals = "-.0123456789"
Public Const Alpha = " _ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
Public Const AlphaNumeric = " _ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890"

Private Declare Function GetInputState Lib "user32" () As Long
Public StartSQLConnection As Boolean
Public SQLConnectionConnected As Boolean

Public Sub dbSettingNames()
    
    'Program Database Setting Constants
    dbSettingName(GrpDbUseLongID) = "GrpDbUseLongID"
    dbSettingName(GrpDbUseSoiledLines) = "GrpDbUseSoiledLines"
    dbSettingName(GrpDbSoiledLines2) = "GrpDbSoiledLines2"
    dbSettingName(GrpDbUseSetpoints) = "GrpDbUseSetpoints"
    dbSettingName(GrpDbUseCleanLines) = "GrpDbUseCleanLines"
    dbSettingName(GrpDbCleanLines2) = "GrpDbCleanLines2"
    dbSettingName(GrpDbUseBatchSize) = "GrpDbUseBatchSize"
    dbSettingName(GrpDbUseType) = "GrpDbUseType"
    dbSettingName(GrpDbUseWashCodes) = "GrpDbUseWashCodes"
    dbSettingName(GrpDbUseBagColour) = "GrpDbUseBagColour"
    dbSettingName(GrpDbLongIDInBag) = "GrpDbLongIDInBag"
    dbSettingName(GrpDbLongIDShowLeft) = "GrpDbLongIDShowLeft"
    dbSettingName(GrpDbLongCharAllow) = "GrpDbLongCharAllow"
    dbSettingName(GrpDbLongIDMax) = "GrpDbLongIDMax"
    dbSettingName(GrpDbLongEntry) = "GrpDbLongEntry"
    dbSettingName(GrpDbPicAddress) = "GrpDbPicAddress"
    dbSettingName(GrpDbUsePrimaryLines) = "GrpDbUsePrimaryLines"
    dbSettingName(GrpDbPrimaryLines2) = "GrpDbPrimaryLines2"
    
    'General Database settings
    dbSettingName(dbBackupAtStart) = "dbBackupAtStart"
    dbSettingName(dbBackupAtTime) = "dbBackupAtTime"
    dbSettingName(dbBackupTimeValue) = "dbBackupTimeValue"
    
    'Customer Database settings
    dbSettingName(CusDbUseLongID) = "CusDbUseLongID"
    dbSettingName(CusDbUseBagColour) = "CusDbUseBagColour"
    dbSettingName(CusDbLongIDInBag) = "CusDbLongIDInBag"
    dbSettingName(CusDbLongIDShowLeft) = "CusDbLongIDShowLeft"
    dbSettingName(CusDbLongCharAllow) = "CusDbLongCharAllow"
    dbSettingName(CusDbLongIDMax) = "CusDbLongIDMax"
    dbSettingName(CusDbLongEntry) = "CusDbLongEntry"
    dbSettingName(CusDbAutoCusChange) = "CusDbAutoCusChange"
    dbSettingName(CusDbEnablePool) = "CusDbEnablePool"
    
    'Category Database settings
    dbSettingName(CatDbUseLongID) = "CatDbUseLongID"
    dbSettingName(CatDbUseBagColour) = "CatDbUseBagColour"
    dbSettingName(CatDbLongIDInBag) = "CatDbLongIDInBag"
    dbSettingName(CatDbLongIDShowLeft) = "CatDbLongIDShowLeft"
    dbSettingName(CatDbLongCharAllow) = "CatDbLongCharAllow"
    dbSettingName(CatDbLongIDMax) = "CatDbLongIDMax"
    dbSettingName(CatDbLongEntry) = "CatDbLongEntry"
    dbSettingName(CatDbUsePieceWeight) = "CatDbUsePieceWeight"
    dbSettingName(CatDbUseType) = "CatDbUseType"
    dbSettingName(CatDbUseSetpoints) = "CatdbUseSetPoints"
    dbSettingName(CatDbUseWashCodes) = "CatDbUseWashCodes"
    dbSettingName(CatDbCatEqualGroup) = "CatDbCatEqualGroup"
    
End Sub


Public Sub dbClose()
    
    On Error Resume Next
        
    rs.CancelUpdate
    rs.Close
    cn.Close
    Set rs = Nothing
    Set cn = Nothing
            
End Sub


Public Sub dbConnect()
 
    On Error GoTo dbConnectError
    DebugCounters.SQLConnections = DebugCounters.SQLConnections + 1
          
           
    Set cn = New ADODB.Connection
    Set rs = New ADODB.Recordset
           
    Dim myConnection As String
        

    'myConnection = "Provider=SQLNCLI10;Server=" & SQLServerPath & ";Database=" & SQLServerDbName & ";Uid=SUP;Pwd=1234;"
    myConnection = "Provider=SQLNCLI11;Server=" & SQLServerPath & ";Database=" & SQLServerDbName & ";Uid=SUP;Pwd=1234;"

    cn.Open myConnection
    rs.ActiveConnection = cn
      
  
      
Exit Sub

dbConnectError:
   If MsgBox("SQL Server Connection Error" & vbCrLf & _
    Err.Description & vbCrLf & _
    "Check SQL Settings" & vbCrLf & _
    "Press Ok to configure, Cancel to Close" & vbCrLf _
    , vbOKCancel + vbCritical, "No SQL Connection") = vbOK Then
    path = App.path & "\SQL Path Updater.EXE"
        
        If Dir(path) <> "" Then Shell path, vbNormalFocus
        
        
    End If
   End
    'ErrorHandler Err, "dbConnect", Err.Description, False, , , True
    
End Sub

Public Sub dbDisconnect(Optional ErrNum As Long, Optional SubName As String, _
                                Optional ErrDescription As String)
    
    On Error GoTo dbDisconnectError
    
    Dim HandleError As Boolean
    DebugCounters.SQLDiconnections = DebugCounters.SQLDiconnections + 1
    
    If ErrNum > 0 Then
        HandleError = True
        ErrorHandler ErrNum, "dbDisconnect = " & SubName, ErrDescription, False
    End If
                
    rs.CancelUpdate
    rs.Close
    cn.Close
       
    dbClose
Exit Sub

dbDisconnectError:
    If HandleError Then ErrorHandler Err, "dbDisconnect", Err.Description, False
    Resume Next
End Sub
Public Sub dbDeleteBackups(Days As Integer)
    
    On Error GoTo ErrordbDeleteBackups:
        
    Dim DataFileName
    Dim SearchDays      As Integer
    Dim Start           As Integer
    Dim DateString      As String
    Dim SearchString    As String
    Dim myTimeDateStamp
        
    DataFileName = Dir(App.path & "\dbBackups\*.*", vbDirectory)
        
    Do While DataFileName <> ""
              
        If DataFileName <> "." And DataFileName <> ".." Then
                       
            'SearchString = Mid$(DataFileName, 9, 2) & "/" & Mid$(DataFileName, 6, 2) & "/" & Mid$(DataFileName, 1, 4)
            myTimeDateStamp = FileDateTime(App.path & "\dbBackups\" & DataFileName)
            SearchString = Format$(myTimeDateStamp, "DD/MM/YYYY")
                   
            SearchDays = Val(DateDiff("d", SearchString, Now))
                   
            If SearchDays > Days Then
                Kill App.path & "\dbBackups\" & DataFileName
            End If
    
NextErrorFile:
            
        
        End If
        
        DataFileName = Dir
        
    Loop

Exit Sub

ErrordbDeleteBackups:
    '53 = File not found 70 = Permission Denied 75 = File/Path access error
        
    If Err = 53 Or Err = 70 Or Err = 75 Then
        Resume Next
    Else
        ErrorHandler Err, "dbDeleteBackups", Err.Description, False
        Err.Clear
        Resume Next
    End If
    
End Sub
Public Sub db_uspBackupDataBase(PathAndFileName As String)
    
    On Error GoTo db_uspBackupDataBaseError
            
    Call dbConnect
         
    Dim mySQL As String
    
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
     
    
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspBackupDatabase"
       
    dbCmd.Parameters.Item("@PathAndName") = PathAndFileName
          
    Call dbCmd.Execute
             
    Call dbDisconnect
       
    'Remove Any Old Backups - Only is currently backing up
    Call dbDeleteBackups(30)
       
Exit Sub
db_uspBackupDataBaseError:
        
    ErrorHandler Err, "db_uspBackupDataBase", Err.Description, True
    
    Call dbDisconnect
    
End Sub
Public Sub db_uspCategoryGroupRead()
    
    On Error GoTo db_uspCategoryGroupReadError
    
    Dim n               As Integer
    Dim Num             As Long
    Dim mySQL           As String
    Dim MyRecordCount   As Integer
    Dim LastNum         As Long
       
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCategoryGroupRead"
                
    dbCmd.Parameters.Item("@myDummyValue") = 1
                
    Call dbCmd.Execute
       
    MyRecordCount = dbCmd.Parameters.Item("@RecordCount")
     
   'Resize the data arrays
    If MyRecordCount <= MaxGrpdb Then
        GrpDbSize = MyRecordCount
    Else
        GrpDbSize = MaxGrpdb
    End If
          
    ReDim GrpNum(GrpDbSize) As Long
    ReDim GrpName(GrpDbSize) As String
    ReDim GrpLong(GrpDbSize) As String
    ReDim GrpType(GrpDbSize) As Integer
    ReDim GrpColB(GrpDbSize) As Long               'Backcolor
    ReDim GrpColF(GrpDbSize) As Long               'Forecolor
    ReDim GrpBatch(GrpDbSize) As Integer        'Batch Size
    ReDim GrpWash(GrpDbSize) As Integer         'Wash Code / Program
    ReDim GrpDryC(GrpDbSize) As Integer         'Dry Code
    ReDim GrpSP1(GrpDbSize) As Integer          'Setpoint 1 (Approaching Weight)
    ReDim GrpSP2(GrpDbSize) As Integer          'Setpoint 2 (At Release Weight)
    ReDim GrpSP3(GrpDbSize) As Integer          'Setpoint 3 (Overweight)
    ReDim GrpSLine1(GrpDbSize) As Integer       'Soiled System Line 1st Choice
    ReDim GrpSLine2(GrpDbSize) As Integer       'Soiled System Line 2nd Choice
    ReDim GrpSLine3(GrpDbSize) As Integer       'Soiled System Line 3rd Choice
    ReDim GrpSLine4(GrpDbSize) As Integer       'Soiled System Line 4th Choice
    ReDim GrpCLine1(GrpDbSize) As Integer       'Clean System Line 1st Choice
    ReDim GrpCLine2(GrpDbSize) As Integer       'Clean System Line 2nd Choice
    ReDim GrpCLine3(GrpDbSize) As Integer       'Clean System Line 3rd Choice
    ReDim GrpCLine4(GrpDbSize) As Integer       'Clean System Line 4th Choice
    ReDim GrpPLine1(GrpDbSize) As Integer       'Primary System Line 1st Choice
    ReDim GrpPLine2(GrpDbSize) As Integer       'Primary System Line 2nd Choice
    ReDim GrpPLine3(GrpDbSize) As Integer       'Primary System Line 3rd Choice
    ReDim GrpPLine4(GrpDbSize) As Integer       'Primary System Line 4th Choice
    ReDim GrpPiece(GrpDbSize) As Integer        'Piece Weight
    
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
            
    n = 1
        
    Do While Not rs.EOF
                      
        'Check the Category number is valid for this project
        Num = rs.Fields("Num")
        If (Num > MaxGrp) Or (Num < 0) Then GoTo TryNext
               
        If (LastNum > 0) And (LastNum = Num) Then
            Call ErrorHandler(0, "ReadPrograms", "Duplicate Program Number Found = " & Format$(Num), False)
            GoTo TryNext
        End If
               
        GrpNum(n) = rs.Fields("Num")
        LastNum = GrpNum(n)
        GrpName(n) = rs.Fields("Name")
        GrpLong(n) = rs.Fields("Long")
        GrpType(n) = rs.Fields("Type")
        GrpColB(n) = rs.Fields("BackColor")
        GrpColF(n) = rs.Fields("ForeColor")
        GrpBatch(n) = rs.Fields("Batch")
        GrpWash(n) = rs.Fields("WashCode")
        GrpDryC(n) = rs.Fields("DryCode")
        GrpSP1(n) = rs.Fields("SP1")
        GrpSP2(n) = rs.Fields("SP2")
        GrpSP3(n) = rs.Fields("SP3")
        GrpSLine1(n) = rs.Fields("SoiledLine1")
        GrpSLine2(n) = rs.Fields("SoiledLine2")
        GrpSLine3(n) = rs.Fields("SoiledLine3")
        GrpSLine4(n) = rs.Fields("SoiledLine4")
        GrpCLine1(n) = rs.Fields("CleanLine1")
        GrpCLine2(n) = rs.Fields("CleanLine2")
        GrpCLine3(n) = rs.Fields("CleanLine3")
        GrpCLine4(n) = rs.Fields("CleanLine4")
        GrpPLine1(n) = rs.Fields("PrimaryLine1")
        GrpPLine2(n) = rs.Fields("PrimaryLine2")
        GrpPLine3(n) = rs.Fields("PrimaryLine3")
        GrpPLine4(n) = rs.Fields("PrimaryLine4")
        GrpPiece(n) = rs.Fields("Piece")
        
        n = n + 1
        
TryNext:

        rs.MoveNext
                    
    Loop
    
    rs.Close
       
    dbDisconnect
        
Exit Sub
db_uspCategoryGroupReadError:
    dbDisconnect Err, "db_uspCategoryGroupRead", Err.Description
    'Resume Next
End Sub
Public Sub db_uspCategoryGroupWrite(myNum As Long, _
                                myName As String, _
                                myLong As String, _
                                myType As Integer, _
                                myPiece As Integer, _
                                myBackColor As Long, _
                                myForeColor As Long, _
                                myBatch As Integer, _
                                myWash As Integer, _
                                myDryC As Integer, _
                                mySP1 As Integer, _
                                mySP2 As Integer, _
                                mySP3 As Integer, _
                                mySoiledLine1 As Integer, _
                                mySoiledLine2 As Integer, _
                                mySoiledLine3 As Integer, _
                                mySoiledLine4 As Integer, _
                                myCleanLine1 As Integer, myCleanLine2 As Integer, myCleanLine3 As Integer, myCleanLine4 As Integer, _
                                myPrimaryLine1 As Integer, myPrimaryLine2 As Integer, myPrimaryLine3 As Integer, myPrimaryLine4 As Integer, _
                                myStatus As String, Optional flag As Boolean = True)
    
    On Error GoTo db_uspCategoryGroupWriteError
               
    If flag Then dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCategoryGroupWrite"
    
    dbCmd.Parameters.Item("@Num") = myNum
    dbCmd.Parameters.Item("@Name") = myName
    dbCmd.Parameters.Item("@Long") = myLong
    dbCmd.Parameters.Item("@Type") = myType
    dbCmd.Parameters.Item("@Piece") = myPiece
    dbCmd.Parameters.Item("@BackColor") = myBackColor
    dbCmd.Parameters.Item("@ForeColor") = myForeColor
    dbCmd.Parameters.Item("@Batch") = myBatch
    dbCmd.Parameters.Item("@WashCode") = myWash
    dbCmd.Parameters.Item("@DryCode") = myDryC
    dbCmd.Parameters.Item("@SP1") = mySP1
    dbCmd.Parameters.Item("@SP2") = mySP2
    dbCmd.Parameters.Item("@SP3") = mySP3
    dbCmd.Parameters.Item("@SoiledLine1") = mySoiledLine1
    dbCmd.Parameters.Item("@SoiledLine2") = mySoiledLine2
    dbCmd.Parameters.Item("@SoiledLine3") = mySoiledLine3
    dbCmd.Parameters.Item("@SoiledLine4") = mySoiledLine4
    dbCmd.Parameters.Item("@CleanLine1") = myCleanLine1
    dbCmd.Parameters.Item("@CleanLine2") = myCleanLine2
    dbCmd.Parameters.Item("@CleanLine3") = myCleanLine3
    dbCmd.Parameters.Item("@CleanLine4") = myCleanLine4
    dbCmd.Parameters.Item("@PrimaryLine1") = myPrimaryLine1
    dbCmd.Parameters.Item("@PrimaryLine2") = myPrimaryLine2
    dbCmd.Parameters.Item("@PrimaryLine3") = myPrimaryLine3
    dbCmd.Parameters.Item("@PrimaryLine4") = myPrimaryLine4
    dbCmd.Parameters.Item("@Status") = myStatus

                   
    Call dbCmd.Execute
          
    If flag Then dbDisconnect
        
Exit Sub
db_uspCategoryGroupWriteError:
    dbDisconnect Err, "db_uspCategoryGroupWrite", Err.Description
    'Resume Next
End Sub
Public Sub db_uspCategoryGroupSetStatus(Status As String)
    
    On Error GoTo db_uspCategoryGroupSetStatusError
         
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCategoryGroupSetStatus"
                
    dbCmd.Parameters.Item("@myStatus") = Status
                
    Call dbCmd.Execute
           
    dbDisconnect
        
Exit Sub
db_uspCategoryGroupSetStatusError:
    dbDisconnect Err, "db_uspCategoryGroupSetStatus", Err.Description
    'Resume Next
End Sub
Public Sub db_uspCategoryGroupDeleteWithStatus(Status As String, _
                                Optional flag As Boolean = True)
    
    On Error GoTo db_uspCategoryGroupDeleteWithStatusError
          
    If flag Then dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCategoryGroupDeleteWithStatus"
                
    dbCmd.Parameters.Item("@myStatus") = Status
                
    Call dbCmd.Execute
       
    
       
    If flag Then dbDisconnect
        
Exit Sub
db_uspCategoryGroupDeleteWithStatusError:
    dbDisconnect Err, "db_uspCategoryGroupDeleteWithStatus", Err.Description
    'Resume Next
End Sub
Public Sub db_uspCategoriesRead()
    
    On Error GoTo db_uspCategoriesReadError
    
    Dim n               As Integer
    Dim Num             As Long
    Dim mySQL           As String
    Dim MyRecordCount   As Integer
    Dim LastNum         As Long
       
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCategoriesRead"
                
    dbCmd.Parameters.Item("@myDummyValue") = 1
                
    Call dbCmd.Execute
       
    MyRecordCount = dbCmd.Parameters.Item("@RecordCount")
     
    'Resize the data arrays
    If MyRecordCount <= MaxCatdb Then
        CatDbSize = MyRecordCount
    Else
        CatDbSize = MaxCatdb
    End If
    ReDim CatName(CatDbSize) As String
    ReDim CatNum(CatDbSize) As Long
    ReDim CatLong(CatDbSize) As String          'Long Number
    ReDim CatType(CatDbSize) As Integer         'Type - multi use
    ReDim CatGroup(CatDbSize) As Integer         'Program Number
    ReDim CatPiece(CatDbSize) As Integer        'Piece weight
    ReDim CatColB(CatDbSize) As Long            'Backcolor
    ReDim CatColF(CatDbSize) As Long            'Forecolor
    ReDim CatSP1(CatDbSize) As Integer          'Setpoint 1 (Approaching Weight)
    ReDim CatSP2(CatDbSize) As Integer          'Setpoint 2 (At Release Weight)
    ReDim CatSP3(CatDbSize) As Integer          'Setpoint 3 (Overweight)
    ReDim CatWash(CatDbSize) As Integer         'WashCode
     
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
            
    n = 1
        
    Do While Not rs.EOF
                      
        'Check the Category number is valid for this project
        Num = rs.Fields("Num")
        If (Num > MaxCat) Or (Num < 0) Then GoTo TryNext
                     
        If (LastNum > 0) And (LastNum = Num) Then
            Call ErrorHandler(0, "db_uspCategoriesRead", "Duplicate Program Number Found = " & Format$(Num), False)
            GoTo TryNext
        End If
                     
        CatNum(n) = rs.Fields("Num")
        CatName(n) = rs.Fields("Name")
        CatLong(n) = rs.Fields("Long")
        CatType(n) = rs.Fields("Type")
        CatGroup(n) = rs.Fields("Program")
        CatPiece(n) = rs.Fields("Piece")
        CatColB(n) = rs.Fields("BackColor")
        CatColF(n) = rs.Fields("ForeColor")
        CatSP1(n) = rs.Fields("SP1")
        CatSP2(n) = rs.Fields("SP2")
        CatSP3(n) = rs.Fields("SP3")
        CatWash(n) = rs.Fields("WashCode")
        n = n + 1
        
TryNext:

        rs.MoveNext
                    
    Loop
    
    rs.Close
       
    dbDisconnect
        
Exit Sub
db_uspCategoriesReadError:
    dbDisconnect Err, "db_uspCategoriesRead", Err.Description
    'Resume Next
End Sub
Public Sub db_uspCategoryWrite(myNum As Long, _
                                myName As String, _
                                myLong As String, _
                                myType As Integer, _
                                myProgram As Long, _
                                myPiece As Integer, _
                                myBackColor As Long, _
                                myForeColor As Long, _
                                mySP1 As Integer, _
                                mySP2 As Integer, _
                                mySP3 As Integer, _
                                myWashCode As Integer, _
                                myStatus As String, _
                                Optional flag As Boolean = True)
    
    On Error GoTo db_uspCategoryWriteError
           
     If flag Then dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCategoryWrite"
    
    dbCmd.Parameters.Item("@Num") = myNum
    dbCmd.Parameters.Item("@Name") = myName
    dbCmd.Parameters.Item("@Long") = myLong
    dbCmd.Parameters.Item("@Type") = myType
    dbCmd.Parameters.Item("@Program") = myProgram
    dbCmd.Parameters.Item("@Piece") = myPiece
    dbCmd.Parameters.Item("@BackColor") = myBackColor
    dbCmd.Parameters.Item("@ForeColor") = myForeColor
    dbCmd.Parameters.Item("@SP1") = mySP1
    dbCmd.Parameters.Item("@SP2") = mySP2
    dbCmd.Parameters.Item("@SP3") = mySP3
    dbCmd.Parameters.Item("@Washcode") = myWashCode
    dbCmd.Parameters.Item("@Status") = myStatus

                   
    Call dbCmd.Execute
          
    If flag Then dbDisconnect
        
Exit Sub
db_uspCategoryWriteError:
    dbDisconnect Err, "db_uspCategoryWrite", Err.Description
    'Resume Next
End Sub
Public Sub db_uspCategoriesSetStatus(Status As String)
    
    On Error GoTo db_uspCategoriesSetStatusError
         
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCategoriesSetStatus"
                
    dbCmd.Parameters.Item("@myStatus") = Status
                
    Call dbCmd.Execute
       
    
       
    dbDisconnect
        
Exit Sub
db_uspCategoriesSetStatusError:
    dbDisconnect Err, "db_uspCategoriesSetStatus", Err.Description
    'Resume Next
End Sub
Public Sub db_uspCatPicFileRead()
    
    On Error GoTo db_uspCatPicFileReadError
    
    Dim n               As Integer
    Dim Num             As Long
    Dim mySQL           As String
    Dim MyRecordCount   As Integer
    Dim LastNum         As Long
       
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCatPicFileRead"
                
    dbCmd.Parameters.Item("@myDummyValue") = 1
                
    Call dbCmd.Execute
       
    MyRecordCount = dbCmd.Parameters.Item("@RecordCount")
    CatPicdbSize = MyRecordCount
     
    ReDim CatPicFilePath(CatPicdbSize) As String
    ReDim CatPicFileNum(CatPicdbSize) As Long
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
            
    n = 1
        
    Do While Not rs.EOF
                      
        'Check the Category number is valid for this project
        Num = rs.Fields("CatID")
        If (Num > MaxCat) Or (Num < 0) Then GoTo TryNext
                     
        If (LastNum > 0) And (LastNum = Num) Then
            Call ErrorHandler(0, "db_uspCategoriesRead", "Duplicate Program Number Found = " & Format$(Num), False)
            GoTo TryNext
        End If
                     
        CatPicFilePath(n) = Trim$(rs.Fields("FilePath"))
        CatPicFileNum(n) = rs.Fields("CatID")
        n = n + 1
        
TryNext:
        
        rs.MoveNext
                    
    Loop
    
    rs.Close
       
    dbDisconnect
        
Exit Sub
db_uspCatPicFileReadError:
    dbDisconnect Err, "db_uspCatPicFileRead", Err.Description
    'Resume Next
End Sub
Public Sub db_uspCatPicSetStatus(Status As String)
    
    On Error GoTo db_uspCatPicSetStatusError
         
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCatPicSetStatus"
                
    dbCmd.Parameters.Item("@myStatus") = Status
                
    Call dbCmd.Execute
       
    
       
    dbDisconnect
        
Exit Sub
db_uspCatPicSetStatusError:
    dbDisconnect Err, "db_uspCatPicSetStatus", Err.Description
    'Resume Next
End Sub
Public Sub db_uspCatPicFileWrite(myNum As Long, _
                                myFilePath As String, _
                                myStatus As String, _
                                Optional flag As Boolean = True)
    
    On Error GoTo db_uspCatPicFileWriteError
           
    If flag Then dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCatPicFileWrite"
    
    dbCmd.Parameters.Item("@Num") = myNum
    dbCmd.Parameters.Item("@FilePath") = myFilePath
    dbCmd.Parameters.Item("@Status") = myStatus

                   
    Call dbCmd.Execute
          
    If flag Then dbDisconnect
        
Exit Sub
db_uspCatPicFileWriteError:
    dbDisconnect Err, "db_uspCatPicFileWrite", Err.Description
    'Resume Next
End Sub
Public Sub db_uspCatPicDeleteWithStatus(Status As String, _
                                Optional flag As Boolean = True)
    
    On Error GoTo db_uspCatPicDeleteWithStatusError
          
    If flag Then dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.db_uspCatPicDeleteWithStatus"
                
    dbCmd.Parameters.Item("@myStatus") = Status
                
    Call dbCmd.Execute
       
    
       
   If flag Then dbDisconnect
        
Exit Sub
db_uspCatPicDeleteWithStatusError:
    dbDisconnect Err, "db_uspCatPicDeleteWithStatus", Err.Description
    'Resume Next
End Sub

Public Sub db_uspCategoriesDeleteWithStatus(Status As String, _
                                Optional flag As Boolean = True)
    
    On Error GoTo db_uspCategoriesDeleteWithStatusError
          
    If flag Then dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCategoriesDeleteWithStatus"
                
    dbCmd.Parameters.Item("@myStatus") = Status
                
    Call dbCmd.Execute
       
    
       
    If flag Then dbDisconnect
        
Exit Sub
db_uspCategoriesDeleteWithStatusError:
    dbDisconnect Err, "db_uspCategoriesDeleteWithStatus", Err.Description
    'Resume Next
End Sub
Public Function db_uspCustomerNumCreate()
    
    On Error GoTo db_uspCustomerNumCreateError
    
    Dim n               As Integer
    Dim Num             As Long
    Dim mySQL           As String
     Dim LastNum         As Long
       
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCustomerNumCreate"
                
    dbCmd.Parameters.Item("@myDummyValue") = 1
                    
    Call dbCmd.Execute
       
    If IsNull(dbCmd.Parameters.Item("@CusNum")) Then
        db_uspCustomerNumCreate = 1
    Else
        db_uspCustomerNumCreate = dbCmd.Parameters.Item("@CusNum")
    End If
        
    dbDisconnect
        
Exit Function
db_uspCustomerNumCreateError:
    dbDisconnect Err, "db_uspCustomerNumCreate", Err.Description
    'Resume Next
End Function
Public Sub db_uspCustomersRead(Optional OrderByLong As Boolean)
    
    On Error GoTo db_uspCustomersReadError
    
    Dim n               As Integer
    Dim Num             As Long
    Dim mySQL           As String
    Dim MyRecordCount   As Integer
    Dim LastNum         As Long
       
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCustomersRead"
                
    dbCmd.Parameters.Item("@myDummyValue") = 1
    If OrderByLong Then
        dbCmd.Parameters.Item("@OrderBy") = "long"
    Else
        dbCmd.Parameters.Item("@OrderBy") = "num"
    End If
                
    Call dbCmd.Execute
       
    MyRecordCount = dbCmd.Parameters.Item("@RecordCount")
     
     'Resize the data arrays
    If MyRecordCount <= MaxCusdb Then
        CusDbSize = MyRecordCount
    Else
        CusDbSize = MaxCusdb
    End If
    ReDim CusName(CusDbSize) As String
    ReDim CusNum(CusDbSize) As Long
    ReDim CusLong(CusDbSize) As String          'Long Number
    ReDim CusColB(CusDbSize) As Long            'Backcolor
    ReDim CusColF(CusDbSize) As Long            'Forecolor
    ReDim CusLoadingProg(CusDbSize) As String
    ReDim CusPool(CusDbSize) As Boolean
     
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
            
    n = 1
        
    Do While Not rs.EOF
                      
        'Check the Customer number is valid for this project
        If Not IsNull(rs.Fields("Num")) Then
            Num = rs.Fields("Num")
        Else
            Num = 0
        End If
        If (Num > MaxCus) Or (Num < 0) Then GoTo TryNext
             
        If (LastNum > 0) And (LastNum = Num) Then
            Call ErrorHandler(0, "ReadCustomers", "Duplicate Program Number Found = " & Format$(Num), False)
            GoTo TryNext
        End If
             
        If Not IsNull(rs.Fields("Num")) Then
            CusNum(n) = rs.Fields("Num")
        Else
            CusNum(n) = 0
        End If
        If Not IsNull(rs.Fields("Name")) Then
            CusName(n) = rs.Fields("Name")
        Else
            CusName(n) = ""
        End If
        If Not IsNull(rs.Fields("Long")) Then
            CusLong(n) = rs.Fields("Long")
        Else
            CusLong(n) = ""
        End If
        If Not IsNull(rs.Fields("BackColor")) Then
            CusColB(n) = rs.Fields("BackColor")
        Else
            CusColB(n) = vbBlack
        End If
        If Not IsNull(rs.Fields("ForeColor")) Then
            CusColF(n) = rs.Fields("ForeColor")
        Else
            CusColF(n) = vbWhite
        End If
        If Not IsNull(rs.Fields("LoadingPrg")) Then
            CusLoadingProg(n) = rs.Fields("LoadingPrg")
        Else
            CusLoadingProg(n) = ""
        End If
        If Not IsNull(rs.Fields("IsPool")) Then
            If rs.Fields("IsPool") = True Then
                CusPool(n) = True
           Else
                CusPool(n) = False
            End If
        Else
            CusPool(n) = False
        End If
        
        
        n = n + 1
        
TryNext:

        rs.MoveNext
                    
    Loop
    
    rs.Close
       
    dbDisconnect
        
Exit Sub
db_uspCustomersReadError:
    dbDisconnect Err, "db_uspCustomersRead", Err.Description
    'Resume Next
End Sub
Public Sub db_uspCustomerWrite(myNum As Long, _
                                myName As String, _
                                myLong As String, _
                                myBackColor As Long, _
                                myForeColor As Long, _
                                myLoadingProg As String, _
                                myPoolCus As Boolean, _
                                myStatus As String, _
                                Optional flag As Boolean = True)
    
    On Error GoTo db_uspCustomerWriteError
           
    If flag Then dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCustomerWrite"
    
    dbCmd.Parameters.Item("@Num") = myNum
    dbCmd.Parameters.Item("@Name") = myName
    dbCmd.Parameters.Item("@Long") = myLong
    dbCmd.Parameters.Item("@BackColor") = myBackColor
    dbCmd.Parameters.Item("@ForeColor") = myForeColor
    dbCmd.Parameters.Item("@LoadingProg") = myLoadingProg
    dbCmd.Parameters.Item("@IsPool") = myPoolCus
    dbCmd.Parameters.Item("@Status") = myStatus
                   
    Call dbCmd.Execute
          
    If flag Then dbDisconnect
        
Exit Sub
db_uspCustomerWriteError:
    dbDisconnect Err, "db_uspCustomerWrite", Err.Description
    'Resume Next
End Sub
Public Sub db_uspCustomersSetStatus(Status As String)
    
    On Error GoTo db_uspCustomersSetStatusError
         
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCustomersSetStatus"
                
    dbCmd.Parameters.Item("@myStatus") = Status
                
    Call dbCmd.Execute
       
    
       
    dbDisconnect
        
Exit Sub
db_uspCustomersSetStatusError:
    dbDisconnect Err, "db_uspCustomersSetStatus", Err.Description
    'Resume Next
End Sub
Public Sub db_uspCustomersDeleteWithStatus(Status As String, _
                                Optional flag As Boolean = True)
    
    On Error GoTo db_uspCustomersDeleteWithStatusError
          
    If flag Then dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCustomersDeleteWithStatus"
                
    dbCmd.Parameters.Item("@myStatus") = Status
                
    Call dbCmd.Execute
       
    
       
    If flag Then dbDisconnect
        
Exit Sub
db_uspCustomersDeleteWithStatusError:
    dbDisconnect Err, "db_uspdb_uspCustomersDeleteWithStatus", Err.Description
    'Resume Next
End Sub
Public Sub dbGetID(Edit As Integer, Num As Long, ID As Integer)
    
    'Get the Array position where a Cat,Cus etc is stored.
        
    Dim n As Integer
    
    ID = 0
        
    Select Case Edit
        
        Case EditGrp
            For n = 1 To GrpDbSize
                If GrpNum(n) = Num Then
                    ID = n
                End If
            Next n
        
        Case EditCat
            For n = 1 To CatDbSize
                If CatNum(n) = Num Then
                    ID = n
                End If
            Next n
        
        Case EditCus
            For n = 1 To CusDbSize
                If CusNum(n) = Num Then
                    ID = n
                End If
            Next n
                 
        Case EditMachineNames
            For n = 1 To McnDbSize
                If McnNum(n) = Num Then
                    ID = n
                End If
            Next n
       Case EditPic
            For n = 1 To CatPicdbSize
                If CatPicFileNum(n) = Num Then
                    ID = n
                End If
            Next n
        
        
        
    End Select
    
End Sub
Public Sub dbGetIDFromLongID(Edit As Integer, LongID As String, ID As Integer)
    
    'Get the Array position where a Cat,Cus etc is stored.
        
    Dim n As Integer
     
    ID = 0 'Array Position returned
        
    Select Case Edit
        
        Case EditGrp
            For n = 1 To GrpDbSize
                If (LongID <> "") And (LongID <> "0") Then
                    If (dbSettingValue(GrpDbLongEntry) <> "0") Then
                        If UCase(GrpLong(n)) = UCase(LongID) Then
                            ID = n
                        End If
                    Else
                        If GrpNum(n) = Val(LongID) Then
                            ID = n
                        End If
                    End If
                End If
            Next n
        
        Case EditCat
            For n = 1 To CatDbSize
                If (LongID <> "") And (LongID <> "0") Then
                    If (dbSettingValue(CatDbLongEntry) <> "0") Then
                        If UCase(CatLong(n)) = UCase(LongID) Then
                            ID = n
                        End If
                    Else
                        If CatNum(n) = Val(LongID) Then
                            ID = n
                        End If
                    End If
                End If
            Next n
        
        Case EditCus
            For n = 1 To CusDbSize
                If (LongID <> "") And (LongID <> "0") Then
                    If (dbSettingValue(CusDbLongEntry) <> "0") Then
                        If UCase(CusLong(n)) = UCase(LongID) Then
                            ID = n
                        End If
                    Else
                        If CusNum(n) = Val(LongID) Then
                            ID = n
                        End If
                    End If
                End If
            Next n
               
        
          
    End Select
    
End Sub

Public Function dbGetLongFromNumVal(Num As Long, Edit As Integer)

    On Error Resume Next
    
    Dim ID As Integer
    
    Select Case Edit
        Case EditGrp
            If (dbSettingValue(GrpDbLongEntry) <> "0") Then
                Call dbGetID(EditGrp, Num, ID)
                dbGetLongFromNumVal = GrpLong(ID)
            Else
                dbGetLongFromNumVal = Format$(Num)
            End If
        Case EditCat
            If (dbSettingValue(CatDbLongEntry) <> "0") Then
                Call dbGetID(EditCat, Num, ID)
                dbGetLongFromNumVal = CatLong(ID)
            Else
                dbGetLongFromNumVal = Format$(Num)
            End If
        Case EditCus
            If (dbSettingValue(CusDbLongEntry) <> "0") Then
                Call dbGetID(EditCus, Num, ID)
                dbGetLongFromNumVal = CusLong(ID)
            Else
                dbGetLongFromNumVal = Format$(Num)
            End If
        Case Else
            MsgBox "Incorrect use of dbGetLongFromNumVal", vbCritical, "Function Error"
    End Select

    
    
    
End Function
Public Function dbGetNameFromNum(txtBox As TextBox, EditType As Integer, Optional ZeroText As String)
    
    'Returns the Grp,Cat or Cus Name for a number entered as a string
    
    On Error GoTo dbGetNameFromNumError
       
    Dim ID  As Integer
       
    'Check if 0 in text box and return the ZeroText
    If Val(txtBox.Text) = 0 Then
        dbGetNameFromNum = ZeroText
    Else
        
        'If not found then ID will be 0
        Call dbGetIDFromLongID(EditType, txtBox.Text, ID)
        
        Select Case EditType
            Case EditGrp
                If ID = 0 Then
                    dbGetNameFromNum = ""
                Else
                    dbGetNameFromNum = GrpName(ID)
                End If
            Case EditCat
                If ID = 0 Then
                    dbGetNameFromNum = ""
                Else
                    dbGetNameFromNum = CatName(ID)
                End If
            Case EditCus
                If ID = 0 Then
                    dbGetNameFromNum = ""
                Else
                    dbGetNameFromNum = CusName(ID)
                End If
            Case Else
                dbGetNameFromNum = ""
        End Select
    
    End If
    
Exit Function
dbGetNameFromNumError:
    ErrorHandler Err, "dbGetNameFromNumError", Err.Description, True
    dbGetNameFromNum = ZeroText
    
End Function

Public Sub dbGetGrpInfo(CatgNum As Long, Grp As Integer, GroupName As String)
    
    'Get the Program number and Name from a Category Number
    
    Dim CatID As Integer
    Dim GrpID As Integer
    
    Grp = 0
    
    Call dbGetID(EditCat, CatgNum, CatID)
    
    Grp = CatGroup(CatID)
    
    Call dbGetID(EditGrp, CLng(Grp), GrpID)
    GroupName = GrpName(GrpID)
    

End Sub

Public Sub dbMain()
    
    On Error GoTo dbMainError
         
    'Category db used?
    dbCatUsed = db_uspSettingGet("SettingsNetwork", "dbOptions", dbSettingName(CatDbCatEqualGroup), True, PCNum)
         
    'Read scheduled DB repair time
    Dim dbBackupDateTime As String
    dbBackupDateTime = db_uspSettingGet("SettingsNetwork", "dbOptions", dbSettingName(dbBackupTimeValue), Format$(Now, "dd/mm/yyyy HH:mm"), PCNum)
    'Convert dtPicker (date time) values to Hour and Minutes
    dbBackupTime = Format$(dbBackupDateTime, "HH:mm")
           
    'Load Data into memory
    db_uspLanguageRead CurrentLanguage
    
    db_uspCategoryGroupRead
    
    'Read Customer First To Populate Array before updating then reading again
    db_uspCustomersRead
    db_uspCustomersRead
       
    db_uspIOListRead CurrentLanguage
    db_uspSequencesRead CurrentLanguage
    db_uspSequenceStepsRead CurrentLanguage
    db_uspAlarmTextsRead CurrentLanguage
    db_uspVNCRead
    db_uspCategoriesRead
    
    db_uspCatPicFileRead
    
    
    If dbUseMachineNames Then db_uspMachineNamesRead
    
    
    'Prune Databases
    Call db_uspAlarmHistoryPrune(90)
    Call db_uspPruneReports(365 * 2) '2 Years
    Call db_uspCalibrationHistoryPrune(366)
      
Exit Sub
dbMainError:
    ErrorHandler 0, "dbMain", Err.Description, False
    Resume Next
End Sub
Public Sub db_uspLanguageRead(Language As String, Optional ShowID As Boolean)
    
    On Error GoTo db_uspLanguageReadError
    
    Dim n               As Integer
    Dim mySQL           As String
           
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspLanguageRead"
                   
    Call dbCmd.Execute
         
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
            
    Do While Not rs.EOF
            
        n = rs.Fields("ID")
        
        If (n > MaxTextWord) Or (n < 0) Then GoTo TryNext
        If Not IsNull(rs.Fields(Language)) Then
            TextWord(n) = rs.Fields(Language)
        Else
            TextWord(n) = Format$(rs.Fields("ID")) & " NO TEXT"
        End If
        If ShowID Then TextWord(n) = Format$(rs.Fields("ID")) & " " & TextWord(n)
        
TryNext:

        rs.MoveNext
                    
    Loop
    
    rs.Close
       
    dbDisconnect
        
    'Replace Customer with Route?
    If CustomerIsRoute Then
        Call ReplaceCustomerWithRouteText
    End If
        
    MenuBarLoad
       
Exit Sub
db_uspLanguageReadError:
    dbDisconnect Err, "db_uspLanguageRead", Err.Description
    'Resume Next
End Sub
Public Sub db_uspIOListRead(Language As String)
    
    On Error GoTo db_uspIOListReadError
    
    Dim IO      As String
    Dim ID      As String
    Dim Card    As Integer
    Dim IOPoint As Integer
    Dim PLCStn  As Integer
           
    If Language = "" Then Language = "English"
           
    For PLCStn = 0 To UsedPLC
          
        dbConnect
           
        Dim dbCmd As ADODB.Command
               
        Set dbCmd = New ADODB.Command
        
        Set dbCmd.ActiveConnection = cn
           
        dbCmd.CommandType = adCmdStoredProc
        dbCmd.CommandText = "Supertrack.uspIOListRead"
        
        dbCmd.Parameters.Item("@IOList") = PLCStn
                               
        Call dbCmd.Execute
             
        'Process the results
        mySQL = "Select * from Results"
        Set rs = dbCmd.Execute(mySQL)
                
        Do While Not rs.EOF
                        
            ID = rs.Fields("ID")
            
            IO = Format$(Val(Right$(ID, Len(ID) - 1)))
                    
            If Left$(ID, 1) = "X" Then
                Card = Val(Mid$(IO, 1, Len(IO) - 2))
                IOPoint = Val(Right$(IO, 2))
                If Card > 0 And Card <= MaxPLCCards And IOPoint > 0 And IOPoint <= 16 Then
                    PLCCardUsed(Card, PLCStn) = True
                    If Not IsNull(rs.Fields(Language)) Then
                        PLCInputDesc(Card, IOPoint, PLCStn) = rs.Fields(Language)
                    End If
                End If
            ElseIf Left$(ID, 1) = "Y" Then
                Card = Val(Mid$(IO, 1, Len(IO) - 2))
                IOPoint = Val(Right$(IO, 2))
                If Card > 0 And Card <= MaxPLCCards And IOPoint > 0 And IOPoint <= 16 Then
                    PLCCardUsed(Card, PLCStn) = True
                    If Not IsNull(rs.Fields(Language)) Then
                        PLCOutputDesc(Card, IOPoint, PLCStn) = rs.Fields(Language)
                    End If
                End If
            End If
                    
            
            
TryNext:
    
            rs.MoveNext
                        
        Loop
        
        rs.Close
           
        dbDisconnect
    
    Next PLCStn
        
Exit Sub
db_uspIOListReadError:
    dbDisconnect Err, "db_uspIOListRead", Err.Description
    'Resume Next
End Sub
Public Sub db_uspAlarmHistoryWrite(AlarmHistoryID As Integer, _
                                PLCStn As Integer, _
                                AlmNum As Integer, _
                                AlmNam As Integer, _
                                AlmExtra As Integer)
    
    On Error GoTo db_uspAlarmHistoryWriteError
      
           
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspAlarmHistoryWrite"
    
    dbCmd.Parameters.Item("@ID") = AlarmHistoryID
    dbCmd.Parameters.Item("@PLC") = PLCStn
    dbCmd.Parameters.Item("@TimeDate") = Format(Now, "DD/MM/YY HH:mm:ss")
    dbCmd.Parameters.Item("@Hour") = Format(Now, "HH")
    dbCmd.Parameters.Item("@DayOfWeek") = Weekday(Now, vbMonday)
    dbCmd.Parameters.Item("@Week") = Format(Now, "ww", vbMonday, vbFirstFourDays)
    dbCmd.Parameters.Item("@Month") = Format(Now, "MM")
    dbCmd.Parameters.Item("@AlarmNumber") = AlmNum
    dbCmd.Parameters.Item("@AlarmName") = AlmNam
    dbCmd.Parameters.Item("@AlarmExtra") = AlmExtra
                       
    Call dbCmd.Execute
          
    dbDisconnect
        
Exit Sub
db_uspAlarmHistoryWriteError:
    dbDisconnect Err, "db_uspAlarmHistoryWrite", Err.Description
    'Resume Next
End Sub

Public Sub db_uspAlarmHistoryDelete()
    
    On Error GoTo db_uspAlarmHistoryDeleteError
         
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspAlarmHistoryDelete"
                  
    Call dbCmd.Execute
          
    dbDisconnect
        
    ErrorHandler 0, "db_uspAlarmHistoryPrune", "Database Deleted", False
        
Exit Sub
db_uspAlarmHistoryDeleteError:
    dbDisconnect Err, "db_uspAlarmHistoryDelete", Err.Description
    'Resume Next
End Sub
Public Sub db_uspAlarmHistoryPrune(Days As Integer)
    
    On Error GoTo db_uspPruneAlarmHistoryError
         
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspAlarmHistoryPrune"
                
    dbCmd.Parameters.Item("@Days") = Days
                
    Call dbCmd.Execute
          
    dbDisconnect
        
    ErrorHandler 0, "db_uspAlarmHistoryPrune", "Database Pruned", False
        
Exit Sub
db_uspPruneAlarmHistoryError:
    dbDisconnect Err, "db_uspAlarmHistoryPrune", Err.Description
    'Resume Next
End Sub
Public Sub db_uspSequencesRead(Language As String)
    
    On Error GoTo db_uspSequencesReadError
    
    Dim n               As Integer
    Dim mySQL           As String
    Dim dbPLC           As Integer
           
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspSequencesRead"
                   
    Call dbCmd.Execute
         
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
            
    Do While Not rs.EOF
            
        PLCStn = rs.Fields("PLCStn")
        n = rs.Fields("ID")
        
        If (PLCStn > UsedPLC) Or (PLCStn < 0) Then GoTo TryNext
        If (n > MaxSeq) Or (n < 0) Then GoTo TryNext
        
        If Not IsNull(rs.Fields(Language)) Then SequenceName(n, PLCStn) = rs.Fields(Language)
        If Not IsNull(rs.Fields("AlarmHeader")) Then
            SequenceAlm(n, PLCStn) = rs.Fields("AlarmHeader")
        Else
            SequenceAlm(n, PLCStn) = "SEQ " & Format$(n)
        End If
            
TryNext:

        rs.MoveNext
                    
    Loop
    
    rs.Close
       
    dbDisconnect
        
Exit Sub
db_uspSequencesReadError:
    dbDisconnect Err, "db_uspSequencesRead", Err.Description
    'Resume Next
End Sub

Public Sub db_uspSequenceStepsRead(Language As String)
    
    On Error GoTo db_uspSequenceStepsReadError
    
    Dim n               As Integer
    Dim mySQL           As String
    Dim dbSeq           As Integer
    Dim dbStep          As Integer
    Dim dbPLC           As Integer
           
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspSequenceStepsRead"
                   
    Call dbCmd.Execute
         
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
            
    Do While Not rs.EOF
'        If dbStep = 99 Then
'            Debug.Print ""
'        End If
'
        If Not IsNull(rs.Fields("Sequence")) Then dbSeq = rs.Fields("Sequence")
        If Not IsNull(rs.Fields("Step")) Then dbStep = rs.Fields("Step")
        If Not IsNull(rs.Fields("PLCStn")) Then dbPLC = rs.Fields("PLCStn")
        
        If dbSeq <= MaxSeq And dbStep <= MaxSeqStep And dbPLC <= MaxPLC Then
            If Not IsNull(rs.Fields(Language)) Then SequenceDescription(dbSeq, dbStep, dbPLC) = Format$(dbStep, "0") & " - " & rs.Fields(Language)
        End If
       
        rs.MoveNext
                    
    Loop
    
    rs.Close
       
    dbDisconnect
        
Exit Sub
db_uspSequenceStepsReadError:
    dbDisconnect Err, "db_uspSequenceStepsRead", Err.Description
    'Resume Next
End Sub

Public Sub db_uspVNCRead()
    
    On Error GoTo db_uspVNCReadError
    
    Dim n               As Integer
    Dim mySQL           As String
           
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspVNCRead"
                   
    Call dbCmd.Execute
         
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
            
    Do While Not rs.EOF
            
        n = rs.Fields("ID")
        
        If (n > MaxVNC) Or (n < 0) Then GoTo TryNext
                     
        VNCName(n) = rs.Fields("Name")
        VNCCmd(n) = rs.Fields("Cmd")
        
TryNext:

        rs.MoveNext
                    
    Loop
    
    rs.Close
       
    dbDisconnect
        
Exit Sub
db_uspVNCReadError:
    dbDisconnect Err, "db_uspVNCRead", Err.Description
    'Resume Next
End Sub


Public Sub db_uspPruneReports(Days As Integer)
    
    On Error GoTo db_uspPruneReportsError
         
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspReportPrune"
                
    dbCmd.Parameters.Item("@Days") = Days
                
    Call dbCmd.Execute
          
    dbDisconnect
        
    ErrorHandler 0, "db_uspPruneReports", "Database Pruned", False
        
Exit Sub
db_uspPruneReportsError:
    dbDisconnect Err, "db_uspPruneReports", Err.Description
    'Resume Next
End Sub
Public Sub db_uspReportWrite(ReportID As Long, _
                                PLC As Long, _
                                Cus As Long, _
                                Cat As Long, _
                                Wgt As Long, _
                                Cnt As Long, _
                                Stn As Long, _
                                Mcn As Long, _
                                Grp As Long, _
                                Bid As Long, _
                                Dst As Long, _
                                Day As Long, _
                                Spe As Long)
    
    On Error GoTo db_uspReportWriteError
      
           
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspReportWrite"
    
    dbCmd.Parameters.Item("@ID") = ReportID
    dbCmd.Parameters.Item("@PLC") = PLC
    dbCmd.Parameters.Item("@TimeDate") = Format(Now, "DD/MM/YY HH:mm:ss")
    dbCmd.Parameters.Item("@Hour") = Format(Now, "HH")
    dbCmd.Parameters.Item("@DayOfWeek") = Weekday(Now, vbMonday)
    dbCmd.Parameters.Item("@Week") = Format(Now, "ww", vbMonday, vbFirstFourDays)
    dbCmd.Parameters.Item("@Month") = Format(Now, "MM")
    dbCmd.Parameters.Item("@BagID") = Bid
    dbCmd.Parameters.Item("@Station") = Stn
    dbCmd.Parameters.Item("@CategoryGroup") = Grp
    dbCmd.Parameters.Item("@Category") = Cat
    dbCmd.Parameters.Item("@Customer") = Cus
    dbCmd.Parameters.Item("@Weight") = Wgt
    dbCmd.Parameters.Item("@Count") = Cnt
    dbCmd.Parameters.Item("@Day") = Day
    dbCmd.Parameters.Item("@Destination") = Dst
    dbCmd.Parameters.Item("@Machine") = Mcn
    dbCmd.Parameters.Item("@Special") = Spe
    dbCmd.Parameters.Item("@BatchID") = 0 'Future
                   
    Call dbCmd.Execute
          
    dbDisconnect
        
Exit Sub
db_uspReportWriteError:
    dbDisconnect Err, "db_uspReportWrite", Err.Description
    'Resume Next
End Sub
Public Sub db_uspCalibrationHistoryPrune(Days As Integer)
    
    On Error GoTo db_uspCalibrationHistoryPruneError
         
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCalibrationHistoryPrune"
                
    dbCmd.Parameters.Item("@Days") = Days
                
    Call dbCmd.Execute
          
    dbDisconnect
        
    ErrorHandler 0, "db_uspCalibrationHistoryPrune", "Database Pruned", False
        
Exit Sub
db_uspCalibrationHistoryPruneError:
    dbDisconnect Err, "db_uspCalibrationHistoryPrune", Err.Description
    'Resume Next
End Sub
Public Sub db_uspCalibrationHistoryWrite(Station As Long, _
                                PLCStn As Long, _
                                CalAction As String, _
                                EmptyValue As Long, _
                                GainValue As Long, _
                                TestWeight As Long, _
                                CurrentRaw As Long, _
                                CurrentKg As Long)
    
        
    On Error GoTo db_uspCalibrationHistoryWriteError
    
    'Calculate points per Kg
    Dim Points As Long
    
    Points = (GainValue - EmptyValue)
    If (TestWeight > 0) Then
        Points = (Points / TestWeight) * 10
    Else
        Points = 0
    End If
    
    
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspCalibrationHistoryWrite"
    
    dbCmd.Parameters.Item("@Station") = Station
    dbCmd.Parameters.Item("@PLCStn") = PLCStn
    dbCmd.Parameters.Item("@TimeDate") = Format(Now, "DD/MM/YY HH:mm:ss")
    dbCmd.Parameters.Item("@CalAction") = CalAction
    dbCmd.Parameters.Item("@EmptyValue") = EmptyValue
    dbCmd.Parameters.Item("@GainValue") = GainValue
    dbCmd.Parameters.Item("@TestWeight") = TestWeight
    dbCmd.Parameters.Item("@CurrentRaw") = CurrentRaw
    dbCmd.Parameters.Item("@PointsPerKg") = Points
    dbCmd.Parameters.Item("@CurrentKg") = CurrentKg
                       
    Call dbCmd.Execute
          
    dbDisconnect
        
Exit Sub
db_uspCalibrationHistoryWriteError:
    dbDisconnect Err, "db_uspCalibrationHistoryWrite", Err.Description
    'Resume Next
End Sub
Public Sub db_uspSettingSave(FileName As String, SettingGroup As String, _
                            SettingID As String, SettingValue As Variant, PC As Integer, Optional DoNotUpdateCache As Boolean, _
                            Optional flag As Boolean = True)
    
    
    
    On Error GoTo db_uspSettingSaveError
    
    Dim Pcid As Integer

       
   Pcid = PC
''Now Handled in SQL>>>
'    If FileName = "SettingsNetwork" Then
'        If (PC = 0) Then
'            Pcid = 0
'        Else
'            Pcid = 1
'        End If
'    ElseIf FileName = "SettingsLocal" Then
'        Pcid = PC
'    Else
'        ErrorHandler Err, "db_uspSettingSave", "Invalid FileName", True
'        GoTo db_uspSettingSaveError
'    End If
            
   If flag Then dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    'If FileName = "SettingsLocal" Then
    '    dbCmd.CommandText = "Supertrack.uspSettingsLocalSave"
    'Else
        dbCmd.CommandText = "Supertrack.uspSettingSave"
        dbCmd.Parameters.Item("@Database") = FileName
    'End If
    
    
    dbCmd.Parameters.Item("@PCid") = Pcid
    dbCmd.Parameters.Item("@SettingGroup") = SettingGroup
    dbCmd.Parameters.Item("@SettingID") = SettingID
    dbCmd.Parameters.Item("@SettingValue") = SettingValue
                       
    Call dbCmd.Execute
          
   If flag Then dbDisconnect
   If Not DoNotUpdateCache Then db_uspGetSettingsCache Pcid, flag
    
Exit Sub
db_uspSettingSaveError:
    ErrorHandler Err, "db_uspSettingSave", Err.Description, False
    If flag Then dbDisconnect
    
End Sub


Public Function db_uspConnectionTest()
    
    On Error GoTo db_uspConnectionTest_Error
      
    db_uspConnectionTest = 0
    
    Call dbConnect
        
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
    
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspConnectionTest"
    
    dbCmd.Parameters.Item("@TestValue") = CLng(Now)
    
    Call dbCmd.Execute
    
    If IsNull(dbCmd.Parameters.Item("@TestReply")) Then
        db_uspConnectionTest = 0
    Else
        db_uspConnectionTest = dbCmd.Parameters.Item("@TestReply")
    End If
         
    Call dbDisconnect
       
Exit Function
db_uspConnectionTest_Error:
        
    ErrorHandler Err, "dbStandard db_uspConnectionTest", Err.Description, False
    
    Call dbDisconnect
    
End Function


Public Function db_uspLoadingProgramReadNames(myCombo As ComboBox, Optional AddBlank As Boolean)
    
    On Error GoTo db_uspLoadingProgramReadNames_Error
        
    Call dbConnect
         
    Dim mySQL As String
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
    
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspLoadingProgramReadNames"
       
    Call dbCmd.Execute
             
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
             
    myCombo.Clear
    If AddBlank Then myCombo.AddItem "", 0
         
    If Not rs.BOF And Not rs.EOF Then rs.MoveFirst
    
    Do While Not rs.EOF
                                    
        myCombo.AddItem rs.Fields("ProgramName")
                
        rs.MoveNext
                    
    Loop
    
    rs.Close
         
    Call dbDisconnect
       
Exit Function
db_uspLoadingProgramReadNames_Error:
        
    ErrorHandler Err, "dbStandard db_uspLoadingProgramReadNames", Err.Description, False
    
    Call dbDisconnect
    
End Function
Public Function db_uspLoadingProgramDelete(ProgramName As String)
    
    On Error GoTo db_uspLoadingProgramDelete_Error
        
    If ProgramName = "" Then Exit Function
        
    Call dbConnect
         
    Dim mySQL As String
    
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
     
    
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspLoadingProgramDelete"
       
    dbCmd.Parameters.Item("@ProgramName") = ProgramName
          
    Call dbCmd.Execute
             
    Call dbDisconnect
       
Exit Function
db_uspLoadingProgramDelete_Error:
        
    ErrorHandler Err, "dbStandard db_uspLoadingProgramDelete", Err.Description, False
    
    Call dbDisconnect
    
End Function
Public Function db_uspLoadingProgramRead()
    
    On Error GoTo db_uspLoadingProgramRead_Error
        
    Call dbConnect
         
    Dim mySQL As String
    
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
     
    
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspLoadingProgramRead"
       
    dbCmd.Parameters.Item("@ProgramName") = Loading.ProgramName
       
    Call dbCmd.Execute
         
         
    ReDim Loading.ProgramCat(1)
    ReDim Loading.ProgramCus(1)
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
               
    Do While Not rs.EOF
        
        n = rs.Fields("SettingIndex")

        If ((n < 1) Or (n > LD_File)) Then
            ErrorHandler Err, "dbStandard db_uspLoadingProgramRead", "SettingIndex > LD_File " & Format$(n), False
            GoTo db_uspLoadingProgramRead_Error:
        End If
        
        mySettingID = RTrim(rs.Fields("SettingID"))
        
        Select Case mySettingID
            
            Case "Cat"
            
                If UBound(Loading.ProgramCat) < n Then ReDim Preserve Loading.ProgramCat(n)
                Loading.ProgramCat(n) = rs.Fields("SettingValue")
            Case "Cus"
                If UBound(Loading.ProgramCus) < n Then ReDim Preserve Loading.ProgramCus(n)
                Loading.ProgramCus(n) = rs.Fields("SettingValue")
            Case Else
                ErrorHandler Err, "dbStandard db_uspLoadingProgramRead", "Invalid SettingID " & Format$(rs.Fields("SettingID")), True
        End Select
                 
        rs.MoveNext
                 
    Loop
            
    Call dbDisconnect
       
Exit Function
db_uspLoadingProgramRead_Error:
        
    ErrorHandler Err, "dbStandard db_uspLoadingProgramRead", Err.Description, False
    
    Call dbDisconnect
    
End Function
Public Function db_uspLoadingProgramWrite()
    
    On Error GoTo db_uspLoadingProgramWrite_Error
        
    Call dbConnect
         
    Dim mySQL As String
    
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
     
    
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspLoadingProgramWrite"
                
    For n = 1 To LD_File
        dbCmd.Parameters.Item("@ProgramName") = Loading.ProgramName
        dbCmd.Parameters.Item("@SettingID") = "Cat"
        dbCmd.Parameters.Item("@SettingIndex") = n
        dbCmd.Parameters.Item("@SettingValue") = Loading.ProgramCat(n)
        If Loading.Used(n) Then Call dbCmd.Execute
    Next n
    For n = 1 To LD_File
        dbCmd.Parameters.Item("@ProgramName") = Loading.ProgramName
        dbCmd.Parameters.Item("@SettingID") = "Cus"
        dbCmd.Parameters.Item("@SettingIndex") = n
        dbCmd.Parameters.Item("@SettingValue") = Loading.ProgramCus(n)
         If Loading.Used(n) Then Call dbCmd.Execute
    Next n
         
    Call dbDisconnect
       
Exit Function
db_uspLoadingProgramWrite_Error:
        
    ErrorHandler Err, "dbStandard db_uspLoadingProgramWrite", Err.Description, False
    
    Call dbDisconnect
    
End Function
Public Sub CheckConnectionToMaster()
    
    On Error GoTo CheckConnectionToMasterError
       
    Dim NoMaster    As Boolean
    Dim ErrorTime   As Variant
    Dim ReplyValue  As Long
    
ReTryConnect:
    
    ReplyValue = db_uspConnectionTest
      
    If ReplyValue <> 0 Then

        NoMaster = CheckFormOpen("NoSQLServer_frm")
        If NoMaster Then
            Unload NoSQLServer_frm
        End If

        SQLServerFound = True

    Else
        GoTo WaitForMasterConnection
    End If
    
Exit Sub

WaitForMasterConnection:
    
    NoMaster = CheckFormOpen("NoSQLServer_frm")
    If Not NoMaster Then NoSQLServer_frm.Show
        
    ErrorTime = Now
    Do
    
    If Not GetInputState = 0 Then DoEvents
    
    Loop Until (DateDiff("s", ErrorTime, Now) > 15) Or CheckConnPwordOK
    
    If CheckConnPwordOK Then
        Screen.MousePointer = vbArrow
        Unload NoSQLServer_frm
        DisplayForm OptionsSQL_frm
        Exit Sub
    Else
        GoTo ReTryConnect
    End If

Exit Sub

CheckConnectionToMasterError:
    Call ErrorHandler(Err, "CheckConnectionToMaster", Err.Description, True)
    End
End Sub
Public Sub db_uspSettingPCSave(Name As String, Description As String, Pcid As Integer)
    
    
    
    On Error GoTo db_uspSettingPCSaveError
                
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspSettingsPCSave"
        
    dbCmd.Parameters.Item("@PCid") = Pcid
    dbCmd.Parameters.Item("@Name") = Name
    dbCmd.Parameters.Item("@Description") = Description
    
    Call dbCmd.Execute
          
    dbDisconnect
    db_uspGetSettingsCache (Pcid)
    
Exit Sub
db_uspSettingPCSaveError:
    ErrorHandler Err, "db_uspSettingPCSave", Err.Description, False
    dbDisconnect
    
End Sub
Public Sub db_uspSettingPCGet(Name As String, Description As String, Pcid As Integer)

    On Error GoTo db_uspSettingPCGetError
    
    Dim n           As Integer
    Dim mySQL       As String
         
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspSettingPCGet"
       
    dbCmd.Parameters.Item("@PCid") = Pcid
                  
    Call dbCmd.Execute
    
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
            
    If Not rs.EOF Then
        Name = rs.Fields("Name")
        Description = rs.Fields("Description")
    Else
        Name = "-"
        Description = "-"
    End If
    
    rs.Close
       
    dbDisconnect
    
Exit Sub
db_uspSettingPCGetError:
    ErrorHandler Err, "db_uspSettingPCGet", Err.Description, False
    dbDisconnect
    Name = "Error"
    Description = Err.Description
End Sub
Public Sub db_uspSettingDeleteAll(FileName As String, PC As Integer)
    
    
    
    On Error GoTo db_uspSettingDeleteAllError
    
    Dim Pcid As Integer
       
    If FileName = "SettingsNetwork" Then
        If (PC = 0) Then
            Pcid = 0
        Else
            Pcid = 1
        End If
    ElseIf FileName = "SettingsLocal" Then
        Pcid = PC
    Else
        ErrorHandler Err, "db_uspSettingDeleteAll", "Invalid FileName", True
        GoTo db_uspSettingDeleteAllError
    End If
            
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspSettingDeleteAll"
        
    dbCmd.Parameters.Item("@Database") = FileName
    dbCmd.Parameters.Item("@PCid") = Pcid
                           
    Call dbCmd.Execute
          
    dbDisconnect
           
    
Exit Sub
db_uspSettingDeleteAllError:
    ErrorHandler Err, "db_uspSettingDeleteAll", Err.Description, False
    dbDisconnect
    
End Sub
Public Sub db_SettingLocalCopyFromTo(FromPC As Integer, ToPC As Integer)

    On Error GoTo db_SettingLocalCopyFromToError
    
    Dim n           As Integer
    Dim mySQL       As String
    Dim FileName    As String
        
    FileName = "SettingsLocal"
        
    dbConnect
       
    'Connection for Saving a setting
    Dim SaveCmd As ADODB.Command
    Set SaveCmd = New ADODB.Command
    Set SaveCmd.ActiveConnection = cn
    SaveCmd.CommandType = adCmdStoredProc
    SaveCmd.CommandText = "Supertrack.uspSettingSave"
    '-------------------------------
       
    Dim dbCmd As ADODB.Command
    Set dbCmd = New ADODB.Command
    Set dbCmd.ActiveConnection = cn
          
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspSettingGetAll"
                    
    dbCmd.Parameters.Item("@Database") = FileName
    dbCmd.Parameters.Item("@PCid") = FromPC
                   
    Call dbCmd.Execute
    
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
             
    Do While Not rs.EOF
        
        SettingGroup = rs.Fields("SettingGroup")
        SettingID = rs.Fields("SettingID")
        SettingValue = rs.Fields("SettingValue")
        
        SaveCmd.Parameters.Item("@Database") = FileName
        SaveCmd.Parameters.Item("@PCid") = ToPC
        SaveCmd.Parameters.Item("@SettingGroup") = SettingGroup
        SaveCmd.Parameters.Item("@SettingID") = SettingID
        SaveCmd.Parameters.Item("@SettingValue") = SettingValue
                       
        Call SaveCmd.Execute
        
            
        rs.MoveNext
            
    Loop
    
    rs.Close
       
    dbDisconnect
    
    
    
Exit Sub
db_SettingLocalCopyFromToError:
    ErrorHandler Err, "db_SettingLocalCopyFromTo", Err.Description, False
    dbDisconnect
End Sub
Public Function db_uspUnloadingProgramDelete(ProgramName As String)
    
    On Error GoTo db_uspUnloadingProgramDelete_Error
        
    If ProgramName = "" Then Exit Function
        
    Call dbConnect
         
    Dim mySQL As String
    
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
     
    
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspUnloadingProgramDelete"
       
    dbCmd.Parameters.Item("@ProgramName") = ProgramName
          
    Call dbCmd.Execute
            
    Call dbDisconnect
       
Exit Function
db_uspUnloadingProgramDelete_Error:
        
    ErrorHandler Err, "dbStandard db_uspUnloadingProgramDelete", Err.Description, False
    
    Call dbDisconnect
    
End Function

Public Function db_uspUnloadingProgramRead()
    
    On Error GoTo db_uspUnloadingProgramRead_Error
        
    Call dbConnect
         
    Dim mySQL       As String
    Dim mySettingID As String
    
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
     
    
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspUnloadingProgramRead"
       
    dbCmd.Parameters.Item("@ProgramName") = UnloadGrp.Name
       
    Call dbCmd.Execute
          
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
               
    Do While Not rs.EOF
        
        n = rs.Fields("SettingIndex")
        
        If ((n < 1) Or (n > MaxSteps)) Then
            ErrorHandler Err, "dbStandard db_uspUnloadingProgramRead", "SettingIndex > MaxSteps " & Format$(n), False
            GoTo db_uspUnloadingProgramRead_Error:
        End If
        
        mySettingID = RTrim(rs.Fields("SettingID"))
        
        Select Case mySettingID
            
            Case "Bags"
                UnloadGrp.Bags(n) = rs.Fields("SettingValue")
            Case "Line"
                UnloadGrp.Lin(n) = rs.Fields("SettingValue")
            Case "Batch"
                UnloadGrp.Batch(n) = rs.Fields("SettingValue")
            Case "Grp1"
                UnloadGrp.Grp1(n) = rs.Fields("SettingValue")
            Case "Grp2"
                UnloadGrp.Grp2(n) = rs.Fields("SettingValue")
            Case "Grp3"
                UnloadGrp.Grp3(n) = rs.Fields("SettingValue")
            Case Else
                ErrorHandler Err, "dbStandard db_uspUnloadingProgramRead", "Invalid SettingID " & Format$(rs.Fields("SettingID")), True
        
        End Select
                 
        rs.MoveNext
                 
    Loop
            
    Call dbDisconnect
       
Exit Function
db_uspUnloadingProgramRead_Error:
        
    ErrorHandler Err, "dbStandard db_uspUnloadingProgramRead", Err.Description, False
    
    Call dbDisconnect
    
End Function
Public Function db_uspUnloadingProgramReadNames(myCombo As ComboBox)
    
    On Error GoTo db_uspUnloadingProgramReadNames_Error
        
    Call dbConnect
         
    Dim mySQL As String
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
    
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspUnloadingProgramReadNames"
       
    Call dbCmd.Execute
             
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
             
    myCombo.Clear
         
    If Not rs.BOF And Not rs.EOF Then rs.MoveFirst
    
    Do While Not rs.EOF
                                    
        myCombo.AddItem RTrim(rs.Fields("ProgramName"))
                
        rs.MoveNext
                    
    Loop
    
    rs.Close
         
    Call dbDisconnect
       
Exit Function
db_uspUnloadingProgramReadNames_Error:
        
    ErrorHandler Err, "dbStandard db_uspUnloadingProgramReadNames", Err.Description, False
    
    Call dbDisconnect
    
End Function
Public Function db_uspUnloadingProgramWrite()
    
    On Error GoTo db_uspUnloadingProgramWrite_Error
        
    Call dbConnect
         
    Dim mySQL As String
    
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
     
    
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspUnloadingProgramWrite"
          
    For n = 1 To MaxSteps
        dbCmd.Parameters.Item("@ProgramName") = UnloadGrp.Name
        dbCmd.Parameters.Item("@SettingID") = "Bags"
        dbCmd.Parameters.Item("@SettingIndex") = n
        dbCmd.Parameters.Item("@SettingValue") = UnloadGrp.Bags(n)
        Call dbCmd.Execute
    Next n
    For n = 1 To MaxSteps
        dbCmd.Parameters.Item("@ProgramName") = UnloadGrp.Name
        dbCmd.Parameters.Item("@SettingID") = "Line"
        dbCmd.Parameters.Item("@SettingIndex") = n
        dbCmd.Parameters.Item("@SettingValue") = UnloadGrp.Lin(n)
        Call dbCmd.Execute
    Next n
    For n = 1 To MaxSteps
        dbCmd.Parameters.Item("@ProgramName") = UnloadGrp.Name
        dbCmd.Parameters.Item("@SettingID") = "Batch"
        dbCmd.Parameters.Item("@SettingIndex") = n
        dbCmd.Parameters.Item("@SettingValue") = UnloadGrp.Batch(n)
        Call dbCmd.Execute
    Next n
    For n = 1 To MaxSteps
        dbCmd.Parameters.Item("@ProgramName") = UnloadGrp.Name
        dbCmd.Parameters.Item("@SettingID") = "Grp1"
        dbCmd.Parameters.Item("@SettingIndex") = n
        dbCmd.Parameters.Item("@SettingValue") = UnloadGrp.Grp1(n)
        Call dbCmd.Execute
    Next n
    For n = 1 To MaxSteps
        dbCmd.Parameters.Item("@ProgramName") = UnloadGrp.Name
        dbCmd.Parameters.Item("@SettingID") = "Grp2"
        dbCmd.Parameters.Item("@SettingIndex") = n
        dbCmd.Parameters.Item("@SettingValue") = UnloadGrp.Grp2(n)
        Call dbCmd.Execute
    Next n
    For n = 1 To MaxSteps
        dbCmd.Parameters.Item("@ProgramName") = UnloadGrp.Name
        dbCmd.Parameters.Item("@SettingID") = "Grp3"
        dbCmd.Parameters.Item("@SettingIndex") = n
        dbCmd.Parameters.Item("@SettingValue") = UnloadGrp.Grp3(n)
        Call dbCmd.Execute
    Next n
     
    Call dbDisconnect
       
Exit Function
db_uspUnloadingProgramWrite_Error:
        
    ErrorHandler Err, "dbStandard db_uspUnloadingProgramWrite", Err.Description, False
    
    Call dbDisconnect
    
End Function


Public Sub db_uspMachineNamesRead()
    
    On Error GoTo db_uspMachineNamesReadError
    
    Dim n               As Integer
    Dim Num             As Long
    Dim mySQL           As String
    Dim MyRecordCount   As Integer
    Dim LastNum         As Long
       
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspMachineNamesRead"
                
    dbCmd.Parameters.Item("@myDummyValue") = 1
                
    Call dbCmd.Execute
       
    MyRecordCount = dbCmd.Parameters.Item("@RecordCount")
     
     'Resize the data arrays
    If MyRecordCount <= 20 Then
        McnDbSize = MyRecordCount
    Else
        McnDbSize = 20
    End If
    ReDim McnName(McnDbSize) As String
    ReDim McnNum(McnDbSize) As Long
    ReDim McnColB(McnDbSize) As Long            'Backcolor
    ReDim McnColF(McnDbSize) As Long            'Forecolor
     
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
            
    n = 1
        
    Do While Not rs.EOF
                      
        'Check the Category number is valid for this project
        Num = rs.Fields("Num")
        If (Num > 4) Or (Num < 0) Then GoTo TryNext
             
        If (LastNum > 0) And (LastNum = Num) Then
            Call ErrorHandler(0, "ReadMachineNames", "Duplicate Program Number Found = " & Format$(Num), False)
            GoTo TryNext
        End If
             
        McnNum(n) = rs.Fields("Num")
        McnName(n) = rs.Fields("Name")
        McnColB(n) = rs.Fields("BackColor")
        McnColF(n) = rs.Fields("ForeColor")
        n = n + 1
        
TryNext:

        rs.MoveNext
                    
    Loop
    
    rs.Close
       
    dbDisconnect
        
Exit Sub
db_uspMachineNamesReadError:
    dbDisconnect Err, "db_uspMachineNamesRead", Err.Description
    'Resume Next
End Sub
Public Sub db_uspMachineNamesWrite(myNum As Long, _
                                myName As String, _
                                myBackColor As Long, _
                                myForeColor As Long, _
                                myStatus As String, _
                                Optional flag As Boolean = True)
    
    On Error GoTo db_uspMachineNamesWriteError
           
    If flag Then dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspMachineNamesWrite"
    
    dbCmd.Parameters.Item("@Num") = myNum
    dbCmd.Parameters.Item("@Name") = myName
    dbCmd.Parameters.Item("@BackColor") = myBackColor
    dbCmd.Parameters.Item("@ForeColor") = myForeColor
    dbCmd.Parameters.Item("@Status") = myStatus
                   
    Call dbCmd.Execute
          
    If flag Then dbDisconnect
        
Exit Sub
db_uspMachineNamesWriteError:
    dbDisconnect Err, "db_uspMachineNamesWrite", Err.Description
    'Resume Next
End Sub
Public Sub db_uspMachineNamesSetStatus(Status As String)
    
    On Error GoTo db_uspMachineNamesSetStatusError
         
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspMachineNamesSetStatus"
                
    dbCmd.Parameters.Item("@myStatus") = Status
                
    Call dbCmd.Execute
       
    
       
    dbDisconnect
        
Exit Sub
db_uspMachineNamesSetStatusError:
    dbDisconnect Err, "db_uspMachineNamesSetStatus", Err.Description
    'Resume Next
End Sub
Public Sub db_uspMachineNamesDeleteWithStatus(Status As String, _
                                Optional flag As Boolean = True)
    
    On Error GoTo db_uspMachineNamesDeleteWithStatusError
          
    If flag Then dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspMachineNamesDeleteWithStatus"
                
    dbCmd.Parameters.Item("@myStatus") = Status
                
    Call dbCmd.Execute
       
    
       
    If flag Then dbDisconnect
        
Exit Sub
db_uspMachineNamesDeleteWithStatusError:
    dbDisconnect Err, "db_uspdb_uspMachineNamesDeleteWithStatus", Err.Description
    'Resume Next
End Sub


Public Sub db_uspBagIDRead(ID As Long, _
                            TimeDate As String, _
                            Destination As Long, _
                            CategoryGroup As Long, _
                            Weight As Long, _
                            Count As Long, _
                            Category As Long, _
                            User1 As Long, _
                            BatchID As Long, _
                            Customer As Long, _
                            User2 As Long, _
                            Station As Long, _
                            Machine As Long, _
                            Day As Long, _
                            Special As Long, _
                            Notes As String)

                            
    On Error GoTo db_uspBagIDReadError
                
    Dim n           As Integer
    Dim mySQL       As String
         
    'Clear Results
    TimeDate = ""
    Destination = 0
    CategoryGroup = 0
    Weight = 0
    Count = 0
    Category = 0
    User1 = 0
    BatchID = 0
    Customer = 0
    User2 = 0
    Station = 0
    Machine = 0
    Day = 0
    Special = 0
    Notes = ""
                
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspBagIDRead"
        
    dbCmd.Parameters.Item("@BagID") = ID
        
    Call dbCmd.Execute
          
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
            
    If Not rs.EOF Then
        If IsNull(rs.Fields("TimeDate")) Then TimeDate = "" Else TimeDate = rs.Fields("TimeDate")
        If IsNull(rs.Fields("Destination")) Then Destination = 0 Else Destination = rs.Fields("Destination")
        If IsNull(rs.Fields("CategoryGroup")) Then CategoryGroup = 0 Else CategoryGroup = rs.Fields("CategoryGroup")
        If IsNull(rs.Fields("Weight")) Then Weight = 0 Else Weight = rs.Fields("Weight")
        If IsNull(rs.Fields("Count")) Then Count = 0 Else Count = rs.Fields("Count")
        If IsNull(rs.Fields("Category")) Then Category = 0 Else Category = rs.Fields("Category")
        If IsNull(rs.Fields("User1")) Then User1 = 0 Else User1 = rs.Fields("User1")
        If IsNull(rs.Fields("BatchID")) Then BatchID = 0 Else BatchID = rs.Fields("BatchID")
        If IsNull(rs.Fields("Customer")) Then Customer = 0 Else Customer = rs.Fields("Customer")
        If IsNull(rs.Fields("User2")) Then User2 = 0 Else User2 = rs.Fields("User2")
        If IsNull(rs.Fields("Station")) Then Station = 0 Else Station = rs.Fields("Station")
        If IsNull(rs.Fields("Machine")) Then Machine = 0 Else Machine = rs.Fields("Machine")
        If IsNull(rs.Fields("Day")) Then Day = 0 Else Day = rs.Fields("Day")
        If IsNull(rs.Fields("Special")) Then Special = 0 Else Special = rs.Fields("Special")
        If IsNull(rs.Fields("Notes")) Then Notes = "" Else Notes = rs.Fields("Notes")
    End If
    
    rs.Close
       
    dbDisconnect
          
    
Exit Sub
db_uspBagIDReadError:
    ErrorHandler Err, "db_uspBagIDRead", Err.Description, False
    dbDisconnect
    
End Sub
Public Sub db_uspBagIDWrite(ID As Long, _
                            TimeDate As String, _
                            Destination As Long, _
                            CategoryGroup As Long, _
                            Weight As Long, _
                            Count As Long, _
                            Category As Long, _
                            User1 As Long, _
                            BatchID As Long, _
                            Customer As Long, _
                            User2 As Long, _
                            Station As Long, _
                            Machine As Long, _
                            Day As Long, _
                            Special As Long, _
                            Notes As String)

                            
    On Error GoTo db_uspBagIDWriteError
                    
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspBagIDWrite"
    
    dbCmd.Parameters.Item("@ID") = ID
    dbCmd.Parameters.Item("@TimeDate") = Format(Now, "yyyy-mm-dd HH:mm:ss")
    dbCmd.Parameters.Item("@Destination") = Destination
    dbCmd.Parameters.Item("@CategoryGroup") = CategoryGroup
    dbCmd.Parameters.Item("@Weight") = Weight
    dbCmd.Parameters.Item("@Count") = Count
    dbCmd.Parameters.Item("@Category") = Category
    dbCmd.Parameters.Item("@User1") = User1
    dbCmd.Parameters.Item("@BatchID") = BatchID
    dbCmd.Parameters.Item("@Customer") = Customer
    dbCmd.Parameters.Item("@User2") = User2
    dbCmd.Parameters.Item("@Station") = Station
    dbCmd.Parameters.Item("@Machine") = Machine
    dbCmd.Parameters.Item("@Day") = Day
    dbCmd.Parameters.Item("@Special") = Special
    dbCmd.Parameters.Item("@Notes") = Notes
    
    
    Call dbCmd.Execute
          
    dbDisconnect
          
    
Exit Sub
db_uspBagIDWriteError:
    ErrorHandler Err, "db_uspBagIDWrite", Err.Description, False
    dbDisconnect
    
End Sub

Public Sub db_uspPicDBSetFTPPath(path As String)

    On Error GoTo db_uspPicDBSetFTPPath
    Dim mySQL           As String

    dbConnect

    Dim dbCmd As ADODB.Command

     Set dbCmd = New ADODB.Command

    Set dbCmd.ActiveConnection = cn

    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspPicDBSetFTPPath"

    dbCmd.Parameters.Item("@Path") = path
    Call dbCmd.Execute
        'Process the results

    dbDisconnect

Exit Sub
db_uspPicDBSetFTPPath:
    dbDisconnect Err, "db_uspPicDBSetFTPPath", Err.Description
    'Resume Next
End Sub
Public Function db_uspPicDBGetFTPPath() As String

    On Error GoTo db_uspPicDBGetFTPPath
    Dim mySQL           As String
    Dim path As String
       
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
     Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspPicDBGetFTPPath"
                
    Call dbCmd.Execute
        'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
    Do While Not rs.EOF
                     
    path = rs.Fields(0)
            
TryNext:

        rs.MoveNext
                    
    Loop
    
    rs.Close

    dbDisconnect
        
    db_uspPicDBGetFTPPath = path
        
        
Exit Function
db_uspPicDBGetFTPPath:
    dbDisconnect Err, "db_uspPicDBGetFTPPath", Err.Description
    'Resume Next
End Function
Public Function db_uspUnloadingProgramWriteBulk()
    
    On Error GoTo db_uspUnloadingProgramWriteBulk_Error
        
    Call dbConnect
         
    Dim mySQL As String
    
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
     
    
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspUnloadingProgramWriteBulk"
          
    For n = 1 To MaxSteps
        dbCmd.Parameters.Item("@ProgramName") = UnloadGrp.Name
        dbCmd.Parameters.Item("@Bags") = UnloadGrp.Bags(n)
        dbCmd.Parameters.Item("@Line") = UnloadGrp.Lin(n)
        dbCmd.Parameters.Item("@Batch") = UnloadGrp.Batch(n)
        dbCmd.Parameters.Item("@Grp1") = UnloadGrp.Grp1(n)
        dbCmd.Parameters.Item("@Grp2") = UnloadGrp.Grp2(n)
        dbCmd.Parameters.Item("@Grp3") = UnloadGrp.Grp3(n)
        dbCmd.Parameters.Item("@SettingIndex") = n
        Call dbCmd.Execute
    Next n
    
     
    Call dbDisconnect
       
Exit Function
db_uspUnloadingProgramWriteBulk_Error:
        
    ErrorHandler Err, "dbStandard db_uspUnloadingProgramWriteBulk", Err.Description, False
    
    Call dbDisconnect
    
End Function
Public Function db_uspSettingGet(FileName As String, SettingGroup As String, _
                            SettingID As String, Default As Variant, PC As Integer)

    On Error GoTo db_uspSettingGetError
    'Test Tim
    'New procedure to work from cache....
    
    If FileName = "SettingsNetwork" Then
        If (PC = 0) Then
            Pcid = 0
        Else
            Pcid = 1
        End If
    ElseIf FileName = "SettingsLocal" Then
        Pcid = PC
    Else
        ErrorHandler Err, "db_uspSettingGet", "Invalid FileName", True
        GoTo db_uspSettingGetError
    End If
    
    'db_uspGetSettingsCache (PcID)
    Dim n As Integer
    n = 0
    For n = 0 To UBound(SettingsCache)
        If (SettingsCache(n).SettingGroup = SettingGroup) And (SettingsCache(n).SettingID = SettingID) Then
            db_uspSettingGet = SettingsCache(n).SettingValue
            Exit Function
        End If
    Next n
    db_uspSettingGet = Default
Exit Function
db_uspSettingGetError:
    ErrorHandler Err, "db_uspSettingGet", Err.Description, False
    dbDisconnect
End Function
Public Sub db_uspGetSettingsCache(Pcid As Integer, Optional flag As Boolean = True)

    On Error GoTo db_uspGetSettingsCache
    
    Dim n           As Integer
    Dim mySQL       As String
    Dim RecordCount As Integer
         
    If flag Then dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspGetSettingsCache"
       
    dbCmd.Parameters.Item("@PCid") = Pcid
                  
    Call dbCmd.Execute
    RecordCount = dbCmd.Parameters.Item("@RecordCount")
    
    ReDim SettingsCache(0 To RecordCount)
    
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)

    n = 0
    Do While Not rs.EOF
        If n <= RecordCount Then
            SettingsCache(n).SettingGroup = rs.Fields("SettingGroup")
            SettingsCache(n).SettingID = rs.Fields("SettingID")
            SettingsCache(n).SettingValue = rs.Fields("SettingValue")
            n = n + 1
        Else
            Exit Do
        End If
TryNext:

        rs.MoveNext
    Loop
    
    rs.Close
    
    If flag Then dbDisconnect
    DebugCounters.SQLReadSettingCache = DebugCounters.SQLReadSettingCache + 1
    
Exit Sub
db_uspGetSettingsCache:
    ErrorHandler Err, "db_uspGetSettingsCache", Err.Description, False
    If flag Then dbDisconnect
    Name = "Error"
    Description = Err.Description
End Sub
Public Function dbGetNameFromLongNum(Value As Long, EditType As Integer)
    
    'Returns the Grp,Cat or Cus Name for a number entered as a string
    
    On Error GoTo dbGetNameFromLongNum
       
    Dim ID  As Integer
       
    'Check if 0 in text box and return the ZeroText
    If Value = 0 Then
        dbGetNameFromLongNum = ""
    Else
        
        'If not found then ID will be 0
        Call dbGetID(EditType, Value, ID)
        
        Select Case EditType
            Case EditGrp
                If ID = 0 Then
                    dbGetNameFromLongNum = ""
                Else
                    dbGetNameFromLongNum = GrpName(ID)
                End If
            Case EditCat
                If ID = 0 Then
                    dbGetNameFromLongNum = ""
                Else
                    dbGetNameFromLongNum = CatName(ID)
                End If
            Case EditCus
                If ID = 0 Then
                    dbGetNameFromLongNum = ""
                Else
                    dbGetNameFromLongNum = CusName(ID)
                End If
            Case Else
                dbGetNameFromLongNum = ""
        End Select
    
    End If
    
Exit Function
dbGetNameFromLongNum:
    ErrorHandler Err, "dbGetNameFromLongNum", Err.Description, True
    dbGetNameFromLongNum = ""
    
End Function
Public Sub db_uspAlarmTextsRead(Language As String)
    
    On Error GoTo db_uspAlarmTextsReadError
    
    Dim Index               As Integer
    Dim mySQL           As String
    
    ReDim Alarm_Text(0)

    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspAlarmTextsRead"
    dbCmd.Parameters.Item("@Language") = Language
                   
    
    Call dbCmd.Execute
         
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
            
   
    
    Do While Not rs.EOF

        If Not IsNull(rs.Fields("ID")) Then
            Index = Val(rs.Fields("ID"))
            If Index > UBound(Alarm_Text) Then ReDim Preserve Alarm_Text(Index)
            
            Alarm_Text(Index).ID = Index
            If Not IsNull(rs.Fields("Name")) Then Alarm_Text(Index).Name = rs.Fields("Name")
            If Not IsNull(rs.Fields("Details")) Then Alarm_Text(Index).Detail = rs.Fields("Details")
            If Not IsNull(rs.Fields("Remedy")) Then Alarm_Text(Index).Remedy = rs.Fields("Remedy")
            If Not IsNull(rs.Fields("Notes")) Then Alarm_Text(Index).Note = rs.Fields("Notes")
        End If
            rs.MoveNext
                    
    Loop
    
    rs.Close
       
    dbDisconnect
        
Exit Sub
db_uspAlarmTextsReadError:
    dbDisconnect Err, "db_uspAlarmTextsReadError", Err.Description
    'Resume Next
End Sub
Public Sub db_uspWriteEditHistory(Pcid As Integer, _
                                SettingPLC As Integer, _
                                TimeStamp As Date, _
                                SettingIndex As Integer, _
                                SettingType As String, _
                                SettingName As String, _
                                SettingValueNew As String, _
                                SettingValueOld As String)

    On Error GoTo db_uspWriteEditHistoryError
    Dim mySQL           As String
       
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
     Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspEditHistory_Insert"
     
    dbCmd.Parameters.Item("@TimeStamp") = TimeStamp
    dbCmd.Parameters.Item("@PCid") = Pcid
    dbCmd.Parameters.Item("@SettingPLC") = SettingPLC
    dbCmd.Parameters.Item("@SettingIndex") = SettingIndex
    dbCmd.Parameters.Item("@SettingType") = SettingType
    dbCmd.Parameters.Item("@SettingName") = SettingName
    dbCmd.Parameters.Item("@SettingValueNew") = SettingValueNew
    dbCmd.Parameters.Item("@SettingValueOld") = SettingValueOld
    
    
    Call dbCmd.Execute

    dbDisconnect
        
Exit Sub
db_uspWriteEditHistoryError:
    dbDisconnect Err, "db_uspWriteEditHistory", Err.Description
End Sub
Public Sub db_uspPCError_Write(Pcid As Integer, _
                                ErrorNumber As Long, _
                                ErrorLocation As String, _
                                ErrorDetails As String, _
                                Importance As Integer, _
                                extn As String)

    On Error GoTo db_uspPCError_WriteError
    Dim mySQL           As String
       
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
     Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspPCError_Write"
     
    dbCmd.Parameters.Item("@PC") = Pcid
    dbCmd.Parameters.Item("@ErrorNumber") = ErrorNumber
    dbCmd.Parameters.Item("@ErrorLocation") = ErrorLocation
    dbCmd.Parameters.Item("@ErrorDetails") = ErrorDetails
    dbCmd.Parameters.Item("@ImportanceLevel") = Importance
    dbCmd.Parameters.Item("@Error_extn") = extn
    
    Call dbCmd.Execute

    dbDisconnect
        
    DebugCounters.SQLErrorWriteCount = DebugCounters.SQLErrorWriteCount + 1
        
Exit Sub
db_uspPCError_WriteError:
    dbDisconnect
    Resume Next
End Sub
Public Sub db_uspPCError_GetHistory()
    
    On Error GoTo db_uspPCError_GetHistoryError
    
    Dim Index               As Integer
    Dim mySQL           As String
    
    ReDim Alarm_Text(0)

    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspPCError_GetHistory"
    dbCmd.Parameters.Item("@PC") = PCNum
         
    ReDim PCErrorMessages(0)
    Dim StringBuild As String
    Call dbCmd.Execute
         
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
             
    Do While Not rs.EOF
        
        ReDim Preserve PCErrorMessages(Index)
            
        If Not IsNull(rs.Fields("TimeOfLastError")) Then StringBuild = rs.Fields("TimeOfLastError")
        If Not IsNull(rs.Fields("ErrorCount")) Then StringBuild = StringBuild & " Count = " & rs.Fields("ErrorCount") & ", "
        If Not IsNull(rs.Fields("ErrorNumber")) Then StringBuild = StringBuild & " Err No. " & rs.Fields("ErrorNumber") & ", "
        If Not IsNull(rs.Fields("ErrorLocation")) Then StringBuild = StringBuild & " Sub = " & rs.Fields("ErrorLocation") & ", "
        If Not IsNull(rs.Fields("ErrorDetails")) Then StringBuild = StringBuild & " Err = " & rs.Fields("ErrorDetails")
  
        rs.MoveNext
        
        Debug.Print StringBuild
        PCErrorMessages(Index) = StringBuild
        Index = Index + 1
    Loop
    
    rs.Close
       
    dbDisconnect
        
Exit Sub
db_uspPCError_GetHistoryError:
    dbDisconnect Err, "db_uspPCError_GetHistoryError", Err.Description
    'Resume Next
End Sub

Public Sub db_uspPCError_Delete(PCNum As Integer)

    On Error GoTo db_uspPCError_DeleteError
    Dim mySQL           As String

    dbConnect

    Dim dbCmd As ADODB.Command

     Set dbCmd = New ADODB.Command

    Set dbCmd.ActiveConnection = cn

    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspPCError_Delete"

    dbCmd.Parameters.Item("@PC") = PCNum
    Call dbCmd.Execute
        'Process the results

    dbDisconnect

Exit Sub
db_uspPCError_DeleteError:
    dbDisconnect Err, "db_uspPCError_DeleteError", Err.Description
    'Resume Next
End Sub
Public Sub db_uspGetPLCIpAddress()
    
    On Error GoTo db_uspGetPLCIpAddressError
    
    Dim Index               As Integer
    Dim mySQL           As String

    
    
    dbConnect
       
    Dim dbCmd As ADODB.Command
           
    Set dbCmd = New ADODB.Command
    
    Set dbCmd.ActiveConnection = cn
       
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspGetPLCIpAddress"
         
    ReDim PLCIpAddress(1)
    Index = 0
    Call dbCmd.Execute
         
    'Process the results
    mySQL = "Select * from Results"
    Set rs = dbCmd.Execute(mySQL)
             
    Do While Not rs.EOF
        ReDim Preserve PLCIpAddress(Index)
        If Not IsNull(rs.Fields("PLCIpAddress")) Then PLCIpAddress(Index) = rs.Fields("PLCIpAddress")
  
        rs.MoveNext
        Index = Index + 1
    Loop
    
    rs.Close
       
    dbDisconnect
        
Exit Sub
db_uspGetPLCIpAddressError:
    dbDisconnect Err, "db_uspGetPLCIpAddressError", Err.Description
    'Resume Next
End Sub
Public Sub db_uspPLCBackup_Write(PLCStn As Integer, Owner As String, Data As String, Optional TimeDate As Long)

    On Error GoTo db_uspPLCBackup_WriteError
    Dim mySQL           As String

    dbConnect

    Dim dbCmd As ADODB.Command

     Set dbCmd = New ADODB.Command

    Set dbCmd.ActiveConnection = cn
    
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspPLCBackup_Write"

    dbCmd.Parameters.Item("@PLC") = PLCStn
    dbCmd.Parameters.Item("@Name") = Owner
    dbCmd.Parameters.Item("@Data") = Data
    If TimeDate > 0 Then dbCmd.Parameters.Item("@TimeDate") = TimeDate
    Call dbCmd.Execute
        'Process the results

    dbDisconnect

Exit Sub
db_uspPLCBackup_WriteError:
    dbDisconnect Err, "db_uspPLCBackup_Write", Err.Description
    'Resume Next
End Sub
Public Sub db_uspPLCBackup_ReadFiles(PLCStn As Integer)

    On Error GoTo uspPLCBackup_ReadFilesError
    Dim mySQL           As String

    dbConnect

    Dim dbCmd As ADODB.Command
    Dim Index As Long
    
    Set dbCmd = New ADODB.Command

    Set dbCmd.ActiveConnection = cn
    
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspPLCBackup_ReadFiles"

    dbCmd.Parameters.Item("@PLC") = PLCStn
    Call dbCmd.Execute
    'Process the results
    mySQL = "Select * from Results"
    
    Set rs = dbCmd.Execute(mySQL)
    'Clear the old records
    ReDim Backup_files(1)
            
    Index = 1
    Do While Not rs.EOF
        ReDim Preserve Backup_files(Index)
        If Not IsNull(rs.Fields("ID")) Then Backup_files(Index).ID = Val(rs.Fields("ID"))
        If Not IsNull(rs.Fields("TimeDate")) Then Backup_files(Index).TimeDate = rs.Fields("TimeDate")
        If Not IsNull(rs.Fields("Name")) Then Backup_files(Index).Name = rs.Fields("Name")
        rs.MoveNext
        Index = Index + 1
    Loop
    
    rs.Close


    dbDisconnect

Exit Sub
uspPLCBackup_ReadFilesError:
    dbDisconnect Err, "uspPLCBackup_ReadFiles", Err.Description
    'Resume Next
End Sub
Public Function db_uspPLCBackup_ReadData(ID As Long)

    On Error GoTo uspPLCBackup_ReadFilesError
    Dim mySQL           As String

    dbConnect

    Dim dbCmd As ADODB.Command
    Set dbCmd = New ADODB.Command

    Set dbCmd.ActiveConnection = cn
    
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.uspPLCBackup_ReadData"

    dbCmd.Parameters.Item("@ID") = ID
    Call dbCmd.Execute
    'Process the results
    mySQL = "Select * from Results"
    
    Set rs = dbCmd.Execute(mySQL)
        db_uspPLCBackup_ReadData = rs.Fields("Data")
    
    rs.Close


    dbDisconnect

Exit Function
uspPLCBackup_ReadFilesError:
    dbDisconnect Err, "uspPLCBackup_ReadFiles", Err.Description
    'Resume Next
End Function
Public Sub db_uspCalibrationHistory_GetLastValues(PLCStn As Integer)

    On Error GoTo uspCalibrationHistory_GetLastValuesError
    Dim mySQL           As String

    dbConnect

    Dim dbCmd As ADODB.Command
    Dim Index As Integer
    
    Set dbCmd = New ADODB.Command

    Set dbCmd.ActiveConnection = cn
    
    dbCmd.CommandType = adCmdStoredProc
    dbCmd.CommandText = "Supertrack.[uspCalibrationHistory_GetLastValues]"

    dbCmd.Parameters.Item("@PLC") = PLCStn
    Call dbCmd.Execute
    'Process the results
    mySQL = "Select * from Results"
    
    Set rs = dbCmd.Execute(mySQL)
    'Clear the old records

    Index = 1
    ReDim RestoreCalibValue(Index)
    Do While Not rs.EOF
        ReDim Preserve RestoreCalibValue(Index)
        If Not IsNull(rs.Fields("PLCStn")) Then RestoreCalibValue(Index).PLC = Val(rs.Fields("PLCStn"))
        If Not IsNull(rs.Fields("Station")) Then RestoreCalibValue(Index).Station = rs.Fields("Station")
        If Not IsNull(rs.Fields("EmptyValue")) Then RestoreCalibValue(Index).Low = rs.Fields("EmptyValue")
        If Not IsNull(rs.Fields("GainValue")) Then RestoreCalibValue(Index).High = rs.Fields("GainValue")
        If Not IsNull(rs.Fields("TestWeight")) Then RestoreCalibValue(Index).Set = rs.Fields("TestWeight")
        rs.MoveNext
        Index = Index + 1
    Loop
    
    rs.Close


    dbDisconnect

Exit Sub
uspCalibrationHistory_GetLastValuesError:
    dbDisconnect Err, "uspCalibrationHistory_GetLastValuesError", Err.Description
    'Resume Next
End Sub
