import wollok.game.*
import elements.*
import characters.*
import Levels.*

object gameManager {


	method win() {
		player.position(game.origin())
		game.clear()
		game.boardGround("fondo.png")
		game.addVisual(win)
		
		
		
		self.seleccionarDificultad()
	}

	method lose() {
		player.position(game.origin())
		game.clear()
		game.boardGround("fondo.png")
		game.addVisual(lose)
		self.seleccionarDificultad()
	}

	method openChest() {
		game.removeVisual(chest)
		game.removeVisual(key)
		game.addVisual(coin)
		coin.position(chest.position())
	}
	method seleccionarDificultad() {
		keyboard.num1().onPressDo{level.one()}
		keyboard.num2().onPressDo{level.two()}
		keyboard.num3().onPressDo{level.three()}
		keyboard.num4().onPressDo{level.four()}
	}

}

object win {

	var property image = "win.png"
	var property position = game.at(0, 0)

}

object lose {

	var property image = "lose.png"
	var property position = game.at(0, 0)

}