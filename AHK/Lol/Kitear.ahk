;This script is used in the game League of Legends,it has an interface where you input the your attack speed to kite perfectly. You have to change your controls so that X is used for Move and Attack.
;Controls: Closing the interface(Exits the script), F2(Suspends the script (disables hotkeys)), Spacebar (While it is pressed it moves your character to your mouse position and attacks the closest enemy)
Gui, Add, Text, x75 y0, Imput your AttackSpeed:
Gui, Add, Edit, x90 y40 h20 w70 vAs,
Gui, Add, Button, x90 y150 h20 w70 gcalculate, Kite!
Gui, Show, h200 w250, Kitear

return

calculate:
{
	GuiControlGet, As
	Time := (((1/As)*1000)/2)
}

$space::
While GetKeyState("space","P")
{
	Send {RButton}
	Sleep Time
	Send {x}
	Sleep Time
}
return

$F2::
Suspend
return

GuiClose:
ExitApp