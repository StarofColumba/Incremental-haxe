package states;


import flixel.FlxG;
import flixel.FlxState;
import flixel.ui.FlxButton;
import states.GameState;



class Menu extends flixel.addons.ui.FlxUIState
{ 
    var button1 = new FlxButton(0, 0, "Play", () ->
    {
        FlxG.switchState(new GameState());
    });

   public override function create():Void
    {
        _xml_id = "menus";
        super.create();
        add(button1);  
    
   }

}


