Global $AutoItDebugger_Paused = 0
Global $AutoItDebugger_Quit = 0
Global $AutoItDebugger_Error
Global $AutoItDebugger_Extended
Global $AutoItDebuggerCommandWindowName = ""
Global $AutoItDebuggerCommandWindow
Global $AutoItDebuggerCommandWindowListbox
OnAutoItExitRegister("AutoIt_Debugger_OnAutoItExit")
AutoIt_Debugger_CreateMessageWindow()
$TempOriginalFileBeingDebuggedFileName = "123.au3"
$TempOriginalFileBeingDebuggedFileFolder = "C:\Users\admin\Desktop\DICE"
$TempOriginalFileBeingDebuggedFilePath = "C:\Users\admin\Desktop\DICE\123.au3"
AutoIt_Debugger_LoadFile("C:\Users\admin\Desktop\DICE\123.au3", "123.au3")
AutoIt_Debugger_DebugFile(@ScriptFullPath)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 1, False))
#Include "C:\Program Files (x86)\AutoIt3\Include\IE.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 1, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 2, False))
#Include "C:\Program Files (x86)\AutoIt3\Include\Inet.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 2, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 3, False))
#Include "C:\Program Files (x86)\AutoIt3\Include\GUIConstantsEx.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 3, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 4, False))
#Include "C:\Program Files (x86)\AutoIt3\Include\ButtonConstants.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 4, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 5, False))
#Include "C:\Program Files (x86)\AutoIt3\Include\AutoItConstants.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 5, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 6, False))
#Include "C:\Program Files (x86)\AutoIt3\Include\file.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 6, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 7, False))
#Include "C:\Users\admin\Desktop\DICE\Debug\mysql.Debug Script.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 7, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 8, False))
#Include "C:\Users\admin\Desktop\DICE\Debug\Check.Debug Script.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 8, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 9, False))
#Include "C:\Users\admin\Desktop\DICE\Debug\CompInfo.Debug Script.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 9, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 10, False))
#Include "C:\Users\admin\Desktop\DICE\Debug\get_wallet.Debug Script.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 10, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 11, False))
#Include "C:\Users\admin\Desktop\DICE\Debug\get_bet.Debug Script.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 11, False, @error, @extended))


#CS Global $SmtpServer = "smtp.ukr.net" ; address for the smtp-server to use - REQUIRED
	; Global $FromName = "Drug" ; name from who the email was sent
	; Global $FromAddress = "kurchinskyj@ukr.net" ; address from where the mail should come
	; Global $ToAddress = "2276045@ukr.net" ; destination address of the email - REQUIRED
	; Global $Subject = "Dima" ; subject from the email - can be anything you want it to be
	; Global $Body = "TEST" ; the messagebody from the mail - can be left blank but then you get a blank mail
	; Global $AttachFiles = "" ; ????? ??????? ????? ???????????? ? ??????) the file you want to attach- leave blank if not needed
	; Global $CcAddress = "" ; address for cc - leave blank if not needed
	; Global $BccAddress = "" ; address for bcc - leave blank if not needed
	; Global $Importance = "Normal" ; Send message priority: "High", "Normal", "Low"
	; Global $Username = "2276045@ukr.net" ; username for the account used from where the mail gets sent - REQUIRED
	; Global $Password = "amigo2109" ; password for the account used from where the mail gets sent - REQUIRED
	; Global $IPPort = 465 ; port used for sending the mail
	; Global $ssl = 1 ; enables/disables secure socket layer sending - put to 1 if using httpS
#CE


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 30, False))
Local $hGUI = GUICreate("W_bet", 500, 200)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 30, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hGUI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hGUI", $hGUI))
; Create a button control.

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 32, False))
Local $g_btn1 = GUICtrlCreateButton("Pos_btn1", 320, 90, 85, 25)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 32, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("g_btn1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_btn1", $g_btn1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 33, False))
Local $g_btn2 = GUICtrlCreateButton("Pos btn2", 410, 90, 85, 25)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 33, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("g_btn2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_btn2", $g_btn2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 34, False))
Global $g_bet = GUICtrlCreateButton("Pos ������", 320, 140, 85, 25)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 34, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("g_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_bet", $g_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 35, False))
Local $g_wallet = GUICtrlCreateButton("Pos ��������", 410, 140, 85, 25)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 35, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("g_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_wallet", $g_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 36, False))
Global $int_cur_summ_wallet = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 36, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_cur_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_cur_summ_wallet", $int_cur_summ_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 37, False))
Global $info = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 37, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("info")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$info", $info))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 38, False))
Dim $Motherboard
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 38, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Motherboard")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Motherboard", $Motherboard))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 39, False))
_ComputerGetMotherboard($Motherboard)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 39, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Motherboard")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Motherboard", $Motherboard))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 40, False))
Dim $Processors
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 40, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Processors")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Processors", $Processors))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 41, False))
_ComputerGetProcessors($Processors)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 41, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Processors")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Processors", $Processors))
;MsgBox(0, "", $Processors[1][0] & $Processors[1][28])

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 43, False))
Dim $SystemProduct
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 43, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("SystemProduct")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$SystemProduct", $SystemProduct))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 44, False))
_ComputerGetSystemProduct($SystemProduct)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 44, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("SystemProduct")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$SystemProduct", $SystemProduct))




SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 48, False))
Global $inp_btn1 = GUICtrlCreateInput("", 320, 65, 85, 23)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 48, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("inp_btn1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$inp_btn1", $inp_btn1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 49, False))
Global $inp_btn2 = GUICtrlCreateInput("", 410, 65, 85, 23)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 49, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("inp_btn2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$inp_btn2", $inp_btn2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 50, False))
Global $inp_bet = GUICtrlCreateInput("", 320, 115, 85, 23)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 50, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("inp_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$inp_bet", $inp_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 51, False))
Global $inp_wallet = GUICtrlCreateInput("", 410, 115, 85, 23)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 51, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("inp_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$inp_wallet", $inp_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 52, False))
Global $pos_btn1 = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 52, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_btn1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn1", $pos_btn1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 53, False))
Global $pos_btn2 = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 53, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_btn2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn2", $pos_btn2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 54, False))
Global $pos_bet = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 54, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 55, False))
Global $pos_wallet = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 55, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_wallet", $pos_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 56, False))
Global $currency = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 56, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("currency")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$currency", $currency))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 57, False))
Local $launch = GUICtrlCreateButton("������", 230, 170, 85, 25)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 57, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("launch")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$launch", $launch))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 58, False))
Local $go = GUICtrlCreateButton("���", 320, 170, 85, 25)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 58, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("go")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$go", $go))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 59, False))
Global $idClose2 = GUICtrlCreateButton("Close", 410, 170, 85, 25)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 59, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("idClose2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$idClose2", $idClose2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 60, False))
Global $g_str_f_bet = GUICtrlCreateInput("0.00000001", 8, 120, 239, 23)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 60, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("g_str_f_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_str_f_bet", $g_str_f_bet))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 62, False))
GUICtrlCreateGroup("������", 20, 20, 130, 90)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 62, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 63, False))
$r1 = GUICtrlCreateRadio("BIT", 40, 60, 100, 20)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 63, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("r1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$r1", $r1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 64, False))
$r2 = GUICtrlCreateRadio("PAC", 40, 80, 100, 20)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 64, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("r2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$r2", $r2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 65, False))
GUICtrlCreateGroup("", -99, -99, 1, 1) ; ��������� ������
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 65, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 67, False))
HotKeySet("{f1}", pr_btn1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 67, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 68, False))
HotKeySet("{f2}", pr_btn2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 68, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 69, False))
HotKeySet("{f3}", pr_bet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 69, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 70, False))
HotKeySet("{f4}", pr_wallet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 70, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 71, False))
HotKeySet("{f7}", _Exit)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 71, False, @error, @extended))



SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 74, False))
Func pr_btn1($g_btn1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 74, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("g_btn1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_btn1", $g_btn1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 75, False))
	$pos_btn1 = MouseGetPos()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 75, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_btn1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn1", $pos_btn1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 76, False))
	GUICtrlSetData($inp_btn1, $pos_btn1[0] & "-" & $pos_btn1[1])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 76, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("inp_btn1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$inp_btn1", $inp_btn1))
If SetError(@error, @extended, IsDeclared("pos_btn1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn1", $pos_btn1))
If SetError(@error, @extended, IsDeclared("pos_btn1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn1", $pos_btn1))
EndFunc   ;==>pr_btn1


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 79, False))
Func pr_btn2($g_btn2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 79, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("g_btn2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_btn2", $g_btn2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 80, False))
	$pos_btn2 = MouseGetPos()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 80, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_btn2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn2", $pos_btn2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 81, False))
	GUICtrlSetData($inp_btn2, $pos_btn2[0] & "-" & $pos_btn2[1])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 81, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("inp_btn2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$inp_btn2", $inp_btn2))
If SetError(@error, @extended, IsDeclared("pos_btn2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn2", $pos_btn2))
If SetError(@error, @extended, IsDeclared("pos_btn2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn2", $pos_btn2))
EndFunc   ;==>pr_btn2


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 84, False))
Func pr_bet($g_bet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 84, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("g_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_bet", $g_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 85, False))
	$pos_bet = MouseGetPos()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 85, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 86, False))
	GUICtrlSetData($inp_bet, $pos_bet[0] & "-" & $pos_bet[1])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 86, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("inp_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$inp_bet", $inp_bet))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))
EndFunc   ;==>pr_bet


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 89, False))
Func pr_wallet($g_wallet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 89, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("g_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_wallet", $g_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 90, False))
	$pos_wallet = MouseGetPos()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 90, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_wallet", $pos_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 91, False))
	GUICtrlSetData($inp_wallet, $pos_wallet[0] & "-" & $pos_wallet[1])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 91, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("inp_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$inp_wallet", $inp_wallet))
If SetError(@error, @extended, IsDeclared("pos_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_wallet", $pos_wallet))
If SetError(@error, @extended, IsDeclared("pos_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_wallet", $pos_wallet))
EndFunc   ;==>pr_wallet




SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 96, False))
Global $IE = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 96, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("IE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IE", $IE))
;Global $pos_btn1 = ""

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 98, False))
Global $pos_btn2 = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 98, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_btn2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn2", $pos_btn2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 99, False))
Global $pos_bet = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 99, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 100, False))
Global $pos_wallet = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 100, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_wallet", $pos_wallet))
; Display the GUI.

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 102, False))
GUISetState(@SW_SHOW, $hGUI)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 102, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hGUI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hGUI", $hGUI))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 104, False))
Local $iPID = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 104, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iPID")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iPID", $iPID))

; Loop until the user exits.

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 107, False))
While 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 107, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 108, False))
	Switch GUIGetMsg()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 108, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 109, False))
		Case $idClose2
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 109, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("idClose2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$idClose2", $idClose2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 110, False))
			_Exit()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 110, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 111, False))
		Case $launch
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 111, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("launch")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$launch", $launch))
			;$IE = _IECreate("http://yobit.net")

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 113, False))
			$IE = _IECreate("http://joo")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 113, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("IE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IE", $IE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 114, False))
		Case $go
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 114, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("go")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$go", $go))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 115, False))
			Work()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 115, False, @error, @extended))
			;GET POSITION

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 117, False))
		Case $g_btn1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 117, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("g_btn1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_btn1", $g_btn1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 118, False))
			$g_btn1 = GUICtrlSetData($inp_btn1, "-" & $pos_btn1[1])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 118, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("g_btn1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_btn1", $g_btn1))
If SetError(@error, @extended, IsDeclared("inp_btn1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$inp_btn1", $inp_btn1))
If SetError(@error, @extended, IsDeclared("pos_btn1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn1", $pos_btn1))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 120, False))
		Case $g_btn2
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 120, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("g_btn2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_btn2", $g_btn2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 121, False))
			$g_btn2 = GUICtrlSetData($inp_btn2, "-" & $pos_btn2[1])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 121, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("g_btn2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_btn2", $g_btn2))
If SetError(@error, @extended, IsDeclared("inp_btn2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$inp_btn2", $inp_btn2))
If SetError(@error, @extended, IsDeclared("pos_btn2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn2", $pos_btn2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 122, False))
		Case $g_bet
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 122, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("g_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_bet", $g_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 123, False))
			$g_bet = GUICtrlSetData($inp_bet, $pos_bet[0] & "-" & $pos_bet[1])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 123, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("g_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_bet", $g_bet))
If SetError(@error, @extended, IsDeclared("inp_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$inp_bet", $inp_bet))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 124, False))
		Case $g_wallet
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 124, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("g_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_wallet", $g_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 125, False))
			$g_wallet = GUICtrlSetData($inp_wallet, $pos_wallet[0] & "-" & $pos_wallet[1])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 125, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("g_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_wallet", $g_wallet))
If SetError(@error, @extended, IsDeclared("inp_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$inp_wallet", $inp_wallet))
If SetError(@error, @extended, IsDeclared("pos_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_wallet", $pos_wallet))
If SetError(@error, @extended, IsDeclared("pos_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_wallet", $pos_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 126, False))
	EndSwitch
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 126, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 127, False))
WEnd
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 127, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 128, False))
Func _Exit()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 128, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 129, False))
	Exit 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 129, False, @error, @extended))
EndFunc   ;==>_Exit


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 132, False))
Func Work()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 132, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 133, False))
	Check()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 133, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 134, False))
	$s_SmtpServer = "smtp.ukr.net" ; address for the smtp-server to use - REQUIRED
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 134, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_SmtpServer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_SmtpServer", $s_SmtpServer))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 135, False))
	$s_FromName = "John.Doe" ; name from who the email was sent
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 135, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_FromName")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_FromName", $s_FromName))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 136, False))
	$s_FromAddress = "2276045@ukr.net" ; address from where the mail should come
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 136, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_FromAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_FromAddress", $s_FromAddress))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 137, False))
	$s_ToAddress = "2276045@ukr.net" ; destination address of the email - REQUIRED
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 137, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ToAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ToAddress", $s_ToAddress))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 138, False))
	$s_Subject = "Hello World!" ; subject from the email - can be anything you want it to be
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 138, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Subject")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Subject", $s_Subject))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 139, False))
	$s_Body = "It's Body" ; the messagebody from the mail - can be left blank but then you get a blank mail
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 139, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Body")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Body", $s_Body))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 140, False))
	$s_AttachFiles = "" ; the file you want to attach- leave blank if not needed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 140, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_AttachFiles")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_AttachFiles", $s_AttachFiles))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 141, False))
	$s_CcAddress = "" ; address for cc - leave blank if not needed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 141, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CcAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CcAddress", $s_CcAddress))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 142, False))
	$s_BccAddress = "" ; address for bcc - leave blank if not needed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 142, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_BccAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_BccAddress", $s_BccAddress))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 143, False))
	$s_Importance = "Normal" ; Send message priority: "High", "Normal", "Low"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 143, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Importance")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Importance", $s_Importance))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 144, False))
	$s_Username = "2276045@ukr.net" ; username for the account used from where the mail gets sent - REQUIRED
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 144, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Username")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Username", $s_Username))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 145, False))
	$s_Password = "amigo2109" ; password for the account used from where the mail gets sent - REQUIRED
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 145, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Password")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Password", $s_Password))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 146, False))
	$IPPort = 465 ; port used for sending the mail
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 146, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("IPPort")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IPPort", $IPPort))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 147, False))
	$ssl = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 147, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ssl")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ssl", $ssl))
;~ $IPPort=465 ; GMAIL port used for sending the mail
;~ $ssl=1 ; GMAILenables/disables secure socket layer sending - put to 1 if using httpS
	;_send("test","test","")
	;	Sendmail(@ComputerName,1000,2000)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 152, False))
	$str_first_bet = GUICtrlRead($g_str_f_bet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 152, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str_first_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_first_bet", $str_first_bet))
If SetError(@error, @extended, IsDeclared("g_str_f_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$g_str_f_bet", $g_str_f_bet))
	; 	  Msgbox (0, "","firstbet--->" & $str_first_bet)


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 155, False))
	Global $fd = FileOpen("C:\LOGS\test.txt", 9)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 155, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 156, False))
	$state = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 156, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("state")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$state", $state))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 157, False))
	If GUICtrlRead($r1) = $GUI_CHECKED Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 157, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("r1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$r1", $r1))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 158, False))
		$currency = "(Bitcoin)"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 158, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("currency")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$currency", $currency))
		;Msgbox (0, "","firstbet--->r2")

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 160, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 160, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 161, False))
	If GUICtrlRead($r2) = $GUI_CHECKED Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 161, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("r2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$r2", $r2))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 162, False))
		$currency = "(PacCoin)"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 162, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("currency")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$currency", $currency))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 163, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 163, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 164, False))
	If Not $currency Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 164, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("currency")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$currency", $currency))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 165, False))
		MsgBox(16, 'Error', '�� ������ �� �������')
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 165, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 166, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 166, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 168, False))
	$str_first_bet = StringFormat("%.8f", $str_first_bet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 168, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str_first_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_first_bet", $str_first_bet))
If SetError(@error, @extended, IsDeclared("str_first_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_first_bet", $str_first_bet))

	; Msgbox (0, "","after formaat--" &  $str_first_bet )

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 171, False))
	Local $btn[2]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 171, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("btn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$btn", $btn))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 172, False))
	$ex_wallet = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 172, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ex_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ex_wallet", $ex_wallet))



SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 175, False))
	$fl_first = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 175, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fl_first")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fl_first", $fl_first))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 176, False))
	$s_wallet = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 176, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_wallet", $s_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 177, False))
	$int_summ_bet = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 177, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_summ_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_summ_bet", $int_summ_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 178, False))
	$int_prev_summ_wallet = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 178, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_prev_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_prev_summ_wallet", $int_prev_summ_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 179, False))
	$str_cur_summ_bet = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 179, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str_cur_summ_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_cur_summ_bet", $str_cur_summ_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 180, False))
	$int_first_bet = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 180, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_first_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_first_bet", $int_first_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 181, False))
	$prev_press = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 181, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("prev_press")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$prev_press", $prev_press))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 182, False))
	$breaks = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 182, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("breaks")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$breaks", $breaks))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 183, False))
	$cnt_bet = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 183, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("cnt_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cnt_bet", $cnt_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 184, False))
	Local $btn[2]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 184, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("btn")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$btn", $btn))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 185, False))
	$int_cur_summ_wallet = GetWallet($fd, $IE, $pos_wallet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 185, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_cur_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_cur_summ_wallet", $int_cur_summ_wallet))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("IE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IE", $IE))
If SetError(@error, @extended, IsDeclared("pos_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_wallet", $pos_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 186, False))
 	$info = @IPAddress1 & " " & @IPAddress2 & @IPAddress3 & @CRLF 			 & "wallet " & $int_cur_summ_wallet[1] & "-" & $int_cur_summ_wallet[4] & @CRLF 			 & "motherboard " & $Motherboard[1][0] & @CRLF 			 & "proccesor " & $Processors[1][0] & "-" & $Processors[1][28] & @CRLF 			 & "product " & $SystemProduct[1][1] & "-" & $SystemProduct[1][6]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 186, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("info")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$info", $info))
If SetError(@error, @extended, IsDeclared("int_cur_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_cur_summ_wallet", $int_cur_summ_wallet))
If SetError(@error, @extended, IsDeclared("int_cur_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_cur_summ_wallet", $int_cur_summ_wallet))
If SetError(@error, @extended, IsDeclared("Motherboard")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Motherboard", $Motherboard))
If SetError(@error, @extended, IsDeclared("Processors")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Processors", $Processors))
If SetError(@error, @extended, IsDeclared("Processors")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Processors", $Processors))
If SetError(@error, @extended, IsDeclared("SystemProduct")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$SystemProduct", $SystemProduct))
If SetError(@error, @extended, IsDeclared("SystemProduct")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$SystemProduct", $SystemProduct))
	;Msgbox (0, "","777www--->"&$info)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 192, False))
	SetBet($IE, $pos_bet, $str_first_bet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 192, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("IE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IE", $IE))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))
If SetError(@error, @extended, IsDeclared("str_first_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_first_bet", $str_first_bet))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 194, False))
	$s_Body = $info
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 194, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Body")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Body", $s_Body))
If SetError(@error, @extended, IsDeclared("info")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$info", $info))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 196, False))
	_INetSmtpMailCom($s_SmtpServer, $s_FromName, $s_FromAddress, $s_ToAddress, $s_Subject, $s_Body, $s_AttachFiles, $s_CcAddress, $s_BccAddress, $s_Importance, $s_Username, $s_Password, $IPPort, $ssl)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 196, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_SmtpServer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_SmtpServer", $s_SmtpServer))
If SetError(@error, @extended, IsDeclared("s_FromName")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_FromName", $s_FromName))
If SetError(@error, @extended, IsDeclared("s_FromAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_FromAddress", $s_FromAddress))
If SetError(@error, @extended, IsDeclared("s_ToAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ToAddress", $s_ToAddress))
If SetError(@error, @extended, IsDeclared("s_Subject")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Subject", $s_Subject))
If SetError(@error, @extended, IsDeclared("s_Body")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Body", $s_Body))
If SetError(@error, @extended, IsDeclared("s_AttachFiles")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_AttachFiles", $s_AttachFiles))
If SetError(@error, @extended, IsDeclared("s_CcAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CcAddress", $s_CcAddress))
If SetError(@error, @extended, IsDeclared("s_BccAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_BccAddress", $s_BccAddress))
If SetError(@error, @extended, IsDeclared("s_Importance")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Importance", $s_Importance))
If SetError(@error, @extended, IsDeclared("s_Username")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Username", $s_Username))
If SetError(@error, @extended, IsDeclared("s_Password")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Password", $s_Password))
If SetError(@error, @extended, IsDeclared("IPPort")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IPPort", $IPPort))
If SetError(@error, @extended, IsDeclared("ssl")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ssl", $ssl))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 198, False))
	Logs($fd, "START", "WALLET-->", $int_cur_summ_wallet[4], 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 198, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("int_cur_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_cur_summ_wallet", $int_cur_summ_wallet))

	;Msgbox (0, "","777www--->"&$s_wallet[4])

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 201, False))
	$str_cur_summ_bet = $str_first_bet
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 201, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str_cur_summ_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_cur_summ_bet", $str_cur_summ_bet))
If SetError(@error, @extended, IsDeclared("str_first_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_first_bet", $str_first_bet))

	;If (StringInStr($s_wallet[1], $currency)) Then

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 204, False))
	For $i = 0 To 100000 Step 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 204, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 205, False))
		If ($fl_first == 0) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 205, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fl_first")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fl_first", $fl_first))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 206, False))
			$fl_first = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 206, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fl_first")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fl_first", $fl_first))
			;Sleep(Random(1500,2000,1))
			;$ex_wallet = GetWallet($IE,$pos_wallet)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 209, False))
			$int_prev_summ_wallet = $int_cur_summ_wallet
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 209, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_prev_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_prev_summ_wallet", $int_prev_summ_wallet))
If SetError(@error, @extended, IsDeclared("int_cur_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_cur_summ_wallet", $int_cur_summ_wallet))
			;Sleep(Random(1500,2000,1))
			;$btn = GetBtn($IE);

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 212, False))
			press_btn($pos_btn1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 212, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_btn1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn1", $pos_btn1))
			;_IEAction($btn[0], "click")

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 214, False))
			$prev_press = 1 ;
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 214, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("prev_press")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$prev_press", $prev_press))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 215, False))
		Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 215, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 216, False))
			If ($int_prev_summ_wallet[0] = 1) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 216, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_prev_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_prev_summ_wallet", $int_prev_summ_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 217, False))
				$int_prev_summ_wallet = GetWallet($fd, $IE, $pos_wallet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 217, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_prev_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_prev_summ_wallet", $int_prev_summ_wallet))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("IE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IE", $IE))
If SetError(@error, @extended, IsDeclared("pos_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_wallet", $pos_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 218, False))
				Logs($fd, "   TRY", "TRY wallet", "TRY", $i)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 218, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 219, False))
			EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 219, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 220, False))
			If ($int_cur_summ_wallet[0] = 1) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 220, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_cur_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_cur_summ_wallet", $int_cur_summ_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 221, False))
				$int_cur_summ_wallet = GetWallet($fd, $IE, $pos_wallet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 221, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_cur_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_cur_summ_wallet", $int_cur_summ_wallet))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("IE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IE", $IE))
If SetError(@error, @extended, IsDeclared("pos_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_wallet", $pos_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 222, False))
				Logs($fd, "   TRY2", "TRY2 wallet", "TRY2", $i)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 222, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 223, False))
			EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 223, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 224, False))
			If ($int_prev_summ_wallet[4] < $int_cur_summ_wallet[4]) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 224, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_prev_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_prev_summ_wallet", $int_prev_summ_wallet))
If SetError(@error, @extended, IsDeclared("int_cur_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_cur_summ_wallet", $int_cur_summ_wallet))
				;MsgBox(0, "GET BET", "WIN SET"&$str_cur_summ_bet)


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 227, False))
				$cnt_bet = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 227, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("cnt_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cnt_bet", $cnt_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 228, False))
				Logs($fd, "   WIN-", $str_first_bet, $str_cur_summ_bet, $i)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 228, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("str_first_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_first_bet", $str_first_bet))
If SetError(@error, @extended, IsDeclared("str_cur_summ_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_cur_summ_bet", $str_cur_summ_bet))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 229, False))
				If $str_cur_sum_bet Not $str_first_bet Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 229, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str_cur_sum_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_cur_sum_bet", $str_cur_sum_bet))
If SetError(@error, @extended, IsDeclared("str_first_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_first_bet", $str_first_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 230, False))
					SetBet($IE, $pos_bet, $str_first_bet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 230, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("IE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IE", $IE))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))
If SetError(@error, @extended, IsDeclared("str_first_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_first_bet", $str_first_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 231, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 231, False, @error, @extended))
				;Sleep(Random(1500,2000,1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 233, False))
				If ($prev_press == 1) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 233, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("prev_press")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$prev_press", $prev_press))
					;Sleep(Random(1500,2000,1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 235, False))
					$int_prev_summ_wallet = $int_cur_summ_wallet
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 235, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_prev_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_prev_summ_wallet", $int_prev_summ_wallet))
If SetError(@error, @extended, IsDeclared("int_cur_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_cur_summ_wallet", $int_cur_summ_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 236, False))
					press_btn($pos_btn2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 236, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_btn2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn2", $pos_btn2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 237, False))
					$prev_press = 2 ;
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 237, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("prev_press")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$prev_press", $prev_press))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 238, False))
				Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 238, False, @error, @extended))
					;Sleep(Random(1500,2000,1))
					;$ex_wallet = GetWallet($IE, $pos_wallet)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 241, False))
					$int_prev_summ_wallet = $int_cur_summ_wallet
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 241, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_prev_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_prev_summ_wallet", $int_prev_summ_wallet))
If SetError(@error, @extended, IsDeclared("int_cur_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_cur_summ_wallet", $int_cur_summ_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 242, False))
					press_btn($pos_btn1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 242, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_btn1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn1", $pos_btn1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 243, False))
					$prev_press = 1 ;
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 243, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("prev_press")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$prev_press", $prev_press))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 244, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 244, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 245, False))
			Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 245, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 246, False))
				$cnt_bet += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 246, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("cnt_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cnt_bet", $cnt_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 247, False))
				If $cnt_bet = 4 Or $cnt_bet = 8 Or $cnt_bet = 12 Or $cnt_bet = 14 Or $cnt_bet = 18 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 247, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("cnt_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cnt_bet", $cnt_bet))
If SetError(@error, @extended, IsDeclared("cnt_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cnt_bet", $cnt_bet))
If SetError(@error, @extended, IsDeclared("cnt_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cnt_bet", $cnt_bet))
If SetError(@error, @extended, IsDeclared("cnt_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cnt_bet", $cnt_bet))
If SetError(@error, @extended, IsDeclared("cnt_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cnt_bet", $cnt_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 248, False))
					$str_cur_summ_bet = Round($str_cur_summ_bet * 2.2, 8)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 248, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str_cur_summ_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_cur_summ_bet", $str_cur_summ_bet))
If SetError(@error, @extended, IsDeclared("str_cur_summ_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_cur_summ_bet", $str_cur_summ_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 249, False))
				Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 249, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 250, False))
					$str_cur_summ_bet *= 2
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 250, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str_cur_summ_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_cur_summ_bet", $str_cur_summ_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 251, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 251, False, @error, @extended))
				;MsgBox(0, "GET BET", "FAIL SET"&$str_cur_summ_bet)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 253, False))
				$str_cur_summ_bet = StringFormat("%.8f", $str_cur_summ_bet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 253, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str_cur_summ_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_cur_summ_bet", $str_cur_summ_bet))
If SetError(@error, @extended, IsDeclared("str_cur_summ_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_cur_summ_bet", $str_cur_summ_bet))
				;MsgBox(0, "GET BET", "FAIL SET"&$str_cur_summ_bet)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 255, False))
				Logs($fd, "  FAIL-", $str_first_bet, $str_cur_summ_bet, $i)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 255, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("str_first_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_first_bet", $str_first_bet))
If SetError(@error, @extended, IsDeclared("str_cur_summ_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_cur_summ_bet", $str_cur_summ_bet))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 256, False))
				SetBet($IE, $pos_bet, $str_cur_summ_bet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 256, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("IE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IE", $IE))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))
If SetError(@error, @extended, IsDeclared("str_cur_summ_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_cur_summ_bet", $str_cur_summ_bet))
				;Sleep(Random(1500,2000,1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 258, False))
				If ($prev_press == 1) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 258, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("prev_press")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$prev_press", $prev_press))
					;Sleep(Random(1500,2000,1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 260, False))
					$int_prev_summ_wallet = $int_cur_summ_wallet
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 260, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_prev_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_prev_summ_wallet", $int_prev_summ_wallet))
If SetError(@error, @extended, IsDeclared("int_cur_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_cur_summ_wallet", $int_cur_summ_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 261, False))
					press_btn($pos_btn1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 261, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_btn1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn1", $pos_btn1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 262, False))
					$prev_press = 1 ;
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 262, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("prev_press")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$prev_press", $prev_press))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 263, False))
				Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 263, False, @error, @extended))
					;Sleep(Random(1500,2000,1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 265, False))
					$int_prev_summ_wallet = $int_cur_summ_wallet
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 265, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_prev_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_prev_summ_wallet", $int_prev_summ_wallet))
If SetError(@error, @extended, IsDeclared("int_cur_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_cur_summ_wallet", $int_cur_summ_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 266, False))
					press_btn($pos_btn2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 266, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("pos_btn2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_btn2", $pos_btn2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 267, False))
					$prev_press = 2 ;
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 267, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("prev_press")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$prev_press", $prev_press))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 268, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 268, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 269, False))
			EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 269, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 270, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 270, False, @error, @extended))
		;Sleep(Random(1500,2000,1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 272, False))
		$int_cur_summ_wallet = GetWallet($fd, $IE, $pos_wallet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 272, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("int_cur_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_cur_summ_wallet", $int_cur_summ_wallet))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("IE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IE", $IE))
If SetError(@error, @extended, IsDeclared("pos_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_wallet", $pos_wallet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 273, False))
		$str_cur_summ_bet = GetBet($fd, $IE, $pos_bet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 273, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str_cur_summ_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_cur_summ_bet", $str_cur_summ_bet))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("IE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IE", $IE))
If SetError(@error, @extended, IsDeclared("pos_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$pos_bet", $pos_bet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 274, False))
		$str_cur_summ_bet = StringFormat("%.8f", $str_cur_summ_bet)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 274, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("str_cur_summ_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_cur_summ_bet", $str_cur_summ_bet))
If SetError(@error, @extended, IsDeclared("str_cur_summ_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_cur_summ_bet", $str_cur_summ_bet))
		;Sleep(Random(1500,2000,1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 276, False))
		If ($i == 90) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 276, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 277, False))
			$breaks = Random(191, 250)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 277, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("breaks")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$breaks", $breaks))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 278, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 278, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 279, False))
		If ($breaks > 0 And $i = $breaks) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 279, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("breaks")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$breaks", $breaks))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("breaks")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$breaks", $breaks))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 280, False))
			Sleep(Random(10000, 20000, 1))
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 280, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 281, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 281, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 282, False))
		Logs($fd, "end cycle", $str_first_bet, $int_cur_summ_wallet, $i)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 282, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("fd")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$fd", $fd))
If SetError(@error, @extended, IsDeclared("str_first_bet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$str_first_bet", $str_first_bet))
If SetError(@error, @extended, IsDeclared("int_cur_summ_wallet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$int_cur_summ_wallet", $int_cur_summ_wallet))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 283, False))
	Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 283, False, @error, @extended))
	;EndIf
EndFunc   ;==>Work

;##################################
; Variables
;##################################

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 290, False))
$s_SmtpServer = "smtp.ukr.net" ; address for the smtp-server to use - REQUIRED
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 290, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_SmtpServer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_SmtpServer", $s_SmtpServer))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 291, False))
$s_FromName = "Dima" ; name from who the email was sent
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 291, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_FromName")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_FromName", $s_FromName))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 292, False))
$s_FromAddress = "2276045@ukr.net" ; address from where the mail should come
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 292, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_FromAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_FromAddress", $s_FromAddress))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 293, False))
$s_ToAddress = "2276045@ukr.net" ; destination address of the email - REQUIRED
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 293, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ToAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ToAddress", $s_ToAddress))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 294, False))
$s_Subject = "Hello World!" ; subject from the email - can be anything you want it to be
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 294, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Subject")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Subject", $s_Subject))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 295, False))
$s_Body = $info ; the messagebody from the mail - can be left blank but then you get a blank mail
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 295, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Body")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Body", $s_Body))
If SetError(@error, @extended, IsDeclared("info")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$info", $info))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 296, False))
$s_AttachFiles = "" ; the file you want to attach- leave blank if not needed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 296, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_AttachFiles")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_AttachFiles", $s_AttachFiles))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 297, False))
$s_CcAddress = "" ; address for cc - leave blank if not needed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 297, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CcAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CcAddress", $s_CcAddress))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 298, False))
$s_BccAddress = "" ; address for bcc - leave blank if not needed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 298, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_BccAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_BccAddress", $s_BccAddress))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 299, False))
$s_Importance = "Normal" ; Send message priority: "High", "Normal", "Low"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 299, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Importance")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Importance", $s_Importance))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 300, False))
$s_Username = "2276045@ukr.net" ; username for the account used from where the mail gets sent - REQUIRED
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 300, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Username")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Username", $s_Username))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 301, False))
$s_Password = "amigo2109" ; password for the account used from where the mail gets sent - REQUIRED
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 301, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Password")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Password", $s_Password))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 302, False))
$IPPort = 465 ; port used for sending the mail
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 302, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("IPPort")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IPPort", $IPPort))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 303, False))
$ssl = 1 ; enables/disables secure socket layer sending - put to 1 if using httpS
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 303, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ssl")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ssl", $ssl))
;~ $IPPort=465                          ; GMAIL port used for sending the mail
;~ $ssl=1                               ; GMAILenables/disables secure socket layer sending - put to 1 if using httpS

;##################################
; Script
;##################################

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 310, False))
Global $oMyRet[2]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 310, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oMyRet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyRet", $oMyRet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 311, False))
Global $oMyError = ObjEvent("AutoIt.Error", "MyErrFunc")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 311, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 312, False))
$rc = _INetSmtpMailCom($s_SmtpServer, $s_FromName, $s_FromAddress, $s_ToAddress, $s_Subject, $s_Body, $s_AttachFiles, $s_CcAddress, $s_BccAddress, $s_Importance, $s_Username, $s_Password, $IPPort, $ssl)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 312, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("rc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$rc", $rc))
If SetError(@error, @extended, IsDeclared("s_SmtpServer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_SmtpServer", $s_SmtpServer))
If SetError(@error, @extended, IsDeclared("s_FromName")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_FromName", $s_FromName))
If SetError(@error, @extended, IsDeclared("s_FromAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_FromAddress", $s_FromAddress))
If SetError(@error, @extended, IsDeclared("s_ToAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ToAddress", $s_ToAddress))
If SetError(@error, @extended, IsDeclared("s_Subject")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Subject", $s_Subject))
If SetError(@error, @extended, IsDeclared("s_Body")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Body", $s_Body))
If SetError(@error, @extended, IsDeclared("s_AttachFiles")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_AttachFiles", $s_AttachFiles))
If SetError(@error, @extended, IsDeclared("s_CcAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CcAddress", $s_CcAddress))
If SetError(@error, @extended, IsDeclared("s_BccAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_BccAddress", $s_BccAddress))
If SetError(@error, @extended, IsDeclared("s_Importance")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Importance", $s_Importance))
If SetError(@error, @extended, IsDeclared("s_Username")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Username", $s_Username))
If SetError(@error, @extended, IsDeclared("s_Password")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Password", $s_Password))
If SetError(@error, @extended, IsDeclared("IPPort")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IPPort", $IPPort))
If SetError(@error, @extended, IsDeclared("ssl")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ssl", $ssl))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 313, False))
If @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 313, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 314, False))
	MsgBox(0, "Error sending message", "Error code:" & @error & "  Description:" & $rc)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 314, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("rc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$rc", $rc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 315, False))
EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 315, False, @error, @extended))
;
; The UDF

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 318, False))
Func _INetSmtpMailCom($s_SmtpServer, $s_FromName, $s_FromAddress, $s_ToAddress, $s_Subject = "", $as_Body = "", $s_AttachFiles = "", $s_CcAddress = "", $s_BccAddress = "", $s_Importance = "Normal", $s_Username = "", $s_Password = "", $IPPort = 25, $ssl = 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 318, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_SmtpServer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_SmtpServer", $s_SmtpServer))
If SetError(@error, @extended, IsDeclared("s_FromName")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_FromName", $s_FromName))
If SetError(@error, @extended, IsDeclared("s_FromAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_FromAddress", $s_FromAddress))
If SetError(@error, @extended, IsDeclared("s_ToAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ToAddress", $s_ToAddress))
If SetError(@error, @extended, IsDeclared("s_Subject")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Subject", $s_Subject))
If SetError(@error, @extended, IsDeclared("as_Body")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$as_Body", $as_Body))
If SetError(@error, @extended, IsDeclared("s_AttachFiles")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_AttachFiles", $s_AttachFiles))
If SetError(@error, @extended, IsDeclared("s_CcAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CcAddress", $s_CcAddress))
If SetError(@error, @extended, IsDeclared("s_BccAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_BccAddress", $s_BccAddress))
If SetError(@error, @extended, IsDeclared("s_Importance")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Importance", $s_Importance))
If SetError(@error, @extended, IsDeclared("s_Username")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Username", $s_Username))
If SetError(@error, @extended, IsDeclared("s_Password")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Password", $s_Password))
If SetError(@error, @extended, IsDeclared("IPPort")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IPPort", $IPPort))
If SetError(@error, @extended, IsDeclared("ssl")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ssl", $ssl))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 319, False))
	Local $objEmail = ObjCreate("CDO.Message")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 319, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 320, False))
	$objEmail.From = '"' & $s_FromName & '" <' & $s_FromAddress & '>'
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 320, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))
If SetError(@error, @extended, IsDeclared("s_FromName")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_FromName", $s_FromName))
If SetError(@error, @extended, IsDeclared("s_FromAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_FromAddress", $s_FromAddress))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 321, False))
	$objEmail.To = $s_ToAddress
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 321, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))
If SetError(@error, @extended, IsDeclared("s_ToAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ToAddress", $s_ToAddress))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 322, False))
	Local $i_Error = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 322, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_Error")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_Error", $i_Error))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 323, False))
	Local $i_Error_desciption = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 323, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_Error_desciption")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_Error_desciption", $i_Error_desciption))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 324, False))
	If $s_CcAddress <> "" Then $objEmail.Cc = $s_CcAddress
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 324, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CcAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CcAddress", $s_CcAddress))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))
If SetError(@error, @extended, IsDeclared("s_CcAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CcAddress", $s_CcAddress))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 325, False))
	If $s_BccAddress <> "" Then $objEmail.Bcc = $s_BccAddress
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 325, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_BccAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_BccAddress", $s_BccAddress))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))
If SetError(@error, @extended, IsDeclared("s_BccAddress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_BccAddress", $s_BccAddress))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 326, False))
	$objEmail.Subject = $s_Subject
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 326, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))
If SetError(@error, @extended, IsDeclared("s_Subject")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Subject", $s_Subject))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 327, False))
	If StringInStr($as_Body, "<") And StringInStr($as_Body, ">") Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 327, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("as_Body")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$as_Body", $as_Body))
If SetError(@error, @extended, IsDeclared("as_Body")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$as_Body", $as_Body))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 328, False))
		$objEmail.HTMLBody = $as_Body
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 328, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))
If SetError(@error, @extended, IsDeclared("as_Body")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$as_Body", $as_Body))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 329, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 329, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 330, False))
		$objEmail.Textbody = $as_Body & @CRLF
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 330, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))
If SetError(@error, @extended, IsDeclared("as_Body")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$as_Body", $as_Body))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 331, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 331, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 332, False))
	If $s_AttachFiles <> "" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 332, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_AttachFiles")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_AttachFiles", $s_AttachFiles))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 333, False))
		Local $S_Files2Attach = StringSplit($s_AttachFiles, ";")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 333, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("S_Files2Attach")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_Files2Attach", $S_Files2Attach))
If SetError(@error, @extended, IsDeclared("s_AttachFiles")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_AttachFiles", $s_AttachFiles))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 334, False))
		For $x = 1 To $S_Files2Attach[0]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 334, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("x")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$x", $x))
If SetError(@error, @extended, IsDeclared("S_Files2Attach")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_Files2Attach", $S_Files2Attach))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 335, False))
			$S_Files2Attach[$x] = _PathFull($S_Files2Attach[$x])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 335, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("S_Files2Attach")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_Files2Attach", $S_Files2Attach))
If SetError(@error, @extended, IsDeclared("x")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$x", $x))
If SetError(@error, @extended, IsDeclared("S_Files2Attach")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_Files2Attach", $S_Files2Attach))
If SetError(@error, @extended, IsDeclared("x")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$x", $x))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 336, False))
			ConsoleWrite('@@ Debug(62) : $S_Files2Attach = ' & $S_Files2Attach & @LF & '>Error code: ' & @error & @LF) ;### Debug Console
SetError(@error, @extended, AutoIt_Debugger_SendConsoleWrite('@@ Debug(62) : $S_Files2Attach = ' & $S_Files2Attach & @LF & '>Error code: ' & @error & @LF))
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 336, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("S_Files2Attach")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_Files2Attach", $S_Files2Attach))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 337, False))
			If FileExists($S_Files2Attach[$x]) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 337, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("S_Files2Attach")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_Files2Attach", $S_Files2Attach))
If SetError(@error, @extended, IsDeclared("x")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$x", $x))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 338, False))
				$objEmail.AddAttachment($S_Files2Attach[$x])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 338, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))
If SetError(@error, @extended, IsDeclared("S_Files2Attach")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_Files2Attach", $S_Files2Attach))
If SetError(@error, @extended, IsDeclared("x")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$x", $x))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 339, False))
			Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 339, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 340, False))
				ConsoleWrite('!> File not found to attach: ' & $S_Files2Attach[$x] & @LF)
SetError(@error, @extended, AutoIt_Debugger_SendConsoleWrite('!> File not found to attach: ' & $S_Files2Attach[$x] & @LF))
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 340, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("S_Files2Attach")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_Files2Attach", $S_Files2Attach))
If SetError(@error, @extended, IsDeclared("x")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$x", $x))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 341, False))
				SetError(1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 341, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 342, False))
				Return 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 342, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 343, False))
			EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 343, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 344, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 344, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 345, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 345, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 346, False))
	$objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 346, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 347, False))
	$objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = $s_SmtpServer
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 347, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))
If SetError(@error, @extended, IsDeclared("s_SmtpServer")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_SmtpServer", $s_SmtpServer))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 348, False))
	If Number($IPPort) = 0 Then $IPPort = 25
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 348, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("IPPort")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IPPort", $IPPort))
If SetError(@error, @extended, IsDeclared("IPPort")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IPPort", $IPPort))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 349, False))
	$objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = $IPPort
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 349, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))
If SetError(@error, @extended, IsDeclared("IPPort")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$IPPort", $IPPort))
	;Authenticated SMTP

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 351, False))
	If $s_Username <> "" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 351, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Username")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Username", $s_Username))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 352, False))
		$objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 352, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 353, False))
		$objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusername") = $s_Username
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 353, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))
If SetError(@error, @extended, IsDeclared("s_Username")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Username", $s_Username))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 354, False))
		$objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendpassword") = $s_Password
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 354, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))
If SetError(@error, @extended, IsDeclared("s_Password")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Password", $s_Password))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 355, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 355, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 356, False))
	If $ssl Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 356, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ssl")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ssl", $ssl))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 357, False))
		$objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = True
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 357, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 358, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 358, False, @error, @extended))
	;Update settings

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 360, False))
	$objEmail.Configuration.Fields.Update
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 360, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))
	; Set Email Importance

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 362, False))
	Switch $s_Importance
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 362, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Importance")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Importance", $s_Importance))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 363, False))
		Case "High"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 363, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 364, False))
			$objEmail.Fields.Item("urn:schemas:mailheader:Importance") = "High"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 364, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 365, False))
		Case "Normal"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 365, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 366, False))
			$objEmail.Fields.Item("urn:schemas:mailheader:Importance") = "Normal"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 366, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 367, False))
		Case "Low"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 367, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 368, False))
			$objEmail.Fields.Item("urn:schemas:mailheader:Importance") = "Low"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 368, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 369, False))
	EndSwitch
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 369, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 370, False))
	$objEmail.Fields.Update
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 370, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))
	; Sent the Message

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 372, False))
	$objEmail.Send
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 372, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 373, False))
	If @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 373, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 374, False))
		SetError(2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 374, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 375, False))
		Return $oMyRet[1]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 375, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oMyRet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyRet", $oMyRet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 376, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 376, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 377, False))
	$objEmail = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 377, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objEmail")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objEmail", $objEmail))
EndFunc   ;==>_INetSmtpMailCom
;
;
; Com Error Handler

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 382, False))
Func MyErrFunc()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 382, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 383, False))
	$HexNumber = Hex($oMyError.number, 8)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 383, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("HexNumber")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$HexNumber", $HexNumber))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 384, False))
	$oMyRet[0] = $HexNumber
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 384, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oMyRet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyRet", $oMyRet))
If SetError(@error, @extended, IsDeclared("HexNumber")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$HexNumber", $HexNumber))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 385, False))
	$oMyRet[1] = StringStripWS($oMyError.description, 3)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 385, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oMyRet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyRet", $oMyRet))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 386, False))
	ConsoleWrite("### COM Error !  Number: " & $HexNumber & "   ScriptLine: " & $oMyError.scriptline & "   Description:" & $oMyRet[1] & @LF)
SetError(@error, @extended, AutoIt_Debugger_SendConsoleWrite("### COM Error !  Number: " & $HexNumber & "   ScriptLine: " & $oMyError.scriptline & "   Description:" & $oMyRet[1] & @LF))
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 386, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("HexNumber")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$HexNumber", $HexNumber))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("oMyRet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyRet", $oMyRet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 387, False))
	SetError(1) ; something to check for when this function returns
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 387, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 388, False))
	Return
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\123.au3", "123.au3", 388, False, @error, @extended))
EndFunc   ;==>MyErrFunc

Func AutoIt_Debugger_OnAutoItExit()
   AutoIt_Debugger_WaitForExit()
EndFunc

Func CheckForVariableChange($VariableName, $AutoItDebugger_ArrayIndexString,  $VariableValue)
   If $VariableName = "$hGUI" Then
      AutoIt_Debugger_GetVariableFromEvent("$hGUI", $hGUI, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$g_btn1" Then
      AutoIt_Debugger_GetVariableFromEvent("$g_btn1", $g_btn1, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$g_btn2" Then
      AutoIt_Debugger_GetVariableFromEvent("$g_btn2", $g_btn2, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$g_bet" Then
      AutoIt_Debugger_GetVariableFromEvent("$g_bet", $g_bet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$g_wallet" Then
      AutoIt_Debugger_GetVariableFromEvent("$g_wallet", $g_wallet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$int_cur_summ_wallet" Then
      AutoIt_Debugger_GetVariableFromEvent("$int_cur_summ_wallet", $int_cur_summ_wallet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$info" Then
      AutoIt_Debugger_GetVariableFromEvent("$info", $info, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$Motherboard" Then
      AutoIt_Debugger_GetVariableFromEvent("$Motherboard", $Motherboard, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$Processors" Then
      AutoIt_Debugger_GetVariableFromEvent("$Processors", $Processors, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$SystemProduct" Then
      AutoIt_Debugger_GetVariableFromEvent("$SystemProduct", $SystemProduct, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$inp_btn1" Then
      AutoIt_Debugger_GetVariableFromEvent("$inp_btn1", $inp_btn1, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$inp_btn2" Then
      AutoIt_Debugger_GetVariableFromEvent("$inp_btn2", $inp_btn2, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$inp_bet" Then
      AutoIt_Debugger_GetVariableFromEvent("$inp_bet", $inp_bet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$inp_wallet" Then
      AutoIt_Debugger_GetVariableFromEvent("$inp_wallet", $inp_wallet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$pos_btn1" Then
      AutoIt_Debugger_GetVariableFromEvent("$pos_btn1", $pos_btn1, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$pos_btn2" Then
      AutoIt_Debugger_GetVariableFromEvent("$pos_btn2", $pos_btn2, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$pos_bet" Then
      AutoIt_Debugger_GetVariableFromEvent("$pos_bet", $pos_bet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$pos_wallet" Then
      AutoIt_Debugger_GetVariableFromEvent("$pos_wallet", $pos_wallet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$currency" Then
      AutoIt_Debugger_GetVariableFromEvent("$currency", $currency, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$launch" Then
      AutoIt_Debugger_GetVariableFromEvent("$launch", $launch, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$go" Then
      AutoIt_Debugger_GetVariableFromEvent("$go", $go, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$idClose2" Then
      AutoIt_Debugger_GetVariableFromEvent("$idClose2", $idClose2, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$g_str_f_bet" Then
      AutoIt_Debugger_GetVariableFromEvent("$g_str_f_bet", $g_str_f_bet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$r1" Then
      AutoIt_Debugger_GetVariableFromEvent("$r1", $r1, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$r2" Then
      AutoIt_Debugger_GetVariableFromEvent("$r2", $r2, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$IE" Then
      AutoIt_Debugger_GetVariableFromEvent("$IE", $IE, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$iPID" Then
      AutoIt_Debugger_GetVariableFromEvent("$iPID", $iPID, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_SmtpServer" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_SmtpServer", $s_SmtpServer, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_FromName" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_FromName", $s_FromName, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_FromAddress" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_FromAddress", $s_FromAddress, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ToAddress" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ToAddress", $s_ToAddress, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Subject" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Subject", $s_Subject, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Body" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Body", $s_Body, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_AttachFiles" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_AttachFiles", $s_AttachFiles, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_CcAddress" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_CcAddress", $s_CcAddress, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_BccAddress" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_BccAddress", $s_BccAddress, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Importance" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Importance", $s_Importance, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Username" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Username", $s_Username, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Password" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Password", $s_Password, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$IPPort" Then
      AutoIt_Debugger_GetVariableFromEvent("$IPPort", $IPPort, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$ssl" Then
      AutoIt_Debugger_GetVariableFromEvent("$ssl", $ssl, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$str_first_bet" Then
      AutoIt_Debugger_GetVariableFromEvent("$str_first_bet", $str_first_bet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$fd" Then
      AutoIt_Debugger_GetVariableFromEvent("$fd", $fd, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$state" Then
      AutoIt_Debugger_GetVariableFromEvent("$state", $state, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$GUI_CHECKED" Then
      AutoIt_Debugger_GetVariableFromEvent("$GUI_CHECKED", $GUI_CHECKED, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$btn" Then
      AutoIt_Debugger_GetVariableFromEvent("$btn", $btn, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$ex_wallet" Then
      AutoIt_Debugger_GetVariableFromEvent("$ex_wallet", $ex_wallet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$fl_first" Then
      AutoIt_Debugger_GetVariableFromEvent("$fl_first", $fl_first, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_wallet" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_wallet", $s_wallet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$int_summ_bet" Then
      AutoIt_Debugger_GetVariableFromEvent("$int_summ_bet", $int_summ_bet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$int_prev_summ_wallet" Then
      AutoIt_Debugger_GetVariableFromEvent("$int_prev_summ_wallet", $int_prev_summ_wallet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$str_cur_summ_bet" Then
      AutoIt_Debugger_GetVariableFromEvent("$str_cur_summ_bet", $str_cur_summ_bet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$int_first_bet" Then
      AutoIt_Debugger_GetVariableFromEvent("$int_first_bet", $int_first_bet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$prev_press" Then
      AutoIt_Debugger_GetVariableFromEvent("$prev_press", $prev_press, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$breaks" Then
      AutoIt_Debugger_GetVariableFromEvent("$breaks", $breaks, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$cnt_bet" Then
      AutoIt_Debugger_GetVariableFromEvent("$cnt_bet", $cnt_bet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i" Then
      AutoIt_Debugger_GetVariableFromEvent("$i", $i, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$str_cur_sum_bet" Then
      AutoIt_Debugger_GetVariableFromEvent("$str_cur_sum_bet", $str_cur_sum_bet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$oMyRet" Then
      AutoIt_Debugger_GetVariableFromEvent("$oMyRet", $oMyRet, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$oMyError" Then
      AutoIt_Debugger_GetVariableFromEvent("$oMyError", $oMyError, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$rc" Then
      AutoIt_Debugger_GetVariableFromEvent("$rc", $rc, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$as_Body" Then
      AutoIt_Debugger_GetVariableFromEvent("$as_Body", $as_Body, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$objEmail" Then
      AutoIt_Debugger_GetVariableFromEvent("$objEmail", $objEmail, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_Error" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_Error", $i_Error, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_Error_desciption" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_Error_desciption", $i_Error_desciption, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$S_Files2Attach" Then
      AutoIt_Debugger_GetVariableFromEvent("$S_Files2Attach", $S_Files2Attach, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$x" Then
      AutoIt_Debugger_GetVariableFromEvent("$x", $x, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$HexNumber" Then
      AutoIt_Debugger_GetVariableFromEvent("$HexNumber", $HexNumber, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
EndFunc
#cs ----------------------------------------------------------------------------

	AutoIt Version: 3.2.1.11 (beta)
	Author:         myName

	Script Function:
	The command code for the AutoIt Debugger (this was the Include file)

#ce ----------------------------------------------------------------------------

;Uncomment the following to check that all variables are defined
;AutoItSetOption("MustDeclareVars", 1)

Func AutoIt_Debugger_CreateMessageWindow()
	;#Include <winapi.au3>
	;#include <GUIConstants.au3>
	;#include <WindowsConstants.au3>
	;#include-once

	#region ### START Koda GUI section ### Form=_AutoIt Debugger Include.kxf
	$AutoItDebuggerCommandWindow = GUICreate("AutoIt Debugger Command Window", 621, 328, 193, 126)
	$AutoItDebuggerCommandWindowListbox = GUICtrlCreateList("", 8, 8, 609, 305)
	#endregion ### END Koda GUI section ###
	;GUISetState(@SW_SHOW)

	; Register Windows Messages
	GUIRegisterMsg(0x004A, "_GUIRegisterMsgProc") ;Global Const $WM_COPYDATA = 0x004A

	;Dim $AutoItDebugger_ClosedByUser
	;Dim $AutoItDebugger_LastError
	;Dim $AutoItDebugger_LastExtended
EndFunc   ;==>AutoIt_Debugger_CreateMessageWindow


Func AutoItDebuggerEvent_ChangeVariable($VariableName, $VariableValue)
	;MsgBox(0, "_AutoIt Debugger Include", "Entered 'AutoItDebuggerEvent_ChangeVariable'")

	Dim $AutoItDebugger_ArrayIndexString = ""
	Dim $StrippedVariableName = $VariableName

	;Convert array variables from $asMyArray[1] format to a
	Local $iOpenSquareBracketPos
	$iOpenSquareBracketPos = StringInStr($VariableName, "[")
	If $iOpenSquareBracketPos <> 0 Then
		$StrippedVariableName = StringLeft($VariableName, $iOpenSquareBracketPos - 1)
		;Strip the variable name and open bracket to leave '1][1]' etc.
		$AutoItDebugger_ArrayIndexString = StringTrimLeft($VariableName, $iOpenSquareBracketPos)
		;Strip the close bracket to leave '1][1' etc.
		$AutoItDebugger_ArrayIndexString = StringTrimRight($AutoItDebugger_ArrayIndexString, 1)
		;Remove any ][ from the string and replace with | to make 1][1 into 1|1
		$AutoItDebugger_ArrayIndexString = StringReplace($AutoItDebugger_ArrayIndexString, "][", "|")
		;MsgBox(0, "_AutoIt Debugger Include", $AutoItDebugger_ArrayIndexString)
	EndIf

	;Check if the variable is actually a variable
	If IsDeclared(StringTrimLeft($VariableName, 1)) Then
		CheckForVariableChange($StrippedVariableName, $AutoItDebugger_ArrayIndexString, $VariableValue)
	Else
		;MsgBox features: Title=Yes, Text=Yes, Buttons=OK, Icon=Warning
		MsgBox(48, "_AutoIt Debugger Include", "AutoIt Debugger GUI sent attempted to change the value of an undeclared variable (" & $StrippedVariableName & ")")
	EndIf
EndFunc   ;==>AutoItDebuggerEvent_ChangeVariable


Func AutoIt_Debugger_NextLine($Filepath, $Filename, $LineNumber, $SkipLine)
	Local $sChangedVariableName

	;Default to single step
	$AutoItDebugger_Paused = 1

	;Send new line status to the Debug GUI
	_AU3COM_SendData_NewLine($Filepath & "|" & $Filename & "|" & $LineNumber & "|" & $SkipLine)

	;Wait for the GUI to come off pause
	While $AutoItDebugger_Paused
		;Quit if necessary
		If $AutoItDebugger_Quit Then
			Exit
		EndIf

		;Wait
		Sleep(50)
	WEnd
EndFunc   ;==>AutoIt_Debugger_NextLine


Func AutoIt_Debugger_FinishedLine($Filepath, $Filename, $LineNumber, $SkipLine, $NextLine_Error, $NextLine_Extended)

	;If Not $SkipLine Then
	;Send new line status to the Debug GUI
	_AU3COM_SendData_FinishedLine($Filepath & "|" & $Filename & "|" & $LineNumber & "|" & $SkipLine)

	;Send the @error and @extended data on each new line
	_AU3COM_SendData_SendVariable("@error" & "|" & $NextLine_Error)
	_AU3COM_SendData_SendVariable("@extended" & "|" & $NextLine_Extended)
	;EndIf
EndFunc   ;==>AutoIt_Debugger_FinishedLine


Func AutoIt_Debugger_WaitForExit()
	;Send script finished message
	_AU3COM_SendData_ScriptFinished("ScriptFinishing")

	#region --- CodeWizard generated code Start ---
	;MsgBox features: Title=No, Text=Yes, Buttons=OK, Icon=Question
	MsgBox(64, "AutoIt Debugger", "Script Finished. Click OK to return to development mode.")
	#endregion --- CodeWizard generated code Start ---

	_AU3COM_SendData_ScriptFinished("ScriptFinished")
EndFunc   ;==>AutoIt_Debugger_WaitForExit


Func AutoIt_Debugger_LoadFile($ORiginalScriptFilePath, $ORiginalScriptFileName)
	If $AutoItDebuggerCommandWindowName = "" Then
		;Take the first script name as the command window name
		$AutoItDebuggerCommandWindowName = $ORiginalScriptFilePath

		;Change this windows name
		WinSetTitle("AutoIt Debugger Command Window", "", $AutoItDebuggerCommandWindowName & " AutoIt Debugger Command Window")
	EndIf

	;Default to single step
	$AutoItDebugger_Paused = 1

	_AU3COM_SendData_LoadFile($ORiginalScriptFilePath & "|" & $ORiginalScriptFileName)

	;Wait for the GUI to come off pause
	While $AutoItDebugger_Paused
		;Quit if necessary
		If $AutoItDebugger_Quit Then
			Exit
		EndIf

		;Wait
		Sleep(50)
	WEnd
EndFunc   ;==>AutoIt_Debugger_LoadFile


Func AutoIt_Debugger_DebugFile($DebugScriptFilePath)
	;Default to single step
	$AutoItDebugger_Paused = 1

	_AU3COM_SendData_DebugFile($DebugScriptFilePath)

	;Wait for the GUI to come off pause
	While $AutoItDebugger_Paused
		;Quit if necessary
		If $AutoItDebugger_Quit Then
			Exit
		EndIf

		;Wait
		Sleep(50)
	WEnd
EndFunc   ;==>AutoIt_Debugger_DebugFile


Func AutoIt_Debugger_SendVariable($VariableName, $VariableValue)
	Local $iNumberOfDims
	Local $iDimXIndex
	Local $iDimYIndex
	Local $iDimZIndex

	;Determine if this is a array variable
	If IsArray($VariableValue) Then
		;Find the number of dimensions
		$iNumberOfDims = UBound($VariableValue, 0)
		Select
			Case $iNumberOfDims = 1
				;Send each array index seperatly
				For $iDimXIndex = 0 To UBound($VariableValue, 1) - 1
					;$oDebug.SendVariable ($VariableName & "[" & $iDimXIndex & "]", AutoIt_Debugger_ReturnVariableValue($VariableName, $VariableValue[$iDimXIndex]))
					_AU3COM_SendData_SendVariable($VariableName & "[" & $iDimXIndex & "]" & "|" & AutoIt_Debugger_ReturnVariableValue($VariableName, $VariableValue[$iDimXIndex]))
				Next

			Case $iNumberOfDims = 2
				;Repeat for each X dimension
				For $iDimXIndex = 0 To UBound($VariableValue, 1) - 1
					;Repeat for each Y dimension
					For $iDimYIndex = 0 To UBound($VariableValue, 2) - 1
						;$oDebug.SendVariable ($VariableName & "[" & $iDimXIndex & "][" & $iDimYIndex & "]", AutoIt_Debugger_ReturnVariableValue($VariableName, $VariableValue[$iDimXIndex][$iDimYIndex]))
						_AU3COM_SendData_SendVariable($VariableName & "[" & $iDimXIndex & "][" & $iDimYIndex & "]" & "|" & AutoIt_Debugger_ReturnVariableValue($VariableName, $VariableValue[$iDimXIndex][$iDimYIndex]))
					Next
				Next

			Case $iNumberOfDims = 3
				;Repeat for each X dimension
				For $iDimXIndex = 0 To UBound($VariableValue, 1) - 1
					;Repeat for each Y dimension
					For $iDimYIndex = 0 To UBound($VariableValue, 2) - 1
						;Repeat for each Z dimension
						For $iDimZIndex = 0 To UBound($VariableValue, 3) - 1
							;$oDebug.SendVariable ($VariableName & "[" & $iDimXIndex & "][" & $iDimYIndex & "][" & $iDimZIndex & "]", AutoIt_Debugger_ReturnVariableValue($VariableName, $VariableValue[$iDimXIndex][$iDimYIndex][$iDimZIndex]))
							_AU3COM_SendData_SendVariable($VariableName & "[" & $iDimXIndex & "][" & $iDimYIndex & "][" & $iDimZIndex & "]" & "|" & AutoIt_Debugger_ReturnVariableValue($VariableName, $VariableValue[$iDimXIndex][$iDimYIndex][$iDimZIndex]))
						Next
					Next
				Next

			Case Else
				;$oDebug.SendVariable ($VariableName, "<Array has too many dims>")
				_AU3COM_SendData_SendVariable($VariableName & "|" & "<Array has too many dims>")
		EndSelect
	Else
		;$oDebug.SendVariable ($VariableName, AutoIt_Debugger_ReturnVariableValue($VariableValue))
		_AU3COM_SendData_SendVariable($VariableName & "|" & AutoIt_Debugger_ReturnVariableValue($VariableName, $VariableValue))
	EndIf
EndFunc   ;==>AutoIt_Debugger_SendVariable


Func AutoIt_Debugger_SendConsoleWrite($OutputString)
	_AU3COM_SendData_ConsoleWrite($OutputString)
EndFunc   ;==>AutoIt_Debugger_SendConsoleWrite


Func AutoIt_Debugger_ReturnVariableValue($AutoIt_Debugger_VariableName, $AutoIt_Debugger_VariableValue)
	Local $AutoIt_Debugger_sRes = ""
	;$AutoIt_Debugger_VariableValue = Execute($AutoIt_Debugger_VariableName)
	If IsBool($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= $AutoIt_Debugger_VariableValue
	If IsFloat($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= $AutoIt_Debugger_VariableValue
	If IsInt($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= $AutoIt_Debugger_VariableValue
	;If IsNumber($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= $AutoIt_Debugger_VariableValue
	If IsString($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= StringLeft($AutoIt_Debugger_VariableValue, 256)
	If IsArray($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= $AutoIt_Debugger_VariableValue
	If IsObj($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= "<Object>" & $AutoIt_Debugger_VariableValue
	If IsBinary($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= "<Binary>" & $AutoIt_Debugger_VariableValue
	If IsHWnd($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= "<HWnd>" & $AutoIt_Debugger_VariableValue
	If IsKeyword($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= "<Keyword>" & $AutoIt_Debugger_VariableValue
	If IsDllStruct($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= "<DllStructure>" & $AutoIt_Debugger_VariableValue

	;If StringLeft($AutoIt_Debugger_VariableName, 1) <> "$" Then $AutoIt_Debugger_VariableName = "$" & $AutoIt_Debugger_VariableName
	;If Not IsDeclared(StringTrimLeft($AutoIt_Debugger_VariableName, 1)) Then $AutoIt_Debugger_sRes &= "<Undeclared>"

	Return $AutoIt_Debugger_sRes
EndFunc   ;==>AutoIt_Debugger_ReturnVariableValue


Func AutoIt_Debugger_GetVariableFromEvent($VariableName, ByRef $Variable, $AutoItDebugger_ArrayIndexString, $VariableValue)
	;MsgBox(0, "_AutoIt Debugger Include", "Entered 'AutoIt_Debugger_GetVariableFromEvent'")

	Local $iNumberOfDims
	Local $iDimXIndex
	Local $iDimYIndex
	Local $iDimZIndex
	Local $ArrayIndexArray

	If IsBool($Variable) Or IsFloat($Variable) Or IsInt($Variable) Or IsNumber($Variable) Or IsString($Variable) Then
		$Variable = $VariableValue
		;MsgBox(0, "_AutoIt Debugger Include", "New value of '" & $VariableName & " is '" & $Variable & "'")
	ElseIf IsArray($Variable) Then
		;Extract the array section, split by |s
		$ArrayIndexArray = StringSplit($AutoItDebugger_ArrayIndexString, "|")

		;Find the number of dimensions
		$iNumberOfDims = $ArrayIndexArray[0]
		Select
			Case $iNumberOfDims = 1
				;Set the value based on the array index
				$Variable[$ArrayIndexArray[1]] = $VariableValue

			Case $iNumberOfDims = 2
				;Set the value based on the array index
				$Variable[$ArrayIndexArray[1]][$ArrayIndexArray[2]] = $VariableValue

			Case $iNumberOfDims = 3
				;Set the value based on the array index
				$Variable[$ArrayIndexArray[1]][$ArrayIndexArray[2]][$ArrayIndexArray[3]] = $VariableValue

			Case Else
				;Do nothing
		EndSelect

	ElseIf IsObj($Variable) Then
		;Do nothing
	ElseIf IsBinary($Variable) Then
		;Do nothing
	ElseIf IsHWnd($Variable) Then
		;Do nothing
	ElseIf IsKeyword($Variable) Then
		;Do nothing
	EndIf
EndFunc   ;==>AutoIt_Debugger_GetVariableFromEvent


; Message Handler
Func _GUIRegisterMsgProc($hWnd, $MsgID, $WParam, $LParam)
	If $MsgID = 0x004A Then ;Global Const $WM_COPYDATA = 0x004A

		; $LParam = Poiter to a COPYDATA Struct
		Local $STRUCTDEF_AU3MESSAGE = "char var1[256]"
		Local $STRUCTDEF_AU3MESSAGELEN = "dword var1"
		Local $StructDef_COPYDATA = "dword var1;dword var2;ptr var3"

		;Set a reference to the COPYDATA structure
		Local $vs_cds = DllStructCreate($StructDef_COPYDATA, $LParam)
		;Extract the command (the 1st element)
		Local $msgType = DllStructGetData($vs_cds, 1)

		;MsgBox(0, "AutoIt Debugger", "Command Received: " & $msgType)

		Select
			Case $msgType = 0

				;Log message
				;GUICtrlSetData($AutoItDebuggerCommandWindowListbox,_Now() & ": New variable")

				;Get the message length from the 2nd element
				Local $msglen1 = DllStructGetData($vs_cds, 2)
				Local $STRUCTDEF_AU3MESSAGE1 = "char var1[" & $msglen1 & "]"
				Local $vs_msg1 = DllStructCreate($STRUCTDEF_AU3MESSAGE1, DllStructGetData($vs_cds, 3))

				;Display what we have recived
				Local $MSGRECVD = DllStructGetData($vs_msg1, 1)
				;MsgBox(0, "Recver - Test String", $MSGRECVD)

				Local $iSpacePos
				$iSpacePos = StringInStr($MSGRECVD, " ")
				Dim $sChangedVariableName = StringLeft($MSGRECVD, $iSpacePos - 1)
				Dim $sChangedVariableValue = StringRight($MSGRECVD, StringLen($MSGRECVD) - $iSpacePos)

				;MsgBox(0, "Variable Name", "'" & $sChangedVariableName & "'")
				;MsgBox(0, "Variable Value", "'" & $sChangedVariableValue & "'")

				;Run change variable code
				AutoItDebuggerEvent_ChangeVariable($sChangedVariableName, $sChangedVariableValue)

			Case $msgType = 1
				$AutoItDebugger_Paused = 0

				;Log message
				;GUICtrlSetData($AutoItDebuggerCommandWindowListbox,_Now() & ": Removed Pause")

			Case $msgType = 2
				$AutoItDebugger_Quit = 1

				;Log message
				;GUICtrlSetData($AutoItDebuggerCommandWindowListbox, _Now() & ": Received Quit")

		EndSelect

	ElseIf $MsgID = 0x0010 Then ;=== We Recived a WM_CLOSE Message ;Global Const $WM_CLOSE = 0x0010
		Exit
	EndIf
EndFunc   ;==>_GUIRegisterMsgProc


Func _AU3COM_SendData($MessageType, $InfoToSend)
	Local $StructDef_COPYDATA = "dword var1;dword var2;ptr var3"
	Local $CDString = DllStructCreate("char var1[256];char var2[256]") ;the array to hold the string we are sending

	DllStructSetData($CDString, 1, $InfoToSend)
	Local $pCDString = DllStructGetPtr($CDString) ;the pointer to the string
	Local $vs_cds = DllStructCreate($StructDef_COPYDATA);create the message struct
	DllStructSetData($vs_cds, "var1", $MessageType)
	DllStructSetData($vs_cds, "var2", String(StringLen($InfoToSend)));tell the receiver the length of the string
	DllStructSetData($vs_cds, "var3", $pCDString) ;the pointer to the string
	Local $pStruct = DllStructGetPtr($vs_cds)

	AutoIt_Debugger_SendMessage(WinGetHandle("AutoIt Debugger - " & $AutoItDebuggerCommandWindowName), 0x004A, 0, $pStruct) ;Global Const $WM_COPYDATA = 0x004A

	$vs_cds = 0 ;free the struct
	$CDString = 0 ;free the struct

	Return 1
EndFunc   ;==>_AU3COM_SendData


Func _AU3COM_SendData_NewLine($InfoToSend)
	_AU3COM_SendData(1, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_NewLine


Func _AU3COM_SendData_FinishedLine($InfoToSend)
	_AU3COM_SendData(2, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_FinishedLine


Func _AU3COM_SendData_SendVariable($InfoToSend)
	_AU3COM_SendData(3, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_SendVariable


Func _AU3COM_SendData_LoadFile($InfoToSend)
	_AU3COM_SendData(4, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_LoadFile


Func _AU3COM_SendData_ScriptFinished($InfoToSend)
	_AU3COM_SendData(5, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_ScriptFinished


Func _AU3COM_SendData_DebugFile($InfoToSend)
	_AU3COM_SendData(6, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_DebugFile

Func _AU3COM_SendData_ConsoleWrite($InfoToSend)
	_AU3COM_SendData(7, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_ConsoleWrite

; #FUNCTION# ====================================================================================================================
; Name...........: _SendMessage
; Description ...: Wrapper for commonly used Dll Call
; Syntax.........: _SendMessage($hWnd, $iMsg[, $wParam = 0[, $lParam = 0[, $iReturn = 0[, $wParamType = "wparam"[, $lParamType = "lparam"[, $sReturnType = "lresult"]]]]]])
; Parameters ....: $hWnd       - Window/control handle
;                  $iMsg       - Message to send to control (number)
;                  $wParam     - Specifies additional message-specific information
;                  $lParam     - Specifies additional message-specific information
;                  $iReturn    - What to return:
;                  |0 - Return value from dll call
;                  |1 - $ihWnd
;                  |2 - $iMsg
;                  |3 - $wParam
;                  |4 - $lParam
;                  |<0 or > 4 - array same as dllcall
;                  $wParamType - See DllCall in Related
;                  $lParamType - See DllCall in Related
;                  $sReturnType - See DllCall in Related
; Return values .: Success      - User selected value from the DllCall() result
;                  Failure      - @error is set
; Author ........: Valik
; Modified.......: Gary Frost (GaryFrost) aka gafrost
; Remarks .......:
; Related .......: _SendMessage, DllCall
; Link ..........:
; Example .......: Yes
; ===============================================================================================================================
Func AutoIt_Debugger_SendMessage($hWnd, $iMsg, $WParam = 0, $LParam = 0, $iReturn = 0, $wParamType = "wparam", $lParamType = "lparam", $sReturnType = "lresult")
	Local $aResult = DllCall("user32.dll", $sReturnType, "SendMessageW", "hwnd", $hWnd, "uint", $iMsg, $wParamType, $WParam, $lParamType, $LParam)
	If @error Then Return SetError(@error, @extended, "")
	If $iReturn >= 0 And $iReturn <= 4 Then Return $aResult[$iReturn]
	Return $aResult
EndFunc   ;==>AutoIt_Debugger_SendMessage

