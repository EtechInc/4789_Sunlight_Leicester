Attribute VB_Name = "MIS"
Public MISPath      As String
Public MISUse       As Boolean
Public MISFileName  As String
Public MISCusExtra  As Integer


Public Sub MISStore(Stn As Long, _
                    Cus As Long, _
                    Cat As Long, _
                    Cnt As Long, _
                    Wgt As Long, _
                    Bid As Long)
    
    On Error GoTo MISStoreError
    
    'MIS Management Information File - to local transaction file
    '-----------------------------------------------------------
    
    Dim TimeStamp As String
    Dim DateStamp As String
    Dim TransFile As String
    Dim F As Integer
            
    TimeStamp = Format$(Now, "hh:mm:ss")
    DateStamp = Format$(Now, "yyyymmdd")
    TransFile = DataPath & "Transaction.txt"
                   
    F = FreeFile
    Open TransFile For Append Shared As F
    
    'Transaction = DateStamp & " " & TimeStamp & ";" & "evCounter" & ";" & Format$(Stn) & ";" & _
    'Format$(CusLong(Cus)) & ";" & Format$(CatLong(Cat)) & ";" & Format$(Cnt) & ";" & Format$(Wgt)
    
    Transaction = DateStamp & " " & TimeStamp & ";" & "Sortierstd" & ";" & Format$(Stn) & _
    Format$(Bid) & ";" & Format$(Cus) & ";" & Format$(Cat) & ";" & Format$(Wgt) 'ZANE
    Print #F, Transaction
        
    Close F
Exit Sub
MISStoreError:
    ErrorHandler Err, "MISStore", Err.Description, False
    Resume Next
End Sub
Public Sub MISTransactionToMISFile()

On Error GoTo MISTransactionToMISFileError

If DebugToErrorFile Then ErrorHandler 0, "DEBUG - MISTransactionToMISFile", "Start", False

Dim F               As Integer
Dim f1              As Integer
Dim TransactionFile As String
Dim MISFile         As String
Dim Transaction     As String
TransactionFile = DataPath & "Transaction.txt"
MISFile = MISPath & "\" & MISFileName

F = FreeFile
Open MISFile For Append Lock Read Write As #F
f1 = FreeFile
Open TransactionFile For Input As #f1
    Do Until EOF(f1)
        Line Input #f1, Transaction
        Print #F, Transaction
    Loop
Close #F
Close #f1
Kill TransactionFile

If DebugToErrorFile Then ErrorHandler 0, "DEBUG - MISTransactionToMISFile", "Completed", False

Exit Sub
MISTransactionToMISFileError:
    Select Case Err
        Case 52, 53 'File Not Found
        'Case 54 'Bad File Mode
        Case 55 'File Already Open
        'Case 62 'Input Past End of File
        'Case 70 'Permision Denied
        Case Else
            ErrorHandler Err, "MISTransactionToMISFile", Err.Description, False
                   
    End Select
    Close #F
    Close #f1
End Sub
