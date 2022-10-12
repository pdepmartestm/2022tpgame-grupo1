import wollok.game.*
import characters.*

object moves {
	
	method config()
	{
		keyboard.left().onPressDo{ player.move(player.position().left(1), player.bloqIzq())
			enemy.moveRandom()
			enemy.moveRandom()
		}
		keyboard.right().onPressDo{ player.move(player.position().right(1), player.bloqDer())
			enemy.moveRandom()
		}
		keyboard.up().onPressDo{ player.move(player.position().up(1), player.bloqArriba())
			enemy.moveRandom()
		}
		keyboard.down().onPressDo{ player.move(player.position().down(1), player.bloqAbajo())
			enemy.moveRandom()
		}
		
	}
	
}

object collides {
	method config()
	{
		game.whenCollideDo(player, { elemento => elemento.colision()})
	}
}
