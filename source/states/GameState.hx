package states;


import SaveSystem;
import flixel.FlxG;
import flixel.FlxGame;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

class GameState extends FlxState
{     

   
   public var money = 0.0;
   public var incomePerSecond = 0.0;
   var screenHeight = FlxG.height;
   var screenWidth = FlxG.width; 
   var deltaTime = 0.0;
   var moneyText = new  FlxText(100,120,0,"Money: 0",30);
   var upgrades = Upgrades.upgrades;
   var incomeUpdate = Upgrades.incomeUpdate;
   override public function create():Void
    {
   
        super.create();
        FlxG.autoPause = false;
        initialiseUI();
   }
    override function update(elapsed:Float,):Void {
      
      deltaTime = deltaTime + elapsed;
      super.update(elapsed);
      
      //every second
      if (deltaTime >= 1.0)
      {
         
         money += incomePerSecond * 1;
         deltaTime = 0.0;
         moneyText.text = "Money: " + money;
      }}
      



      public function initialiseUI()
      {
        var background = new FlxSprite().makeGraphic(900, 900, FlxColor.GRAY);
        var panel = new FlxSprite().makeGraphic(450,450, FlxColor.fromRGB(230,230,230,230));
        var moneyPSText = new FlxText(0,240,0,"Income per second: " + incomePerSecond,28);
        var upgradeTab = new FlxText(600,120,0 ,"Upgrades",30);
      
      var button2 =  new FlxButton(150, 410 , "Click here if you want to get money, Or not if you want because its totally within your rights to ignore me as the developer and do whatever you want. You can stay on $0 if you like it doesn't matter to me but if you really find that boring you should probably click within the bounds of this box. i must warn you that it will get addictive and you may find yourself not wanting to stop, so in that case you should probably take a 5 minute break and if you buy the upgrades you can get money while you are outside which is the whole point of this game", ()-> 
      {
         money += 1;
         moneyText.text = "Money: " + money;

      }); 



      


      panel.setPosition(screenWidth/2,(screenHeight - panel.height)/2);
      button2.setGraphicSize(100, 100);
      button2.color = FlxColor.fromRGB(0,200,20);
      moneyText.setBorderStyle(SHADOW, FlxColor.GREEN, 1);
      moneyPSText.setBorderStyle(SHADOW, FlxColor.WHITE, 1);
      upgradeTab.setBorderStyle(SHADOW, FlxColor.BLUE, 1);

      add(background);
      add(panel);
      add(button2);
      add(moneyText);
      add(moneyPSText);
      add(upgradeTab);
      //dont flame me
      var space = 0;
      for (key in upgrades.keys()) {
         var newupgrade = new FlxButton(upgradeTab.getPosition().x -75, upgradeTab.getPosition().y + 120 + space, upgrades[key].name,() -> incomeUpdate(incomePerSecond));
         var upgradetext = new FlxText(newupgrade.getPosition().x +120 , newupgrade.getPosition().y ,0, "Price: " + upgrades[key].price + "\nIncome: " + upgrades[key].income);
         newupgrade.setGraphicSize(25,50);
         add(newupgrade);
         upgradetext.color = FlxColor.fromRGB(0,0,0);
         upgradetext.setGraphicSize(50,50);
         add(upgradetext);
         space += 100;
      };
      }
      
}
