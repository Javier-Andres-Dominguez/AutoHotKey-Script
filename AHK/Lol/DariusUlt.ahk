;This script is used in the game League of Legends with the champion: "Darius",it has an interface where you input the extra AD that Darius has to calculate the damages that your ultimate can cause
;Controls: Closing the interface(Exits the script)
PassiveAd := [55,60,65,70,75,85,95,105,130,155,180,205,230]

Gui, Add, Text, x140 y0, Imput your aditional AD:
Gui, Add, Text, x0 y35 w70 , 0 Stacks:
Gui, Add, Text, x0 y60 w70 , 1 Stack:
Gui, Add, Text, x0 y85 w70 , 2 Stacks:
Gui, Add, Text, x0 y110 w70 , 3 Stacks:
Gui, Add, Text, x0 y135 w70 , 4 Stacks:
Gui, Add, Text, x0 y160 w70 , 5 Stacks:
Gui, Add, Text, x75 y20,Dmg dealt
Gui, Add, Text, x75 y35 w70 vNoConq0,
Gui, Add, Text, x75 y60 w70 vNoConq1,
Gui, Add, Text, x75 y85 w70 vNoConq2,
Gui, Add, Text, x75 y110 w70 vNoConq3,
Gui, Add, Text, x75 y135 w70 vNoConq4,
Gui, Add, Text, x75 y160 w70 vNoConq5,
Gui, Add, Edit, x150 y20 h20 w70 vAd,
Gui, Add, Button, x150 y210 h20 w70 gcalculate, Calculate
Gui, Add, UpDown, vLevelChoice Range6-18, 6
Gui, Show, h250 w370, NOXUUUUUUUUUUUUUUUUUUUUUS

return

calculate:
{
	GuiControlGet, LevelChoice
	GuiControlGet, Ad
	if(LevelChoice<11){
		Result60 := Floor(125 + ((Ad*75)/100))
		GuiControl,, NoConq0, %Result60%
		Result61 := Floor(Result60 + ((Result60*20)/100))
		GuiControl,, NoConq1, %Result61%
		Result62 := Floor(Result60 + ((Result60*40)/100))
		GuiControl,, NoConq2, %Result62%
		Result63 := Floor(Result60 + ((Result60*60)/100))
		GuiControl,, NoConq3, %Result63%
		Result64 := Floor(Result60 + ((Result60*80)/100))
		GuiControl,, NoConq4, %Result64%
		5StacksAux := Floor(125 + (((Ad+PassiveAd[LevelChoice-5])*75)/100))
		Result65 := Floor(5StacksAux + ((5StacksAux*100)/100))
		GuiControl,, NoConq5, %Result65%
	}
	if(LevelChoice>=11 and LevelChoice<16){
		Result60 := Floor(250 + ((Ad*75)/100))
		GuiControl,, NoConq0, %Result60%
		Result61 := Floor(Result60 + ((Result60*20)/100))
		GuiControl,, NoConq1, %Result61%
		Result62 := Floor(Result60 + ((Result60*40)/100))
		GuiControl,, NoConq2, %Result62%
		Result63 := Floor(Result60 + ((Result60*60)/100))
		GuiControl,, NoConq3, %Result63%
		Result64 := Floor(Result60 + ((Result60*80)/100))
		GuiControl,, NoConq4, %Result64%
		5StacksAux := Floor(250 + (((Ad+PassiveAd[LevelChoice-5])*75)/100))
		Result65 := Floor(5StacksAux + ((5StacksAux*100)/100))
		GuiControl,, NoConq5, %Result65%
	}
	if(LevelChoice>=16){
		Result60 := Floor(375 + ((Ad*75)/100))
		GuiControl,, NoConq0, %Result60%
		Result61 := Floor(Result60 + ((Result60*20)/100))
		GuiControl,, NoConq1, %Result61%
		Result62 := Floor(Result60 + ((Result60*40)/100))
		GuiControl,, NoConq2, %Result62%
		Result63 := Floor(Result60 + ((Result60*60)/100))
		GuiControl,, NoConq3, %Result63%
		Result64 := Floor(Result60 + ((Result60*80)/100))
		GuiControl,, NoConq4, %Result64%
		5StacksAux := Floor(375 + (((Ad+PassiveAd[LevelChoice-5])*75)/100))
		Result65 := Floor(5StacksAux + ((5StacksAux*100)/100))
		GuiControl,, NoConq5, %Result65%
	}

}
return

GuiClose:
ExitApp

;125|250|375
;133--159--186--212--239--348
;55--60--65--70--75--85--95--105--130--155--180--205--230