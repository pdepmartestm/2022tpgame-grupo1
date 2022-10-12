import wollok.game.*
import elements.*
import characters.*
import gameManager.*

class Level {

	method start() {
		game.addVisual(player)
		game.boardGround("fondo.png")
		
		
		//ACCIONES DEL JUEGO
		keyboard.left().onPressDo{ 
			player.move(player.position().left(1), player.bloqIzq())
			enemy.moveRandom()
		enemy.moveRandom()
		}
		keyboard.right().onPressDo{ 
			player.move(player.position().right(1), player.bloqDer())
			enemy.moveRandom()
		}
		keyboard.up().onPressDo{ 
			player.move(player.position().up(1), player.bloqArriba())
			enemy.moveRandom()
		}
		keyboard.down().onPressDo{ 
			player.move(player.position().down(1), player.bloqAbajo())
			enemy.moveRandom()
		}
		game.whenCollideDo(
			player, { elemento => elemento.colision() }
		)
		
		
		
	}
	
	

}

object level1 inherits Level {

	override method start() {
		game.addVisual(coin)
		super()
	}

}

object level2 inherits Level {

	override method start() {
		game.addVisual(chest)
		game.addVisual(key)
		super()
	}

}

object level3 inherits Level {

	override method start() {
		game.addVisual(enemy)
		game.addVisual(coin)
		super()
	}

}

object level4 inherits Level {

	override method start() {
		game.addVisual(chest)
		game.addVisual(key)
		game.addVisual(enemy)
		super()
	}

}

