AutoIt_Debugger_LoadFile("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3")
AutoIt_Debugger_DebugFile(@ScriptFullPath)


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 2, False))
Func GetBet($fd, $IE, $pos_bet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 2, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("IE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IE", $IE))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 3, False))
	Local $ii = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 3, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ii")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ii", $ii))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 4, False))
	Local $int_bet
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 4, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_bet", $int_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 5, False))
	MouseClick("left", $pos_bet[0], $pos_bet[1], 4, 10)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 5, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))
	;Sleep(100)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 7, False))
	Send("^{INSERT}")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 7, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 8, False))
	Sleep(100)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 8, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 9, False))
	$int_bet = ClipGet()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 9, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_bet", $int_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 10, False))
	Logs($fd, "GET BET", $int_bet, "<--", 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 10, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("int_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_bet", $int_bet))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 12, False))
	If @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 12, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 13, False))
		Logs($fd, "GET BET null bet", "null bet", "null bet", 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 13, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 14, False))
		For $i = 1 To 100 Step 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 14, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 15, False))
			Sleep(3500)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 15, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 16, False))
			If $int_bet == "" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 16, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_bet", $int_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 17, False))
				MouseClick("left", $pos_bet[0], $pos_bet[1], 4, Random(80, 90, 1))
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 17, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))
				;Sleep(100)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 19, False))
				Send("^{INSERT}")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 19, False, @error, @extended))
				;Sleep(00)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 21, False))
				$int_bet = ClipGet()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 21, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_bet", $int_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 22, False))
			Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 22, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 23, False))
				Logs($fd, "GET BET succes try bet", "try bet", "try bet", $i)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 23, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 24, False))
				Return $int_bet
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 24, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_bet", $int_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 25, False))
			EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 25, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 26, False))
			Logs($fd, "GET BET try bet", "try bet", "try bet", $i)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 26, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 27, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 27, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 28, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 28, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 29, False))
	Return $int_bet
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 29, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_bet", $int_bet))
EndFunc   ;==>GetBet


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 32, False))
Func SetBet($IE, $pos_bet, $bet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 32, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("IE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IE", $IE))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))
If SetError(@error, @extended, IsDeclared("bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$bet", $bet))
	;ClipPut("")
	;Sleep(Random(200,300,1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 35, False))
	MouseClick("left", $pos_bet[0], $pos_bet[1], 4, 10)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 35, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))

	;Msgbox (0, "","22fff4--" & $bet)
	;ControlSend ( "title", "text", controlID, "string" [, flag = 0 ] )


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 40, False))
	Send("{DELETE}")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 40, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 41, False))
	Local $arr = StringToASCIIArray($bet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 41, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("arr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$arr", $arr))
If SetError(@error, @extended, IsDeclared("bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$bet", $bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 42, False))
	For $element In $arr
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 42, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("element")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$element", $element))
If SetError(@error, @extended, IsDeclared("arr")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$arr", $arr))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 43, False))
		Send("{ASC 0" & $element & "}")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 43, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("element")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$element", $element))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 44, False))
		Sleep(10)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 44, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 45, False))
	Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 45, False, @error, @extended))
EndFunc   ;==>SetBet


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 48, False))
Func Logs($fd, $where, $f_bet, $c_bet, $i)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 48, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("where")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$where", $where))
If SetError(@error, @extended, IsDeclared("f_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$f_bet", $f_bet))
If SetError(@error, @extended, IsDeclared("c_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$c_bet", $c_bet))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 49, False))
	FileWriteLine($fd, $where & _NowTime() & " First bet--" & $f_bet & "�" & $i & " curent bet--" & $c_bet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_bet.au3", "get_bet.au3", 49, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("where")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$where", $where))
If SetError(@error, @extended, IsDeclared("f_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$f_bet", $f_bet))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("c_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$c_bet", $c_bet))
	;FileWriteLine($fd, " Cur bet" &$c_bet& @CRLF)
EndFunc   ;==>Logs
