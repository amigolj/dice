


Func Check()
If @OSArch = "X64" Then
    Global $HKLM = "HKLM64"
Else
    Global $HKLM = "HKLM"
EndIf
;		MsgBox(16, 'Error', $HKLM)

	Local $sVar = RegRead($HKLM &"\Software\reg", "DKey")

	#CS If @error = 0 Then
		; Else
		; 	Exit 0
		; EndIf
	#CE
	If $sVar = "" Then
		$sVar = 1
	ElseIf $sVar = 120 Then
		Exit 0
	Else
		$sVar += 1
	EndIf

RegWrite($HKLM &"\Software\reg", "DKey", "REG_DWORD", $sVar)
		If @error Then
        MsgBox (1, "error2", @error)
        EndIf
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

EndFunc   ;==>Check
