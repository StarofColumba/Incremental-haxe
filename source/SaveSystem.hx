
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
        "monekyslave" => {name: "monekysave",price: 1000, income: 5, unlocks: []},
        "Clicker2" => {name: "Clicker2",price: 400, income: 3, unlocks: ["monekyslave"]},
        "Clicker" => {name: "Clicker",price: 50, income: 1, unlocks: ["clicker2"]},
        "Reinhard" => {name: "Reinhard",price: 1000000, income: 10000, unlocks: []},
        "Monekytree" => {name: "MonekyTree",price:35000, income:75 ,unlocks: []}
    ];

}
