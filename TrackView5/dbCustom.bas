Attribute VB_Name = "dbCustom"
'-----------------------------
'Change values to suit Project
'-----------------------------



Public Const dbUseMachineNames = False       'Machine Names Database


'Set to 1 if not required
Public Const MaxProg = 1        'Max Programmes

'Public Const MaxStations = 1   'Max WeighStations
Public Const MaxDestinations = 41       'Max Destination that can be edited
Public Const MaxGrp = 99        'Max Category Programs - 99 Should be the MAX!!
Public Const MaxGrpdb = 99      'Max Category Programs - 99 Should be the MAX!!
Public Const MaxCus = 999    'Max Customers
Public Const MaxCusdb = 999     'Max Customer Database size
Public Const MaxCat = 99   'Max Categories
Public Const MaxCatdb = 99    'Max Categories Database size

Public Const MaxVNC = 20        'Max VNC Viewer entries

'Type is a multi use value that can be sent to the PLC
'Can be used with Program or Category Database but NOT both!
Public Const MaxType = 100        'Max Program or Category Type - Multiple use for different contracts

Public Sub dbMainCustom()
    
    SQLServerPath = GetSetting("TrackView", "Config", "SQLServerPath", "MISSRV")
    SQLServerDbName = GetSetting("TrackView", "Config", "SQLServerDbName", "SUPDB")
                
    
End Sub
