package;

import lime.app.Application;
import flixel.FlxGame;
import states.Menu;

class Main extends Application
{
	public function new()
	{
		super();
		addchild(new Menu());
	}
}
