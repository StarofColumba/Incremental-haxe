package states;


import flixel.FlxG;
import flixel.FlxState;
import flixel.ui.FlxButton;
import states.GameState;



class Menu extends FlxState
{ 
    var button1 = new FlxButton(450, 450, "Play", () ->
    {
        FlxG.switchState(()->new GameState());
    });

   public override function create():Void
    {
        super.create();
        button1.setGraphicSize(200, 100);
        add(button1);  
    
   }

}


