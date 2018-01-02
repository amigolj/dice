AutoIt_Debugger_LoadFile("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3")
AutoIt_Debugger_DebugFile(@ScriptFullPath)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 1, False))
#include-once
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 1, False, @error, @extended))

#cs
	Function Name:    _MySQLConnect
	Description:      Initiate a connection to a MySQL database.
	Parameter(s):     $username - The username to connect to the database with.
	$password - The password to connect to the database with. $Database - Database to connect to.
	$server - The server your database is on.
	$driver (optional) the ODBC driver to use (default is "{MySQL ODBC 3.51 Driver}"
	Requirement(s):   Autoit 3 with COM support
	Return Value(s):  On success returns the connection object for subsequent functions. On failure returns 0 and sets @error
	@Error = 1
	Error opening connection
	@Error = 2
	MySQL ODBC Driver not installed.
	Author(s):        cdkid
#ce


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 19, False))
Func _MySQLConnect($sUsername, $sPassword, $sDatabase, $sServer, $sDriver = "{MySQL ODBC 3.51 Driver}", $iPort=3306)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 19, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sUsername")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sUsername", $sUsername))
If SetError(@error, @extended, IsDeclared("sPassword")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sPassword", $sPassword))
If SetError(@error, @extended, IsDeclared("sDatabase")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sDatabase", $sDatabase))
If SetError(@error, @extended, IsDeclared("sServer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sServer", $sServer))
If SetError(@error, @extended, IsDeclared("sDriver")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sDriver", $sDriver))
If SetError(@error, @extended, IsDeclared("iPort")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iPort", $iPort))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 20, False))
	Local $v = StringMid($sDriver, 2, StringLen($sDriver) - 2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 20, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("v")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$v", $v))
If SetError(@error, @extended, IsDeclared("sDriver")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sDriver", $sDriver))
If SetError(@error, @extended, IsDeclared("sDriver")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sDriver", $sDriver))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 21, False))
	Local $key = "HKEY_LOCAL_MACHINE\SOFTWARE\ODBC\ODBCINST.INI\ODBC Drivers", $val = RegRead($key, $v)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 21, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("key")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$key", $key))
If SetError(@error, @extended, IsDeclared("val")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$val", $val))
If SetError(@error, @extended, IsDeclared("key")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$key", $key))
If SetError(@error, @extended, IsDeclared("v")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$v", $v))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 22, False))
	If @error or $val = "" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 22, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("val")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$val", $val))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 23, False))
		SetError(2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 23, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 24, False))
		Return 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 24, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 25, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 25, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 26, False))
	$ObjConn = ObjCreate("ADODB.Connection")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 26, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ObjConn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ObjConn", $ObjConn))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 27, False))
	$Objconn.open ("DRIVER=" & $sDriver & ";SERVER=" & $sServer & ";DATABASE=" & $sDatabase & ";UID=" & $sUsername & ";PWD=" & $sPassword & ";PORT="&$iPort)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 27, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Objconn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Objconn", $Objconn))
If SetError(@error, @extended, IsDeclared("sDriver")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sDriver", $sDriver))
If SetError(@error, @extended, IsDeclared("sServer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sServer", $sServer))
If SetError(@error, @extended, IsDeclared("sDatabase")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sDatabase", $sDatabase))
If SetError(@error, @extended, IsDeclared("sUsername")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sUsername", $sUsername))
If SetError(@error, @extended, IsDeclared("sPassword")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sPassword", $sPassword))
If SetError(@error, @extended, IsDeclared("iPort")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iPort", $iPort))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 28, False))
	If @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 28, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 29, False))
		SetError(1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 29, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 30, False))
		Return 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 30, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 31, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 31, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 32, False))
		Return $ObjConn
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 32, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ObjConn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ObjConn", $ObjConn))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 33, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 33, False, @error, @extended))
EndFunc   ;==>_MySQLConnect

#cs
	Function name: _Query
	Description:     Send a query to the database
	Parameter(s):  $oConnectionObj - As returned by _MySQLConnect. $query - The query to execute
	Return Value(s):On success returns the query result. On failure returns 0 and sets @error to 1
	Requirement(s):Autoit3 with COM support
	Author(s):        cdid
#ce



SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 46, False))
Func _Query($oConnectionObj, $sQuery)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 46, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sQuery")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sQuery", $sQuery))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 47, False))
	If IsObj($oConnectionObj) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 47, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 48, False))
		Return $oConnectionobj.execute ($sQuery)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 48, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionobj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionobj", $oConnectionobj))
If SetError(@error, @extended, IsDeclared("sQuery")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sQuery", $sQuery))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 49, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 49, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 50, False))
	If @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 50, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 51, False))
		SetError(1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 51, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 52, False))
		Return 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 52, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 53, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 53, False, @error, @extended))
	
EndFunc   ;==>_Query

#cs
	Function name: _MySQLEnd
	Description:      Closes the database connection (see notes!)
	Parameter(s):   $oConnectionObj - The connection object as returned by _MySQLConnect()
	Requirement(s):Autoit 3 with COM support
	Return Value(s):On success returns 1. On failure returns 0 and sets @error to 1
	Author(s):         cdkid
#ce


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 66, False))
Func _MySQLEnd($oConnectionObj)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 66, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 67, False))
	If IsObj($oConnectionObj) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 67, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 68, False))
		$oConnectionObj.close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 68, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 69, False))
		Return 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 69, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 70, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 70, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 71, False))
		SetError(1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 71, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 72, False))
		Return 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 72, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 73, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 73, False, @error, @extended))
EndFunc   ;==>_MySQLEnd

#cs
	Function name: _AddRecord
	Description:     Adds a record to the specified table
	Note(s):           to add to multiple columns use an array with one blank element at the end as the $sColumn, and $value parameter
	Parameter(s):   $oConnectionObj - As returned by _MySQL Connect. $sTable - The table to put the record in
	                $row - The row to put the record in. $value - The value to put into the row
					$vValue - OPTIONAL default will be default for the column (will not work with array, see notes)
	Requirement(s): Autoit 3 with COM support
	Return value(s): On success returns 1. If the connectionobj is not an object returns 0 and sets @error to 2. If there is any other error returns 0 and sets @error to 1.
	Author(s): cdkid
#ce


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 88, False))
Func _AddRecord($oConnectionObj, $sTable, $vRow, $vValue = "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 88, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))
If SetError(@error, @extended, IsDeclared("vRow")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRow", $vRow))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 89, False))
	If IsObj($oConnectionObj) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 89, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 90, False))
		$query = "INSERT INTO " & $sTable & " ("
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 90, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))
		

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 92, False))
		If IsArray($vRow) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 92, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("vRow")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRow", $vRow))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 93, False))
			For $i = 0 To UBound($vRow, 1) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 93, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("vRow")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRow", $vRow))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 94, False))
				If $i > 0 And $i <> UBound($vRow, 1) - 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 94, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("vRow")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRow", $vRow))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 95, False))
					$query = $query & "," & $vRow[$i] & ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 95, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("vRow")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRow", $vRow))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 96, False))
				ElseIf $i = UBound($vRow, 1) - 1 And $vRow[$i] <> "" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 96, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("vRow")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRow", $vRow))
If SetError(@error, @extended, IsDeclared("vRow")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRow", $vRow))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 97, False))
					$query = $query & "," & $vRow[$i] & ") VALUES("
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 97, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("vRow")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRow", $vRow))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 98, False))
				ElseIf $i = 0 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 98, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 99, False))
					$query = $query & "" & $vRow[$i] & ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 99, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("vRow")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRow", $vRow))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 100, False))
				ElseIf $vRow[$i] = "" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 100, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("vRow")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRow", $vRow))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 101, False))
					$query = $query & ") VALUES("
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 101, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 102, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 102, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 103, False))
			Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 103, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 104, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 104, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 105, False))
		If Not IsArray($vRow) And Not IsArray($vValue) And Not IsInt($vValue) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 105, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("vRow")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRow", $vRow))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 106, False))
			$oConnectionobj.execute ("INSERT INTO " & $sTable & " (" & $vRow & ") VALUES('" & $vValue & "')")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 106, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionobj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionobj", $oConnectionobj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))
If SetError(@error, @extended, IsDeclared("vRow")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRow", $vRow))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 107, False))
			return 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 107, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 108, False))
		ElseIf IsInt($vValue) And Not IsArray($vRow) And Not IsArray($vValue) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 108, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("vRow")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRow", $vRow))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 109, False))
			$oconnectionobj.execute ("INSERT INTO " & $sTable & " (" & $vRow & ") VALUES(" & $vValue & ")")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 109, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oconnectionobj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oconnectionobj", $oconnectionobj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))
If SetError(@error, @extended, IsDeclared("vRow")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRow", $vRow))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 110, False))
			return 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 110, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 111, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 111, False, @error, @extended))
		

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 113, False))
		If IsArray($vValue) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 113, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 114, False))
			For $i = 0 To UBound($vValue, 1) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 114, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 115, False))
				If $i > 0 And $i <> UBound($vValue, 1) - 1 And Not IsInt($vValue[$i]) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 115, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 116, False))
					$query = $query & ",'" & $vValue[$i] & "'"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 116, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 117, False))
				ElseIf $i = UBound($vValue, 1) - 1 And $vValue[$i] <> "" And Not IsInt($vValue[$i]) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 117, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 118, False))
					$query = $query & ",'" & $vValue[$i] & "');"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 118, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 119, False))
				ElseIf $i = 0 And Not IsInt($vValue[$i]) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 119, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 120, False))
					$query = $query & "'" & $vValue[$i] & "'"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 120, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 121, False))
				ElseIf $vValue[$i] = "" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 121, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 122, False))
					$query = $query & ");"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 122, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 123, False))
				ElseIf IsInt($vValue[$i]) And $vValue[$i] <> "" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 123, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 124, False))
					$query = $query & "," & $vValue[$i]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 124, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 125, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 125, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 126, False))
			Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 126, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 127, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 127, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 128, False))
		If StringRight($query, 2) <> ");" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 128, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 129, False))
			$query = $query & ");"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 129, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))
			

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 131, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 131, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 132, False))
		$oconnectionobj.execute ($query)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 132, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oconnectionobj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oconnectionobj", $oconnectionobj))
If SetError(@error, @extended, IsDeclared("query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$query", $query))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 133, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 133, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 134, False))
	If Not IsObj($oConnectionObj) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 134, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 135, False))
		SetError(2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 135, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 136, False))
		Return 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 136, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 137, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 137, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 138, False))
	If @error And IsObj($oConnectionObj) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 138, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 139, False))
		Return 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 139, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 140, False))
		SetError(1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 140, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 141, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 141, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 142, False))
		Return 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 142, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 143, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 143, False, @error, @extended))
	
EndFunc   ;==>_AddRecord


#cs
	Function name: _DeleteRecord
	Description:     Deletes a record from the specified table
	Parameter(s):  $oConnectionObj - As returned by _MySQLConnect. $sTable - The table to delete from.
	$sColumn - The column to check value (see the example in the next post) $vRecordVal -
	The value to check in $sColumn (see example).
	$iLimit (optional) - the max number of record to delete if multiple match the criteria (default 1)
	Return Value(s): On success returns 1. If there $oConnectionObj is not an object returns 0 and sets @error to 1. If there are any other errors returns 0 and sets @error to 2
	Requirement(s): Autoit 3 with COM support
#ce


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 159, False))
Func _DeleteRecord ($oConnectionObj, $sTable, $sColumn, $vRecordVal, $iLimit = 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 159, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))
If SetError(@error, @extended, IsDeclared("vRecordVal")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRecordVal", $vRecordVal))
If SetError(@error, @extended, IsDeclared("iLimit")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iLimit", $iLimit))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 160, False))
	If IsObj($oConnectionObj) And Not IsInt($vRecordVal) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 160, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("vRecordVal")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRecordVal", $vRecordVal))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 161, False))
		$oconnectionobj.execute ("DELETE FROM " & $sTable & " WHERE " & $sColumn & " = '" & $vRecordVal & "' LIMIT " & $iLimit & ";")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 161, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oconnectionobj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oconnectionobj", $oconnectionobj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))
If SetError(@error, @extended, IsDeclared("vRecordVal")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRecordVal", $vRecordVal))
If SetError(@error, @extended, IsDeclared("iLimit")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iLimit", $iLimit))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 162, False))
	ElseIf IsInt($vRecordVal) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 162, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("vRecordVal")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRecordVal", $vRecordVal))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 163, False))
		$oconnectionobj.execute ("DELETE FROM " & $sTable & " WHERE " & $sColumn & " = " & $vRecordVal & " LIMIT " & $iLimit & ";")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 163, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oconnectionobj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oconnectionobj", $oconnectionobj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))
If SetError(@error, @extended, IsDeclared("vRecordVal")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vRecordVal", $vRecordVal))
If SetError(@error, @extended, IsDeclared("iLimit")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iLimit", $iLimit))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 164, False))
		If Not @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 164, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 165, False))
			Return 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 165, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 166, False))
		ElseIf Not IsObj($oConnectionObj) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 166, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 167, False))
			SetError(1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 167, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 168, False))
			Return 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 168, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 169, False))
		ElseIf @error And IsObj($oConnectionObj) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 169, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 170, False))
			SetError(2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 170, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 171, False))
			Return 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 171, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 172, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 172, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 173, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 173, False, @error, @extended))
EndFunc   ;==>_DeleteRecord

#cs
	Function name: _CreateTable()
	Description: Creates a table
	Parameters: $oConnectionObj - as returned by _MySQLConnect, $sTbl - The name of the table to create, $sPrimeKey - The name of the
	primary key column. $keytype - The datatype of the primary key (default is integer), $sNotNull - "yes" = must be filled out whenever
	a record is added "no" does not need to be filled out ("yes" default). $keyautoinc - "yes" = Auto incrememnts "no" = does not.
	$sType - The table type (default is InnoDB)
	Requirements: Autoit V3 with COM support
	Return value(s): on success returns 1 on failure sets @error to 1 and returns 0
	Author: cdkid
#ce


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 188, False))
Func _CreateTable($oConnectionObj, $sTbl, $sPrimeKey, $keytype = "INTEGER", $sNotNull = "yes", $keyautoinc = "yes", $sType = "InnoDB")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 188, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sTbl")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTbl", $sTbl))
If SetError(@error, @extended, IsDeclared("sPrimeKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sPrimeKey", $sPrimeKey))
If SetError(@error, @extended, IsDeclared("keytype")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$keytype", $keytype))
If SetError(@error, @extended, IsDeclared("sNotNull")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sNotNull", $sNotNull))
If SetError(@error, @extended, IsDeclared("keyautoinc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$keyautoinc", $keyautoinc))
If SetError(@error, @extended, IsDeclared("sType")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sType", $sType))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 189, False))
	If IsObj($oConnectionObj) And Not @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 189, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 190, False))
		$str = "CREATE TABLE " & $sTbl & " " & "(" & $sPrimeKey & " " & $keytype & " UNSIGNED"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 190, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))
If SetError(@error, @extended, IsDeclared("sTbl")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTbl", $sTbl))
If SetError(@error, @extended, IsDeclared("sPrimeKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sPrimeKey", $sPrimeKey))
If SetError(@error, @extended, IsDeclared("keytype")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$keytype", $keytype))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 191, False))
		If $sNotNull = "yes" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 191, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sNotNull")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sNotNull", $sNotNull))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 192, False))
			$str = $str & " NOT NULL"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 192, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 193, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 193, False, @error, @extended))
		

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 195, False))
		If $keyautoinc = "yes" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 195, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("keyautoinc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$keyautoinc", $keyautoinc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 196, False))
			$str = $str & " AUTO_INCREMENT,"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 196, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 197, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 197, False, @error, @extended))
		

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 199, False))
		$str = $str & " PRIMARY KEY (" & $sPrimeKey & " )" & " ) " & "TYPE = " & $sType & ";"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 199, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))
If SetError(@error, @extended, IsDeclared("sPrimeKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sPrimeKey", $sPrimeKey))
If SetError(@error, @extended, IsDeclared("sType")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sType", $sType))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 200, False))
		$oConnectionObj.execute ($str)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 200, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 201, False))
		Return 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 201, False, @error, @extended))
		
		

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 204, False))
	ElseIf @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 204, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 205, False))
		Return 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 205, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 206, False))
		SetError(1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 206, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 207, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 207, False, @error, @extended))
	
EndFunc   ;==>_CreateTable

#cs
	Function Name: _CreateColumn
	Description: Creates a column in the given table
	Requirements: AutoitV3 with COM support
	Parameters: $oConnectionObj - as returned by _MySQLConnect. $sTable - the name of the table to add the column to.
	$sAllowNull - if 'yes' then does not add 'NOT NULL' to the SQL statement (default 'yes') $sDataType - The data type of the column
	default('VARCHAR(45)').		$sAutoInc - if 'yes' adds 'AUTO_INCREMENT' to the MySQL Statement (for use with Integer types)
	default('no').		$sUnsigned - if 'yes' adds 'UNSIGNED' to the MySQL statement. default('no') $vDefault - the default value of the column
	default('')
	Author: cdkid
#ce


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 223, False))
Func _CreateColumn($oConnectionObj, $sTable, $sColumn, $sAllowNull = "no", $sDataType = "VARCHAR(45)", $sAutoInc = "no", $sUnsigned = "no", $vDefault = '')
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 223, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))
If SetError(@error, @extended, IsDeclared("sAllowNull")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sAllowNull", $sAllowNull))
If SetError(@error, @extended, IsDeclared("sDataType")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sDataType", $sDataType))
If SetError(@error, @extended, IsDeclared("sAutoInc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sAutoInc", $sAutoInc))
If SetError(@error, @extended, IsDeclared("sUnsigned")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sUnsigned", $sUnsigned))
If SetError(@error, @extended, IsDeclared("vDefault")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vDefault", $vDefault))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 224, False))
	If IsObj($oConnectionObj) And Not @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 224, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 225, False))
		$str = "ALTER TABLE `" & $sTable & "` ADD COLUMN `" & $sColumn & "` " & $sDataType & " "
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 225, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))
If SetError(@error, @extended, IsDeclared("sDataType")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sDataType", $sDataType))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 226, False))
		If $sAllowNull = "yes" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 226, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sAllowNull")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sAllowNull", $sAllowNull))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 227, False))
			$str = $str & "NOT NULL "
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 227, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 228, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 228, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 229, False))
		If $sAutoInc = 'yes' Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 229, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sAutoInc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sAutoInc", $sAutoInc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 230, False))
			$str = $str & "AUTO_INCREMENT "
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 230, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 231, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 231, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 232, False))
		If $sUnsigned = 'yes' Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 232, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sUnsigned")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sUnsigned", $sUnsigned))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 233, False))
			$str = $str & "UNSIGNED "
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 233, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 234, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 234, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 235, False))
		$str = $str & "DEFAULT '" & $vDefault & "';"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 235, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))
If SetError(@error, @extended, IsDeclared("vDefault")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vDefault", $vDefault))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 236, False))
		$oConnectionObj.execute ($str)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 236, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("str")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str", $str))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 237, False))
		Return 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 237, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 238, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 238, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 239, False))
		SetError(1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 239, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 240, False))
		Return 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 240, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 241, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 241, False, @error, @extended))
	
EndFunc   ;==>_CreateColumn

#cs
	Function Name: _DropCol()
	Description: Delete a column from the given table
	Requirements: AutoitV3 with COM support
	Parameters: $oConnectionObj - As returned by _MySQLConnect(). $sTable - The name of the table to delete the column from
	$sColumn - THe name of the column to delete
	Author: cdkid
#ce


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 254, False))
Func _DropCol($oConnectionObj, $sTable, $sColumn)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 254, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 255, False))
	If IsObj($oConnectionObj) & Not @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 255, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 256, False))
		$oConnectionObj.execute ("ALTER TABLE " & $sTable & " DROP COLUMN " & $sColumn & ";")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 256, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 257, False))
		Return 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 257, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 258, False))
	ElseIf @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 258, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 259, False))
		SetError(1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 259, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 260, False))
		Return 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 260, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 261, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 261, False, @error, @extended))
EndFunc   ;==>_DropCol

#cs
	Function Name: _DropTbl()
	Description: Deletes a table from the database
	Requirements: AutoitV3 with COM support
	Parameters: $oConnectionObj - As returned by _MySQLConnect. $sTable - The name of the table to delete
	Author: cdkid
#ce


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 272, False))
Func _DropTbl($oConnectionObj, $sTable)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 272, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 273, False))
	If IsObj($oConnectionObj) And Not @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 273, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 274, False))
		$oConnectionObj.execute ("DROP TABLE " & $sTable & ";")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 274, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 275, False))
		Return 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 275, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 276, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 276, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 277, False))
		SetError(1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 277, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 278, False))
		Return 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 278, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 279, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 279, False, @error, @extended))
EndFunc   ;==>_DropTbl


#cs
	Function name: _CountRecords()
	Description: Get the number of records in the specified column
	Parameters: $oConnectionObj - As returned by _MySQLConnect. $sTable - The name of the table that the column is in
	$value - If not = "" then it is put in the select statement in the WHERE clause (default "")
	Return value(s): On success returns the number of records. On failure sets @error to 1 and returns 0
	Author: cdkid
#ce

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 291, False))
Func _CountRecords($oConnectionObj, $sTable, $sColumn, $vValue = '')
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 291, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 292, False))
	If IsObj($oConnectionObj) And Not @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 292, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
		

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 294, False))
		If $sColumn <> "" And $vValue <> "" And Not IsInt($vValue) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 294, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 295, False))
			$constr = "SELECT " & $sColumn & " FROM " & $sTable & " WHERE " & $sColumn & " = '" & $vValue & "'"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 295, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 296, False))
		ElseIf $sColumn <> "" And $vValue = '' And Not IsInt($vValue) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 296, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 297, False))
			$constr = "SELECT " & $sColumn & " FROM " & $sTable
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 297, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 298, False))
		ElseIf IsInt($vValue) And $sColumn <> '' And $vValue <> '' Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 298, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 299, False))
			$constr = "SELECT " & $sColumn & " FROM " & $sTable & " WHERE " & $sColumn & " = " & $vValue
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 299, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))
If SetError(@error, @extended, IsDeclared("vValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$vValue", $vValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 300, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 300, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 301, False))
		$sql2 = ObjCreate("ADODB.Recordset")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 301, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sql2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sql2", $sql2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 302, False))
		$sql2.cursorlocation = 3
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 302, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sql2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sql2", $sql2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 303, False))
		$sql2.open ($constr, $oConnectionObj)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 303, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sql2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sql2", $sql2))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 304, False))
		With $sql2
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 304, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sql2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sql2", $sql2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 305, False))
			$ret = .recordcount
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 305, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 306, False))
		EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 306, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 307, False))
		$sql2.close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 307, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sql2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sql2", $sql2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 308, False))
		Return $ret
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 308, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 309, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 309, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 310, False))
		SetError(1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 310, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 311, False))
		Return 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 311, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 312, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 312, False, @error, @extended))
EndFunc   ;==>_CountRecords

#cs
	Function name: _CountTables
	Description: Counts the number of tables in the database
	Parameter(s): $oConnectionObj - As returned by _MySQLConnect
	Return value(s): if error - returns 0 and sets @error to 1. on success returns the number of tables in the database
	Author: cdkid
#ce


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 323, False))
Func _CountTables($oConnectionObj)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 323, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 324, False))
	If IsObj($oConnectionObj) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 324, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 325, False))
		$quer = $oConnectionObj.execute ("SHOW TABLES;")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 325, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("quer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$quer", $quer))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 326, False))
		$i = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 326, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 327, False))
		With $quer
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 327, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("quer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$quer", $quer))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 328, False))
			While Not .EOF
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 328, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 329, False))
				$i = $i + 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 329, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 330, False))
				.MoveNext
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 330, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 331, False))
			WEnd
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 331, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 332, False))
		EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 332, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 333, False))
		Return $i
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 333, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 334, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 334, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 335, False))
	If @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 335, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 336, False))
		SetError(1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 336, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 337, False))
		Return 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 337, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 338, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 338, False, @error, @extended))
	
EndFunc   ;==>_CountTables

#cs
	Function name: _GetColNames
	Description: Get's the names of all columns in a specified table
	Parameters: $oConnectionObj - As returned by _MySQLConnect. $sTable - The name of the table to get the column names from
	Return values: On success returns an array where $array[0] is the number of elements in the array and all the rest are column names.
	On failure returns 0 and sets @error to 1
	Author: cdkid
#ce

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 350, False))
Func _GetColNames($oConnectionObj, $sTable)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 350, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 351, False))
	If IsObj($oConnectionObj) And Not @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 351, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 352, False))
		Dim $ret[1], $rs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 352, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))
If SetError(@error, @extended, IsDeclared("rs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$rs", $rs))
		

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 354, False))
		$rs = $oConnectionObj.execute ("SHOW COLUMNS FROM " & $sTable & ";")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 354, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("rs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$rs", $rs))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))
		

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 356, False))
		With $rs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 356, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("rs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$rs", $rs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 357, False))
			While Not .EOF
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 357, False, @error, @extended))
				

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 359, False))
				ReDim $ret[UBound($ret, 1) + 1]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 359, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 360, False))
				$ret[UBound($ret, 1) - 1] = $rs.Fields (0).Value
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 360, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))
If SetError(@error, @extended, IsDeclared("rs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$rs", $rs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 361, False))
				.MoveNext
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 361, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 362, False))
			WEnd
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 362, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 363, False))
		EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 363, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 364, False))
		$ret[0] = UBound($ret, 1) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 364, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 365, False))
		Return $ret
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 365, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 366, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 366, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 367, False))
	If @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 367, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 368, False))
		Return 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 368, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 369, False))
		SetError(1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 369, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 370, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 370, False, @error, @extended))
EndFunc   ;==>_GetColNames


#cs
	Function name: _GetTblNames
	Description: Gets the names of all tables in the database
	Parameters: $oConnectionObj - As returned by _MySQLConnect
	Return value(s): On success returns an array where $array[0] is the number of tables and $array[n] is the nth table's name
	on failure - returns 0 and sets @error to 1
	Author: cdkid
#ce


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 383, False))
Func _GetTblNames($oConnectionObj)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 383, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 384, False))
	If IsObj($oConnectionObj) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 384, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 385, False))
		Dim $ret[1]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 385, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 386, False))
		$quer = $oConnectionObj.execute ("SHOW TABLES;")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 386, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("quer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$quer", $quer))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 387, False))
		With $quer
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 387, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("quer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$quer", $quer))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 388, False))
			While Not .eof
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 388, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 389, False))
				ReDim $ret[UBound($ret, 1) + 1]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 389, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 390, False))
				$ret[UBound($ret, 1) - 1] = .fields (0).value
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 390, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 391, False))
				.movenext
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 391, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 392, False))
			WEnd
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 392, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 393, False))
		EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 393, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 394, False))
		$ret[0] = UBound($ret, 1) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 394, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 395, False))
		Return $ret
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 395, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 396, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 396, False, @error, @extended))
EndFunc   ;==>_GetTblNames

#cs
	Function name: _GetColVals
	Description: Gets all of the values of a specified column in a specified table
	Parameters: $oConnectionObj - As returned by _MySQLConnect(), $sTable - the table that the column is in
	$sColumn - the column to get values from.
	Return value(s): On success returns an array where $array[0] is the number of values and $array[n] is the Nth value
	On failure sets @error to 1 and returns 0
	Author: cdkid
#ce


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 409, False))
Func _GetColVals($oConnectionObj, $sTable, $sColumn)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 409, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 410, False))
	If IsObj($oConnectionObj) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 410, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 411, False))
		Dim $ret[1]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 411, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 412, False))
		$quer = $oConnectionObj.execute ("SELECT " & $sColumn & " FROM " & $sTable & ";")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 412, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("quer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$quer", $quer))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 413, False))
		With $quer
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 413, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("quer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$quer", $quer))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 414, False))
			While Not .EOF
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 414, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 415, False))
				ReDim $ret[UBound($ret, 1) + 1]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 415, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 416, False))
				$ret[UBound($ret, 1) - 1] = .Fields (0).value
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 416, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 417, False))
				.MoveNext
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 417, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 418, False))
			WEnd
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 418, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 419, False))
		EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 419, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 420, False))
		$ret[0] = UBound($ret, 1) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 420, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 421, False))
		Return $ret
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 421, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 422, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 422, False, @error, @extended))
EndFunc   ;==>_GetColVals

#cs
	Function name: _GetColCount
	Description: Gets the number of columns in the specified table
	Parameters: $oConnectionObj - As returned by _MySQLConnect(). $sTable - the table to count the columns in
	Return Value(s): On success returns the number of columns in the table. On failure returns -1 and sets @error to 1
	Author: cdkid
#ce

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 432, False))
Func _GetColCount($oConnectionObj, $sTable)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 432, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 433, False))
	If IsObj($oConnectionObj) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 433, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 434, False))
		$quer = $oConnectionObj.execute ("SHOW COLUMNS IN " & $sTable)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 434, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("quer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$quer", $quer))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 435, False))
		With $quer
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 435, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("quer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$quer", $quer))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 436, False))
			$i = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 436, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 437, False))
			While Not .eof
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 437, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 438, False))
				$i = $i + 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 438, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 439, False))
				.movenext
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 439, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 440, False))
			WEnd
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 440, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 441, False))
		EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 441, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 442, False))
		Return $i
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 442, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 443, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 443, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 444, False))
	If @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 444, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 445, False))
		Return -1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 445, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 446, False))
		SetError(1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 446, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 447, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 447, False, @error, @extended))
	
EndFunc   ;==>_GetColCount

#cs
	Function name: _GetColType
	Description: Gets the DATA TYPE of the specified column
	Parameters: $oConnectionObj - As returned by _MySQLConnect(). $sTable - the table that the column is in. $sColumn - the column
	to retrieve the data type from.
	Return value(s): On success returns the data type of the column. On failure returns 0 and sets @error to 1
	Author: cdkid
#ce

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 459, False))
Func _GetColType($oConnectionObj, $sTable, $sColumn)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 459, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 460, False))
	If IsObj($oConnectionObj) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 460, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 461, False))
		$quer = $oConnectionObj.execute ("SHOW COLUMNS IN " & $sTable)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 461, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("quer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$quer", $quer))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("sTable")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sTable", $sTable))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 462, False))
		With $quer
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 462, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("quer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$quer", $quer))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 463, False))
			$i = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 463, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 464, False))
			While Not .eof
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 464, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 465, False))
				If .fields (0).value = $sColumn Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 465, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sColumn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sColumn", $sColumn))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 466, False))
					$ret = .fields (1).value
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 466, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 467, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 467, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 468, False))
				.MoveNext
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 468, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 469, False))
			WEnd
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 469, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 470, False))
		EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 470, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 471, False))
		Return $ret
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 471, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ret")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ret", $ret))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 472, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 472, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 473, False))
	If @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 473, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 474, False))
		Return 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 474, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 475, False))
		SetError(1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 475, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 476, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 476, False, @error, @extended))
EndFunc   ;==>_GetColType

#cs
	Function: _GetDBNames
	Description: Get a count and list of all databases on current server.
	Parameters: $oConObj - As returned by _MySQLConnect
	Return Value(s): Success - An array where $array[0] is the number of databases and $array[n] is the nth database name.
	Failure - -1 and sets @error to 1
	Author: cdkid
#ce

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 487, False))
Func _GetDBNames($conobj)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 487, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("conobj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$conobj", $conobj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 488, False))
	If IsObj($conobj) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 488, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("conobj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$conobj", $conobj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 489, False))
		Local $arr[1], $m
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 489, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("arr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$arr", $arr))
If SetError(@error, @extended, IsDeclared("m")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$m", $m))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 490, False))
		$m = $conobj.Execute ("SHOW DATABASES;")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 490, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("m")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$m", $m))
If SetError(@error, @extended, IsDeclared("conobj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$conobj", $conobj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 491, False))
		With $m
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 491, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("m")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$m", $m))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 492, False))
			While Not .eof
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 492, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 493, False))
				ReDim $arr[UBound($arr, 1) + 1]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 493, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("arr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$arr", $arr))
If SetError(@error, @extended, IsDeclared("arr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$arr", $arr))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 494, False))
				$arr[UBound($arr, 1) - 1] = .Fields (0).Value
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 494, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("arr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$arr", $arr))
If SetError(@error, @extended, IsDeclared("arr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$arr", $arr))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 495, False))
				.MoveNext
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 495, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 496, False))
			WEnd
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 496, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 497, False))
		EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 497, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 498, False))
		$arr[0] = UBound($arr, 1) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 498, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("arr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$arr", $arr))
If SetError(@error, @extended, IsDeclared("arr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$arr", $arr))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 499, False))
		Return $arr
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 499, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("arr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$arr", $arr))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 500, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 500, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 501, False))
		SetError(1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 501, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 502, False))
		Return -1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 502, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 503, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 503, False, @error, @extended))
EndFunc   ;==>_GetDBNames

#cs
	Function: _ChangeCon
	Description: Change your connection string
	Parameters:
	$oConnectionObj
	As returned by _MySQLConnect
	$username
	OPTIONAL: the new username to use
	If omitted, the same username will be used.
	$password
	OPTIONAL: the new password to use
	If omitted, the same password will be used.
	$database
	OPTIONAL: the new database to connect to
	If omitted, the same database will be used.
	$driver
	OPTIONAL: the new driver to use
	If omitted, the MySQL ODBC 3.51 DRIVER will be used.
	$server
	OPTIONAL: the new server to connect to
	If omitted, the same server will be used.
	$iPort
	OPTIONAL: the new port to be used to connect
	if omitted, the default port (3306) will be used
	Return Value:
	On success, a new connection object for use with subsequent functions.
	On failure, -1 and sets @error to 1
	Author: cdkid
#ce


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 536, False))
Func _ChangeCon($oConnectionObj, $username = "", $password = "", $database = "", $driver = "", $server = "", $iPort = 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 536, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("username")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$username", $username))
If SetError(@error, @extended, IsDeclared("password")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$password", $password))
If SetError(@error, @extended, IsDeclared("database")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$database", $database))
If SetError(@error, @extended, IsDeclared("driver")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$driver", $driver))
If SetError(@error, @extended, IsDeclared("server")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$server", $server))
If SetError(@error, @extended, IsDeclared("iPort")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iPort", $iPort))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 537, False))
	Local $constr, $db, $usn, $pwd, $svr
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 537, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("db")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$db", $db))
If SetError(@error, @extended, IsDeclared("usn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$usn", $usn))
If SetError(@error, @extended, IsDeclared("pwd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pwd", $pwd))
If SetError(@error, @extended, IsDeclared("svr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$svr", $svr))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 538, False))
	If IsObj($oConnectionObj) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 538, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 539, False))
		$constr = $oConnectionObj.connectionstring
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 539, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 540, False))
		$constr = StringReplace($constr, 'Provider=MSDASQL.1;Extended Properties="', '')
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 540, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 541, False))
		$constr = StringSplit($constr, ";")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 541, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 542, False))
		For $i = 1 To $constr[0]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 542, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 543, False))
			If StringLeft($constr[$i], 3) = "UID" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 543, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 544, False))
				If $username <> "" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 544, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("username")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$username", $username))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 545, False))
					$usn = $username
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 545, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("usn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$usn", $usn))
If SetError(@error, @extended, IsDeclared("username")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$username", $username))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 546, False))
				Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 546, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 547, False))
					$usn = StringMid($constr[$i], 5)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 547, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("usn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$usn", $usn))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 548, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 548, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 549, False))
				$usn = StringTrimRight($usn, 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 549, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("usn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$usn", $usn))
If SetError(@error, @extended, IsDeclared("usn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$usn", $usn))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 550, False))
			EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 550, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 551, False))
			If StringLeft($constr[$i], 3) = "PWD" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 551, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 552, False))
				If $password <> "" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 552, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("password")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$password", $password))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 553, False))
					$pwd = $password
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 553, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pwd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pwd", $pwd))
If SetError(@error, @extended, IsDeclared("password")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$password", $password))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 554, False))
				Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 554, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 555, False))
					$pwd = StringMid($constr[$i], 5)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 555, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pwd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pwd", $pwd))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 556, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 556, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 557, False))
			EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 557, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 558, False))
			If StringLeft($constr[$i], 8) = "DATABASE" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 558, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 559, False))
				If $database <> "" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 559, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("database")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$database", $database))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 560, False))
					$db = $database
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 560, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("db")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$db", $db))
If SetError(@error, @extended, IsDeclared("database")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$database", $database))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 561, False))
				Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 561, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 562, False))
					$db = StringMid($constr[$i], 10)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 562, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("db")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$db", $db))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 563, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 563, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 564, False))
			EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 564, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 565, False))
			If StringLeft($constr[$i], 6) = "SERVER" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 565, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 566, False))
				If $server <> "" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 566, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("server")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$server", $server))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 567, False))
					$svr = $server
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 567, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("svr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$svr", $svr))
If SetError(@error, @extended, IsDeclared("server")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$server", $server))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 568, False))
				Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 568, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 569, False))
					$svr = StringMid($constr[$i], 8)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 569, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("svr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$svr", $svr))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 570, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 570, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 571, False))
			EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 571, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 572, False))
			If StringLeft($constr[$i], 6) = "DRIVER" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 572, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 573, False))
				If $driver <> "" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 573, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("driver")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$driver", $driver))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 574, False))
					$dvr = $driver
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 574, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("dvr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$dvr", $dvr))
If SetError(@error, @extended, IsDeclared("driver")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$driver", $driver))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 575, False))
				Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 575, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 576, False))
					$dvr = "{MySQL ODBC 3.51 DRIVER}"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 576, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("dvr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$dvr", $dvr))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 577, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 577, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 578, False))
			EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 578, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 579, False))
			If StringLeft($constr[$i], 4) = "PORT" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 579, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("constr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$constr", $constr))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 580, False))
				if $iport <> 0 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 580, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iport")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iport", $iport))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 581, False))
					$port = $iport
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 581, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("port")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$port", $port))
If SetError(@error, @extended, IsDeclared("iport")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iport", $iport))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 582, False))
				Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 582, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 583, False))
					$port = 3306
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 583, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("port")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$port", $port))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 584, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 584, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 585, False))
			EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 585, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 586, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 586, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 587, False))
		$oConnectionObj.close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 587, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 588, False))
		$oConnectionObj.Open ("DATABASE=" & $db & ";DRIVER=" & $dvr & ";UID=" & $usn & ";PWD=" & $pwd & ";SERVER=" & $svr & ";PORT=" & $port & ";")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 588, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))
If SetError(@error, @extended, IsDeclared("db")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$db", $db))
If SetError(@error, @extended, IsDeclared("dvr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$dvr", $dvr))
If SetError(@error, @extended, IsDeclared("usn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$usn", $usn))
If SetError(@error, @extended, IsDeclared("pwd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pwd", $pwd))
If SetError(@error, @extended, IsDeclared("svr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$svr", $svr))
If SetError(@error, @extended, IsDeclared("port")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$port", $port))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 589, False))
		Return $oConnectionObj
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 589, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oConnectionObj")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oConnectionObj", $oConnectionObj))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 590, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 590, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 591, False))
		SetError(1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 591, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 592, False))
		Return -1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 592, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 593, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\mysql.au3", "mysql.au3", 593, False, @error, @extended))
EndFunc   ;==>_ChangeCon
