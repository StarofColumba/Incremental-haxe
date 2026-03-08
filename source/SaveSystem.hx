
import flixel.util.FlxSave;
import states.GameState;


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
    public var upgrades:Map<String,Dynamic> = [
        "Clicker" => {price: 10, income: 0, unlocks: ["monekysave"]},
        "monekysave" => {price: 100, income: 0, unlocks: []}
    ];
    
    public function incomeupdate()
    {
     for (key in upgrades.keys()) {
         incomePerSecond += upgrades[key].income;
      }
    };
}
