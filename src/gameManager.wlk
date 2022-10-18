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
		self.selectDifficulty()
	}

	method lose() {
		player.position(game.origin())
		game.clear()
		game.boardGround("fondo.png")
		game.addVisual(lose)
		self.selectDifficulty()
	}

	method openChest() {
		game.removeVisual(chest)
		game.removeVisual(key)
		game.addVisual(coin)
		coin.position(chest.position())
	}

	method selectDifficulty() {
		keyboard.num1().onPressDo{ lvl1.start()}
		keyboard.num2().onPressDo{ lvl2.start()}
		keyboard.num3().onPressDo{ lvl3.start()}
		keyboard.num4().onPressDo{ lvl4.start()}
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

