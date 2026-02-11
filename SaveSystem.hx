

import flixel.util.FlxSave;
import flixel.util.FlxSaveStatus;


class SaveInitialisation extends FlxSave
{
    _gamesave = new FlxSave();
    _gamesave.bind("incrementalSave");

    public function load(var1);
    {
        var position = _gamesave.get(var1);
    }
    

}


    



class Upgrades
{
    var test = 0;
    _gamesave.data.first = test

}

class IdleIncome
{

}