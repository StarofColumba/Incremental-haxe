package states;


import flixel.FlxState;
import flixel.ui.FlxButton;
import flixel.FlxG;



class Menu extends FlxState
{ 
   var button1:FlxUIButton = new FlxUIButton(0, 0, Null, "Play",() ->
      {
      FlxG.switchState(new PlayState());
      });

   public override function create():Void
    {
        _xmd_id = "menus";
        super.create();
        add(button1);
    
   }

}


