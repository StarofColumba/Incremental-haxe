package states;


import SaveSystem;
import flixel.FlxG;
import flixel.FlxGame;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class GameState extends FlxState
{     

   
   public var money:Float = .0;
   public var incomePerSecond = 0.0;
   var moneyText = new  FlxText(100,120,0,"Money: 0",30);
   var moneyPSText = new FlxText(0,240,0,"",28);
   var screenHeight = FlxG.height;
   var screenWidth = FlxG.width; 
   var upgrades = Upgrades.upgrades;
   var panel = new FlxSprite().makeGraphic(450,450, FlxColor.fromRGB(230,230,230,230));
   var deltaTime = 0.0;
   
   
   override public function create():Void
      {
          
         super.create();
         FlxG.autoPause = false;
         initialiseUI();
      }
      
      
      
      public function initialiseUI()
      {
         
         var background = new FlxSprite().makeGraphic(900, 900, FlxColor.GRAY);
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
         moneyPSText.text = "Income per second: " + incomePerSecond;



         add(background);
         add(panel);
         add(button2);
         add(moneyText);
         add(moneyPSText);
         upgradeUI();
    }


      //dont flame me
      public function upgradeUI()
      {
         var space = 0;
         for (key in upgrades.keys()) {
            var upgradeTab = new FlxText(600,120,0 ,"Upgrades",30);
            var upgradeIncome = upgrades[key].income;
            var upgradePrice = upgrades[key].price;
            var displayPrice = format(upgradePrice);
            var upgradetext = new FlxText(upgradeTab.getPosition().x + 115, upgradeTab.getPosition().y + 100 + space, 0, "Price: " + displayPrice + "\nIncome: " + upgradeIncome, 20);
            var upgradeIncome = upgrades[key].income;
            var newupgrade = new FlxButton(upgradeTab.getPosition().x -75, upgradeTab.getPosition().y + 120 + space, upgrades[key].name,() -> 
            {
            if(money >= upgradePrice)
            {
               money -= upgradePrice;
               upgradePrice *= 1.20;
               upgrades[key].price = upgradePrice;
               incomePerSecond += upgradeIncome; //???
               moneyPSText.text = "Income per second: " + incomePerSecond;
               upgradetext.text = "Price: " + upgradePrice + "\nIncome: " + upgradeIncome;
               add(upgradetext);
            }});


         newupgrade.setGraphicSize(0,50);
         upgradetext.color = FlxColor.fromRGB(0,0,0);
         upgradetext.setGraphicSize(120,50);
         add(newupgrade);
         add(upgradetext);
         upgradeTab.setBorderStyle(SHADOW, FlxColor.BLUE, 1);
         add(upgradeTab);
         space += 100;
      }}
      



      override function update(elapsed:Float,):Void {
   
      deltaTime = deltaTime + elapsed;
      super.update(elapsed);
   
      //every second
      if (deltaTime >= 0.95)
      {
         
         money += incomePerSecond * 1;
         var formattedmoney = format(money);
         deltaTime = 0.0;
         moneyText.text = "Money: " + formattedmoney;
      }}


      function format(n:Float) :String{
         if (n >= 1e9)
            return FlxMath.roundDecimal(n / 1e9 , 2) + "B"; 
         if (n >= 1e6)
            return FlxMath.roundDecimal(n / 1e6 , 2) + "M";
         if (n >= 1e3) 
            return FlxMath.roundDecimal(n / 1e3 , 2) + "K";
         return FlxMath.roundDecimal(n,1) + "";
         
      }
      
}