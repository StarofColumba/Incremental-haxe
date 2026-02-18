package states;

import SaveSystem;
import flixel.FlxG;
import flixel.FlxGame;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;


class GameState extends FlxState
{     
   
   var incomePerSecond = 0.0;
   var money = 0.0;
   var screenHeight = FlxG.height;
   var screenWidth = FlxG.width; 

   override function update(elapsed:Float) {
      super.update(elapsed);
      money += incomePerSecond * elapsed;
      }

   

   override public function create():Void
    {
      var background = new FlxSprite().makeGraphic(800, 800, FlxColor.GRAY);
      var panel = new FlxSprite().makeGraphic(400,400, FlxColor.fromRGB(230,230,230,255));
      var moneyText = new  FlxText(120,120,0,"Money: " + money,30);
      var moneyPSText = new FlxText(0,240,0,"Income per second: " + incomePerSecond,30);
      var upgradeTab = new FlxText(600,120,0 ,"Upgrades",30);
      var button2 =  new FlxButton(150, 600 , "Click", ()-> 
      {
         money += 1;
         moneyText.text = "Money: " + money;
      });
        super.create();
        panel.setPosition(screenWidth/2,(screenHeight - panel.height)/2);
        button2.setGraphicSize(125, 100);
       moneyText.setBorderStyle(SHADOW, FlxColor.GREEN, 1);
       moneyPSText.setBorderStyle(SHADOW, FlxColor.WHITE, 1);
       upgradeTab.setBorderStyle(SHADOW, FlxColor.BLUE, 1);
        add(background);
        add(panel);
        add(button2);
        add(moneyText);
        add(moneyPSText);
        add(upgradeTab);
        

   }
   



}


