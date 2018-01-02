
Func GetBet($fd, $IE, $pos_bet)
	Local $ii = 1
	Local $int_bet
	MouseClick("left", $pos_bet[0], $pos_bet[1], 4, 10)
	Send("^{INSERT}")
	Sleep(100)
	$int_bet = ClipGet()
	LogBet($fd, "GET BET", "bet->" & $int_bet, "<--", 0)

	If @error Then
		LogBet($fd, "GET BET()", "null bet", $int_bet, 0)
		For $i = 1 To 100 Step 1
			Sleep(2000)
			If $int_bet == "" Then
				LogBet($fd, "GET BET()", "try bet", $int_bet, $i)
				MouseClick("left", $pos_bet[0], $pos_bet[1], 4, Random(80, 90, 1))
				Send("^{INSERT}")
				$int_bet = ClipGet()
			Else
				LogBet($fd, "GET BET()", "succes try bet", $int_bet, $i)
				Return $int_bet
			EndIf
		Next
	EndIf
	Return $int_bet
EndFunc   ;==>GetBet
;Func Todouble
Func SetBet($IE, $pos_bet, $bet)
	MouseClick("left", $pos_bet[0], $pos_bet[1], 4, 10)
	Send("{DELETE}")
	Local $arr = StringToASCIIArray($bet)
	For $element In $arr
		Send("{ASC 0" & $element & "}")
		Sleep(10)
	Next
EndFunc   ;==>SetBet

Func LogResult($fd, $result, $prev_wallet, $cur_wallet, $cur_bet )
	FileWriteLine($fd, $result & @CRLF _
	& "Wallet- " & $prev_wallet & @CRLF _
	& "Current bet- " & $cur_bet & @CRLF _
	& "Win- " & StringFormat("%.8f",$cur_wallet - $prev_wallet))
	;FileWriteLine($fd, " Cur bet" &$c_bet& @CRLF)
EndFunc   ;==>Logs

Func LogBet($fd, $where, $what, $result,$i)
	FileWriteLine($fd, $where &"-"& _
	$what & "print obj->" & _
	$result & "try-" & $i)
EndFunc   ;==>Logs

Func Logs($fd, $where, $obj)
	FileWriteLine($fd, $where & $obj)
	;FileWriteLine($fd, " Cur bet" &$c_bet& @CRLF)
EndFunc   ;==>Logs

Func LogDebug($fd, $where, $f_bet, $c_bet, $i)
	FileWriteLine($fd, $where & " First bet--" & $f_bet & "¹" & $i & " curent bet--" & $c_bet)
	;FileWriteLine($fd, " Cur bet" &$c_bet& @CRLF)
EndFunc   ;==>Logs

Func LogGame($fd, $game, $i)
	FileWriteLine($fd, $game & $i )
	;FileWriteLine($fd, " Cur bet" &$c_bet& @CRLF)
EndFunc   ;==>Logs