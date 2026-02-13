package states;

import flixel.FlxState;
import flixel.FlxSprite;
import flixel.addons.ui.FlxUIButton;
import flixel.addons.ui.FlxUITypedButton;
import flixel.addons.ui.FlxUICheckBox;
import flixel.addons.ui.FlxUICursor;
import flixel.addons.ui.FlxUIState;
import flixel.addons.ui.FlxUIText;
import flixel.util.FlxColor;
import source.SaveSystem;



class PlayState extends FlxState
{     
   //delta time
   var dt = math.min(elapsed,0.1);

   public function create():Void
    {
        _xmd_id = "Menus";
        super.create();
   }

   public function updateMoney():Void
   {
         var money = money + incomePerSecond * dt;

   }


}


