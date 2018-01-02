AutoIt_Debugger_LoadFile("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3")
AutoIt_Debugger_DebugFile(@ScriptFullPath)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1, False))
#include-once
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2, False))
#region Header
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2, False, @error, @extended))
#comments-start
	Title:			Computer Information Automation UDF Library for AutoIt3
	Filename:		CompInfo.au3
	Description:	A collection of UDF's that assist in gathering and setting information about a computer (Software and Hardware).
	Author:			Jarvis J. Stubblefield (JSThePatriot) http://www.vortexrevolutions.com/
	Version:		00.03.08
	Last Update:	11.09.06
	Requirements:	AutoIt v3.2 +, Developed/Tested on WindowsXP Pro Service Pack 2
	Notes:			Errors associated with incorrect objects will be common user errors. AutoIt beta 3.1.1.63 has added an ObjName()
	function that will be used to trap and report most of these errors.
	
	Special thanks to JdeB (WMI Introduction), SvenP (Scriptomatic), Firestorm (testing, ideas), gafrost (WMI Support),
	piccaso (COM Errors), RagnaroktA (testing, ideas, bug fixes), SmOke_N (testing), and everyone else that has helped in
	the creation of this UDF.
#comments-end

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 18, False))
#endregion Header
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 18, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 20, False))
#region Global Variables and Constants
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 20, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 21, False))
If Not(IsDeclared("$cI_CompName")) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 21, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 22, False))
	Global	$cI_CompName = @ComputerName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 22, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("cI_CompName")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_CompName", $cI_CompName))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 23, False))
EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 23, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 24, False))
Global Const $cI_VersionInfo		= "00.03.08"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 24, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("cI_VersionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_VersionInfo", $cI_VersionInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 25, False))
 Global Const $cI_aName				= 0, 			 $cI_aDesc				= 4
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 25, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("cI_aName")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_aName", $cI_aName))
If SetError(@error, @extended, IsDeclared("cI_aDesc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_aDesc", $cI_aDesc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 27, False))
 Global	$wbemFlagReturnImmediately	= 0x10, $wbemFlagForwardOnly		= 0x20				;DO NOT CHANGE
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 27, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 29, False))
 Global	$ERR_NO_INFO				= "Array contains no information", 		$ERR_NOT_OBJ				= "$colItems isnt an object"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 29, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ERR_NO_INFO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ERR_NO_INFO", $ERR_NO_INFO))
If SetError(@error, @extended, IsDeclared("ERR_NOT_OBJ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ERR_NOT_OBJ", $ERR_NOT_OBJ))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 31, False))
#endregion Global Variables and Constants
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 31, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 33, False))
#region Software Functions
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 33, False, @error, @extended))
;===============================================================================
; Description:      Returns the Boot Configuration information in an array.
; Parameter(s):     $aBootConfigInfo - By Reference - Boot Configuration Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Boot Configuration Information.
;						$aBootConfigInfo[$i][0]  = Name
;						$aBootConfigInfo[$i][1]  = Boot Directory
;						$aBootConfigInfo[$i][2]  = Configuration Path
;						$aBootConfigInfo[$i][3]  = Last Drive
;						$aBootConfigInfo[$i][4]  = Description
;						$aBootConfigInfo[$i][5]  = Scratch Directory
;						$aBootConfigInfo[$i][6]  = Setting ID
;						$aBootConfigInfo[$i][7]  = Temp Directory
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 53, False))
Func _ComputerGetBootConfig(ByRef $aBootConfigInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 53, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBootConfigInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBootConfigInfo", $aBootConfigInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 54, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 54, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 55, False))
	Dim $aBootConfigInfo[1][8], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 55, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBootConfigInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBootConfigInfo", $aBootConfigInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 57, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 57, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 58, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_BootConfiguration", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 58, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 60, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 60, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 61, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 61, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 62, False))
			ReDim $aBootConfigInfo[UBound($aBootConfigInfo) + 1][8]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 62, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBootConfigInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBootConfigInfo", $aBootConfigInfo))
If SetError(@error, @extended, IsDeclared("aBootConfigInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBootConfigInfo", $aBootConfigInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 63, False))
			$aBootConfigInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 63, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBootConfigInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBootConfigInfo", $aBootConfigInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 64, False))
			$aBootConfigInfo[$i][1]  = $objItem.BootDirectory
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 64, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBootConfigInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBootConfigInfo", $aBootConfigInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 65, False))
			$aBootConfigInfo[$i][2]  = $objItem.ConfigurationPath
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 65, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBootConfigInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBootConfigInfo", $aBootConfigInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 66, False))
			$aBootConfigInfo[$i][3]  = $objItem.LastDrive
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 66, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBootConfigInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBootConfigInfo", $aBootConfigInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 67, False))
			$aBootConfigInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 67, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBootConfigInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBootConfigInfo", $aBootConfigInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 68, False))
			$aBootConfigInfo[$i][5]  = $objItem.ScratchDirectory
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 68, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBootConfigInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBootConfigInfo", $aBootConfigInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 69, False))
			$aBootConfigInfo[$i][6]  = $objItem.SettingID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 69, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBootConfigInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBootConfigInfo", $aBootConfigInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 70, False))
			$aBootConfigInfo[$i][7]  = $objItem.TempDirectory
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 70, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBootConfigInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBootConfigInfo", $aBootConfigInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 71, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 71, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 72, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 72, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 73, False))
		$aBootConfigInfo[0][0] = UBound($aBootConfigInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 73, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBootConfigInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBootConfigInfo", $aBootConfigInfo))
If SetError(@error, @extended, IsDeclared("aBootConfigInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBootConfigInfo", $aBootConfigInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 74, False))
		If $aBootConfigInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 74, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBootConfigInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBootConfigInfo", $aBootConfigInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 75, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 75, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 76, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 76, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 77, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 77, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 78, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 78, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 79, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 79, False, @error, @extended))
EndFunc ;_ComputerGetBootConfig

;===============================================================================
; Description:      Returns the DependantService information in an array.
; Parameter(s):     $aDependantServiceInfo - By Reference - DependantService Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of DependantService Information.
;						$aDependantServiceInfo[$i][0]	= Antecedent
;						$aDependantServiceInfo[$i][1]	= Dependent
;						$aDependantServiceInfo[$i][2]	= TypeOfDependency
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information.
;											2 - $colItems isnt an object.
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 96, False))
Func _ComputerGetDependantServices(ByRef $aDependantServiceInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 96, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDependantServiceInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDependantServiceInfo", $aDependantServiceInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 97, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 97, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 98, False))
	Dim $aDependantServiceInfo[1][3], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 98, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDependantServiceInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDependantServiceInfo", $aDependantServiceInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 100, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 100, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 101, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_DependentService", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 101, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 103, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 103, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 104, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 104, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 105, False))
			ReDim $aDependantServiceInfo[UBound($aDependantServiceInfo) + 1][3]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 105, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDependantServiceInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDependantServiceInfo", $aDependantServiceInfo))
If SetError(@error, @extended, IsDeclared("aDependantServiceInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDependantServiceInfo", $aDependantServiceInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 106, False))
			$aDependantServiceInfo[$i][0]	= $objItem.Antecedent
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 106, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDependantServiceInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDependantServiceInfo", $aDependantServiceInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 107, False))
			$aDependantServiceInfo[$i][1]	= $objItem.Dependent
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 107, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDependantServiceInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDependantServiceInfo", $aDependantServiceInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 108, False))
			$aDependantServiceInfo[$i][2]	= $objItem.TypeOfDependency
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 108, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDependantServiceInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDependantServiceInfo", $aDependantServiceInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 109, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 109, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 110, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 110, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 111, False))
		$aDependantServiceInfo[0][0] = UBound($aDependantServiceInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 111, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDependantServiceInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDependantServiceInfo", $aDependantServiceInfo))
If SetError(@error, @extended, IsDeclared("aDependantServiceInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDependantServiceInfo", $aDependantServiceInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 112, False))
		If $aDependantServiceInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 112, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDependantServiceInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDependantServiceInfo", $aDependantServiceInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 113, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 113, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 114, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 114, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 115, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 115, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 116, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 116, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 117, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 117, False, @error, @extended))
EndFunc ;_ComputerGetDependantServices

;===============================================================================
; Description:      Returns the Desktop information in an array.
; Parameter(s):     $aDesktopInfo - By Reference - Desktop Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Desktop Information.
;						$aDesktopInfo[$i][0]	= Name
;						$aDesktopInfo[$i][1]	= BorderWidth
;						$aDesktopInfo[$i][2]	= CoolSwitch
;						$aDesktopInfo[$i][3]	= CursorBlinkRate
;						$aDesktopInfo[$i][4]	= Description
;						$aDesktopInfo[$i][5]	= DragFullWindows
;						$aDesktopInfo[$i][6]	= GridGranularity
;						$aDesktopInfo[$i][7]	= IconSpacing
;						$aDesktopInfo[$i][8]	= IconTitleFaceName
;						$aDesktopInfo[$i][9]	= IconTitleSize
;						$aDesktopInfo[$i][10]	= IconTitleWrap
;						$aDesktopInfo[$i][11]	= Pattern
;						$aDesktopInfo[$i][12]	= ScreenSaverActive
;						$aDesktopInfo[$i][13]	= ScreenSaverExecutable
;						$aDesktopInfo[$i][14]	= ScreenSaverSecure
;						$aDesktopInfo[$i][15]	= ScreenSaverTimeout
;						$aDesktopInfo[$i][16]	= SettingID
;						$aDesktopInfo[$i][17]	= Wallpaper
;						$aDesktopInfo[$i][18]	= WallpaperStretched
;						$aDesktopInfo[$i][19]	= WallpaperTiled
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information.
;											2 - $colItems isnt an object.
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 151, False))
Func _ComputerGetDesktops(ByRef $aDesktopInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 151, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 152, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 152, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 153, False))
	Dim $aDesktopInfo[1][20], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 153, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 155, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 155, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 156, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_Desktop", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 156, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 158, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 158, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 159, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 159, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 160, False))
			ReDim $aDesktopInfo[UBound($aDesktopInfo) + 1][20]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 160, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 161, False))
			$aDesktopInfo[$i][0]	= $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 161, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 162, False))
			$aDesktopInfo[$i][1]	= $objItem.BorderWidth
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 162, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 163, False))
			$aDesktopInfo[$i][2]	= $objItem.CoolSwitch
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 163, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 164, False))
			$aDesktopInfo[$i][3]	= $objItem.CursorBlinkRate
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 164, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 165, False))
			$aDesktopInfo[$i][4]	= $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 165, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 166, False))
			$aDesktopInfo[$i][5]	= $objItem.DragFullWindows
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 166, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 167, False))
			$aDesktopInfo[$i][6]	= $objItem.GridGranularity
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 167, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 168, False))
			$aDesktopInfo[$i][7]	= $objItem.IconSpacing
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 168, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 169, False))
			$aDesktopInfo[$i][8]	= $objItem.IconTitleFaceName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 169, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 170, False))
			$aDesktopInfo[$i][9]	= $objItem.IconTitleSize
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 170, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 171, False))
			$aDesktopInfo[$i][10]	= $objItem.IconTitleWrap
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 171, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 172, False))
			$aDesktopInfo[$i][11]	= $objItem.Pattern
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 172, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 173, False))
			$aDesktopInfo[$i][12]	= $objItem.ScreenSaverActive
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 173, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 174, False))
			$aDesktopInfo[$i][13]	= $objItem.ScreenSaverExecutable
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 174, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 175, False))
			$aDesktopInfo[$i][14]	= $objItem.ScreenSaverSecure
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 175, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 176, False))
			$aDesktopInfo[$i][15]	= $objItem.ScreenSaverTimeout
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 176, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 177, False))
			$aDesktopInfo[$i][16]	= $objItem.SettingID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 177, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 178, False))
			$aDesktopInfo[$i][17]	= $objItem.Wallpaper
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 178, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 179, False))
			$aDesktopInfo[$i][18]	= $objItem.WallpaperStretched
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 179, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 180, False))
			$aDesktopInfo[$i][19]	= $objItem.WallpaperTiled
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 180, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 181, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 181, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 182, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 182, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 183, False))
		$aDesktopInfo[0][0] = UBound($aDesktopInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 183, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 184, False))
		If $aDesktopInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 184, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDesktopInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDesktopInfo", $aDesktopInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 185, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 185, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 186, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 186, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 187, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 187, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 188, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 188, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 189, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 189, False, @error, @extended))
EndFunc ;_ComputerGetDesktops

;===============================================================================
; Description:      Returns the EventLog information in an array.
; Parameter(s):     $aEventLogInfo - By Reference - EventLog Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of EventLog Information.
;						$aEventLogInfo[0][0]   = Number of EventLogs
;						$aEventLogInfo[$i][0]  = Name ($i starts at 1)
;						$aEventLogInfo[$i][1]  = Access Mask
;						$aEventLogInfo[$i][2]  = Archive
;						$aEventLogInfo[$i][3]  = Compressed
;						$aEventLogInfo[$i][4]  = Description
;						$aEventLogInfo[$i][5]  = Compression Method
;						$aEventLogInfo[$i][6]  = Creation Class Name
;						$aEventLogInfo[$i][7]  = Creation Date
;						$aEventLogInfo[$i][8]  = CS Creation Class Name
;						$aEventLogInfo[$i][9]  = CS Name
;						$aEventLogInfo[$i][10] = Drive
;						$aEventLogInfo[$i][11] = Eight Dot Three File Name
;						$aEventLogInfo[$i][12] = Encrypted
;						$aEventLogInfo[$i][13] = Encryption Method
;						$aEventLogInfo[$i][14] = Extension
;						$aEventLogInfo[$i][15] = File Name
;						$aEventLogInfo[$i][16] = File Size
;						$aEventLogInfo[$i][17] = File Type
;						$aEventLogInfo[$i][18] = FS Creation Class Name
;						$aEventLogInfo[$i][19] = FS Name
;						$aEventLogInfo[$i][20] = Hidden
;						$aEventLogInfo[$i][21] = Install Date
;						$aEventLogInfo[$i][22] = In Use Count
;						$aEventLogInfo[$i][23] = Last Accessed
;						$aEventLogInfo[$i][24] = Last Modified
;						$aEventLogInfo[$i][25] = Log file Name
;						$aEventLogInfo[$i][26] = Manufacturer
;						$aEventLogInfo[$i][27] = Max File Size
;						$aEventLogInfo[$i][28] = Number Of Records
;						$aEventLogInfo[$i][29] = Overwrite Out Dated
;						$aEventLogInfo[$i][30] = Overwrite Policy
;						$aEventLogInfo[$i][31] = Path
;						$aEventLogInfo[$i][32] = Readable
;						$aEventLogInfo[$i][33] = Sources
;						$aEventLogInfo[$i][34] = Status
;						$aEventLogInfo[$i][35] = System
;						$aEventLogInfo[$i][36] = Version
;						$aEventLogInfo[$i][37] = Writeable
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 242, False))
Func _ComputerGetEventLogs(ByRef $aEventLogInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 242, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 243, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 243, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 244, False))
	Dim $aEventLogInfo[1][38], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 244, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 246, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 246, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 247, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_NTEventLogFile", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 247, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 249, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 249, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 250, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 250, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 251, False))
			ReDim $aEventLogInfo[UBound($aEventLogInfo) + 1][38]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 251, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 252, False))
			$aEventLogInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 252, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 253, False))
			$aEventLogInfo[$i][1]  = $objItem.AccessMask
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 253, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 254, False))
			$aEventLogInfo[$i][2]  = $objItem.Archive
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 254, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 255, False))
			$aEventLogInfo[$i][3]  = $objItem.Compressed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 255, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 256, False))
			$aEventLogInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 256, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 257, False))
			$aEventLogInfo[$i][5]  = $objItem.CompressionMethod
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 257, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 258, False))
			$aEventLogInfo[$i][6]  = $objItem.CreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 258, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 259, False))
			$aEventLogInfo[$i][7]  = __StringToDate($objItem.CreationDate)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 259, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 260, False))
			$aEventLogInfo[$i][8]  = $objItem.CSCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 260, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 261, False))
			$aEventLogInfo[$i][9]  = $objItem.CSName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 261, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 262, False))
			$aEventLogInfo[$i][10] = $objItem.Drive
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 262, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 263, False))
			$aEventLogInfo[$i][11] = $objItem.EightDotThreeFileName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 263, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 264, False))
			$aEventLogInfo[$i][12] = $objItem.Encrypted
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 264, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 265, False))
			$aEventLogInfo[$i][13] = $objItem.EncryptionMethod
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 265, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 266, False))
			$aEventLogInfo[$i][14] = $objItem.Extension
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 266, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 267, False))
			$aEventLogInfo[$i][15] = $objItem.FileName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 267, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 268, False))
			$aEventLogInfo[$i][16] = $objItem.FileSize
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 268, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 269, False))
			$aEventLogInfo[$i][17] = $objItem.FileType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 269, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 270, False))
			$aEventLogInfo[$i][18] = $objItem.FSCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 270, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 271, False))
			$aEventLogInfo[$i][19] = $objItem.FSName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 271, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 272, False))
			$aEventLogInfo[$i][20] = $objItem.Hidden
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 272, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 273, False))
			$aEventLogInfo[$i][21] = __StringToDate($objItem.InstallDate)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 273, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 274, False))
			$aEventLogInfo[$i][22] = $objItem.InUseCount
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 274, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 275, False))
			$aEventLogInfo[$i][23] = __StringToDate($objItem.LastAccessed)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 275, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 276, False))
			$aEventLogInfo[$i][24] = __StringToDate($objItem.LastModified)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 276, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 277, False))
			$aEventLogInfo[$i][25] = $objItem.LogfileName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 277, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 278, False))
			$aEventLogInfo[$i][26] = $objItem.Manufacturer
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 278, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 279, False))
			$aEventLogInfo[$i][27] = $objItem.MaxFileSize
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 279, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 280, False))
			$aEventLogInfo[$i][28] = $objItem.NumberOfRecords
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 280, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 281, False))
			$aEventLogInfo[$i][29] = $objItem.OverwriteOutDated
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 281, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 282, False))
			$aEventLogInfo[$i][30] = $objItem.OverWritePolicy
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 282, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 283, False))
			$aEventLogInfo[$i][31] = $objItem.Path
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 283, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 284, False))
			$aEventLogInfo[$i][32] = $objItem.Readable
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 284, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 285, False))
			$aEventLogInfo[$i][33] = $objItem.Sources(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 285, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 286, False))
			$aEventLogInfo[$i][34] = $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 286, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 287, False))
			$aEventLogInfo[$i][35] = $objItem.System
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 287, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 288, False))
			$aEventLogInfo[$i][36] = $objItem.Version
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 288, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 289, False))
			$aEventLogInfo[$i][37] = $objItem.Writeable
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 289, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 290, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 290, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 291, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 291, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 292, False))
		$aEventLogInfo[0][0] = UBound($aEventLogInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 292, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 293, False))
		If $aEventLogInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 293, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aEventLogInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aEventLogInfo", $aEventLogInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 294, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 294, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 295, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 295, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 296, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 296, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 297, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 297, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 298, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 298, False, @error, @extended))
EndFunc ;_ComputerGetEventLogs

;===============================================================================
; Description:      Returns the Extension information in an array.
; Parameter(s):     $aExtensionInfo - By Reference - Extension Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Extension Information.
;						$aExtensionInfo[0][0]   = Number of Extensions
;						$aExtensionInfo[$i][0]  = Name ($i starts at 1)
;						$aExtensionInfo[$i][1]  = Action ID
;						$aExtensionInfo[$i][2]  = Argument
;						$aExtensionInfo[$i][3]  = Command
;						$aExtensionInfo[$i][4]  = Description
;						$aExtensionInfo[$i][5]  = Direction
;						$aExtensionInfo[$i][6]  = Extension
;						$aExtensionInfo[$i][7]  = MIME
;						$aExtensionInfo[$i][8]  = Prog ID
;						$aExtensionInfo[$i][9]  = Shell New
;						$aExtensionInfo[$i][10] = Shell New Value
;						$aExtensionInfo[$i][11] = Software Element ID
;						$aExtensionInfo[$i][12] = Software Element State
;						$aExtensionInfo[$i][13] = Target Operating System
;						$aExtensionInfo[$i][14] = Verb
;						$aExtensionInfo[$i][15] = Version
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 329, False))
Func _ComputerGetExtensions(ByRef $aExtensionInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 329, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 330, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 330, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 331, False))
	Dim $aExtensionInfo[1][16], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 331, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 333, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 333, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 334, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_ExtensionInfoAction", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 334, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 336, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 336, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 337, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 337, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 338, False))
			ReDim $aExtensionInfo[UBound($aExtensionInfo) + 1][16]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 338, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 339, False))
			$aExtensionInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 339, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 340, False))
			$aExtensionInfo[$i][1]  = $objItem.ActionID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 340, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 341, False))
			$aExtensionInfo[$i][2]  = $objItem.Argument
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 341, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 342, False))
			$aExtensionInfo[$i][3]  = $objItem.Command
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 342, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 343, False))
			$aExtensionInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 343, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 344, False))
			$aExtensionInfo[$i][5]  = $objItem.Direction
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 344, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 345, False))
			$aExtensionInfo[$i][6]  = $objItem.Extension
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 345, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 346, False))
			$aExtensionInfo[$i][7]  = $objItem.MIME
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 346, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 347, False))
			$aExtensionInfo[$i][8]  = $objItem.ProgID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 347, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 348, False))
			$aExtensionInfo[$i][9]  = $objItem.ShellNew
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 348, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 349, False))
			$aExtensionInfo[$i][10] = $objItem.ShellNewValue
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 349, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 350, False))
			$aExtensionInfo[$i][11] = $objItem.SoftwareElementID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 350, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 351, False))
			$aExtensionInfo[$i][12] = $objItem.SoftwareElementState
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 351, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 352, False))
			$aExtensionInfo[$i][13] = $objItem.TargetOperatingSystem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 352, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 353, False))
			$aExtensionInfo[$i][14] = $objItem.Verb
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 353, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 354, False))
			$aExtensionInfo[$i][15] = $objItem.Version
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 354, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 355, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 355, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 356, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 356, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 357, False))
		$aExtensionInfo[0][0] = UBound($aExtensionInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 357, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 358, False))
		If $aExtensionInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 358, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExtensionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExtensionInfo", $aExtensionInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 359, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 359, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 360, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 360, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 361, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 361, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 362, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 362, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 363, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 363, False, @error, @extended))
EndFunc ;_ComputerGetExtensions

;===============================================================================
; Description:      Returns the User Groups and information in an array.
; Parameter(s):     $aGroupInfo - By Reference - Group Name and Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Group Information.
;						$aGroupInfo[0][0]  = Number of Groups
;						$aGroupInfo[$i][0] = Name ($i starts at 1)
;						$aGroupInfo[$i][1] = Doamin
;						$aGroupInfo[$i][2] = Status
;						$aGroupInfo[$i][3] = Local Account
;						$aGroupInfo[$i][4] = Description
;						$aGroupInfo[$i][5] = SID
;						$aGroupInfo[$i][6] = SID Type
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 385, False))
Func _ComputerGetGroups(ByRef $aGroupInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 385, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aGroupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aGroupInfo", $aGroupInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 386, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 386, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 387, False))
	Dim $aGroupInfo[1][7], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 387, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aGroupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aGroupInfo", $aGroupInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 389, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 389, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 390, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_Group", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 390, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 392, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 392, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 393, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 393, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 394, False))
			ReDim $aGroupInfo[UBound($aGroupInfo) + 1][7]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 394, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aGroupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aGroupInfo", $aGroupInfo))
If SetError(@error, @extended, IsDeclared("aGroupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aGroupInfo", $aGroupInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 395, False))
			$aGroupInfo[$i][0] = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 395, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aGroupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aGroupInfo", $aGroupInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 396, False))
			$aGroupInfo[$i][1] = $objItem.Domain
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 396, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aGroupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aGroupInfo", $aGroupInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 397, False))
			$aGroupInfo[$i][2] = $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 397, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aGroupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aGroupInfo", $aGroupInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 398, False))
			$aGroupInfo[$i][3] = $objItem.LocalAccount
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 398, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aGroupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aGroupInfo", $aGroupInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 399, False))
			$aGroupInfo[$i][4] = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 399, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aGroupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aGroupInfo", $aGroupInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 400, False))
			$aGroupInfo[$i][5] = $objItem.SID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 400, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aGroupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aGroupInfo", $aGroupInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 401, False))
			$aGroupInfo[$i][6] = $objItem.SIDType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 401, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aGroupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aGroupInfo", $aGroupInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 402, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 402, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 403, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 403, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 404, False))
		$aGroupInfo[0][0] = UBound($aGroupInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 404, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aGroupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aGroupInfo", $aGroupInfo))
If SetError(@error, @extended, IsDeclared("aGroupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aGroupInfo", $aGroupInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 405, False))
		If $aGroupInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 405, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aGroupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aGroupInfo", $aGroupInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 406, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 406, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 407, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 407, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 408, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 408, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 409, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 409, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 410, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 410, False, @error, @extended))
EndFunc ;_ComputerGetGroups

;===============================================================================
; Description:      Returns the LoggedOnUser information in an array.
; Parameter(s):     $aLoggedOnUserInfo - By Reference - LoggedOnUser Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of LoggedOnUser Information.
;						$aLoggedOnUserInfo[$i][0]	= Domain Name
;						$aLoggedOnUserInfo[$i][1]	= User Name
;						$aLoggedOnUserInfo[$i][2]	= Logon ID
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information.
;											2 - $colItems isnt an object.
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 427, False))
Func _ComputerGetLoggedOnUsers(ByRef $aLoggedOnUserInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 427, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aLoggedOnUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aLoggedOnUserInfo", $aLoggedOnUserInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 428, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 428, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 429, False))
	Local $LoggedOnUserInfo, $linePattern, $aExpRet
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 429, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("LoggedOnUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$LoggedOnUserInfo", $LoggedOnUserInfo))
If SetError(@error, @extended, IsDeclared("linePattern")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$linePattern", $linePattern))
If SetError(@error, @extended, IsDeclared("aExpRet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExpRet", $aExpRet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 430, False))
	Dim $aLoggedOnUserInfo[1][3], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 430, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aLoggedOnUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aLoggedOnUserInfo", $aLoggedOnUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 432, False))
	$linePattern = '(?i)(?:=")([^"]*)'
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 432, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("linePattern")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$linePattern", $linePattern))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 434, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 434, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 435, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_LoggedOnUser", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 435, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 437, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 437, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 438, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 438, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 439, False))
			$LoggedOnUserInfo &= $objItem.Antecedent
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 439, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("LoggedOnUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$LoggedOnUserInfo", $LoggedOnUserInfo))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 440, False))
			$LoggedOnUserInfo &= $objItem.Dependent
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 440, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("LoggedOnUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$LoggedOnUserInfo", $LoggedOnUserInfo))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 441, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 441, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 442, False))
		$aExpRet = StringRegExp($LoggedOnUserInfo, $linePattern, 3)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 442, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aExpRet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExpRet", $aExpRet))
If SetError(@error, @extended, IsDeclared("LoggedOnUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$LoggedOnUserInfo", $LoggedOnUserInfo))
If SetError(@error, @extended, IsDeclared("linePattern")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$linePattern", $linePattern))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 443, False))
		ReDim $aLoggedOnUserInfo[UBound($aExpRet)/3 + 1][3]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 443, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aLoggedOnUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aLoggedOnUserInfo", $aLoggedOnUserInfo))
If SetError(@error, @extended, IsDeclared("aExpRet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExpRet", $aExpRet))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 444, False))
		Local $j = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 444, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("j")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$j", $j))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 445, False))
		For $i = 1 To UBound($aLoggedOnUserInfo) - 1 Step 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 445, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("aLoggedOnUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aLoggedOnUserInfo", $aLoggedOnUserInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 446, False))
			$aLoggedOnUserInfo[$i][0] = $aExpRet[$j]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 446, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aLoggedOnUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aLoggedOnUserInfo", $aLoggedOnUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("aExpRet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExpRet", $aExpRet))
If SetError(@error, @extended, IsDeclared("j")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$j", $j))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 447, False))
			$aLoggedOnUserInfo[$i][1] = $aExpRet[$j+1]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 447, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aLoggedOnUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aLoggedOnUserInfo", $aLoggedOnUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("aExpRet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExpRet", $aExpRet))
If SetError(@error, @extended, IsDeclared("j")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$j", $j))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 448, False))
			$aLoggedOnUserInfo[$i][2] = $aExpRet[$j+2]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 448, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aLoggedOnUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aLoggedOnUserInfo", $aLoggedOnUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("aExpRet")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aExpRet", $aExpRet))
If SetError(@error, @extended, IsDeclared("j")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$j", $j))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 449, False))
			$j += 3
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 449, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("j")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$j", $j))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 450, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 450, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 451, False))
		$aLoggedOnUserInfo[0][0] = UBound($aLoggedOnUserInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 451, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aLoggedOnUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aLoggedOnUserInfo", $aLoggedOnUserInfo))
If SetError(@error, @extended, IsDeclared("aLoggedOnUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aLoggedOnUserInfo", $aLoggedOnUserInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 452, False))
		If $aLoggedOnUserInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 452, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aLoggedOnUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aLoggedOnUserInfo", $aLoggedOnUserInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 453, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 453, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 454, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 454, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 455, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 455, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 456, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 456, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 457, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 457, False, @error, @extended))
EndFunc ;_ComputerGetLoggedOnUsers

;===============================================================================
; Description:      Returns the OS information in an array.
; Parameter(s):     $aOSInfo - By Reference - OS Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of OS Information.
;						$aOSInfo[$i][0]  = Name
;						$aOSInfo[$i][1]  = Boot Device
;						$aOSInfo[$i][2]  = Build Number
;						$aOSInfo[$i][3]  = Build Type
;						$aOSInfo[$i][4]  = Description
;						$aOSInfo[$i][5]  = CodeSet
;						$aOSInfo[$i][6]  = Country Code
;						$aOSInfo[$i][7]  = Creation Class Name
;						$aOSInfo[$i][8]  = CS Creation Class Name
;						$aOSInfo[$i][9]  = CSD Version
;						$aOSInfo[$i][10] = CS Name
;						$aOSInfo[$i][11] = Current Time Zone
;						$aOSInfo[$i][12] = DataExecutionPrevention_32BitApplications
;						$aOSInfo[$i][13] = DataExecutionPrevention_Available
;						$aOSInfo[$i][14] = DataExecutionPrevention_Drivers
;						$aOSInfo[$i][15] = DataExecutionPrevention_SupportPolicy
;						$aOSInfo[$i][16] = Debug
;						$aOSInfo[$i][17] = Distributed
;						$aOSInfo[$i][18] = Encryption Level
;						$aOSInfo[$i][19] = Foreground Application Boost
;						$aOSInfo[$i][20] = Free Physical Memory
;						$aOSInfo[$i][21] = Free Space In Paging Files
;						$aOSInfo[$i][22] = Free Virtual Memory
;						$aOSInfo[$i][23] = Install Date
;						$aOSInfo[$i][24] = Large System Cache
;						$aOSInfo[$i][25] = Last Boot Up Time
;						$aOSInfo[$i][26] = Local Date Time
;						$aOSInfo[$i][27] = Locale
;						$aOSInfo[$i][28] = Manufacturer
;						$aOSInfo[$i][29] = Max Number Of Processes
;						$aOSInfo[$i][30] = Max Process Memory Size
;						$aOSInfo[$i][31] = Number Of Licensed Users
;						$aOSInfo[$i][32] = Number Of Processes
;						$aOSInfo[$i][33] = Number Of Users
;						$aOSInfo[$i][34] = Organization
;						$aOSInfo[$i][35] = OS Language
;						$aOSInfo[$i][36] = OS Product Suite
;						$aOSInfo[$i][37] = OS Type
;						$aOSInfo[$i][38] = Other Type Description
;						$aOSInfo[$i][39] = Plus Product ID
;						$aOSInfo[$i][40] = Plus Version Number
;						$aOSInfo[$i][41] = Primary
;						$aOSInfo[$i][42] = Product Type
;						$aOSInfo[$i][43] = Quantum Length
;						$aOSInfo[$i][44] = Quantum Type
;						$aOSInfo[$i][45] = Registered User
;						$aOSInfo[$i][46] = Serial Number
;						$aOSInfo[$i][47] = Service Pack Major Version
;						$aOSInfo[$i][48] = Service Pack Minor Version
;						$aOSInfo[$i][49] = Size Stored In Paging Files
;						$aOSInfo[$i][50] = Status
;						$aOSInfo[$i][51] = Suite Mask
;						$aOSInfo[$i][52] = System Device
;						$aOSInfo[$i][53] = System Directory
;						$aOSInfo[$i][54] = System Drive
;						$aOSInfo[$i][55] = Total Swap Space Size
;						$aOSInfo[$i][56] = Total Virtual Memory Size
;						$aOSInfo[$i][57] = Total Visible Memory Size
;						$aOSInfo[$i][58] = Version
;						$aOSInfo[$i][59] = Windows Directory
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 531, False))
Func _ComputerGetOSs(ByRef $aOSInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 531, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 532, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 532, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 533, False))
	Dim $aOSInfo[1][60], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 533, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 535, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 535, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 536, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_OperatingSystem", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 536, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 538, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 538, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 539, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 539, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 540, False))
			ReDim $aOSInfo[UBound($aOSInfo) + 1][60]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 540, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 541, False))
			$aOSInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 541, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 542, False))
			$aOSInfo[$i][1]  = $objItem.BootDevice
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 542, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 543, False))
			$aOSInfo[$i][2]  = $objItem.BuildNumber
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 543, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 544, False))
			$aOSInfo[$i][3]  = $objItem.BuildType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 544, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 545, False))
			$aOSInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 545, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 546, False))
			$aOSInfo[$i][5]  = $objItem.CodeSet
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 546, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 547, False))
			$aOSInfo[$i][6]  = $objItem.CountryCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 547, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 548, False))
			$aOSInfo[$i][7]  = $objItem.CreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 548, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 549, False))
			$aOSInfo[$i][8]  = $objItem.CSCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 549, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 550, False))
			$aOSInfo[$i][9]  = $objItem.CSDVersion
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 550, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 551, False))
			$aOSInfo[$i][10] = $objItem.CSName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 551, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 552, False))
			$aOSInfo[$i][11] = $objItem.CurrentTimeZone
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 552, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 553, False))
			$aOSInfo[$i][12] = $objItem.DataExecutionPrevention_32BitApplications
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 553, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 554, False))
			$aOSInfo[$i][13] = $objItem.DataExecutionPrevention_Available
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 554, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 555, False))
			$aOSInfo[$i][14] = $objItem.DataExecutionPrevention_Drivers
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 555, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 556, False))
			$aOSInfo[$i][15] = $objItem.DataExecutionPrevention_SupportPolicy
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 556, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 557, False))
			$aOSInfo[$i][16] = $objItem.Debug
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 557, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 558, False))
			$aOSInfo[$i][17] = $objItem.Distributed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 558, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 559, False))
			$aOSInfo[$i][18] = $objItem.EncryptionLevel
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 559, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 560, False))
			$aOSInfo[$i][19] = $objItem.ForegroundApplicationBoost
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 560, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 561, False))
			$aOSInfo[$i][20] = $objItem.FreePhysicalMemory
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 561, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 562, False))
			$aOSInfo[$i][21] = $objItem.FreeSpaceInPagingFiles
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 562, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 563, False))
			$aOSInfo[$i][22] = $objItem.FreeVirtualMemory
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 563, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 564, False))
			$aOSInfo[$i][23] = __StringToDate($objItem.InstallDate)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 564, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 565, False))
			$aOSInfo[$i][24] = $objItem.LargeSystemCache
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 565, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 566, False))
			$aOSInfo[$i][25] = __StringToDate($objItem.LastBootUpTime)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 566, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 567, False))
			$aOSInfo[$i][26] = __StringToDate($objItem.LocalDateTime)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 567, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 568, False))
			$aOSInfo[$i][27] = $objItem.Locale
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 568, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 569, False))
			$aOSInfo[$i][28] = $objItem.Manufacturer
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 569, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 570, False))
			$aOSInfo[$i][29] = $objItem.MaxNumberOfProcesses
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 570, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 571, False))
			$aOSInfo[$i][30] = $objItem.MaxProcessMemorySize
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 571, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 572, False))
			$aOSInfo[$i][31] = $objItem.NumberOfLicensedUsers
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 572, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 573, False))
			$aOSInfo[$i][32] = $objItem.NumberOfProcesses
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 573, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 574, False))
			$aOSInfo[$i][33] = $objItem.NumberOfUsers
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 574, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 575, False))
			$aOSInfo[$i][34] = $objItem.Organization
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 575, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 576, False))
			$aOSInfo[$i][35] = $objItem.OSLanguage
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 576, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 577, False))
			$aOSInfo[$i][36] = $objItem.OSProductSuite
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 577, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 578, False))
			$aOSInfo[$i][37] = $objItem.OSType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 578, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 579, False))
			$aOSInfo[$i][38] = $objItem.OtherTypeDescription
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 579, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 580, False))
			$aOSInfo[$i][39] = $objItem.PlusProductID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 580, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 581, False))
			$aOSInfo[$i][40] = $objItem.PlusVersionNumber
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 581, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 582, False))
			$aOSInfo[$i][41] = $objItem.Primary
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 582, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 583, False))
			$aOSInfo[$i][42] = $objItem.ProductType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 583, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 584, False))
			$aOSInfo[$i][43] = $objItem.QuantumLength
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 584, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 585, False))
			$aOSInfo[$i][44] = $objItem.QuantumType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 585, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 586, False))
			$aOSInfo[$i][45] = $objItem.RegisteredUser
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 586, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 587, False))
			$aOSInfo[$i][46] = $objItem.SerialNumber
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 587, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 588, False))
			$aOSInfo[$i][47] = $objItem.ServicePackMajorVersion
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 588, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 589, False))
			$aOSInfo[$i][48] = $objItem.ServicePackMinorVersion
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 589, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 590, False))
			$aOSInfo[$i][49] = $objItem.SizeStoredInPagingFiles
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 590, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 591, False))
			$aOSInfo[$i][50] = $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 591, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 592, False))
			$aOSInfo[$i][51] = $objItem.SuiteMask
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 592, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 593, False))
			$aOSInfo[$i][52] = $objItem.SystemDevice
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 593, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 594, False))
			$aOSInfo[$i][53] = $objItem.SystemDirectory
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 594, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 595, False))
			$aOSInfo[$i][54] = $objItem.SystemDrive
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 595, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 596, False))
			$aOSInfo[$i][55] = $objItem.TotalSwapSpaceSize
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 596, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 597, False))
			$aOSInfo[$i][56] = $objItem.TotalVirtualMemorySize
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 597, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 598, False))
			$aOSInfo[$i][57] = $objItem.TotalVisibleMemorySize
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 598, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 599, False))
			$aOSInfo[$i][58] = $objItem.Version
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 599, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 600, False))
			$aOSInfo[$i][59] = $objItem.WindowsDirectory
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 600, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 601, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 601, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 602, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 602, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 603, False))
		$aOSInfo[0][0] = UBound($aOSInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 603, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 604, False))
		If $aOSInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 604, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aOSInfo", $aOSInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 605, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 605, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 606, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 606, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 607, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 607, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 608, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 608, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 609, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 609, False, @error, @extended))
EndFunc ;_ComputerGetOSs

;===============================================================================
; Description:      Returns the PrintJob information in an array.
; Parameter(s):     $aPrintJobInfo - By Reference - PrintJob Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of PrintJob Information.
;						$aPrintJobInfo[$i][0]	= Name
;						$aPrintJobInfo[$i][1]	= DataType
;						$aPrintJobInfo[$i][2]	= Document
;						$aPrintJobInfo[$i][3]	= DriverName
;						$aPrintJobInfo[$i][4]	= Description
;						$aPrintJobInfo[$i][5]	= ElapsedTime
;						$aPrintJobInfo[$i][6]	= HostPrintQueue
;						$aPrintJobInfo[$i][7]	= JobId
;						$aPrintJobInfo[$i][8]	= JobStatus
;						$aPrintJobInfo[$i][9]	= Name
;						$aPrintJobInfo[$i][10]	= Notify
;						$aPrintJobInfo[$i][11]	= Owner
;						$aPrintJobInfo[$i][12]	= PagesPrinted
;						$aPrintJobInfo[$i][13]	= Parameters
;						$aPrintJobInfo[$i][14]	= PrintProcessor
;						$aPrintJobInfo[$i][15]	= Priority
;						$aPrintJobInfo[$i][16]	= Size
;						$aPrintJobInfo[$i][17]	= StartTime
;						$aPrintJobInfo[$i][18]	= Status
;						$aPrintJobInfo[$i][19]	= StatusMask
;						$aPrintJobInfo[$i][20]	= TimeSubmitted
;						$aPrintJobInfo[$i][21]	= TotalPages
;						$aPrintJobInfo[$i][22]	= UntilTime
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information.
;											2 - $colItems isnt an object.
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 646, False))
Func _ComputerGetPrintJobs(ByRef $aPrintJobInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 646, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 647, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 647, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 648, False))
	Dim $aPrintJobInfo[1][23], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 648, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 650, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 650, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 651, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_PrintJob", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 651, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 653, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 653, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 654, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 654, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 655, False))
			ReDim $aPrintJobInfo[UBound($aPrintJobInfo) + 1][23]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 655, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 656, False))
			$aPrintJobInfo[$i][0]	= $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 656, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 657, False))
			$aPrintJobInfo[$i][1]	= $objItem.DataType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 657, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 658, False))
			$aPrintJobInfo[$i][2]	= $objItem.Document
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 658, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 659, False))
			$aPrintJobInfo[$i][3]	= $objItem.DriverName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 659, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 660, False))
			$aPrintJobInfo[$i][4]	= $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 660, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 661, False))
			$aPrintJobInfo[$i][5]	= __StringToDate($objItem.ElapsedTime)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 661, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 662, False))
			$aPrintJobInfo[$i][6]	= $objItem.HostPrintQueue
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 662, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 663, False))
			$aPrintJobInfo[$i][7]	= $objItem.JobId
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 663, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 664, False))
			$aPrintJobInfo[$i][8]	= $objItem.JobStatus
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 664, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 665, False))
			$aPrintJobInfo[$i][9]	= $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 665, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 666, False))
			$aPrintJobInfo[$i][10]	= $objItem.Notify
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 666, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 667, False))
			$aPrintJobInfo[$i][11]	= $objItem.Owner
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 667, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 668, False))
			$aPrintJobInfo[$i][12]	= $objItem.PagesPrinted
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 668, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 669, False))
			$aPrintJobInfo[$i][13]	= $objItem.Parameters
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 669, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 670, False))
			$aPrintJobInfo[$i][14]	= $objItem.PrintProcessor
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 670, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 671, False))
			$aPrintJobInfo[$i][15]	= $objItem.Priority
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 671, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 672, False))
			$aPrintJobInfo[$i][16]	= $objItem.Size
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 672, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 673, False))
			$aPrintJobInfo[$i][17]	= __StringToDate($objItem.StartTime)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 673, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 674, False))
			$aPrintJobInfo[$i][18]	= $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 674, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 675, False))
			$aPrintJobInfo[$i][19]	= $objItem.StatusMask
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 675, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 676, False))
			$aPrintJobInfo[$i][20]	= __StringToDate($objItem.TimeSubmitted)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 676, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 677, False))
			$aPrintJobInfo[$i][21]	= $objItem.TotalPages
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 677, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 678, False))
			$aPrintJobInfo[$i][22]	= __StringToDate($objItem.UntilTime)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 678, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 679, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 679, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 680, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 680, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 681, False))
		$aPrintJobInfo[0][0] = UBound($aPrintJobInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 681, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 682, False))
		If $aPrintJobInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 682, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrintJobInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrintJobInfo", $aPrintJobInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 683, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 683, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 684, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 684, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 685, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 685, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 686, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 686, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 687, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 687, False, @error, @extended))
EndFunc ;_ComputerGetPrintJobs

;===============================================================================
; Description:      Returns the Process information in an array.
; Parameter(s):     $aProcessInfo - By Reference - Process Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Process Information.
;						$aProcessInfo[0][0]   = Number of Processes
;						$aProcessInfo[$i][0]  = Name ($i starts at 1)
;						$aProcessInfo[$i][1]  = Command Line
;						$aProcessInfo[$i][2]  = Creation Class Name
;						$aProcessInfo[$i][3]  = Creation Date
;						$aProcessInfo[$i][4]  = Description
;						$aProcessInfo[$i][5]  = CS Creation Class Name
;						$aProcessInfo[$i][6]  = CS Name
;						$aProcessInfo[$i][7]  = Executable Path
;						$aProcessInfo[$i][8]  = Execution State
;						$aProcessInfo[$i][9]  = Handle
;						$aProcessInfo[$i][10] = Handle Count
;						$aProcessInfo[$i][11] = Kernel Mode Time
;						$aProcessInfo[$i][12] = Maximum Working Set Size
;						$aProcessInfo[$i][13] = Minimum Working Set Size
;						$aProcessInfo[$i][14] = OS Creation Class Name
;						$aProcessInfo[$i][15] = OS Name
;						$aProcessInfo[$i][16] = Other Operation Count
;						$aProcessInfo[$i][17] = Other Transfer Count
;						$aProcessInfo[$i][18] = Page Faults
;						$aProcessInfo[$i][19] = Page File Usage
;						$aProcessInfo[$i][20] = Parent Process ID
;						$aProcessInfo[$i][21] = Peak Page File Usage
;						$aProcessInfo[$i][22] = Peak Virtual Size
;						$aProcessInfo[$i][23] = Peak Working Set Size
;						$aProcessInfo[$i][24] = Priority
;						$aProcessInfo[$i][25] = Private Page Count
;						$aProcessInfo[$i][26] = Process ID
;						$aProcessInfo[$i][27] = Quota Non Paged Pool Usage
;						$aProcessInfo[$i][28] = Quota Paged Pool Usage
;						$aProcessInfo[$i][29] = Quota Peak Non Paged Pool Usage
;						$aProcessInfo[$i][30] = Quota Peak Paged Pool Usage
;						$aProcessInfo[$i][31] = Read Operation Count
;						$aProcessInfo[$i][32] = Read Transfer Count
;						$aProcessInfo[$i][33] = Session ID
;						$aProcessInfo[$i][34] = Status
;						$aProcessInfo[$i][35] = Thread Count
;						$aProcessInfo[$i][36] = User Mode Time
;						$aProcessInfo[$i][37] = Virtual Size
;						$aProcessInfo[$i][38] = Windows Version
;						$aProcessInfo[$i][39] = Working Set Size
;						$aProcessInfo[$i][40] = Write Operation Count
;						$aProcessInfo[$i][41] = Write Transfer Count
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 744, False))
Func _ComputerGetProcesses(ByRef $aProcessInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 744, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 745, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 745, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 746, False))
	Dim $aProcessInfo[1][42], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 746, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 748, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 748, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 749, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_Process", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 749, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 751, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 751, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 752, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 752, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 753, False))
			ReDim $aProcessInfo[UBound($aProcessInfo) + 1][42]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 753, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 754, False))
			$aProcessInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 754, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 755, False))
			$aProcessInfo[$i][1]  = $objItem.CommandLine
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 755, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 756, False))
			$aProcessInfo[$i][2]  = $objItem.CreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 756, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 757, False))
			$aProcessInfo[$i][3]  = __StringToDate($objItem.CreationDate)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 757, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 758, False))
			$aProcessInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 758, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 759, False))
			$aProcessInfo[$i][5]  = $objItem.CSCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 759, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 760, False))
			$aProcessInfo[$i][6]  = $objItem.CSName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 760, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 761, False))
			$aProcessInfo[$i][7]  = $objItem.ExecutablePath
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 761, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 762, False))
			$aProcessInfo[$i][8]  = $objItem.ExecutionState
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 762, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 763, False))
			$aProcessInfo[$i][9]  = $objItem.Handle
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 763, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 764, False))
			$aProcessInfo[$i][10] = $objItem.HandleCount
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 764, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 765, False))
			$aProcessInfo[$i][11] = $objItem.KernelModeTime
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 765, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 766, False))
			$aProcessInfo[$i][12] = $objItem.MaximumWorkingSetSize
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 766, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 767, False))
			$aProcessInfo[$i][13] = $objItem.MinimumWorkingSetSize
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 767, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 768, False))
			$aProcessInfo[$i][14] = $objItem.OSCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 768, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 769, False))
			$aProcessInfo[$i][15] = $objItem.OSName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 769, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 770, False))
			$aProcessInfo[$i][16] = $objItem.OtherOperationCount
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 770, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 771, False))
			$aProcessInfo[$i][17] = $objItem.OtherTransferCount
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 771, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 772, False))
			$aProcessInfo[$i][18] = $objItem.PageFaults
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 772, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 773, False))
			$aProcessInfo[$i][19] = $objItem.PageFileUsage
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 773, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 774, False))
			$aProcessInfo[$i][20] = $objItem.ParentProcessId
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 774, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 775, False))
			$aProcessInfo[$i][21] = $objItem.PeakPageFileUsage
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 775, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 776, False))
			$aProcessInfo[$i][22] = $objItem.PeakVirtualSize
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 776, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 777, False))
			$aProcessInfo[$i][23] = $objItem.PeakWorkingSetSize
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 777, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 778, False))
			$aProcessInfo[$i][24] = $objItem.Priority
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 778, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 779, False))
			$aProcessInfo[$i][25] = $objItem.PrivatePageCount
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 779, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 780, False))
			$aProcessInfo[$i][26] = $objItem.ProcessId
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 780, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 781, False))
			$aProcessInfo[$i][27] = $objItem.QuotaNonPagedPoolUsage
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 781, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 782, False))
			$aProcessInfo[$i][28] = $objItem.QuotaPagedPoolUsage
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 782, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 783, False))
			$aProcessInfo[$i][29] = $objItem.QuotaPeakNonPagedPoolUsage
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 783, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 784, False))
			$aProcessInfo[$i][30] = $objItem.QuotaPeakPagedPoolUsage
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 784, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 785, False))
			$aProcessInfo[$i][31] = $objItem.ReadOperationCount
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 785, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 786, False))
			$aProcessInfo[$i][32] = $objItem.ReadTransferCount
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 786, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 787, False))
			$aProcessInfo[$i][33] = $objItem.SessionId
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 787, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 788, False))
			$aProcessInfo[$i][34] = $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 788, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 789, False))
			$aProcessInfo[$i][35] = $objItem.ThreadCount
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 789, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 790, False))
			$aProcessInfo[$i][36] = $objItem.UserModeTime
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 790, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 791, False))
			$aProcessInfo[$i][37] = $objItem.VirtualSize
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 791, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 792, False))
			$aProcessInfo[$i][38] = $objItem.WindowsVersion
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 792, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 793, False))
			$aProcessInfo[$i][39] = $objItem.WorkingSetSize
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 793, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 794, False))
			$aProcessInfo[$i][40] = $objItem.WriteOperationCount
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 794, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 795, False))
			$aProcessInfo[$i][41] = $objItem.WriteTransferCount
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 795, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 796, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 796, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 797, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 797, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 798, False))
		$aProcessInfo[0][0] = UBound($aProcessInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 798, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 799, False))
		If $aProcessInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 799, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessInfo", $aProcessInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 800, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 800, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 801, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 801, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 802, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 802, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 803, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 803, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 804, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 804, False, @error, @extended))
EndFunc ;_ComputerGetProcesses

;===============================================================================
; Description:      Returns the services information in an array.
; Parameter(s):     $aServicesInfo - By Reference - Services Information array.
;					$sState - OPTIONAL - Accepted values 'All' or 'Stopped' or
;										'Running'
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Services Information.
;						$aServicesInfo[0][0]   = Number of Services
;						$aServicesInfo[$i][0]  = Name ($i starts at 1)
;						$aServicesInfo[$i][1]  = Accept Pause
;						$aServicesInfo[$i][2]  = Accept Stop
;						$aServicesInfo[$i][3]  = Check Point
;						$aServicesInfo[$i][4]  = Description
;						$aServicesInfo[$i][5]  = Creation Class Name
;						$aServicesInfo[$i][6]  = Desktop Interact
;						$aServicesInfo[$i][7]  = Display Name
;						$aServicesInfo[$i][8]  = Error Control
;						$aServicesInfo[$i][9]  = Exit Code
;						$aServicesInfo[$i][10] = Path Name
;						$aServicesInfo[$i][11] = Process ID
;						$aServicesInfo[$i][12] = Service Specific Exit Code
;						$aServicesInfo[$i][13] = Service Type
;						$aServicesInfo[$i][14] = Started
;						$aServicesInfo[$i][15] = Start Mode
;						$aServicesInfo[$i][16] = Start Name
;						$aServicesInfo[$i][17] = State
;						$aServicesInfo[$i][18] = Status
;						$aServicesInfo[$i][19] = System Creation Class Name
;						$aServicesInfo[$i][20] = System Name
;						$aServicesInfo[$i][21] = Tag ID
;						$aServicesInfo[$i][22] = Wait Hint
;
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 845, False))
Func _ComputerGetServices(ByRef $aServicesInfo, $sState = "All")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 845, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("sState")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sState", $sState))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 846, False))
	Local $cI_Compname = @ComputerName, $wbemFlagReturnImmediately = 0x10, $wbemFlagForwardOnly = 0x20
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 846, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 847, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 847, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 848, False))
	Dim $aServicesInfo[1][23], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 848, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 850, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 850, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 851, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_Service", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 851, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 853, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 853, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 854, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 854, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 855, False))
			If $sState <> "All" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 855, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sState")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sState", $sState))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 856, False))
				If $sState = "Stopped" AND $objItem.State <> "Stopped" Then ContinueLoop
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 856, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sState")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sState", $sState))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 857, False))
				If $sState = "Running" AND $objItem.State <> "Running" Then ContinueLoop
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 857, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sState")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sState", $sState))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 858, False))
			EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 858, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 859, False))
			ReDim $aServicesInfo[UBound($aServicesInfo) + 1][23]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 859, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 860, False))
			$aServicesInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 860, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 861, False))
			$aServicesInfo[$i][1]  = $objItem.AcceptPause
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 861, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 862, False))
			$aServicesInfo[$i][2]  = $objItem.AcceptStop
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 862, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 863, False))
			$aServicesInfo[$i][3]  = $objItem.CheckPoint
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 863, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 864, False))
			$aServicesInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 864, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 865, False))
			$aServicesInfo[$i][5]  = $objItem.CreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 865, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 866, False))
			$aServicesInfo[$i][6]  = $objItem.DesktopInteract
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 866, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 867, False))
			$aServicesInfo[$i][7]  = $objItem.DisplayName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 867, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 868, False))
			$aServicesInfo[$i][8]  = $objItem.ErrorControl
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 868, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 869, False))
			$aServicesInfo[$i][9]  = $objItem.ExitCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 869, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 870, False))
			$aServicesInfo[$i][10] = $objItem.PathName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 870, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 871, False))
			$aServicesInfo[$i][11] = $objItem.ProcessId
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 871, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 872, False))
			$aServicesInfo[$i][12] = $objItem.ServiceSpecificExitCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 872, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 873, False))
			$aServicesInfo[$i][13] = $objItem.ServiceType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 873, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 874, False))
			$aServicesInfo[$i][14] = $objItem.Started
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 874, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 875, False))
			$aServicesInfo[$i][15] = $objItem.StartMode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 875, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 876, False))
			$aServicesInfo[$i][16] = $objItem.StartName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 876, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 877, False))
			$aServicesInfo[$i][17] = $objItem.State
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 877, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 878, False))
			$aServicesInfo[$i][18] = $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 878, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 879, False))
			$aServicesInfo[$i][19] = $objItem.SystemCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 879, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 880, False))
			$aServicesInfo[$i][20] = $objItem.SystemName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 880, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 881, False))
			$aServicesInfo[$i][21] = $objItem.TagId
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 881, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 882, False))
			$aServicesInfo[$i][22] = $objItem.WaitHint
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 882, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 883, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 883, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 884, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 884, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 885, False))
		$aServicesInfo[0][0] = UBound($aServicesInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 885, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 886, False))
		If $aServicesInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 886, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aServicesInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aServicesInfo", $aServicesInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 887, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 887, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 888, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 888, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 889, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 889, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 890, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 890, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 891, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 891, False, @error, @extended))
EndFunc ;_ComputerGetServices

;===============================================================================
; Description:      Returns the Shares and information in an array.
; Parameter(s):     $aShareInfo - By Reference - Shares and Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Share Information.
;						$aShareInfo[0][0]   = Number of Shares
;						$aShareInfo[$i][0]  = Name ($i starts at 1)
;						$aShareInfo[$i][1]  = Access Mask
;						$aShareInfo[$i][2]  = Allow Maximum
;						$aShareInfo[$i][3]  = Maximum Allowed
;						$aShareInfo[$i][4]  = Description
;						$aShareInfo[$i][5]  = Path
;						$aShareInfo[$i][6]  = Status
;						$aShareInfo[$i][7]  = Type
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 914, False))
Func _ComputerGetShares(ByRef $aShareInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 914, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aShareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aShareInfo", $aShareInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 915, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 915, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 916, False))
	Dim $aShareInfo[1][8], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 916, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aShareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aShareInfo", $aShareInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 918, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 918, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 919, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_Share", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 919, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 921, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 921, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 922, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 922, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 923, False))
			ReDim $aShareInfo[UBound($aShareInfo) + 1][8]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 923, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aShareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aShareInfo", $aShareInfo))
If SetError(@error, @extended, IsDeclared("aShareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aShareInfo", $aShareInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 924, False))
			$aShareInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 924, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aShareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aShareInfo", $aShareInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 925, False))
			$aShareInfo[$i][1]  = $objItem.AccessMask
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 925, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aShareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aShareInfo", $aShareInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 926, False))
			$aShareInfo[$i][2]  = $objItem.AllowMaximum
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 926, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aShareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aShareInfo", $aShareInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 927, False))
			$aShareInfo[$i][3]  = $objItem.MaximumAllowed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 927, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aShareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aShareInfo", $aShareInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 928, False))
			$aShareInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 928, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aShareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aShareInfo", $aShareInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 929, False))
			$aShareInfo[$i][5]  = $objItem.Path
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 929, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aShareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aShareInfo", $aShareInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 930, False))
			$aShareInfo[$i][6]  = $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 930, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aShareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aShareInfo", $aShareInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 931, False))
			$aShareInfo[$i][7]  = $objItem.Type
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 931, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aShareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aShareInfo", $aShareInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 932, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 932, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 933, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 933, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 934, False))
		$aShareInfo[0][0] = UBound($aShareInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 934, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aShareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aShareInfo", $aShareInfo))
If SetError(@error, @extended, IsDeclared("aShareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aShareInfo", $aShareInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 935, False))
		If $aShareInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 935, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aShareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aShareInfo", $aShareInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 936, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 936, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 937, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 937, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 938, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 938, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 939, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 939, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 940, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 940, False, @error, @extended))
EndFunc ;_ComputerGetShares

;===============================================================================
; Description:      Returns the Software information in an array.
; Parameter(s):     $aSoftwareInfo - By Reference - Software Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Software Information.
;						$aSoftwareInfo[0][0]   = Number of Software Installed
;						$aSoftwareInfo[$i][0]  = Name ($i starts at 1)
;						$aSoftwareInfo[$i][1]  = Version
;						$aSoftwareInfo[$i][2]  = Publisher
;						$aSoftwareInfo[$i][3]  = Uninstall String
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 958, False))
Func _ComputerGetSoftware(ByRef $aSoftwareInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 958, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoftwareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoftwareInfo", $aSoftwareInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 959, False))
	Local Const $UnInstKey	= "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 959, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("UnInstKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$UnInstKey", $UnInstKey))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 960, False))
	Local $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 960, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 961, False))
	Dim $aSoftwareInfo[1][4]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 961, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoftwareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoftwareInfo", $aSoftwareInfo))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 963, False))
	While 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 963, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 964, False))
		$AppKey	= RegEnumKey($UnInstKey, $i)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 964, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("AppKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$AppKey", $AppKey))
If SetError(@error, @extended, IsDeclared("UnInstKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$UnInstKey", $UnInstKey))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 965, False))
		If @error <> 0 Then ExitLoop
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 965, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 966, False))
		ReDim $aSoftwareInfo[UBound($aSoftwareInfo) + 1][4]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 966, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoftwareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoftwareInfo", $aSoftwareInfo))
If SetError(@error, @extended, IsDeclared("aSoftwareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoftwareInfo", $aSoftwareInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 967, False))
		$aSoftwareInfo[$i][0]	= StringStripWS(StringReplace(RegRead($UnInstKey & "\" & $AppKey, "DisplayName"), " (remove only)", ""), 3)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 967, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoftwareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoftwareInfo", $aSoftwareInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("UnInstKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$UnInstKey", $UnInstKey))
If SetError(@error, @extended, IsDeclared("AppKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$AppKey", $AppKey))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 968, False))
		$aSoftwareInfo[$i][1]	= StringStripWS(RegRead($UnInstKey & "\" & $AppKey, "DisplayVersion"), 3)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 968, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoftwareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoftwareInfo", $aSoftwareInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("UnInstKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$UnInstKey", $UnInstKey))
If SetError(@error, @extended, IsDeclared("AppKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$AppKey", $AppKey))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 969, False))
		$aSoftwareInfo[$i][2]	= StringStripWS(RegRead($UnInstKey & "\" & $AppKey, "Publisher"), 3)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 969, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoftwareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoftwareInfo", $aSoftwareInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("UnInstKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$UnInstKey", $UnInstKey))
If SetError(@error, @extended, IsDeclared("AppKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$AppKey", $AppKey))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 970, False))
		$aSoftwareInfo[$i][3]	= StringStripWS(RegRead($UnInstKey & "\" & $AppKey, "UninstallString"), 3)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 970, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoftwareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoftwareInfo", $aSoftwareInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("UnInstKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$UnInstKey", $UnInstKey))
If SetError(@error, @extended, IsDeclared("AppKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$AppKey", $AppKey))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 971, False))
		$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 971, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 972, False))
	WEnd
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 972, False, @error, @extended))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 974, False))
	$aSoftwareInfo[0][0] = UBound($aSoftwareInfo, 1) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 974, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoftwareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoftwareInfo", $aSoftwareInfo))
If SetError(@error, @extended, IsDeclared("aSoftwareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoftwareInfo", $aSoftwareInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 975, False))
	If $aSoftwareInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 975, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoftwareInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoftwareInfo", $aSoftwareInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 976, False))
		SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 976, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 977, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 977, False, @error, @extended))
EndFunc

;===============================================================================
; Description:      Returns the startup information in an array.
; Parameter(s):     $aStartupInfo - By Reference - Startup Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Startup Information.
;						$aStartupInfo[0][0]   = Number of Startups
;						$aStartupInfo[$i][0]  = Name ($i starts at 1)
;						$aStartupInfo[$i][1]  = User
;						$aStartupInfo[$i][2]  = Location
;						$aStartupInfo[$i][3]  = Command
;						$aStartupInfo[$i][4]  = Description
;						$aStartupInfo[$i][5]  = Setting ID
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 998, False))
Func _ComputerGetStartup(ByRef $aStartupInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 998, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aStartupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aStartupInfo", $aStartupInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 999, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 999, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1000, False))
	Dim $aStartupInfo[1][6], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1000, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aStartupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aStartupInfo", $aStartupInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1002, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1002, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1003, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_StartupCommand", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1003, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1005, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1005, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1006, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1006, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1007, False))
			ReDim $aStartupInfo[UBound($aStartupInfo) + 1][6]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1007, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aStartupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aStartupInfo", $aStartupInfo))
If SetError(@error, @extended, IsDeclared("aStartupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aStartupInfo", $aStartupInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1008, False))
			$aStartupInfo[$i][0] = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1008, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aStartupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aStartupInfo", $aStartupInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1009, False))
			$aStartupInfo[$i][1] = $objItem.User
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1009, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aStartupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aStartupInfo", $aStartupInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1010, False))
			$aStartupInfo[$i][2] = $objItem.Location
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1010, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aStartupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aStartupInfo", $aStartupInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1011, False))
			$aStartupInfo[$i][3] = $objItem.Command
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1011, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aStartupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aStartupInfo", $aStartupInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1012, False))
			$aStartupInfo[$i][4] = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1012, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aStartupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aStartupInfo", $aStartupInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1013, False))
			$aStartupInfo[$i][5] = $objItem.SettingID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1013, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aStartupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aStartupInfo", $aStartupInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1014, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1014, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1015, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1015, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1016, False))
		$aStartupInfo[0][0] = UBound($aStartupInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1016, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aStartupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aStartupInfo", $aStartupInfo))
If SetError(@error, @extended, IsDeclared("aStartupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aStartupInfo", $aStartupInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1017, False))
		If $aStartupInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1017, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aStartupInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aStartupInfo", $aStartupInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1018, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1018, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1019, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1019, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1020, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1020, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1021, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1021, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1022, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1022, False, @error, @extended))
EndFunc ;_ComputerGetStartup

;===============================================================================
; Description:      Returns the Thread information in an array.
; Parameter(s):     $aThreadInfo - By Reference - Thread Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Thread Information.
;						$aThreadInfo[0][0]   = Number of Threads
;						$aThreadInfo[$i][0]  = Name ($i starts at 1)
;						$aThreadInfo[$i][1]  = Creation Class Name
;						$aThreadInfo[$i][2]  = CS Creation Class Name
;						$aThreadInfo[$i][3]  = CS Name
;						$aThreadInfo[$i][4]  = Description
;						$aThreadInfo[$i][5]  = Elapsed Time
;						$aThreadInfo[$i][6]  = Execution State
;						$aThreadInfo[$i][7]  = Handle
;						$aThreadInfo[$i][8]  = Kernel Mode Time
;						$aThreadInfo[$i][9]  = OS Creation Class Name
;						$aThreadInfo[$i][10] = OS Name
;						$aThreadInfo[$i][11] = Priority
;						$aThreadInfo[$i][12] = Priority Base
;						$aThreadInfo[$i][13] = Process Creation Class Name
;						$aThreadInfo[$i][14] = Process Handle
;						$aThreadInfo[$i][15] = Start Address
;						$aThreadInfo[$i][16] = Status
;						$aThreadInfo[$i][17] = Thread State
;						$aThreadInfo[$i][18] = Thread Wait Reason
;						$aThreadInfo[$i][19] = User Mode Time
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1057, False))
Func _ComputerGetThreads(ByRef $aThreadInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1057, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1058, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1058, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1059, False))
	Dim $aThreadInfo[1][20], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1059, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1061, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1061, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1062, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_Thread", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1062, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1064, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1064, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1065, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1065, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1066, False))
			ReDim $aThreadInfo[UBound($aThreadInfo) + 1][20]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1066, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1067, False))
			$aThreadInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1067, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1068, False))
			$aThreadInfo[$i][1]  = $objItem.CreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1068, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1069, False))
			$aThreadInfo[$i][2]  = $objItem.CSCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1069, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1070, False))
			$aThreadInfo[$i][3]  = $objItem.CSName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1070, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1071, False))
			$aThreadInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1071, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1072, False))
			$aThreadInfo[$i][5]  = $objItem.ElapsedTime
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1072, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1073, False))
			$aThreadInfo[$i][6]  = $objItem.ExecutionState
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1073, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1074, False))
			$aThreadInfo[$i][7]  = $objItem.Handle
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1074, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1075, False))
			$aThreadInfo[$i][8]  = $objItem.KernelModeTime
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1075, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1076, False))
			$aThreadInfo[$i][9]  = $objItem.OSCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1076, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1077, False))
			$aThreadInfo[$i][10] = $objItem.OSName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1077, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1078, False))
			$aThreadInfo[$i][11] = $objItem.Priority
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1078, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1079, False))
			$aThreadInfo[$i][12] = $objItem.PriorityBase
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1079, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1080, False))
			$aThreadInfo[$i][13] = $objItem.ProcessCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1080, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1081, False))
			$aThreadInfo[$i][14] = $objItem.ProcessHandle
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1081, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1082, False))
			$aThreadInfo[$i][15] = $objItem.StartAddress
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1082, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1083, False))
			$aThreadInfo[$i][16] = $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1083, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1084, False))
			$aThreadInfo[$i][17] = $objItem.ThreadState
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1084, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1085, False))
			$aThreadInfo[$i][18] = $objItem.ThreadWaitReason
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1085, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1086, False))
			$aThreadInfo[$i][19] = $objItem.UserModeTime
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1086, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1087, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1087, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1088, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1088, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1089, False))
		$aThreadInfo[0][0] = UBound($aThreadInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1089, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1090, False))
		If $aThreadInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1090, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aThreadInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aThreadInfo", $aThreadInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1091, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1091, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1092, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1092, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1093, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1093, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1094, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1094, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1095, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1095, False, @error, @extended))
EndFunc ;_ComputerGetThreads

;===============================================================================
; Description:      Returns the Users and information in an array.
; Parameter(s):     $aUserInfo - By Reference - User Name and Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of User Information.
;						$aUserInfo[0][0]   = Number of Users
;						$aUserInfo[$i][0]  = Name ($i starts at 1)
;						$aUserInfo[$i][1]  = Doamin
;						$aUserInfo[$i][2]  = Status
;						$aUserInfo[$i][3]  = Local Account
;						$aUserInfo[$i][4]  = Description
;						$aUserInfo[$i][5]  = SIDType
;						$aUserInfo[$i][6]  = SID
;						$aUserInfo[$i][7]  = Full Name
;						$aUserInfo[$i][8]  = Disabled
;						$aUserInfo[$i][9]  = Lockout
;						$aUserInfo[$i][10] = Password Changeable
;						$aUserInfo[$i][11] = Password Expires
;						$aUserInfo[$i][12] = Password Required
;						$aUserInfo[$i][13] = Account Type
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1124, False))
Func _ComputerGetUsers(ByRef $aUserInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1124, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1125, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1125, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1126, False))
	Dim $aUserInfo[1][14], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1126, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1128, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1128, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1129, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_UserAccount", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1129, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1131, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1131, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1132, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1132, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1133, False))
			ReDim $aUserInfo[UBound($aUserInfo) + 1][14]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1133, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1134, False))
			$aUserInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1134, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1135, False))
			$aUserInfo[$i][1]  = $objItem.Domain
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1135, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1136, False))
			$aUserInfo[$i][2]  = $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1136, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1137, False))
			$aUserInfo[$i][3]  = $objItem.LocalAccount
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1137, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1138, False))
			$aUserInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1138, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1139, False))
			$aUserInfo[$i][5]  = $objItem.SIDType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1139, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1140, False))
			$aUserInfo[$i][6]  = $objItem.SID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1140, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1141, False))
			$aUserInfo[$i][7]  = $objItem.FullName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1141, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1142, False))
			$aUserInfo[$i][8]  = $objItem.Disabled
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1142, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1143, False))
			$aUserInfo[$i][9]  = $objItem.Lockout
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1143, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1144, False))
			$aUserInfo[$i][10] = $objItem.PasswordChangeable
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1144, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1145, False))
			$aUserInfo[$i][11] = $objItem.PasswordExpires
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1145, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1146, False))
			$aUserInfo[$i][12] = $objItem.PasswordRequired
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1146, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1147, False))
			$aUserInfo[$i][13] = $objItem.AccountType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1147, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1148, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1148, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1149, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1149, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1150, False))
		$aUserInfo[0][0] = UBound($aUserInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1150, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1151, False))
		If $aUserInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1151, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aUserInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aUserInfo", $aUserInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1152, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1152, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1153, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1153, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1154, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1154, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1155, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1155, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1156, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1156, False, @error, @extended))
EndFunc ;_ComputerGetUsers

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1158, False))
#endregion Software Functions
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1158, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1160, False))
#region Hardware Functions
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1160, False, @error, @extended))
;===============================================================================
; Description:      Returns the Battery information in an array.
; Parameter(s):     $aBatteryInfo - By Reference - Battery Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Battery Information.
;						$aBatteryInfo[$i][0]	= Name
;						$aBatteryInfo[$i][1]	= Availability
;						$aBatteryInfo[$i][2]	= BatteryRechargeTime
;						$aBatteryInfo[$i][3]	= BatteryStatus
;						$aBatteryInfo[$i][4]	= Description
;						$aBatteryInfo[$i][5]	= Chemistry
;						$aBatteryInfo[$i][6]	= ConfigManagerErrorCode
;						$aBatteryInfo[$i][7]	= ConfigManagerUserConfig
;						$aBatteryInfo[$i][8]	= CreationClassName
;						$aBatteryInfo[$i][9]	= DesignCapacity
;						$aBatteryInfo[$i][10]	= DesignVoltage
;						$aBatteryInfo[$i][11]	= DeviceID
;						$aBatteryInfo[$i][12]	= ErrorCleared
;						$aBatteryInfo[$i][13]	= ErrorDescription
;						$aBatteryInfo[$i][14]	= EstimatedChargeRemaining
;						$aBatteryInfo[$i][15]	= EstimatedRunTime
;						$aBatteryInfo[$i][16]	= ExpectedBatteryLife
;						$aBatteryInfo[$i][17]	= ExpectedLife
;						$aBatteryInfo[$i][18]	= FullChargeCapacity
;						$aBatteryInfo[$i][19]	= LastErrorCode
;						$aBatteryInfo[$i][20]	= MaxRechargeTime
;						$aBatteryInfo[$i][21]	= PNPDeviceID
;						$aBatteryInfo[$i][22]	= PowerManagementCapabilities
;						$aBatteryInfo[$i][23]	= PowerManagementSupported
;						$aBatteryInfo[$i][24]	= SmartBatteryVersion
;						$aBatteryInfo[$i][25]	= Status
;						$aBatteryInfo[$i][26]	= StatusInfo
;						$aBatteryInfo[$i][27]	= SystemCreationClassName
;						$aBatteryInfo[$i][28]	= SystemName
;						$aBatteryInfo[$i][29]	= TimeOnBattery
;						$aBatteryInfo[$i][30]	= TimeToFullCharge
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information.
;											2 - $colItems isnt an object.
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1203, False))
Func _ComputerGetBattery(ByRef $aBatteryInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1203, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1204, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1204, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1205, False))
	Dim $aBatteryInfo[1][31], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1205, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1207, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1207, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1208, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_Battery", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1208, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1210, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1210, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1211, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1211, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1212, False))
			ReDim $aBatteryInfo[UBound($aBatteryInfo) + 1][31]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1212, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1213, False))
			$aBatteryInfo[$i][0]	= $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1213, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1214, False))
			$aBatteryInfo[$i][1]	= $objItem.Availability
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1214, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1215, False))
			$aBatteryInfo[$i][2]	= $objItem.BatteryRechargeTime
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1215, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1216, False))
			$aBatteryInfo[$i][3]	= $objItem.BatteryStatus
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1216, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1217, False))
			$aBatteryInfo[$i][4]	= $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1217, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1218, False))
			$aBatteryInfo[$i][5]	= $objItem.Chemistry
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1218, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1219, False))
			$aBatteryInfo[$i][6]	= $objItem.ConfigManagerErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1219, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1220, False))
			$aBatteryInfo[$i][7]	= $objItem.ConfigManagerUserConfig
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1220, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1221, False))
			$aBatteryInfo[$i][8]	= $objItem.CreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1221, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1222, False))
			$aBatteryInfo[$i][9]	= $objItem.DesignCapacity
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1222, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1223, False))
			$aBatteryInfo[$i][10]	= $objItem.DesignVoltage
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1223, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1224, False))
			$aBatteryInfo[$i][11]	= $objItem.DeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1224, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1225, False))
			$aBatteryInfo[$i][12]	= $objItem.ErrorCleared
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1225, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1226, False))
			$aBatteryInfo[$i][13]	= $objItem.ErrorDescription
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1226, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1227, False))
			$aBatteryInfo[$i][14]	= $objItem.EstimatedChargeRemaining
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1227, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1228, False))
			$aBatteryInfo[$i][15]	= $objItem.EstimatedRunTime
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1228, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1229, False))
			$aBatteryInfo[$i][16]	= $objItem.ExpectedBatteryLife
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1229, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1230, False))
			$aBatteryInfo[$i][17]	= $objItem.ExpectedLife
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1230, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1231, False))
			$aBatteryInfo[$i][18]	= $objItem.FullChargeCapacity
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1231, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1232, False))
			$aBatteryInfo[$i][19]	= $objItem.LastErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1232, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1233, False))
			$aBatteryInfo[$i][20]	= $objItem.MaxRechargeTime
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1233, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1234, False))
			$aBatteryInfo[$i][21]	= $objItem.PNPDeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1234, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1235, False))
			$aBatteryInfo[$i][22]	= $objItem.PowerManagementCapabilities(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1235, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1236, False))
			$aBatteryInfo[$i][23]	= $objItem.PowerManagementSupported
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1236, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1237, False))
			$aBatteryInfo[$i][24]	= $objItem.SmartBatteryVersion
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1237, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1238, False))
			$aBatteryInfo[$i][25]	= $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1238, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1239, False))
			$aBatteryInfo[$i][26]	= $objItem.StatusInfo
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1239, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1240, False))
			$aBatteryInfo[$i][27]	= $objItem.SystemCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1240, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1241, False))
			$aBatteryInfo[$i][28]	= $objItem.SystemName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1241, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1242, False))
			$aBatteryInfo[$i][29]	= $objItem.TimeOnBattery
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1242, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1243, False))
			$aBatteryInfo[$i][30]	= $objItem.TimeToFullCharge
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1243, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1244, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1244, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1245, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1245, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1246, False))
		$aBatteryInfo[0][0] = UBound($aBatteryInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1246, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1247, False))
		If $aBatteryInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1247, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBatteryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBatteryInfo", $aBatteryInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1248, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1248, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1249, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1249, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1250, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1250, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1251, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1251, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1252, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1252, False, @error, @extended))
EndFunc ;_ComputerGetBattery

;===============================================================================
; Description:      Returns the BIOS information in an array.
; Parameter(s):     $aBIOSInfo - By Reference - BIOS Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of BIOS Information.
;						$aBIOSInfo[0][0]   = Number of BIOSs
;						$aBIOSInfo[$i][0]  = Name ($i starts at 1)
;						$aBIOSInfo[$i][1]  = Status
;						$aBIOSInfo[$i][2]  = BIOS Characteristics
;						$aBIOSInfo[$i][3]  = BIOS Version
;						$aBIOSInfo[$i][4]  = Description
;						$aBIOSInfo[$i][5]  = Build Number
;						$aBIOSInfo[$i][6]  = Code Set
;						$aBIOSInfo[$i][7]  = Current Language
;						$aBIOSInfo[$i][8]  = Identification Code
;						$aBIOSInfo[$i][9]  = Installable Languages
;						$aBIOSInfo[$i][10] = Language Edition
;						$aBIOSInfo[$i][11] = List Of Languages
;						$aBIOSInfo[$i][12] = Manufacturer
;						$aBIOSInfo[$i][13] = Other Target OS
;						$aBIOSInfo[$i][14] = Primary BIOS
;						$aBIOSInfo[$i][15] = Release Date
;						$aBIOSInfo[$i][16] = Serial Number
;						$aBIOSInfo[$i][17] = SM BIOS BIOS Version
;						$aBIOSInfo[$i][18] = SM BIOS Major Version
;						$aBIOSInfo[$i][19] = SM BIOS Minor Version
;						$aBIOSInfo[$i][20] = SM BIOS Present
;						$aBIOSInfo[$i][21] = Software Element ID
;						$aBIOSInfo[$i][22] = Software Element State
;						$aBIOSInfo[$i][23] = Target Operating System
;						$aBIOSInfo[$i][24] = Version
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1292, False))
Func _ComputerGetBIOS(ByRef $aBIOSInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1292, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1293, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1293, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1294, False))
	Dim $aBIOSInfo[1][25], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1294, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1296, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1296, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1297, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_BIOS", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1297, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1299, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1299, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1300, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1300, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1301, False))
			ReDim $aBIOSInfo[UBound($aBIOSInfo) + 1][25]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1301, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1302, False))
			$aBIOSInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1302, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1303, False))
			$aBIOSInfo[$i][1]  = $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1303, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1304, False))
			$aBIOSInfo[$i][2]  = $objItem.BiosCharacteristics(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1304, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1305, False))
			$aBIOSInfo[$i][3]  = $objItem.BIOSVersion(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1305, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1306, False))
			$aBIOSInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1306, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1307, False))
			$aBIOSInfo[$i][5]  = $objItem.BuildNumber
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1307, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1308, False))
			$aBIOSInfo[$i][6]  = $objItem.CodeSet
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1308, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1309, False))
			$aBIOSInfo[$i][7]  = $objItem.CurrentLanguage
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1309, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1310, False))
			$aBIOSInfo[$i][8]  = $objItem.IdentificationCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1310, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1311, False))
			$aBIOSInfo[$i][9]  = $objItem.InstallableLanguages
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1311, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1312, False))
			$aBIOSInfo[$i][10] = $objItem.LanguageEdition
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1312, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1313, False))
			$aBIOSInfo[$i][11] = $objItem.ListOfLanguages(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1313, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1314, False))
			$aBIOSInfo[$i][12] = $objItem.Manufacturer
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1314, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1315, False))
			$aBIOSInfo[$i][13] = $objItem.OtherTargetOS
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1315, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1316, False))
			$aBIOSInfo[$i][14] = $objItem.PrimaryBIOS
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1316, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1317, False))
			$aBIOSInfo[$i][15] = __StringToDate($objItem.ReleaseDate)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1317, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1318, False))
			$aBIOSInfo[$i][16] = $objItem.SerialNumber
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1318, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1319, False))
			$aBIOSInfo[$i][17] = $objItem.SMBIOSBIOSVersion
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1319, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1320, False))
			$aBIOSInfo[$i][18] = $objItem.SMBIOSMajorVersion
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1320, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1321, False))
			$aBIOSInfo[$i][19] = $objItem.SMBIOSMinorVersion
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1321, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1322, False))
			$aBIOSInfo[$i][20] = $objItem.SMBIOSPresent
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1322, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1323, False))
			$aBIOSInfo[$i][21] = $objItem.SoftwareElementID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1323, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1324, False))
			$aBIOSInfo[$i][22] = $objItem.SoftwareElementState
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1324, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1325, False))
			$aBIOSInfo[$i][23] = $objItem.TargetOperatingSystem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1325, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1326, False))
			$aBIOSInfo[$i][24] = $objItem.Version
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1326, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1327, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1327, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1328, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1328, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1329, False))
		$aBIOSInfo[0][0] = UBound($aBIOSInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1329, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1330, False))
		If $aBIOSInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1330, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aBIOSInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aBIOSInfo", $aBIOSInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1331, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1331, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1332, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1332, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1333, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1333, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1334, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1334, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1335, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1335, False, @error, @extended))
EndFunc ;_ComputerGetBIOS

;===============================================================================
; Description:      Returns the drive information based on $sDriveType in a two
;					dimensional array. First dimension is the index for each set
;					of drive information.
; Parameter(s):     $aDriveInfo - By Reference - Drive information in an array.
;					$sDriveType - 	Type of drive to return the information on.
;									Options: "ALL", "CDROM", "REMOVABLE", "FIXED",
;									"NETWORK", "RAMDISK", or "UNKNOWN"
;									Defaults to "FIXED" drives.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of drive information.
;						$aDriveInfo[0][0] = Number of Drives
;						The second dimension is as follows: ($i starts at 1)
;							[$i][0] - Drive Letter (ex. C:\)
;							[$i][1] - File System
;							[$i][2] - Label
;							[$i][3] - Serial Number
;							[$i][4] - Free Space
;							[$i][5] - Total Space
;                   On Failure - Return 0 - @error - 1
;								@extended:	 1 = DriveGetDrive		Error
;											 2 = DriveGetFileSystem Error
;											 3 = DriveGetLabel		Error
;											 4 = DriveGetSerial		Error
;											 5 = DriveSpaceFree		Error
;											 6 = DriveSpaceTotal	Error
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1367, False))
Func _ComputerGetDrives(ByRef $aDriveInfo, $sDriveType = "FIXED")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1367, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDriveInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDriveInfo", $aDriveInfo))
If SetError(@error, @extended, IsDeclared("sDriveType")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sDriveType", $sDriveType))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1368, False))
	Local $drive
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1368, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("drive")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$drive", $drive))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1369, False))
	$drive = DriveGetDrive($sDriveType)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1369, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("drive")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$drive", $drive))
If SetError(@error, @extended, IsDeclared("sDriveType")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sDriveType", $sDriveType))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1370, False))
	If NOT @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1370, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1371, False))
		Dim $aDriveInfo[UBound($drive)][6]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1371, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDriveInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDriveInfo", $aDriveInfo))
If SetError(@error, @extended, IsDeclared("drive")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$drive", $drive))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1372, False))
		$aDriveInfo[0][0] = $drive[0]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1372, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDriveInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDriveInfo", $aDriveInfo))
If SetError(@error, @extended, IsDeclared("drive")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$drive", $drive))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1373, False))
		For $i = 1 To $aDriveInfo[0][0] Step 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1373, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("aDriveInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDriveInfo", $aDriveInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1374, False))
			$aDriveInfo[$i][0] = StringUpper($drive[$i] & "\")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1374, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDriveInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDriveInfo", $aDriveInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("drive")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$drive", $drive))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1375, False))
			$aDriveInfo[$i][1] = DriveGetFileSystem($drive[$i])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1375, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDriveInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDriveInfo", $aDriveInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("drive")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$drive", $drive))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1376, False))
			If @error Then SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1376, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1377, False))
			$aDriveInfo[$i][2] = DriveGetLabel($drive[$i])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1377, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDriveInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDriveInfo", $aDriveInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("drive")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$drive", $drive))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1378, False))
			If @error Then SetError(1, 3, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1378, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1379, False))
			$aDriveInfo[$i][3] = DriveGetSerial($drive[$i])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1379, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDriveInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDriveInfo", $aDriveInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("drive")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$drive", $drive))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1380, False))
			If @error Then SetError(1, 4, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1380, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1381, False))
			$aDriveInfo[$i][4] = DriveSpaceFree($drive[$i])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1381, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDriveInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDriveInfo", $aDriveInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("drive")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$drive", $drive))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1382, False))
			If @error Then SetError(1, 5, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1382, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1383, False))
			$aDriveInfo[$i][5] = DriveSpaceTotal($drive[$i])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1383, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aDriveInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aDriveInfo", $aDriveInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("drive")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$drive", $drive))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1384, False))
			If @error Then SetError(1, 6, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1384, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1385, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1385, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1386, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1386, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1387, False))
		SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1387, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1388, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1388, False, @error, @extended))
EndFunc ;_ComputerGetDrives

;===============================================================================
; Description:      Returns the Keyboard information in an array.
; Parameter(s):     $aKeyboardInfo - By Reference - Keyboard Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Keyboard Information.
;						$aKeyboardInfo[0][0]   = Number of Keyboards
;						$aKeyboardInfo[$i][0]  = Name ($i starts at 1)
;						$aKeyboardInfo[$i][1]  = Availability
;						$aKeyboardInfo[$i][2]  = Config Manager Error Code
;						$aKeyboardInfo[$i][3]  = Config Manager User Config
;						$aKeyboardInfo[$i][4]  = Description
;						$aKeyboardInfo[$i][5]  = Creation Class Name
;						$aKeyboardInfo[$i][6]  = Device ID
;						$aKeyboardInfo[$i][7]  = Error Cleared
;						$aKeyboardInfo[$i][8]  = Error Description
;						$aKeyboardInfo[$i][9]  = Is Locked
;						$aKeyboardInfo[$i][10] = Last Error Code
;						$aKeyboardInfo[$i][11] = Layout
;						$aKeyboardInfo[$i][12] = Number Of Function Keys
;						$aKeyboardInfo[$i][13] = Password
;						$aKeyboardInfo[$i][14] = PNP Device ID
;						$aKeyboardInfo[$i][15] = Power Management Capabilities
;						$aKeyboardInfo[$i][16] = Power Management Supported
;						$aKeyboardInfo[$i][17] = Status
;						$aKeyboardInfo[$i][18] = Status Info
;						$aKeyboardInfo[$i][19] = System Creation Class Name
;						$aKeyboardInfo[$i][20] = System Name
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1424, False))
Func _ComputerGetKeyboard(ByRef $aKeyboardInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1424, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1425, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1425, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1426, False))
	Dim $aKeyboardInfo[1][21], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1426, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1428, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1428, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1429, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_Keyboard", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1429, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1431, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1431, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1432, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1432, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1433, False))
			ReDim $aKeyboardInfo[UBound($aKeyboardInfo) + 1][21]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1433, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1434, False))
			$aKeyboardInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1434, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1435, False))
			$aKeyboardInfo[$i][1]  = $objItem.Availability
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1435, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1436, False))
			$aKeyboardInfo[$i][2]  = $objItem.ConfigManagerErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1436, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1437, False))
			$aKeyboardInfo[$i][3]  = $objItem.ConfigManagerUserConfig
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1437, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1438, False))
			$aKeyboardInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1438, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1439, False))
			$aKeyboardInfo[$i][5]  = $objItem.CreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1439, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1440, False))
			$aKeyboardInfo[$i][6]  = $objItem.DeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1440, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1441, False))
			$aKeyboardInfo[$i][7]  = $objItem.ErrorCleared
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1441, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1442, False))
			$aKeyboardInfo[$i][8]  = $objItem.ErrorDescription
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1442, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1443, False))
			$aKeyboardInfo[$i][9]  = $objItem.IsLocked
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1443, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1444, False))
			$aKeyboardInfo[$i][10] = $objItem.LastErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1444, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1445, False))
			$aKeyboardInfo[$i][11] = $objItem.Layout
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1445, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1446, False))
			$aKeyboardInfo[$i][12] = $objItem.NumberOfFunctionKeys
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1446, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1447, False))
			$aKeyboardInfo[$i][13] = $objItem.Password
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1447, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1448, False))
			$aKeyboardInfo[$i][14] = $objItem.PNPDeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1448, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1449, False))
			$aKeyboardInfo[$i][15] = $objItem.PowerManagementCapabilities(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1449, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1450, False))
			$aKeyboardInfo[$i][16] = $objItem.PowerManagementSupported
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1450, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1451, False))
			$aKeyboardInfo[$i][17] = $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1451, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1452, False))
			$aKeyboardInfo[$i][18] = $objItem.StatusInfo
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1452, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1453, False))
			$aKeyboardInfo[$i][19] = $objItem.SystemCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1453, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1454, False))
			$aKeyboardInfo[$i][20] = $objItem.SystemName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1454, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1455, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1455, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1456, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1456, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1457, False))
		$aKeyboardInfo[0][0] = UBound($aKeyboardInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1457, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1458, False))
		If $aKeyboardInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1458, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aKeyboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aKeyboardInfo", $aKeyboardInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1459, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1459, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1460, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1460, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1461, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1461, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1462, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1462, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1463, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1463, False, @error, @extended))
EndFunc ;_ComputerGetKeyboard

;===============================================================================
; Description:      Returns the Memory information in an array.
; Parameter(s):     $aMemoryInfo - By Reference - Memory Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Memory Information.
;						$aMemoryInfo[$i][0]		= Name
;						$aMemoryInfo[$i][1]		= BankLabel
;						$aMemoryInfo[$i][2]		= Capacity
;						$aMemoryInfo[$i][3]		= CreationClassName
;						$aMemoryInfo[$i][4]		= Description
;						$aMemoryInfo[$i][5]		= DataWidth
;						$aMemoryInfo[$i][6]		= DeviceLocator
;						$aMemoryInfo[$i][7]		= FormFactor
;						$aMemoryInfo[$i][8]		= HotSwappable
;						$aMemoryInfo[$i][9]		= InterleaveDataDepth
;						$aMemoryInfo[$i][10]	= InterleavePosition
;						$aMemoryInfo[$i][11]	= Manufacturer
;						$aMemoryInfo[$i][12]	= MemoryType
;						$aMemoryInfo[$i][13]	= Model
;						$aMemoryInfo[$i][14]	= OtherIdentifyingInfo
;						$aMemoryInfo[$i][15]	= PartNumber
;						$aMemoryInfo[$i][16]	= PositionInRow
;						$aMemoryInfo[$i][17]	= PoweredOn
;						$aMemoryInfo[$i][18]	= Removable
;						$aMemoryInfo[$i][19]	= Replaceable
;						$aMemoryInfo[$i][20]	= SerialNumber
;						$aMemoryInfo[$i][21]	= SKU
;						$aMemoryInfo[$i][22]	= Speed
;						$aMemoryInfo[$i][23]	= Status
;						$aMemoryInfo[$i][24]	= Tag
;						$aMemoryInfo[$i][25]	= TotalWidth
;						$aMemoryInfo[$i][26]	= TypeDetail
;						$aMemoryInfo[$i][27]	= Version
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information.
;											2 - $colItems isnt an object.
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1505, False))
Func _ComputerGetMemory(ByRef $aMemoryInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1505, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1506, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1506, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1507, False))
	Dim $aMemoryInfo[1][28], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1507, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1509, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1509, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1510, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_PhysicalMemory", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1510, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1512, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1512, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1513, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1513, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1514, False))
			ReDim $aMemoryInfo[UBound($aMemoryInfo) + 1][28]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1514, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1515, False))
			$aMemoryInfo[$i][0]		= $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1515, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1516, False))
			$aMemoryInfo[$i][1]		= $objItem.BankLabel
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1516, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1517, False))
			$aMemoryInfo[$i][2]		= $objItem.Capacity
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1517, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1518, False))
			$aMemoryInfo[$i][3]		= $objItem.CreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1518, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1519, False))
			$aMemoryInfo[$i][4]		= $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1519, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1520, False))
			$aMemoryInfo[$i][5]		= $objItem.DataWidth
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1520, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1521, False))
			$aMemoryInfo[$i][6]		= $objItem.DeviceLocator
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1521, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1522, False))
			$aMemoryInfo[$i][7]		= $objItem.FormFactor
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1522, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1523, False))
			$aMemoryInfo[$i][8]		= $objItem.HotSwappable
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1523, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1524, False))
			$aMemoryInfo[$i][9]		= $objItem.InterleaveDataDepth
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1524, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1525, False))
			$aMemoryInfo[$i][10]	= $objItem.InterleavePosition
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1525, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1526, False))
			$aMemoryInfo[$i][11]	= $objItem.Manufacturer
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1526, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1527, False))
			$aMemoryInfo[$i][12]	= $objItem.MemoryType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1527, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1528, False))
			$aMemoryInfo[$i][13]	= $objItem.Model
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1528, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1529, False))
			$aMemoryInfo[$i][14]	= $objItem.OtherIdentifyingInfo
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1529, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1530, False))
			$aMemoryInfo[$i][15]	= $objItem.PartNumber
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1530, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1531, False))
			$aMemoryInfo[$i][16]	= $objItem.PositionInRow
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1531, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1532, False))
			$aMemoryInfo[$i][17]	= $objItem.PoweredOn
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1532, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1533, False))
			$aMemoryInfo[$i][18]	= $objItem.Removable
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1533, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1534, False))
			$aMemoryInfo[$i][19]	= $objItem.Replaceable
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1534, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1535, False))
			$aMemoryInfo[$i][20]	= $objItem.SerialNumber
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1535, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1536, False))
			$aMemoryInfo[$i][21]	= $objItem.SKU
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1536, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1537, False))
			$aMemoryInfo[$i][22]	= $objItem.Speed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1537, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1538, False))
			$aMemoryInfo[$i][23]	= $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1538, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1539, False))
			$aMemoryInfo[$i][24]	= $objItem.Tag
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1539, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1540, False))
			$aMemoryInfo[$i][25]	= $objItem.TotalWidth
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1540, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1541, False))
			$aMemoryInfo[$i][26]	= $objItem.TypeDetail
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1541, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1542, False))
			$aMemoryInfo[$i][27]	= $objItem.Version
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1542, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1543, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1543, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1544, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1544, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1545, False))
		$aMemoryInfo[0][0] = UBound($aMemoryInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1545, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1546, False))
		If $aMemoryInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1546, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMemoryInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMemoryInfo", $aMemoryInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1547, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1547, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1548, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1548, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1549, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1549, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1550, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1550, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1551, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1551, False, @error, @extended))
EndFunc ;_ComputerGetMemory

;===============================================================================
; Description:      Returns the Monitor information in an array.
; Parameter(s):     $aMonitorInfo - By Reference - Monitor Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Monitor Information.
;						$aMonitorInfo[$i][0]	= Name
;						$aMonitorInfo[$i][1]	= Availability
;						$aMonitorInfo[$i][2]	= Bandwidth
;						$aMonitorInfo[$i][3]	= ConfigManagerErrorCode
;						$aMonitorInfo[$i][4]	= Description
;						$aMonitorInfo[$i][5]	= ConfigManagerUserConfig
;						$aMonitorInfo[$i][6]	= CreationClassName
;						$aMonitorInfo[$i][7]	= DeviceID
;						$aMonitorInfo[$i][8]	= DisplayType
;						$aMonitorInfo[$i][9]	= ErrorCleared
;						$aMonitorInfo[$i][10]	= ErrorDescription
;						$aMonitorInfo[$i][11]	= IsLocked
;						$aMonitorInfo[$i][12]	= LastErrorCode
;						$aMonitorInfo[$i][13]	= MonitorManufacturer
;						$aMonitorInfo[$i][14]	= MonitorType
;						$aMonitorInfo[$i][15]	= PixelsPerXLogicalInch
;						$aMonitorInfo[$i][16]	= PixelsPerYLogicalInch
;						$aMonitorInfo[$i][17]	= PNPDeviceID
;						$aMonitorInfo[$i][18]	= PowerManagementCapabilities
;						$aMonitorInfo[$i][19]	= PowerManagementSupported
;						$aMonitorInfo[$i][20]	= ScreenHeight
;						$aMonitorInfo[$i][21]	= ScreenWidth
;						$aMonitorInfo[$i][22]	= Status
;						$aMonitorInfo[$i][23]	= StatusInfo
;						$aMonitorInfo[$i][24]	= SystemCreationClassName
;						$aMonitorInfo[$i][25]	= SystemName
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information.
;											2 - $colItems isnt an object.
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1591, False))
Func _ComputerGetMonitors(ByRef $aMonitorInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1591, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1592, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1592, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1593, False))
	Dim $aMonitorInfo[1][26], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1593, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1595, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1595, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1596, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_DesktopMonitor", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1596, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1598, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1598, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1599, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1599, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1600, False))
			ReDim $aMonitorInfo[UBound($aMonitorInfo) + 1][26]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1600, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1601, False))
			$aMonitorInfo[$i][0]	= $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1601, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1602, False))
			$aMonitorInfo[$i][1]	= $objItem.Availability
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1602, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1603, False))
			$aMonitorInfo[$i][2]	= $objItem.Bandwidth
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1603, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1604, False))
			$aMonitorInfo[$i][3]	= $objItem.ConfigManagerErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1604, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1605, False))
			$aMonitorInfo[$i][4]	= $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1605, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1606, False))
			$aMonitorInfo[$i][5]	= $objItem.ConfigManagerUserConfig
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1606, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1607, False))
			$aMonitorInfo[$i][6]	= $objItem.CreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1607, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1608, False))
			$aMonitorInfo[$i][7]	= $objItem.DeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1608, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1609, False))
			$aMonitorInfo[$i][8]	= $objItem.DisplayType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1609, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1610, False))
			$aMonitorInfo[$i][9]	= $objItem.ErrorCleared
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1610, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1611, False))
			$aMonitorInfo[$i][10]	= $objItem.ErrorDescription
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1611, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1612, False))
			$aMonitorInfo[$i][11]	= $objItem.IsLocked
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1612, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1613, False))
			$aMonitorInfo[$i][12]	= $objItem.LastErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1613, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1614, False))
			$aMonitorInfo[$i][13]	= $objItem.MonitorManufacturer
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1614, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1615, False))
			$aMonitorInfo[$i][14]	= $objItem.MonitorType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1615, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1616, False))
			$aMonitorInfo[$i][15]	= $objItem.PixelsPerXLogicalInch
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1616, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1617, False))
			$aMonitorInfo[$i][16]	= $objItem.PixelsPerYLogicalInch
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1617, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1618, False))
			$aMonitorInfo[$i][17]	= $objItem.PNPDeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1618, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1619, False))
			$aMonitorInfo[$i][18]	= $objItem.PowerManagementCapabilities(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1619, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1620, False))
			$aMonitorInfo[$i][19]	= $objItem.PowerManagementSupported
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1620, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1621, False))
			$aMonitorInfo[$i][20]	= $objItem.ScreenHeight
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1621, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1622, False))
			$aMonitorInfo[$i][21]	= $objItem.ScreenWidth
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1622, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1623, False))
			$aMonitorInfo[$i][22]	= $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1623, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1624, False))
			$aMonitorInfo[$i][23]	= $objItem.StatusInfo
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1624, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1625, False))
			$aMonitorInfo[$i][24]	= $objItem.SystemCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1625, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1626, False))
			$aMonitorInfo[$i][25]	= $objItem.SystemName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1626, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1627, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1627, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1628, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1628, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1629, False))
		$aMonitorInfo[0][0] = UBound($aMonitorInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1629, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1630, False))
		If $aMonitorInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1630, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMonitorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMonitorInfo", $aMonitorInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1631, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1631, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1632, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1632, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1633, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1633, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1634, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1634, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1635, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1635, False, @error, @extended))
EndFunc ;_ComputerGetMonitors

;===============================================================================
; Description:      Returns the Motherboard information in an array.
; Parameter(s):     $aMotherboardInfo - By Reference - Motherboard Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Motherboard Information.
;						$aMotherboardInfo[$i][0]	= Name
;						$aMotherboardInfo[$i][1]	= Availability
;						$aMotherboardInfo[$i][2]	= ConfigManagerErrorCode
;						$aMotherboardInfo[$i][3]	= ConfigManagerUserConfig
;						$aMotherboardInfo[$i][4]	= Description
;						$aMotherboardInfo[$i][5]	= CreationClassName
;						$aMotherboardInfo[$i][6]	= DeviceID
;						$aMotherboardInfo[$i][7]	= ErrorCleared
;						$aMotherboardInfo[$i][8]	= ErrorDescription
;						$aMotherboardInfo[$i][9]	= LastErrorCode
;						$aMotherboardInfo[$i][10]	= PNPDeviceID
;						$aMotherboardInfo[$i][11]	= PowerManagementCapabilities
;						$aMotherboardInfo[$i][12]	= PowerManagementSupported
;						$aMotherboardInfo[$i][13]	= PrimaryBusType
;						$aMotherboardInfo[$i][14]	= RevisionNumber
;						$aMotherboardInfo[$i][15]	= SecondaryBusType
;						$aMotherboardInfo[$i][16]	= Status
;						$aMotherboardInfo[$i][17]	= StatusInfo
;						$aMotherboardInfo[$i][18]	= SystemCreationClassName
;						$aMotherboardInfo[$i][19]	= SystemName
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information.
;											2 - $colItems isnt an object.
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1669, False))
Func _ComputerGetMotherboard(ByRef $aMotherboardInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1669, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1670, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1670, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1671, False))
	Dim $aMotherboardInfo[1][20], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1671, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1673, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1673, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1674, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_MotherboardDevice", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1674, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1676, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1676, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1677, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1677, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1678, False))
			ReDim $aMotherboardInfo[UBound($aMotherboardInfo) + 1][20]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1678, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1679, False))
			$aMotherboardInfo[$i][0]	= $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1679, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1680, False))
			$aMotherboardInfo[$i][1]	= $objItem.Availability
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1680, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1681, False))
			$aMotherboardInfo[$i][2]	= $objItem.ConfigManagerErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1681, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1682, False))
			$aMotherboardInfo[$i][3]	= $objItem.ConfigManagerUserConfig
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1682, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1683, False))
			$aMotherboardInfo[$i][4]	= $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1683, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1684, False))
			$aMotherboardInfo[$i][5]	= $objItem.CreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1684, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1685, False))
			$aMotherboardInfo[$i][6]	= $objItem.DeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1685, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1686, False))
			$aMotherboardInfo[$i][7]	= $objItem.ErrorCleared
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1686, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1687, False))
			$aMotherboardInfo[$i][8]	= $objItem.ErrorDescription
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1687, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1688, False))
			$aMotherboardInfo[$i][9]	= $objItem.LastErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1688, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1689, False))
			$aMotherboardInfo[$i][10]	= $objItem.PNPDeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1689, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1690, False))
			$aMotherboardInfo[$i][11]	= $objItem.PowerManagementCapabilities(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1690, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1691, False))
			$aMotherboardInfo[$i][12]	= $objItem.PowerManagementSupported
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1691, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1692, False))
			$aMotherboardInfo[$i][13]	= $objItem.PrimaryBusType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1692, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1693, False))
			$aMotherboardInfo[$i][14]	= $objItem.RevisionNumber
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1693, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1694, False))
			$aMotherboardInfo[$i][15]	= $objItem.SecondaryBusType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1694, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1695, False))
			$aMotherboardInfo[$i][16]	= $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1695, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1696, False))
			$aMotherboardInfo[$i][17]	= $objItem.StatusInfo
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1696, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1697, False))
			$aMotherboardInfo[$i][18]	= $objItem.SystemCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1697, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1698, False))
			$aMotherboardInfo[$i][19]	= $objItem.SystemName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1698, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1699, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1699, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1700, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1700, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1701, False))
		$aMotherboardInfo[0][0] = UBound($aMotherboardInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1701, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1702, False))
		If $aMotherboardInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1702, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMotherboardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMotherboardInfo", $aMotherboardInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1703, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1703, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1704, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1704, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1705, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1705, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1706, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1706, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1707, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1707, False, @error, @extended))
EndFunc ;_ComputerGetMotherboard

;===============================================================================
; Description:      Returns the Mouse information in an array.
; Parameter(s):     $aMouseInfo - By Reference - Mouse Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Mouse Information.
;						$aMouseInfo[0][0]   = Number of Mice
;						$aMouseInfo[$i][0]  = Name ($i starts at 1)
;						$aMouseInfo[$i][1]  = Availability
;						$aMouseInfo[$i][2]  = Config Manager Error Code
;						$aMouseInfo[$i][3]  = Config Manager User Config
;						$aMouseInfo[$i][4]  = Description
;						$aMouseInfo[$i][5]  = Creation Class Name
;						$aMouseInfo[$i][6]  = Device ID
;						$aMouseInfo[$i][7]  = Device Interface
;						$aMouseInfo[$i][8]  = Double Speed Threshold
;						$aMouseInfo[$i][9]  = Error Cleared
;						$aMouseInfo[$i][10] = Error Description
;						$aMouseInfo[$i][11] = Handedness
;						$aMouseInfo[$i][12] = Hardware Type
;						$aMouseInfo[$i][13] = Inf File Name
;						$aMouseInfo[$i][14] = Inf Section
;						$aMouseInfo[$i][15] = Is Locked
;						$aMouseInfo[$i][16] = Last Error Code
;						$aMouseInfo[$i][17] = Manufacturer
;						$aMouseInfo[$i][18] = Number Of Buttons
;						$aMouseInfo[$i][19] = PNP Device ID
;						$aMouseInfo[$i][20] = Pointing Type
;						$aMouseInfo[$i][21] = Power Management Capabilities
;						$aMouseInfo[$i][22] = Power Management Supported
;						$aMouseInfo[$i][23] = Quad Speed Threshold
;						$aMouseInfo[$i][24] = Resolution
;						$aMouseInfo[$i][25] = Sample Rate
;						$aMouseInfo[$i][26] = Status
;						$aMouseInfo[$i][27] = Status Info
;						$aMouseInfo[$i][28] = Synch
;						$aMouseInfo[$i][29] = System Creation Class Name
;						$aMouseInfo[$i][30] = System Name
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1753, False))
Func _ComputerGetMouse(ByRef $aMouseInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1753, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1754, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1754, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1755, False))
	Dim $aMouseInfo[1][31], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1755, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1757, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1757, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1758, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_PointingDevice", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1758, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1760, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1760, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1761, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1761, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1762, False))
			ReDim $aMouseInfo[UBound($aMouseInfo) + 1][31]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1762, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1763, False))
			$aMouseInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1763, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1764, False))
			$aMouseInfo[$i][1]  = $objItem.Availability
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1764, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1765, False))
			$aMouseInfo[$i][2]  = $objItem.ConfigManagerErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1765, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1766, False))
			$aMouseInfo[$i][3]  = $objItem.ConfigManagerUserConfig
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1766, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1767, False))
			$aMouseInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1767, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1768, False))
			$aMouseInfo[$i][5]  = $objItem.CreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1768, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1769, False))
			$aMouseInfo[$i][6]  = $objItem.DeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1769, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1770, False))
			$aMouseInfo[$i][7]  = $objItem.DeviceInterface
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1770, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1771, False))
			$aMouseInfo[$i][8]  = $objItem.DoubleSpeedThreshold
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1771, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1772, False))
			$aMouseInfo[$i][9]  = $objItem.ErrorCleared
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1772, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1773, False))
			$aMouseInfo[$i][10] = $objItem.ErrorDescription
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1773, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1774, False))
			$aMouseInfo[$i][11] = $objItem.Handedness
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1774, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1775, False))
			$aMouseInfo[$i][12] = $objItem.HardwareType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1775, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1776, False))
			$aMouseInfo[$i][13] = $objItem.InfFileName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1776, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1777, False))
			$aMouseInfo[$i][14] = $objItem.InfSection
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1777, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1778, False))
			$aMouseInfo[$i][15] = $objItem.IsLocked
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1778, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1779, False))
			$aMouseInfo[$i][16] = $objItem.LastErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1779, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1780, False))
			$aMouseInfo[$i][17] = $objItem.Manufacturer
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1780, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1781, False))
			$aMouseInfo[$i][18] = $objItem.NumberOfButtons
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1781, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1782, False))
			$aMouseInfo[$i][19] = $objItem.PNPDeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1782, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1783, False))
			$aMouseInfo[$i][20] = $objItem.PointingType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1783, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1784, False))
			$aMouseInfo[$i][21] = $objItem.PowerManagementCapabilities(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1784, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1785, False))
			$aMouseInfo[$i][22] = $objItem.PowerManagementSupported
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1785, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1786, False))
			$aMouseInfo[$i][23] = $objItem.QuadSpeedThreshold
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1786, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1787, False))
			$aMouseInfo[$i][24] = $objItem.Resolution
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1787, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1788, False))
			$aMouseInfo[$i][25] = $objItem.SampleRate
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1788, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1789, False))
			$aMouseInfo[$i][26] = $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1789, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1790, False))
			$aMouseInfo[$i][27] = $objItem.StatusInfo
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1790, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1791, False))
			$aMouseInfo[$i][28] = $objItem.Synch
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1791, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1792, False))
			$aMouseInfo[$i][29] = $objItem.SystemCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1792, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1793, False))
			$aMouseInfo[$i][30] = $objItem.SystemName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1793, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1794, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1794, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1795, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1795, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1796, False))
		$aMouseInfo[0][0] = UBound($aMouseInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1796, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1797, False))
		If $aMouseInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1797, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aMouseInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aMouseInfo", $aMouseInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1798, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1798, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1799, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1799, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1800, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1800, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1801, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1801, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1802, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1802, False, @error, @extended))
EndFunc ;_ComputerGetMouse

;===============================================================================
; Description:      Returns the Network information in an array.
; Parameter(s):     $aNetworkInfo - By Reference - Network Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Network Information.
;						$aNetworkInfo[0][0]   = Number of Network Cards
;						$aNetworkInfo[$i][0]  = Name ($i starts at 1)
;						$aNetworkInfo[$i][1]  = Adapter Type
;						$aNetworkInfo[$i][2]  = Adapter Type ID
;						$aNetworkInfo[$i][3]  = Auto Sense
;						$aNetworkInfo[$i][4]  = Description
;						$aNetworkInfo[$i][5]  = Availability
;						$aNetworkInfo[$i][6]  = Config Manager Error Code
;						$aNetworkInfo[$i][7]  = Config Manager User Config
;						$aNetworkInfo[$i][8]  = Creation Class Name
;						$aNetworkInfo[$i][9]  = Device ID
;						$aNetworkInfo[$i][10] = Error Cleared
;						$aNetworkInfo[$i][11] = Error Description
;						$aNetworkInfo[$i][12] = Index
;						$aNetworkInfo[$i][13] = Installed
;						$aNetworkInfo[$i][14] = Last Error Code
;						$aNetworkInfo[$i][15] = MAC Address
;						$aNetworkInfo[$i][16] = Manufacturer
;						$aNetworkInfo[$i][17] = Max Number Controlled
;						$aNetworkInfo[$i][18] = Max Speed
;						$aNetworkInfo[$i][19] = Net Connection ID
;						$aNetworkInfo[$i][20] = Net Connection Status
;						$aNetworkInfo[$i][21] = Network Addresses
;						$aNetworkInfo[$i][22] = Permanent Address
;						$aNetworkInfo[$i][23] = PNP Device ID
;						$aNetworkInfo[$i][24] = Power Management Capabilities
;						$aNetworkInfo[$i][25] = Power Management Supported
;						$aNetworkInfo[$i][26] = Product Name
;						$aNetworkInfo[$i][27] = Service Name
;						$aNetworkInfo[$i][28] = Speed
;						$aNetworkInfo[$i][29] = Status
;						$aNetworkInfo[$i][30] = Status Info
;						$aNetworkInfo[$i][31] = System Creation Class Name
;						$aNetworkInfo[$i][32] = System Name
;						$aNetworkInfo[$i][33] = Time Of Last Reset
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1851, False))
Func _ComputerGetNetworkCards(ByRef $aNetworkInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1851, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1852, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1852, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1853, False))
	Dim $aNetworkInfo[1][34], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1853, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1855, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1855, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1856, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapter", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1856, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1858, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1858, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1859, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1859, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1860, False))
			ReDim $aNetworkInfo[UBound($aNetworkInfo) + 1][34]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1860, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1861, False))
			$aNetworkInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1861, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1862, False))
			$aNetworkInfo[$i][1]  = $objItem.AdapterType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1862, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1863, False))
			$aNetworkInfo[$i][2]  = $objItem.AdapterTypeId
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1863, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1864, False))
			$aNetworkInfo[$i][3]  = $objItem.AutoSense
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1864, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1865, False))
			$aNetworkInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1865, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1866, False))
			$aNetworkInfo[$i][5]  = $objItem.Availability
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1866, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1867, False))
			$aNetworkInfo[$i][6]  = $objItem.ConfigManagerErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1867, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1868, False))
			$aNetworkInfo[$i][7]  = $objItem.ConfigManagerUserConfig
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1868, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1869, False))
			$aNetworkInfo[$i][8]  = $objItem.CreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1869, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1870, False))
			$aNetworkInfo[$i][9]  = $objItem.DeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1870, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1871, False))
			$aNetworkInfo[$i][10] = $objItem.ErrorCleared
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1871, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1872, False))
			$aNetworkInfo[$i][11] = $objItem.ErrorDescription
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1872, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1873, False))
			$aNetworkInfo[$i][12] = $objItem.Index
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1873, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1874, False))
			$aNetworkInfo[$i][13] = $objItem.Installed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1874, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1875, False))
			$aNetworkInfo[$i][14] = $objItem.LastErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1875, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1876, False))
			$aNetworkInfo[$i][15] = $objItem.MACAddress
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1876, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1877, False))
			$aNetworkInfo[$i][16] = $objItem.Manufacturer
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1877, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1878, False))
			$aNetworkInfo[$i][17] = $objItem.MaxNumberControlled
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1878, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1879, False))
			$aNetworkInfo[$i][18] = $objItem.MaxSpeed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1879, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1880, False))
			$aNetworkInfo[$i][19] = $objItem.NetConnectionID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1880, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1881, False))
			$aNetworkInfo[$i][20] = $objItem.NetConnectionStatus
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1881, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1882, False))
			$aNetworkInfo[$i][21] = $objItem.NetworkAddresses(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1882, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1883, False))
			$aNetworkInfo[$i][22] = $objItem.PermanentAddress
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1883, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1884, False))
			$aNetworkInfo[$i][23] = $objItem.PNPDeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1884, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1885, False))
			$aNetworkInfo[$i][24] = $objItem.PowerManagementCapabilities(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1885, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1886, False))
			$aNetworkInfo[$i][25] = $objItem.PowerManagementSupported
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1886, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1887, False))
			$aNetworkInfo[$i][26] = $objItem.ProductName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1887, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1888, False))
			$aNetworkInfo[$i][27] = $objItem.ServiceName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1888, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1889, False))
			$aNetworkInfo[$i][28] = $objItem.Speed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1889, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1890, False))
			$aNetworkInfo[$i][29] = $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1890, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1891, False))
			$aNetworkInfo[$i][30] = $objItem.StatusInfo
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1891, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1892, False))
			$aNetworkInfo[$i][31] = $objItem.SystemCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1892, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1893, False))
			$aNetworkInfo[$i][32] = $objItem.SystemName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1893, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1894, False))
			$aNetworkInfo[$i][33] = __StringToDate($objItem.TimeOfLastReset)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1894, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1895, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1895, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1896, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1896, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1897, False))
		$aNetworkInfo[0][0] = UBound($aNetworkInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1897, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1898, False))
		If $aNetworkInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1898, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aNetworkInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aNetworkInfo", $aNetworkInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1899, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1899, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1900, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1900, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1901, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1901, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1902, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1902, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1903, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 1903, False, @error, @extended))
EndFunc ;_ComputerGetNetworkCards

;===============================================================================
; Description:      Returns the Printer information in an array.
; Parameter(s):     $aPrinterInfo - By Reference - Printer Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Printer Information.
;						$aPrinterInfo[0][0]   = Number of Printers
;						$aPrinterInfo[$i][0]  = Name ($i starts at 1)
;						$aPrinterInfo[$i][1]  = Attributes
;						$aPrinterInfo[$i][2]  = Availability
;						$aPrinterInfo[$i][3]  = Available Job Sheets
;						$aPrinterInfo[$i][4]  = Description
;						$aPrinterInfo[$i][5]  = Average Pages Per Minute
;						$aPrinterInfo[$i][6]  = Capabilities
;						$aPrinterInfo[$i][7]  = Capability Descriptions
;						$aPrinterInfo[$i][8]  = Char Sets Supported
;						$aPrinterInfo[$i][9]  = Comment
;						$aPrinterInfo[$i][10] = Config Manager Error Code
;						$aPrinterInfo[$i][11] = Config Manager User Config
;						$aPrinterInfo[$i][12] = Creation Class Name
;						$aPrinterInfo[$i][13] = Current Capabilities
;						$aPrinterInfo[$i][14] = Current CharSet
;						$aPrinterInfo[$i][15] = Current Language
;						$aPrinterInfo[$i][16] = Current Mime Type
;						$aPrinterInfo[$i][17] = Current Natural Language
;						$aPrinterInfo[$i][18] = Current Paper Type
;						$aPrinterInfo[$i][19] = Default
;						$aPrinterInfo[$i][20] = Default Capabilities
;						$aPrinterInfo[$i][21] = Default Copies
;						$aPrinterInfo[$i][22] = Default Language
;						$aPrinterInfo[$i][23] = Default Mime Type
;						$aPrinterInfo[$i][24] = Default Number Up
;						$aPrinterInfo[$i][25] = Default Paper Type
;						$aPrinterInfo[$i][26] = Default Priority
;						$aPrinterInfo[$i][27] = Detected Error State
;						$aPrinterInfo[$i][28] = Device ID
;						$aPrinterInfo[$i][29] = Direct
;						$aPrinterInfo[$i][30] = Do Complete First
;						$aPrinterInfo[$i][31] = Driver Name
;						$aPrinterInfo[$i][32] = Enable BIDI
;						$aPrinterInfo[$i][33] = Enable Dev Query Print
;						$aPrinterInfo[$i][34] = Error Cleared
;						$aPrinterInfo[$i][35] = Error Description
;						$aPrinterInfo[$i][36] = Error Information
;						$aPrinterInfo[$i][37] = Extended Detected Error State
;						$aPrinterInfo[$i][38] = Extended Printer Status
;						$aPrinterInfo[$i][39] = Hidden
;						$aPrinterInfo[$i][40] = Horizontal Resolution
;						$aPrinterInfo[$i][41] = Install Date
;						$aPrinterInfo[$i][42] = Job Count Since Last Reset
;						$aPrinterInfo[$i][43] = Keep Printed Jobs
;						$aPrinterInfo[$i][44] = Languages Supported
;						$aPrinterInfo[$i][45] = Last Error Code
;						$aPrinterInfo[$i][46] = Local
;						$aPrinterInfo[$i][47] = Location
;						$aPrinterInfo[$i][48] = Marking Technology
;						$aPrinterInfo[$i][49] = Max Copies
;						$aPrinterInfo[$i][50] = Max Number Up
;						$aPrinterInfo[$i][51] = Max Size Supported
;						$aPrinterInfo[$i][52] = Mime Types Supported
;						$aPrinterInfo[$i][53] = Natural Languages Supported
;						$aPrinterInfo[$i][54] = Network
;						$aPrinterInfo[$i][55] = Paper Sizes Supported
;						$aPrinterInfo[$i][56] = Paper Types Available
;						$aPrinterInfo[$i][57] = Parameters
;						$aPrinterInfo[$i][58] = PNP Device ID
;						$aPrinterInfo[$i][59] = Port Name
;						$aPrinterInfo[$i][60] = Power Management Capabilities
;						$aPrinterInfo[$i][61] = Power Management Supported
;						$aPrinterInfo[$i][62] = Printer Paper Names
;						$aPrinterInfo[$i][63] = Printer State
;						$aPrinterInfo[$i][64] = Printer Status
;						$aPrinterInfo[$i][65] = Print Job Data Type
;						$aPrinterInfo[$i][66] = Print Processor
;						$aPrinterInfo[$i][67] = Priority
;						$aPrinterInfo[$i][68] = Published
;						$aPrinterInfo[$i][69] = Queued
;						$aPrinterInfo[$i][70] = Raw Only
;						$aPrinterInfo[$i][71] = Separator File
;						$aPrinterInfo[$i][72] = Server Name
;						$aPrinterInfo[$i][73] = Shared
;						$aPrinterInfo[$i][74] = Share Name
;						$aPrinterInfo[$i][75] = Spool Enabled
;						$aPrinterInfo[$i][76] = Start Time
;						$aPrinterInfo[$i][77] = Status
;						$aPrinterInfo[$i][78] = Status Info
;						$aPrinterInfo[$i][79] = System Creation Class Name
;						$aPrinterInfo[$i][80] = System Name
;						$aPrinterInfo[$i][81] = Time Of Last Reset
;						$aPrinterInfo[$i][82] = Until Time
;						$aPrinterInfo[$i][83] = Vertical Resolution
;						$aPrinterInfo[$i][84] = Work Offline
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2003, False))
Func _ComputerGetPrinters(ByRef $aPrinterInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2003, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2004, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2004, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2005, False))
	Dim $aPrinterInfo[1][85], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2005, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2007, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2007, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2008, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_Printer", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2008, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2010, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2010, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2011, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2011, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2012, False))
			ReDim $aPrinterInfo[UBound($aPrinterInfo) + 1][85]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2012, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2013, False))
			$aPrinterInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2013, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2014, False))
			$aPrinterInfo[$i][1]  = $objItem.Attributes
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2014, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2015, False))
			$aPrinterInfo[$i][2]  = $objItem.Availability
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2015, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2016, False))
			$aPrinterInfo[$i][3]  = $objItem.AvailableJobSheets(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2016, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2017, False))
			$aPrinterInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2017, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2018, False))
			$aPrinterInfo[$i][5]  = $objItem.AveragePagesPerMinute
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2018, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2019, False))
			$aPrinterInfo[$i][6]  = $objItem.Capabilities(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2019, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2020, False))
			$aPrinterInfo[$i][7]  = $objItem.CapabilityDescriptions(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2020, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2021, False))
			$aPrinterInfo[$i][8]  = $objItem.CharSetsSupported(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2021, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2022, False))
			$aPrinterInfo[$i][9]  = $objItem.Comment
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2022, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2023, False))
			$aPrinterInfo[$i][10] = $objItem.ConfigManagerErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2023, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2024, False))
			$aPrinterInfo[$i][11] = $objItem.ConfigManagerUserConfig
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2024, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2025, False))
			$aPrinterInfo[$i][12] = $objItem.CreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2025, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2026, False))
			$aPrinterInfo[$i][13] = $objItem.CurrentCapabilities(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2026, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2027, False))
			$aPrinterInfo[$i][14] = $objItem.CurrentCharSet
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2027, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2028, False))
			$aPrinterInfo[$i][15] = $objItem.CurrentLanguage
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2028, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2029, False))
			$aPrinterInfo[$i][16] = $objItem.CurrentMimeType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2029, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2030, False))
			$aPrinterInfo[$i][17] = $objItem.CurrentNaturalLanguage
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2030, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2031, False))
			$aPrinterInfo[$i][18] = $objItem.CurrentPaperType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2031, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2032, False))
			$aPrinterInfo[$i][19] = $objItem.Default
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2032, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2033, False))
			$aPrinterInfo[$i][20] = $objItem.DefaultCapabilities(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2033, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2034, False))
			$aPrinterInfo[$i][21] = $objItem.DefaultCopies
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2034, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2035, False))
			$aPrinterInfo[$i][22] = $objItem.DefaultLanguage
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2035, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2036, False))
			$aPrinterInfo[$i][23] = $objItem.DefaultMimeType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2036, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2037, False))
			$aPrinterInfo[$i][24] = $objItem.DefaultNumberUp
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2037, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2038, False))
			$aPrinterInfo[$i][25] = $objItem.DefaultPaperType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2038, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2039, False))
			$aPrinterInfo[$i][26] = $objItem.DefaultPriority
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2039, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2040, False))
			$aPrinterInfo[$i][27] = $objItem.DetectedErrorState
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2040, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2041, False))
			$aPrinterInfo[$i][28] = $objItem.DeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2041, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2042, False))
			$aPrinterInfo[$i][29] = $objItem.Direct
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2042, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2043, False))
			$aPrinterInfo[$i][30] = $objItem.DoCompleteFirst
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2043, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2044, False))
			$aPrinterInfo[$i][31] = $objItem.DriverName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2044, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2045, False))
			$aPrinterInfo[$i][32] = $objItem.EnableBIDI
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2045, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2046, False))
			$aPrinterInfo[$i][33] = $objItem.EnableDevQueryPrint
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2046, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2047, False))
			$aPrinterInfo[$i][34] = $objItem.ErrorCleared
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2047, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2048, False))
			$aPrinterInfo[$i][35] = $objItem.ErrorDescription
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2048, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2049, False))
			$aPrinterInfo[$i][36] = $objItem.ErrorInformation(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2049, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2050, False))
			$aPrinterInfo[$i][37] = $objItem.ExtendedDetectedErrorState
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2050, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2051, False))
			$aPrinterInfo[$i][38] = $objItem.ExtendedPrinterStatus
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2051, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2052, False))
			$aPrinterInfo[$i][39] = $objItem.Hidden
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2052, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2053, False))
			$aPrinterInfo[$i][40] = $objItem.HorizontalResolution
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2053, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2054, False))
			$aPrinterInfo[$i][41] = __StringToDate($objItem.InstallDate)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2054, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2055, False))
			$aPrinterInfo[$i][42] = $objItem.JobCountSinceLastReset
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2055, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2056, False))
			$aPrinterInfo[$i][43] = $objItem.KeepPrintedJobs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2056, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2057, False))
			$aPrinterInfo[$i][44] = $objItem.LanguagesSupported(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2057, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2058, False))
			$aPrinterInfo[$i][45] = $objItem.LastErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2058, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2059, False))
			$aPrinterInfo[$i][46] = $objItem.Local
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2059, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2060, False))
			$aPrinterInfo[$i][47] = $objItem.Location
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2060, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2061, False))
			$aPrinterInfo[$i][48] = $objItem.MarkingTechnology
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2061, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2062, False))
			$aPrinterInfo[$i][49] = $objItem.MaxCopies
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2062, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2063, False))
			$aPrinterInfo[$i][50] = $objItem.MaxNumberUp
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2063, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2064, False))
			$aPrinterInfo[$i][51] = $objItem.MaxSizeSupported
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2064, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2065, False))
			$aPrinterInfo[$i][52] = $objItem.MimeTypesSupported(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2065, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2066, False))
			$aPrinterInfo[$i][53] = $objItem.NaturalLanguagesSupported(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2066, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2067, False))
			$aPrinterInfo[$i][54] = $objItem.Network
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2067, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2068, False))
			$aPrinterInfo[$i][55] = $objItem.PaperSizesSupported(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2068, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2069, False))
			$aPrinterInfo[$i][56] = $objItem.PaperTypesAvailable(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2069, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2070, False))
			$aPrinterInfo[$i][57] = $objItem.Parameters
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2070, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2071, False))
			$aPrinterInfo[$i][58] = $objItem.PNPDeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2071, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2072, False))
			$aPrinterInfo[$i][59] = $objItem.PortName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2072, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2073, False))
			$aPrinterInfo[$i][60] = $objItem.PowerManagementCapabilities(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2073, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2074, False))
			$aPrinterInfo[$i][61] = $objItem.PowerManagementSupported
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2074, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2075, False))
			$aPrinterInfo[$i][62] = $objItem.PrinterPaperNames(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2075, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2076, False))
			$aPrinterInfo[$i][63] = $objItem.PrinterState
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2076, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2077, False))
			$aPrinterInfo[$i][64] = $objItem.PrinterStatus
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2077, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2078, False))
			$aPrinterInfo[$i][65] = $objItem.PrintJobDataType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2078, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2079, False))
			$aPrinterInfo[$i][66] = $objItem.PrintProcessor
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2079, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2080, False))
			$aPrinterInfo[$i][67] = $objItem.Priority
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2080, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2081, False))
			$aPrinterInfo[$i][68] = $objItem.Published
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2081, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2082, False))
			$aPrinterInfo[$i][69] = $objItem.Queued
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2082, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2083, False))
			$aPrinterInfo[$i][70] = $objItem.RawOnly
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2083, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2084, False))
			$aPrinterInfo[$i][71] = $objItem.SeparatorFile
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2084, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2085, False))
			$aPrinterInfo[$i][72] = $objItem.ServerName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2085, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2086, False))
			$aPrinterInfo[$i][73] = $objItem.Shared
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2086, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2087, False))
			$aPrinterInfo[$i][74] = $objItem.ShareName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2087, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2088, False))
			$aPrinterInfo[$i][75] = $objItem.SpoolEnabled
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2088, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2089, False))
			$aPrinterInfo[$i][76] = __StringToDate($objItem.StartTime)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2089, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2090, False))
			$aPrinterInfo[$i][77] = $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2090, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2091, False))
			$aPrinterInfo[$i][78] = $objItem.StatusInfo
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2091, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2092, False))
			$aPrinterInfo[$i][79] = $objItem.SystemCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2092, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2093, False))
			$aPrinterInfo[$i][80] = $objItem.SystemName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2093, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2094, False))
			$aPrinterInfo[$i][81] = __StringToDate($objItem.TimeOfLastReset)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2094, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2095, False))
			$aPrinterInfo[$i][82] = __StringToDate($objItem.UntilTime)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2095, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2096, False))
			$aPrinterInfo[$i][83] = $objItem.VerticalResolution
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2096, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2097, False))
			$aPrinterInfo[$i][84] = $objItem.WorkOffline
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2097, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2098, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2098, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2099, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2099, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2100, False))
		$aPrinterInfo[0][0] = UBound($aPrinterInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2100, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2101, False))
		If $aPrinterInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2101, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aPrinterInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aPrinterInfo", $aPrinterInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2102, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2102, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2103, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2103, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2104, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2104, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2105, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2105, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2106, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2106, False, @error, @extended))
EndFunc ;_ComputerGetPrinters

;===============================================================================
; Description:      Returns the Processor information in an array.
; Parameter(s):     $aProcessorInfo - By Reference - Processor Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Processor Information.
;						$aProcessorInfo[0][0]   = Number of Processors
;						$aProcessorInfo[$i][0]  = Name ($i starts at 1)
;						$aProcessorInfo[$i][1]  = Address Width
;						$aProcessorInfo[$i][2]  = Architecture
;						$aProcessorInfo[$i][3]  = Availability
;						$aProcessorInfo[$i][4]  = Description
;						$aProcessorInfo[$i][5]  = Config Manager Error Code
;						$aProcessorInfo[$i][6]  = Config Manager User Config
;						$aProcessorInfo[$i][7]  = CPU Status
;						$aProcessorInfo[$i][8]  = Creation Class Name
;						$aProcessorInfo[$i][9]  = Current Clock Speed
;						$aProcessorInfo[$i][10] = Current Voltage
;						$aProcessorInfo[$i][11] = Data Width
;						$aProcessorInfo[$i][12] = Device ID
;						$aProcessorInfo[$i][13] = Error Cleared
;						$aProcessorInfo[$i][14] = Error Description
;						$aProcessorInfo[$i][15] = Ext Clock
;						$aProcessorInfo[$i][16] = Family
;						$aProcessorInfo[$i][17] = L2 Cache Size
;						$aProcessorInfo[$i][18] = L2 Cache Speed
;						$aProcessorInfo[$i][19] = Last Error Code
;						$aProcessorInfo[$i][20] = Level
;						$aProcessorInfo[$i][21] = Load Percentage
;						$aProcessorInfo[$i][22] = Manufacturer
;						$aProcessorInfo[$i][23] = Max Clock Speed
;						$aProcessorInfo[$i][24] = Other Family Description
;						$aProcessorInfo[$i][25] = PNP Device ID
;						$aProcessorInfo[$i][26] = Power Management Capabilities
;						$aProcessorInfo[$i][27] = Power Management Supported
;						$aProcessorInfo[$i][28] = Processor ID
;						$aProcessorInfo[$i][29] = Processor Type
;						$aProcessorInfo[$i][30] = Revision
;						$aProcessorInfo[$i][31] = Role
;						$aProcessorInfo[$i][32] = Socket Designation
;						$aProcessorInfo[$i][33] = Status
;						$aProcessorInfo[$i][34] = Status Info
;						$aProcessorInfo[$i][35] = Stepping
;						$aProcessorInfo[$i][36] = System Creation Class Name
;						$aProcessorInfo[$i][37] = System Name
;						$aProcessorInfo[$i][38] = Unique ID
;						$aProcessorInfo[$i][39] = Upgrade Method
;						$aProcessorInfo[$i][40] = Version
;						$aProcessorInfo[$i][41] = Voltage Caps
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2163, False))
Func _ComputerGetProcessors(ByRef $aProcessorInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2163, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2164, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2164, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2165, False))
	Dim $aProcessorInfo[1][42], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2165, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2167, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2167, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2168, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_Processor", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2168, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2170, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2170, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2171, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2171, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2172, False))
			ReDim $aProcessorInfo[UBound($aProcessorInfo) + 1][42]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2172, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2173, False))
			$aProcessorInfo[$i][0]  = StringStripWS($objItem.Name, 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2173, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2174, False))
			$aProcessorInfo[$i][1]  = $objItem.AddressWidth
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2174, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2175, False))
			$aProcessorInfo[$i][2]  = $objItem.Architecture
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2175, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2176, False))
			$aProcessorInfo[$i][3]  = $objItem.Availability
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2176, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2177, False))
			$aProcessorInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2177, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2178, False))
			$aProcessorInfo[$i][5]  = $objItem.ConfigManagerErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2178, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2179, False))
			$aProcessorInfo[$i][6]  = $objItem.ConfigManagerUserConfig
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2179, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2180, False))
			$aProcessorInfo[$i][7]  = $objItem.CpuStatus
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2180, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2181, False))
			$aProcessorInfo[$i][8]  = $objItem.CreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2181, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2182, False))
			$aProcessorInfo[$i][9]  = $objItem.CurrentClockSpeed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2182, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2183, False))
			$aProcessorInfo[$i][10] = $objItem.CurrentVoltage
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2183, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2184, False))
			$aProcessorInfo[$i][11] = $objItem.DataWidth
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2184, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2185, False))
			$aProcessorInfo[$i][12] = $objItem.DeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2185, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2186, False))
			$aProcessorInfo[$i][13] = $objItem.ErrorCleared
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2186, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2187, False))
			$aProcessorInfo[$i][14] = $objItem.ErrorDescription
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2187, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2188, False))
			$aProcessorInfo[$i][15] = $objItem.ExtClock
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2188, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2189, False))
			$aProcessorInfo[$i][16] = $objItem.Family
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2189, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2190, False))
			$aProcessorInfo[$i][17] = $objItem.L2CacheSize
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2190, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2191, False))
			$aProcessorInfo[$i][18] = $objItem.L2CacheSpeed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2191, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2192, False))
			$aProcessorInfo[$i][19] = $objItem.LastErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2192, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2193, False))
			$aProcessorInfo[$i][20] = $objItem.Level
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2193, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2194, False))
			$aProcessorInfo[$i][21] = $objItem.LoadPercentage
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2194, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2195, False))
			$aProcessorInfo[$i][22] = $objItem.Manufacturer
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2195, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2196, False))
			$aProcessorInfo[$i][23] = $objItem.MaxClockSpeed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2196, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2197, False))
			$aProcessorInfo[$i][24] = $objItem.OtherFamilyDescription
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2197, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2198, False))
			$aProcessorInfo[$i][25] = $objItem.PNPDeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2198, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2199, False))
			$aProcessorInfo[$i][26] = $objItem.PowerManagementCapabilities(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2199, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2200, False))
			$aProcessorInfo[$i][27] = $objItem.PowerManagementSupported
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2200, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2201, False))
			$aProcessorInfo[$i][28] = $objItem.ProcessorId
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2201, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2202, False))
			$aProcessorInfo[$i][29] = $objItem.ProcessorType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2202, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2203, False))
			$aProcessorInfo[$i][30] = $objItem.Revision
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2203, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2204, False))
			$aProcessorInfo[$i][31] = $objItem.Role
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2204, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2205, False))
			$aProcessorInfo[$i][32] = $objItem.SocketDesignation
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2205, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2206, False))
			$aProcessorInfo[$i][33] = $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2206, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2207, False))
			$aProcessorInfo[$i][34] = $objItem.StatusInfo
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2207, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2208, False))
			$aProcessorInfo[$i][35] = $objItem.Stepping
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2208, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2209, False))
			$aProcessorInfo[$i][36] = $objItem.SystemCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2209, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2210, False))
			$aProcessorInfo[$i][37] = $objItem.SystemName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2210, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2211, False))
			$aProcessorInfo[$i][38] = $objItem.UniqueId
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2211, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2212, False))
			$aProcessorInfo[$i][39] = $objItem.UpgradeMethod
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2212, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2213, False))
			$aProcessorInfo[$i][40] = $objItem.Version
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2213, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2214, False))
			$aProcessorInfo[$i][41] = $objItem.VoltageCaps
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2214, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2215, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2215, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2216, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2216, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2217, False))
		$aProcessorInfo[0][0] = UBound($aProcessorInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2217, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2218, False))
		If $aProcessorInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2218, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aProcessorInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aProcessorInfo", $aProcessorInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2219, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2219, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2220, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2220, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2221, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2221, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2222, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2222, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2223, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2223, False, @error, @extended))
EndFunc ;_ComputerGetProcessors

;===============================================================================
; Description:      Returns the SoundCard information in an array.
; Parameter(s):     $aSoundCardInfo - By Reference - SoundCard Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of SoundCard Information.
;						$aSoundCardInfo[0][0]   = Number of Sound Cards
;						$aSoundCardInfo[$i][0]  = Name ($i starts at 1)
;						$aSoundCardInfo[$i][1]  = Availability
;						$aSoundCardInfo[$i][2]  = Config Manager Error Code
;						$aSoundCardInfo[$i][3]  = Config Manager User Config
;						$aSoundCardInfo[$i][4]  = Description
;						$aSoundCardInfo[$i][5]  = Creation Class Name
;						$aSoundCardInfo[$i][6]  = Device ID
;						$aSoundCardInfo[$i][7]  = DMA Buffer Size
;						$aSoundCardInfo[$i][8]  = Error Cleared
;						$aSoundCardInfo[$i][9]  = Error Description
;						$aSoundCardInfo[$i][10] = Last Error Code
;						$aSoundCardInfo[$i][11] = Manufacturer
;						$aSoundCardInfo[$i][12] = MPU 401 Address
;						$aSoundCardInfo[$i][13] = PNP Device ID
;						$aSoundCardInfo[$i][14] = Power Management Capabilities
;						$aSoundCardInfo[$i][15] = Power Management Supported
;						$aSoundCardInfo[$i][16] = Product Name
;						$aSoundCardInfo[$i][17] = Status
;						$aSoundCardInfo[$i][18] = Status Info
;						$aSoundCardInfo[$i][19] = System Creation Class Name
;						$aSoundCardInfo[$i][20] = System Name
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2259, False))
Func _ComputerGetSoundCards(ByRef $aSoundCardInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2259, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2260, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2260, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2261, False))
	Dim $aSoundCardInfo[1][21], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2261, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2263, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2263, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2264, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_SoundDevice", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2264, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2266, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2266, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2267, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2267, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2268, False))
			ReDim $aSoundCardInfo[UBound($aSoundCardInfo) + 1][21]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2268, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2269, False))
			$aSoundCardInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2269, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2270, False))
			$aSoundCardInfo[$i][1]  = $objItem.Availability
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2270, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2271, False))
			$aSoundCardInfo[$i][2]  = $objItem.ConfigManagerErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2271, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2272, False))
			$aSoundCardInfo[$i][3]  = $objItem.ConfigManagerUserConfig
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2272, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2273, False))
			$aSoundCardInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2273, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2274, False))
			$aSoundCardInfo[$i][5]  = $objItem.CreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2274, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2275, False))
			$aSoundCardInfo[$i][6]  = $objItem.DeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2275, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2276, False))
			$aSoundCardInfo[$i][7]  = $objItem.DMABufferSize
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2276, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2277, False))
			$aSoundCardInfo[$i][8]  = $objItem.ErrorCleared
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2277, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2278, False))
			$aSoundCardInfo[$i][9]  = $objItem.ErrorDescription
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2278, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2279, False))
			$aSoundCardInfo[$i][10] = $objItem.LastErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2279, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2280, False))
			$aSoundCardInfo[$i][11] = $objItem.Manufacturer
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2280, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2281, False))
			$aSoundCardInfo[$i][12] = $objItem.MPU401Address
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2281, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2282, False))
			$aSoundCardInfo[$i][13] = $objItem.PNPDeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2282, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2283, False))
			$aSoundCardInfo[$i][14] = $objItem.PowerManagementCapabilities(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2283, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2284, False))
			$aSoundCardInfo[$i][15] = $objItem.PowerManagementSupported
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2284, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2285, False))
			$aSoundCardInfo[$i][16] = $objItem.ProductName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2285, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2286, False))
			$aSoundCardInfo[$i][17] = $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2286, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2287, False))
			$aSoundCardInfo[$i][18] = $objItem.StatusInfo
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2287, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2288, False))
			$aSoundCardInfo[$i][19] = $objItem.SystemCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2288, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2289, False))
			$aSoundCardInfo[$i][20] = $objItem.SystemName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2289, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2290, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2290, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2291, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2291, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2292, False))
		$aSoundCardInfo[0][0] = UBound($aSoundCardInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2292, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2293, False))
		If $aSoundCardInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2293, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSoundCardInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSoundCardInfo", $aSoundCardInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2294, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2294, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2295, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2295, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2296, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2296, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2297, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2297, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2298, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2298, False, @error, @extended))
EndFunc ;_ComputerGetSoundCards

;===============================================================================
; Description:      Returns the System information in an array.
; Parameter(s):     $aSystemInfo - By Reference - System Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of System Information.
;						$aSystemInfo[$i][0]  = Name
;						$aSystemInfo[$i][1]  = Admin Password Status
;						$aSystemInfo[$i][2]  = Automatic Reset Boot Option
;						$aSystemInfo[$i][3]  = Automatic Reset Capability
;						$aSystemInfo[$i][4]  = Description
;						$aSystemInfo[$i][5]  = Boot Option On Limit
;						$aSystemInfo[$i][6]  = Boot Option On Watch Dog
;						$aSystemInfo[$i][7]  = Boot ROM Supported
;						$aSystemInfo[$i][8]  = Bootup State
;						$aSystemInfo[$i][9]  = Chassis Bootup State
;						$aSystemInfo[$i][10] = Creation Class Name
;						$aSystemInfo[$i][11] = Current Time Zone
;						$aSystemInfo[$i][12] = Daylight In Effect
;						$aSystemInfo[$i][13] = Domain
;						$aSystemInfo[$i][14] = Domain Role
;						$aSystemInfo[$i][15] = Enable Daylight Savings Time
;						$aSystemInfo[$i][16] = Front Panel Reset Status
;						$aSystemInfo[$i][17] = Infrared Supported
;						$aSystemInfo[$i][18] = Initial Load Info
;						$aSystemInfo[$i][19] = Keyboard Password Status
;						$aSystemInfo[$i][20] = Last Load Info
;						$aSystemInfo[$i][21] = Manufacturer
;						$aSystemInfo[$i][22] = Model
;						$aSystemInfo[$i][23] = Name Format
;						$aSystemInfo[$i][24] = Network Server Mode Enabled
;						$aSystemInfo[$i][25] = Number Of Processors
;						$aSystemInfo[$i][26] = OEM Logo Bitmap
;						$aSystemInfo[$i][27] = OEM String Array
;						$aSystemInfo[$i][28] = Part Of Domain
;						$aSystemInfo[$i][29] = Pause After Reset
;						$aSystemInfo[$i][30] = Power Management Capabilities
;						$aSystemInfo[$i][31] = Power Management Supported
;						$aSystemInfo[$i][32] = Power On Password Status
;						$aSystemInfo[$i][33] = Power State
;						$aSystemInfo[$i][34] = Power Supply State
;						$aSystemInfo[$i][35] = Primary Owner Contact
;						$aSystemInfo[$i][36] = Primary Owner Name
;						$aSystemInfo[$i][37] = Reset Capability
;						$aSystemInfo[$i][38] = Reset Count
;						$aSystemInfo[$i][39] = Reset Limit
;						$aSystemInfo[$i][40] = Roles
;						$aSystemInfo[$i][41] = Status
;						$aSystemInfo[$i][42] = Support Contact Description
;						$aSystemInfo[$i][43] = System Startup Delay
;						$aSystemInfo[$i][44] = System Startup Options
;						$aSystemInfo[$i][45] = System Startup Setting
;						$aSystemInfo[$i][46] = System Type
;						$aSystemInfo[$i][47] = Thermal State
;						$aSystemInfo[$i][48] = Total Physical Memory
;						$aSystemInfo[$i][49] = User Name
;						$aSystemInfo[$i][50] = Wake Up Type
;						$aSystemInfo[$i][51] = Workgroup
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2364, False))
Func _ComputerGetSystem(ByRef $aSystemInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2364, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2365, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2365, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2366, False))
	Dim $aSystemInfo[1][52], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2366, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2368, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2368, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2369, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_ComputerSystem", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2369, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2371, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2371, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2372, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2372, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2373, False))
			ReDim $aSystemInfo[UBound($aSystemInfo) + 1][52]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2373, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2374, False))
			$aSystemInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2374, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2375, False))
			$aSystemInfo[$i][1]  = $objItem.AdminPasswordStatus
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2375, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2376, False))
			$aSystemInfo[$i][2]  = $objItem.AutomaticResetBootOption
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2376, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2377, False))
			$aSystemInfo[$i][3]  = $objItem.AutomaticResetCapability
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2377, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2378, False))
			$aSystemInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2378, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2379, False))
			$aSystemInfo[$i][5]  = $objItem.BootOptionOnLimit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2379, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2380, False))
			$aSystemInfo[$i][6]  = $objItem.BootOptionOnWatchDog
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2380, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2381, False))
			$aSystemInfo[$i][7]  = $objItem.BootROMSupported
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2381, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2382, False))
			$aSystemInfo[$i][8]  = $objItem.BootupState
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2382, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2383, False))
			$aSystemInfo[$i][9]  = $objItem.ChassisBootupState
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2383, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2384, False))
			$aSystemInfo[$i][10] = $objItem.CreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2384, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2385, False))
			$aSystemInfo[$i][11] = $objItem.CurrentTimeZone
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2385, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2386, False))
			$aSystemInfo[$i][12] = $objItem.DaylightInEffect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2386, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2387, False))
			$aSystemInfo[$i][13] = $objItem.Domain
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2387, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2388, False))
			$aSystemInfo[$i][14] = $objItem.DomainRole
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2388, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2389, False))
			$aSystemInfo[$i][15] = $objItem.EnableDaylightSavingsTime
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2389, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2390, False))
			$aSystemInfo[$i][16] = $objItem.FrontPanelResetStatus
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2390, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2391, False))
			$aSystemInfo[$i][17] = $objItem.InfraredSupported
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2391, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2392, False))
			$aSystemInfo[$i][18] = $objItem.InitialLoadInfo(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2392, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2393, False))
			$aSystemInfo[$i][19] = $objItem.KeyboardPasswordStatus
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2393, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2394, False))
			$aSystemInfo[$i][20] = $objItem.LastLoadInfo
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2394, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2395, False))
			$aSystemInfo[$i][21] = $objItem.Manufacturer
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2395, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2396, False))
			$aSystemInfo[$i][22] = $objItem.Model
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2396, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2397, False))
			$aSystemInfo[$i][23] = $objItem.NameFormat
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2397, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2398, False))
			$aSystemInfo[$i][24] = $objItem.NetworkServerModeEnabled
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2398, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2399, False))
			$aSystemInfo[$i][25] = $objItem.NumberOfProcessors
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2399, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2400, False))
			$aSystemInfo[$i][26] = $objItem.OEMLogoBitmap(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2400, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2401, False))
			$aSystemInfo[$i][27] = $objItem.OEMStringArray(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2401, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2402, False))
			$aSystemInfo[$i][28] = $objItem.PartOfDomain
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2402, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2403, False))
			$aSystemInfo[$i][29] = $objItem.PauseAfterReset
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2403, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2404, False))
			$aSystemInfo[$i][30] = $objItem.PowerManagementCapabilities(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2404, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2405, False))
			$aSystemInfo[$i][31] = $objItem.PowerManagementSupported
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2405, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2406, False))
			$aSystemInfo[$i][32] = $objItem.PowerOnPasswordStatus
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2406, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2407, False))
			$aSystemInfo[$i][33] = $objItem.PowerState
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2407, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2408, False))
			$aSystemInfo[$i][34] = $objItem.PowerSupplyState
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2408, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2409, False))
			$aSystemInfo[$i][35] = $objItem.PrimaryOwnerContact
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2409, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2410, False))
			$aSystemInfo[$i][36] = $objItem.PrimaryOwnerName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2410, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2411, False))
			$aSystemInfo[$i][37] = $objItem.ResetCapability
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2411, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2412, False))
			$aSystemInfo[$i][38] = $objItem.ResetCount
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2412, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2413, False))
			$aSystemInfo[$i][39] = $objItem.ResetLimit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2413, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2414, False))
			$aSystemInfo[$i][40] = $objItem.Roles(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2414, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2415, False))
			$aSystemInfo[$i][41] = $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2415, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2416, False))
			$aSystemInfo[$i][42] = $objItem.SupportContactDescription(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2416, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2417, False))
			$aSystemInfo[$i][43] = $objItem.SystemStartupDelay
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2417, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2418, False))
			$aSystemInfo[$i][44] = $objItem.SystemStartupOptions(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2418, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2419, False))
			$aSystemInfo[$i][45] = $objItem.SystemStartupSetting
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2419, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2420, False))
			$aSystemInfo[$i][46] = $objItem.SystemType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2420, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2421, False))
			$aSystemInfo[$i][47] = $objItem.ThermalState
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2421, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2422, False))
			$aSystemInfo[$i][48] = $objItem.TotalPhysicalMemory
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2422, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2423, False))
			$aSystemInfo[$i][49] = $objItem.UserName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2423, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2424, False))
			$aSystemInfo[$i][50] = $objItem.WakeUpType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2424, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2425, False))
			$aSystemInfo[$i][51] = $objItem.Workgroup
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2425, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2426, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2426, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2427, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2427, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2428, False))
		$aSystemInfo[0][0] = UBound($aSystemInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2428, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2429, False))
		If $aSystemInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2429, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSystemInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSystemInfo", $aSystemInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2430, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2430, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2431, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2431, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2432, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2432, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2433, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2433, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2434, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2434, False, @error, @extended))
EndFunc ;_ComputerGetSystem

;===============================================================================
; Description:      Returns the System Product information in an array.
; Parameter(s):     $aSysProductInfo - By Reference - System Product Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of System Product Information.
;						$aKeyboardInfo[0][0]   = Number of Keyboards
;						$aKeyboardInfo[$i][0]  = Name ($i starts at 1)
;						$aKeyboardInfo[$i][1]  = Identifying Number
;						$aKeyboardInfo[$i][2]  = SKU Number
;						$aKeyboardInfo[$i][3]  = UUID
;						$aKeyboardInfo[$i][4]  = Description
;						$aKeyboardInfo[$i][5]  = Vendor
;						$aKeyboardInfo[$i][6]  = Version
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2456, False))
Func _ComputerGetSystemProduct(ByRef $aSysProductInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2456, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSysProductInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSysProductInfo", $aSysProductInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2457, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2457, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2458, False))
	Dim $aSysProductInfo[1][7], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2458, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSysProductInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSysProductInfo", $aSysProductInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2460, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2460, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2461, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_ComputerSystemProduct", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2461, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2463, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2463, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2464, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2464, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2465, False))
			ReDim $aSysProductInfo[UBound($aSysProductInfo) + 1][7]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2465, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSysProductInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSysProductInfo", $aSysProductInfo))
If SetError(@error, @extended, IsDeclared("aSysProductInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSysProductInfo", $aSysProductInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2466, False))
			$aSysProductInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2466, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSysProductInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSysProductInfo", $aSysProductInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2467, False))
			$aSysProductInfo[$i][1]  = $objItem.IdentifyingNumber
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2467, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSysProductInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSysProductInfo", $aSysProductInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2468, False))
			$aSysProductInfo[$i][2]  = $objItem.SKUNumber
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2468, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSysProductInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSysProductInfo", $aSysProductInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2469, False))
			$aSysProductInfo[$i][3]  = $objItem.UUID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2469, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSysProductInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSysProductInfo", $aSysProductInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2470, False))
			$aSysProductInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2470, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSysProductInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSysProductInfo", $aSysProductInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2471, False))
			$aSysProductInfo[$i][5]  = $objItem.Vendor
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2471, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSysProductInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSysProductInfo", $aSysProductInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2472, False))
			$aSysProductInfo[$i][6]  = $objItem.Version
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2472, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSysProductInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSysProductInfo", $aSysProductInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2473, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2473, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2474, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2474, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2475, False))
		$aSysProductInfo[0][0] = UBound($aSysProductInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2475, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSysProductInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSysProductInfo", $aSysProductInfo))
If SetError(@error, @extended, IsDeclared("aSysProductInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSysProductInfo", $aSysProductInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2476, False))
		If $aSysProductInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2476, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aSysProductInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aSysProductInfo", $aSysProductInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2477, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2477, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2478, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2478, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2479, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2479, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2480, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2480, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2481, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2481, False, @error, @extended))
EndFunc ;_ComputerGetSystemProduct

;===============================================================================
; Description:      Returns the Video information in an array.
; Parameter(s):     $aVideoInfo - By Reference - Video Information array.
; Requirement(s):   None
; Return Value(s):  On Success - Returns array of Video Information.
;						$aVideoInfo[0][0]   = Number of Video Cards
;						$aVideoInfo[$i][0]  = Name ($i starts at 1)
;						$aVideoInfo[$i][1]  = Accelerator Capabilities
;						$aVideoInfo[$i][2]  = Adapter Compatibility
;						$aVideoInfo[$i][3]  = Adapter DAC Type
;						$aVideoInfo[$i][4]  = Description
;						$aVideoInfo[$i][5]  = Adapter RAM
;						$aVideoInfo[$i][6]  = Availability
;						$aVideoInfo[$i][7]  = Capability Descriptions
;						$aVideoInfo[$i][8]  = Color Table Entries
;						$aVideoInfo[$i][9]  = Config Manager Error Code
;						$aVideoInfo[$i][10] = Config Manager User Config
;						$aVideoInfo[$i][11] = Creation Class Name
;						$aVideoInfo[$i][12] = Current Bits Per Pixel
;						$aVideoInfo[$i][13] = Current Horizontal Resolution
;						$aVideoInfo[$i][14] = Current Number Of Colors
;						$aVideoInfo[$i][15] = Current Number Of Columns
;						$aVideoInfo[$i][16] = Current Number Of Rows
;						$aVideoInfo[$i][17] = Current Refresh Rate
;						$aVideoInfo[$i][18] = Current Scan Mode
;						$aVideoInfo[$i][19] = Current Vertical Resolution
;						$aVideoInfo[$i][20] = Device ID
;						$aVideoInfo[$i][21] = Device Specific Pens
;						$aVideoInfo[$i][22] = Dither Type
;						$aVideoInfo[$i][23] = Driver Date
;						$aVideoInfo[$i][24] = Driver Version
;						$aVideoInfo[$i][25] = Error Cleared
;						$aVideoInfo[$i][26] = Error Description
;						$aVideoInfo[$i][27] = ICM Intent
;						$aVideoInfo[$i][28] = ICM Method
;						$aVideoInfo[$i][29] = Inf Filename
;						$aVideoInfo[$i][30] = Inf Section
;						$aVideoInfo[$i][31] = Installed Display Drivers
;						$aVideoInfo[$i][32] = Last Error Code
;						$aVideoInfo[$i][33] = Max Memory Supported
;						$aVideoInfo[$i][34] = Max Number Controlled
;						$aVideoInfo[$i][35] = Max Refresh Rate
;						$aVideoInfo[$i][36] = Min Refresh Rate
;						$aVideoInfo[$i][37] = Monochrome
;						$aVideoInfo[$i][38] = Number Of Color Planes
;						$aVideoInfo[$i][39] = Number Of Video Pages
;						$aVideoInfo[$i][40] = PNP Device ID
;						$aVideoInfo[$i][41] = Power Management Capabilities
;						$aVideoInfo[$i][42] = Power Management Supported
;						$aVideoInfo[$i][43] = Protocol Supported
;						$aVideoInfo[$i][44] = Reserved System Palette Entries
;						$aVideoInfo[$i][45] = Specification Version
;						$aVideoInfo[$i][46] = Status
;						$aVideoInfo[$i][47] = Status Info
;						$aVideoInfo[$i][48] = System Creation Class Name
;						$aVideoInfo[$i][49] = System Name
;						$aVideoInfo[$i][50] = System Palette Entries
;						$aVideoInfo[$i][51] = Time Of Last Reset
;						$aVideoInfo[$i][52] = Video Architecture
;						$aVideoInfo[$i][53] = Video Memory Type
;						$aVideoInfo[$i][54] = Video Mode
;						$aVideoInfo[$i][55] = Video Mode Description
;						$aVideoInfo[$i][56] = Video Processor
;                   On Failure - @error = 1 and Returns 0
;								@extended = 1 - Array contains no information
;											2 - $colItems isnt an object
; Author(s):        Jarvis Stubblefield (support "at" vortexrevolutions "dot" com)
; Note(s):
;===============================================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2553, False))
Func _ComputerGetVideoCards(ByRef $aVideoInfo)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2553, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2554, False))
	Local $colItems, $objWMIService, $objItem
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2554, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2555, False))
	Dim $aVideoInfo[1][59], $i = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2555, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2557, False))
	$objWMIService = ObjGet("winmgmts:\\" & $cI_Compname & "\root\CIMV2")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2557, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("cI_Compname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_Compname", $cI_Compname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2558, False))
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_VideoController", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2558, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))
If SetError(@error, @extended, IsDeclared("objWMIService")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objWMIService", $objWMIService))
If SetError(@error, @extended, IsDeclared("wbemFlagReturnImmediately")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagReturnImmediately", $wbemFlagReturnImmediately))
If SetError(@error, @extended, IsDeclared("wbemFlagForwardOnly")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$wbemFlagForwardOnly", $wbemFlagForwardOnly))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2560, False))
	If IsObj($colItems) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2560, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2561, False))
		For $objItem In $colItems
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2561, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))
If SetError(@error, @extended, IsDeclared("colItems")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$colItems", $colItems))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2562, False))
			ReDim $aVideoInfo[UBound($aVideoInfo) + 1][59]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2562, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2563, False))
			$aVideoInfo[$i][0]  = $objItem.Name
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2563, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2564, False))
			$aVideoInfo[$i][1]  = $objItem.AcceleratorCapabilities(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2564, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2565, False))
			$aVideoInfo[$i][2]  = $objItem.AdapterCompatibility
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2565, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2566, False))
			$aVideoInfo[$i][3]  = $objItem.AdapterDACType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2566, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2567, False))
			$aVideoInfo[$i][4]  = $objItem.Description
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2567, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2568, False))
			$aVideoInfo[$i][5]  = $objItem.AdapterRAM
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2568, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2569, False))
			$aVideoInfo[$i][6]  = $objItem.Availability
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2569, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2570, False))
			$aVideoInfo[$i][7]  = $objItem.CapabilityDescriptions(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2570, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2571, False))
			$aVideoInfo[$i][8]  = $objItem.ColorTableEntries
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2571, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2572, False))
			$aVideoInfo[$i][9]  = $objItem.ConfigManagerErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2572, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2573, False))
			$aVideoInfo[$i][10] = $objItem.ConfigManagerUserConfig
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2573, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2574, False))
			$aVideoInfo[$i][11] = $objItem.CreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2574, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2575, False))
			$aVideoInfo[$i][12] = $objItem.CurrentBitsPerPixel
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2575, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2576, False))
			$aVideoInfo[$i][13] = $objItem.CurrentHorizontalResolution
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2576, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2577, False))
			$aVideoInfo[$i][14] = $objItem.CurrentNumberOfColors
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2577, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2578, False))
			$aVideoInfo[$i][15] = $objItem.CurrentNumberOfColumns
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2578, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2579, False))
			$aVideoInfo[$i][16] = $objItem.CurrentNumberOfRows
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2579, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2580, False))
			$aVideoInfo[$i][17] = $objItem.CurrentRefreshRate
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2580, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2581, False))
			$aVideoInfo[$i][18] = $objItem.CurrentScanMode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2581, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2582, False))
			$aVideoInfo[$i][19] = $objItem.CurrentVerticalResolution
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2582, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2583, False))
			$aVideoInfo[$i][20] = $objItem.DeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2583, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2584, False))
			$aVideoInfo[$i][21] = $objItem.DeviceSpecificPens
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2584, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2585, False))
			$aVideoInfo[$i][22] = $objItem.DitherType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2585, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2586, False))
			$aVideoInfo[$i][23] = __StringToDate($objItem.DriverDate)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2586, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2587, False))
			$aVideoInfo[$i][24] = $objItem.DriverVersion
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2587, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2588, False))
			$aVideoInfo[$i][25] = $objItem.ErrorCleared
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2588, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2589, False))
			$aVideoInfo[$i][26] = $objItem.ErrorDescription
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2589, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2590, False))
			$aVideoInfo[$i][27] = $objItem.ICMIntent
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2590, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2591, False))
			$aVideoInfo[$i][28] = $objItem.ICMMethod
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2591, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2592, False))
			$aVideoInfo[$i][29] = $objItem.InfFilename
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2592, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2593, False))
			$aVideoInfo[$i][30] = $objItem.InfSection
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2593, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2594, False))
			$aVideoInfo[$i][31] = $objItem.InstalledDisplayDrivers
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2594, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2595, False))
			$aVideoInfo[$i][32] = $objItem.LastErrorCode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2595, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2596, False))
			$aVideoInfo[$i][33] = $objItem.MaxMemorySupported
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2596, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2597, False))
			$aVideoInfo[$i][34] = $objItem.MaxNumberControlled
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2597, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2598, False))
			$aVideoInfo[$i][35] = $objItem.MaxRefreshRate
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2598, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2599, False))
			$aVideoInfo[$i][36] = $objItem.MinRefreshRate
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2599, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2600, False))
			$aVideoInfo[$i][37] = $objItem.Monochrome
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2600, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2601, False))
			$aVideoInfo[$i][38] = $objItem.NumberOfColorPlanes
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2601, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2602, False))
			$aVideoInfo[$i][39] = $objItem.NumberOfVideoPages
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2602, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2603, False))
			$aVideoInfo[$i][40] = $objItem.PNPDeviceID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2603, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2604, False))
			$aVideoInfo[$i][41] = $objItem.PowerManagementCapabilities(0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2604, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2605, False))
			$aVideoInfo[$i][42] = $objItem.PowerManagementSupported
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2605, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2606, False))
			$aVideoInfo[$i][43] = $objItem.ProtocolSupported
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2606, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2607, False))
			$aVideoInfo[$i][44] = $objItem.ReservedSystemPaletteEntries
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2607, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2608, False))
			$aVideoInfo[$i][45] = $objItem.SpecificationVersion
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2608, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2609, False))
			$aVideoInfo[$i][46] = $objItem.Status
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2609, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2610, False))
			$aVideoInfo[$i][47] = $objItem.StatusInfo
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2610, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2611, False))
			$aVideoInfo[$i][48] = $objItem.SystemCreationClassName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2611, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2612, False))
			$aVideoInfo[$i][49] = $objItem.SystemName
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2612, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2613, False))
			$aVideoInfo[$i][50] = $objItem.SystemPaletteEntries
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2613, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2614, False))
			$aVideoInfo[$i][51] = __StringToDate($objItem.TimeOfLastReset)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2614, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2615, False))
			$aVideoInfo[$i][52] = $objItem.VideoArchitecture
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2615, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2616, False))
			$aVideoInfo[$i][53] = $objItem.VideoMemoryType
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2616, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2617, False))
			$aVideoInfo[$i][54] = $objItem.VideoMode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2617, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2618, False))
			$aVideoInfo[$i][55] = $objItem.VideoModeDescription
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2618, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2619, False))
			$aVideoInfo[$i][56] = $objItem.VideoProcessor
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2619, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))
If SetError(@error, @extended, IsDeclared("objItem")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$objItem", $objItem))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2620, False))
			$i += 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2620, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i", $i))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2621, False))
		Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2621, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2622, False))
		$aVideoInfo[0][0] = UBound($aVideoInfo) - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2622, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2623, False))
		If $aVideoInfo[0][0] < 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2623, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("aVideoInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$aVideoInfo", $aVideoInfo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2624, False))
			SetError(1, 1, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2624, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2625, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2625, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2626, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2626, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2627, False))
		SetError(1, 2, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2627, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2628, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2628, False, @error, @extended))
EndFunc ;_ComputerGetVideoCards

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2630, False))
#endregion Hardware Functions
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2630, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2632, False))
#region Internal Functions
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2632, False, @error, @extended))
; **********************************************************************************
; Internal Functions with names starting with two underscores will not be documented
; as user functions.
; **********************************************************************************

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2637, False))
Func __StringVersion()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2637, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2638, False))
	Return $cI_VersionInfo
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2638, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("cI_VersionInfo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$cI_VersionInfo", $cI_VersionInfo))
EndFunc ;_StringVersion


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2641, False))
Func __StringToDate($dtmDate)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2641, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("dtmDate")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$dtmDate", $dtmDate))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2642, False))
 	Return (StringMid($dtmDate, 5, 2) & "/" & 			StringMid($dtmDate, 7, 2) & "/" & StringLeft($dtmDate, 4) 			& " " & StringMid($dtmDate, 9, 2) & ":" & StringMid($dtmDate, 11, 2) & ":" & StringMid($dtmDate,13, 2))
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2642, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("dtmDate")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$dtmDate", $dtmDate))
If SetError(@error, @extended, IsDeclared("dtmDate")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$dtmDate", $dtmDate))
If SetError(@error, @extended, IsDeclared("dtmDate")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$dtmDate", $dtmDate))
If SetError(@error, @extended, IsDeclared("dtmDate")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$dtmDate", $dtmDate))
If SetError(@error, @extended, IsDeclared("dtmDate")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$dtmDate", $dtmDate))
If SetError(@error, @extended, IsDeclared("dtmDate")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$dtmDate", $dtmDate))
EndFunc ;__StringToDate Function created by SvenP Modified by JSThePatriot

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2646, False))
#endregion Internal Functions
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\admin\Desktop\DICE\CompInfo.au3", "CompInfo.au3", 2646, False, @error, @extended))
