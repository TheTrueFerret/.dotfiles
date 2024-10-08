#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; notion hotkeys

#IfWinActive ahk_exe Notion.exe
XButton1::^[
XButton2::^]
#IfWinActive


; mod-tap behavior CAPS-LOCK
CapsLock::
    KeyWait, CapsLock, T0.10 ; Wait to see if CapsLock is released within 100ms
    if (ErrorLevel)  ; If it was held (ErrorLevel is set when KeyWait times out)
    {
        Send {LCtrl down}  ; Hold LCtrl
        KeyWait, CapsLock  ; Wait for CapsLock to be released
        Send {LCtrl up}    ; Release LCtrl
    }
    else  ; If CapsLock was released quickly
    {
        Send {Esc}  ; Send Esc
    }
return