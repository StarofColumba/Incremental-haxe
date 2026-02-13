

import flixel.FlxGame;
import states.Menu;

class Main extends FlxGame
{
    public function new()
    {
		super();
        addChild(new FlxGame(800, 800, Menu,));
    }
}
