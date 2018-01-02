
Func GetWallet_until($fd,$pos_wallet,$int_prev_summ_wallet,$bet)
$int_cur_summ_wallet = ""
$loss_res = ""
$win_res = ""
For $i = 1 To 100 Step 1
	Sleep (1000)
	MouseClick("left", $pos_wallet[0], $pos_wallet[1], 4, 10)
	Send("^{INSERT}")
	$wallet = ClipGet()
	$win_res = $int_prev_summ_wallet[4] + $bet
	$loss_res = $int_prev_summ_wallet[4] - $bet
		$aArray = StringSplit($wallet, " ")
	If @error Then
		ContinueLoop
	EndIf
	Logs($fd, "GET WALLET"&$aArray[4], 0)
	Logs($fd, "GET WALLET W"&$win_res, 0)
	Logs($fd, "GET WALLET L"&$loss_res, 0)
	If $win_res == $aArray[4] Or $loss_res == $aArray[4] Then
		Logs($fd, "ERROR CAN'T SPLIT", 0)
		Return $aArray
	EndIf
	MouseClick("left", $pos_wallet[0]+25, $pos_wallet[1]+25, 1, 10)

Next
Logs($fd, "ERROR CAN'T GET WALLET", 0)
Exit 0
EndFunc

Func GetWallet($fd, $IE, $pos_wallet)
MouseClick("left", $pos_wallet[0], $pos_wallet[1], 4, 50)
Sleep(500)
Send("^{INSERT}")
$wallet = ClipGet()
If @error Then
	LogWallet($fd, "GET WALLET()", "null buffer", $wallet, 0)
EndIf
Local $aArray = StringSplit($wallet, " ")
If @error  Then
For $i = 1 To 20 Step 1
	Sleep (500)
	LogWallet($fd, "GET WALLET()", "null split", $aArray[0], $i)
	MouseClick("left", $pos_wallet[0], $pos_wallet[1], 4, 10)
	Send("^{INSERT}")
	$wallet = ClipGet()
	If @error Then
	LogWallet($fd, "GET WALLET()", "null buffer2", $wallet, $i)
	EndIf
	$aArray = StringSplit($wallet, " ")
	If @error Then
		LogWallet($fd, "GET WALLET()", "null split", $wallet, $i)
	Else
		LogWallet($fd, "GET WALLET()", "succes split", $aArray[4], $i)
		Return $aArray
	EndIf
Next
EndIf
Return $aArray
EndFunc

Func press_btn($pos_btn)
	MouseClick("left", $pos_btn[0], $pos_btn[1], 1, 10)
EndFunc
Func LogWallet($fd, $where, $what, $result, $i)
	FileWriteLine($fd, $where &"-"& _
	$what & "print obj->" & _
	$result & "try-" & $i)
EndFunc   ;==>Logs