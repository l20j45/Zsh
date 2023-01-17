#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force
#NoEnv

SendMode Input

;Ctrl & Numpad 4: Previous Track
^!Left::Media_Prev

;Ctrl & Numpad 6: Next Track
^!Right::Media_Next

;Ctrl & Numpad 8: Volume Up
^!Up::SoundSet +3

;Ctrl & Numpad 2: Volume Down
^!Down::SoundSet -3

;Ctrl & Numpad 5: Play/Pause Track
^!Space::Media_Play_Pause




^#Q::
Send, Nombre
return

^#A::
Send, daniel159
return

^#S::
Send, gruposefitequila
return

^#W::
Send, Apellido
return

^#E::
Send, otro dato
return



; Google Search highlighted text
^#c::
{
 Send, ^c
 Sleep 50
 Run, http://www.google.com/search?q=%clipboard%
 Return
}



; Empty trash
#Del::FileRecycleEmpty ; win + del
return


#!n::
Run notepad
return

^#n::
Run notepad++
return

^#M::
Run code
return