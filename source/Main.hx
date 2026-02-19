

import flixel.FlxGame;
import openfl.display.Sprite;
import states.GameState;
import states.Menu;

class Main extends Sprite
{
    public function new()
    {
		super();
		addChild(new FlxGame(800, 800, Menu));
    }
}
