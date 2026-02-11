
import flixel.FlxGame;
import states.Menu;

class Main
{
    public function new()
    {
        super();
        addchild(new Menu());
    }
}