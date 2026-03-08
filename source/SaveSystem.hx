
import flixel.util.FlxSave;


class Load extends FlxSave
{
    public function new()
    {
        super();
        var _gamesave = new FlxSave();
        _gamesave.bind("incrementalSave");
    }

    public function load(var1)
    { 
        var money = var1.get();
    }
}


    



class Upgrades
{
    public static var upgrades:Map<String,Dynamic> = [
        "Clicker" => {name: "Clicker",price: 10, income: 1, unlocks: ["monekysave"]},
        "Clicker2" => {name: "Clicker2",price: 10, income: 1, unlocks: ["monekysave2"]},
        "monekysave" => {name: "monekysave",price: 100, income: 0, unlocks: []}
    ];
    
    public static function incomeUpdate(incomePerSecond:Float)
    {
    incomePerSecond = 0.0;
     for (key in upgrades.keys()) {
         incomePerSecond += upgrades[key].income;
      }
    };
}
