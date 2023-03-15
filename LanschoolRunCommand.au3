#cs ----------------------------------------------------------------------------

	AutoIt Version: 3.3.6.0

	Author:  This is Copyrighted by TWINGSISTEER
	under Attribution-NonCommercial-ShareAlike 3.0 Unported (CC BY-NC-SA 3.0) 2019
	Script Function: launcher for lanschool;.
	Put xxx.txt where this file xxx.exe is. Name xxx.exe this script. Lines in this file (xxx.txt) are executed as shell commands.

#ce ----------------------------------------------------------------------------
#include <FileConstants.au3>
#include <StringConstants.au3>
#include <WinAPIFiles.au3>
#ce
; Script Start
$fname = StringReplace ( @scriptname, ".exe", ".txt" , -1 ,  $STR_NOCASESENSE )
$file=FileOpen (@ScriptDir & "\" &  $fname)
If $file = -1 Then
    MsgBox(0, "Error", "Unable to open file "&  @ScriptDir & "\" &  $fname)
    Exit
EndIf

; Read in lines of text until the EOF is reached
While 1
   $line = FileReadLine($file)
   If @error = -1 Then ExitLoop
   $log = Run($line)
Wend
FileClose($file)