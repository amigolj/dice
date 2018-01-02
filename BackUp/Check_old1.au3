
#include "mysql.au3"


Func Check()

Local $sVar = RegRead("HKEY_LOCAL_MACHINE\Software\reg", "DKey")
#CS If @error = 0 Then
; Else
; 	Exit 0
; EndIf
 #CE
If $sVar = "" Then
	$sVar = 1
Elseif $sVar = 100 Then
	Exit 0
Else
	$sVar += 1
EndIf

RegWrite("HKEY_LOCAL_MACHINE\Software\reg", "DKey", "REG_DWORD", 2)

#CS $sql = _MySQLConnect("root","","dimex","127.0.0.1")
; $var = _Query($sql,"SELECT * FROM tel_kur")
; With $var
; While NOT .EOF
; 	$var2 = .Fields("name").value
; 	If $var2 = "max" Then
; 	FileWriteLine("C:\LOGS\test.txt",.Fields("name").value & @CRLF)
; 	Else
; 		Exit 0
; 	EndIf
; 	.MoveNext
; WEnd
; EndWith
; _MySQLEnd($sql)
 #CE

EndFunc