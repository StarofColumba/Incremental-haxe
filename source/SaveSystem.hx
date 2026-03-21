
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
        "monekyslave" => {name: "monekysave",price: 1000, income: 5, unlocks: [], page: 1},
        "Clicker2" => {name: "Clicker2",price: 400, income: 3, unlocks: ["monekyslave"] ,page: 1},
        "Clicker" => {name: "Clicker",price: 50, income: 1, unlocks: ["clicker2"], page: 1},
        "Reinhard" => {name: "Reinhard",price: 1000000, income: 10000, unlocks: [], page: 2},
        "Monekytree" => {name: "MonekyTree",price:30000, income:75 ,unlocks: [], page: 1}
    ];

    

}
