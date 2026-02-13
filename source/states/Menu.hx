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



class Menu extends FlxState
{ 
   var button1:FlxUIButton = new FlxUIButton(0, 0, Null, "Play",() ->
      {
      FlxG.switchState(new PlayState());
      });

   public function create():Null<String>
    {
        _xmd_id = "menus";
        super.create();
    
   }

}


