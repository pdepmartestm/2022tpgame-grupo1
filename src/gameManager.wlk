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
		
		keyboard.num1().onPressDo{level.one()}
		keyboard.num2().onPressDo{level.two()}
		keyboard.num3().onPressDo{level.three()}
		keyboard.num4().onPressDo{level.four()}
	}

	method lose() {
		player.position(game.origin())
		game.clear()
		game.boardGround("fondo.png")
		game.addVisual(lose)
		keyboard.num1().onPressDo{level.one()}
		keyboard.num2().onPressDo{level.two()}
		keyboard.num3().onPressDo{level.three()}
		keyboard.num4().onPressDo{level.four()}
	}

	method openChest() {
		game.removeVisual(chest)
		game.removeVisual(key)
		game.addVisual(coin)
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

