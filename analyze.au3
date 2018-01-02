#include <IE.au3>
#include <Inet.au3>
#include <GUIConstantsEx.au3>
#include <ButtonConstants.au3>
#include <AutoItConstants.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>
#Include <Array.au3>
#include <File.au3>

Local $hGUI = GUICreate("W_bet", 500, 200)
; Create a button control.
Local $g_btn1 = GUICtrlCreateButton("Analyze", 320, 90, 85, 25)
Global $close = GUICtrlCreateButton("Close", 410, 170, 85, 25)
GUISetState(@SW_SHOW, $hGUI)

While 1
        Switch GUIGetMsg()
            Case $close
                _EXIT()
            Case $g_btn1
				  Analyze()
		EndSwitch
WEnd

Func _Exit()
	WinClose($hGUI)
    Exit 0
EndFunc
Func Analyze()
	Local $col
	Local $fl = 0
	Local $j = 0
	Local $lines= 0
		Global $fd = FileOpen("C:\LOGS\test.txt", $FO_READ)
		Global $fd2 = FileOpen("C:\LOGS\result.txt", 9)
		$lines = _FileCountLines("C:\LOGS\test2.txt")
		Local $arr[$lines/5]

		$i = 0
		While $i < $lines
		$sLine = FileReadLine($fd)
		if StringInStr($sLine, "Fail") Then
			$col+=1
			$fl = 1
			;MsgBox(1, "URa:", $sLine)
		Elseif StringInStr($sLine, "WIN") AND $fl = 1 Then

				$arr[$j]= $col
			$j += 1
		   ;FileWriteLine($fd2, "Fail-->" &$col& @CRLF)
			$col = 0
			$fl = 0
		EndIf
			If @error = -1 Then ExitLoop
			;If MsgBox(1, "line:", $sLine) = 2 Then ExitLoop
			$i +=1
		WEnd
		_ArraySort($arr)
		For $iElement In $arr ; Начало цикла...
			FileWriteLine($fd2, "Fail-->" &$iElement& @CRLF)
		Next
		;MsgBox(1, "URa:", $col)
EndFunc