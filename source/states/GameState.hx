package states;

import SaveSystem;
import flixel.FlxState;
import flixel.ui.FlxButton;


class GameState extends FlxState
{     
   public var money = 0;
   var incomePerSecond = 0;



   override public function create():Void
    {
         
      var button2 = new FlxButton(0, 0, "Money: " + money,(null));
      var button3 =  new FlxButton(0, 15 , "Click", ()-> 
      {
         money += 1;
      });
        super.create();
        add(button2);
        add(button3);
   }


}


