#Persistent
#SingleInstance force
#NoEnv
DetectHiddenText, On
DetectHiddenWindows, On

	;======================================================
	; Dustin's Personal Autohotkey Notes: 
	; # Win Key
	; ! Alt Key
	; ^ Control Key 
	; + Shift Key
	; Send
	; Sendinput
	; Sendraw
	; Sendinput {raw}
	; WinWait [, WinTitle, WinText, Seconds, ExcludeTitle, ExcludeText]  |  Waits until the specified window exists.
	; WinActivate
	; If WinActive
	; WinWaitActive [, WinTitle, WinText, Seconds, ExcludeTitle, ExcludeText]
	; WinWaitNotActive [, WinTitle, WinText, Seconds, ExcludeTitle, ExcludeText]
	; WinMove, WinTitle, WinText, X, Y [, Width, Height, ExcludeTitle, ExcludeText]
	; Click 100, 100 (deprecated?)
	; MouseClick, left, 100, 100
	; Run
	; RunWait	; Waits until proram loads
	; KB: http://www.autohotkey.com/docs/KeyList.htm
	;======================================================



;======================================================
;= MASTER MENU
;= Submenu actually gets typed below its contents, not above.
;= Icons are not required but add some visual flare. They must however be pointed to a file location to work. If these files get renamed or removed it kills the whole script.
;======================================================


		Menu, SubMenuLinks, Add, Secure CRT, LaunchSecureCRT


; MENU --->
Menu, MasterMenu, Add, Links, :SubmenuLinks


;======================================================
;= MASTER MENU (Cont.)
;= Bound to Middle Mouse Button
;======================================================

MButton::   ;
		; Reset variables
		Agent:=
		Owner:=
		FirstOccurance:=
		LastOccurance:=
		Count:=
		Node:=
		Summary:=

Menu, MasterMenu, Show ; i.e. press the middle mouse button/mousewheel to show the menu.
Return

;======================================================
;= FUNCTIONS ; Called by other hotkeys / scripts
;======================================================

Donothing:
	Return
	
RemoveToolTip:
	SetTimer, RemoveToolTip, Off
	ToolTip,
	return

	
	;======================================================
	;= FUNCTIONS - Links
	;======================================================
		
	LaunchSecureCRT:
		Run C:\Users\MEMOD002\AppData\Local\VanDyke Software\Clients\SecureCRT.exe
		Return


=======================================================
; OTHER HOTKEYS
=======================================================

^+s:: ; [This will reload autohotkey]
	Reload
	Return




