AutoIt_Debugger_LoadFile("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3")
AutoIt_Debugger_DebugFile(@ScriptFullPath)


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 2, False))
Func GetWallet($fd, $IE, $pos_wallet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 2, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("IE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IE", $IE))
If SetError(@error, @extended, IsDeclared("pos_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_wallet", $pos_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 3, False))
MouseClick("left", $pos_wallet[0], $pos_wallet[1], 4, 50)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 3, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_wallet", $pos_wallet))
If SetError(@error, @extended, IsDeclared("pos_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_wallet", $pos_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 4, False))
Sleep(500)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 4, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 5, False))
Send("^{INSERT}")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 5, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 6, False))
$wallet = ClipGet()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 6, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wallet", $wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 7, False))
If @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 7, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 8, False))
	Logs($fd, "GET WALLET", "null buffer", "null buffer", 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 8, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 9, False))
EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 9, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 10, False))
Local $aArray = StringSplit($wallet, " ")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 10, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aArray", $aArray))
If SetError(@error, @extended, IsDeclared("wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wallet", $wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 11, False))
If @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 11, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 12, False))
	Logs($fd, "GET WALLET", "null split", "null split", 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 12, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 13, False))
EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 13, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 14, False))
If @error  Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 14, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 15, False))
For $i = 1 To 20 Step 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 15, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 16, False))
	Sleep (500)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 16, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 17, False))
	Logs($fd, "GET WALLET try2 ", "wallet try2", "wallet try2 in while",$i)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 17, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 18, False))
	MouseClick("left", $pos_wallet[0], $pos_wallet[1], 4, 10)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 18, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_wallet", $pos_wallet))
If SetError(@error, @extended, IsDeclared("pos_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_wallet", $pos_wallet))
	;Sleep(300)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 20, False))
	Send("^{INSERT}")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 20, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 21, False))
	$wallet = ClipGet()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 21, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wallet", $wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 22, False))
	If @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 22, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 23, False))
	Logs($fd, "GET WALLET null buffer2", "null buffer2", "null buffer2", 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 23, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 24, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 24, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 25, False))
	$aArray = StringSplit($wallet, " ")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 25, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aArray", $aArray))
If SetError(@error, @extended, IsDeclared("wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wallet", $wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 26, False))
	If @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 26, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 27, False))
		Logs($fd, "GET WALLET try3 ", "wallet try2", "wallet try2", $i)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 27, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 28, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 28, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 29, False))
		Logs($fd, "GET WALLET succes wallet try3 ", "wallet try3-->", $aArray[4], $i)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 29, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("aArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aArray", $aArray))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 30, False))
		Return $aArray
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 30, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aArray", $aArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 31, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 31, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 32, False))
Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 32, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 33, False))
EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 33, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 34, False))
Return $aArray
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 34, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aArray", $aArray))
EndFunc


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 37, False))
Func press_btn($pos_btn)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 37, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_btn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn", $pos_btn))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 38, False))
	MouseClick("left", $pos_btn[0], $pos_btn[1], 1, 10)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\get_wallet.au3", "get_wallet.au3", 38, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_btn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn", $pos_btn))
If SetError(@error, @extended, IsDeclared("pos_btn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn", $pos_btn))
EndFunc
