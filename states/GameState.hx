
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.addons.ui.FlxUIButton;
import flixel.addons.ui.FlxUITypedButton;
import flixel.addons.ui.FlxUICheckBox;
import flixel.addons.ui.FlxUICursor;
import flixel.addons.ui.FlxUIState;
import flixel.addons.ui.FlxUIText;
import flixel.addons.ui.FlxNumericStepper;
import flixel.util.FlxColor;
import source.SaveSystem;



class MainMenuState extends FlxState
{     
   public function create():Void
    {
        _xmd_id = "Menus";
        super.create();
                 var button1:FlxUIButton = new FlxUIButton(0, 0, null, "Play", -> FlxG.switchState(new PlayState()));
         add(button1);
   }

}



class UpdateMoney {

   
}


