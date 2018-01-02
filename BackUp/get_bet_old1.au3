
Func GetBet($fd, $IE, $pos_bet)
local $ii = 1
Local $int_bet
MouseClick("left", $pos_bet[0], $pos_bet[1], 4, 10)
;Sleep(100)
Send("^{INSERT}")
Sleep(100)
$int_bet = ClipGet()
Logs($fd, "GET BET", $int_bet, "<--", 1)

If @error Then
	Logs($fd, "GET BET null bet", "null bet", "null bet", 1)
	For $i = 1 To 100 Step 1
		Sleep (3500)
		If $int_bet == "" Then
			MouseClick("left", $pos_bet[0], $pos_bet[1], 4, Random(80,90,1))
			;Sleep(100)
			Send("^{INSERT}")
			;Sleep(00)
			$int_bet = ClipGet()
		Else
			Logs($fd, "GET BET succes try bet", "try bet", "try bet",$i)
			Return $int_bet
		EndIf
		Logs($fd, "GET BET try bet", "try bet", "try bet",$i)
	Next
EndIf
Return $int_bet
EndFunc

Func SetBet($IE,$pos_bet,$bet)
;ClipPut("")
;Sleep(Random(200,300,1))
MouseClick("left", $pos_bet[0], $pos_bet[1], 4, 10)

;Msgbox (0, "","22fff4--" & $bet)
;ControlSend ( "title", "text", controlID, "string" [, flag = 0 ] )

Send("{DELETE}")
Local $arr = StringToASCIIArray($bet)
For $element In $arr
    Send("{ASC 0" & $element & "}")
	Sleep(10)
Next
EndFunc

Func Logs($fd,$where,$f_bet, $c_bet,$i)
   FileWriteLine($fd, $where& _NowTime() & " First bet--"& $f_bet&"¹"& $i&" curent bet--"&$c_bet)
   ;FileWriteLine($fd, " Cur bet" &$c_bet& @CRLF)
EndFunc