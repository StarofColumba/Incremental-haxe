

import flixel.util.FlxSave;
import flixel.util.FlxSaveStatus;


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
    var money = 0;
    var incomePerSecond = 0;

    public function new()
    {
        // Initialize data bindings here if needed
    }
}

class IdleIncome
{
    

}