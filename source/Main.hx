

import openfl.display.Sprite;
import flixel.FlxGame;
import states.Menu;

class Main extends Sprite
{
    public function new()
    {
		super();
        addChild(new FlxGame(800, 800, Menu));
    }
}
