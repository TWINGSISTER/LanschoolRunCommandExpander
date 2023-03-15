#cs ----------------------------------------------------------------------------

	AutoIt Version: 3.3.6.0

	Author:  This is Copyrighted by TWINGSISTEER
	under Attribution-NonCommercial-ShareAlike 3.0 Unported (CC BY-NC-SA 3.0) 2019
	Script Function: launcher for lanschoo;.
	Put joblist.txt where this file is. Liens in ths file are passed as commands.

#ce ----------------------------------------------------------------------------
#include <FileConstants.au3>
#include <StringConstants.au3>
#include <WinAPIFiles.au3>
#ce
; Script Start
$file=FileOpen (@ScriptDir & "\joblist.txt" )
If $file = -1 Then
    MsgBox(0, "Error", "Unable to open file joblist.txt")
    Exit
EndIf

; Read in lines of text until the EOF is reached
While 1
   $line = FileReadLine($file)
   If @error = -1 Then ExitLoop
   $log = Run($line)
Wend
FileClose($file)