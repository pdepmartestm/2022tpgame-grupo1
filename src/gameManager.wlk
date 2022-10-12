import wollok.game.*
import elements.*
import characters.*

object gameManager {

	method win() {
		game.removeVisual(coin)
		player.eliminar()
		enemy.eliminar()
		game.addVisual(win)
	}

	method lose() {
		game.removeVisual(coin)
		player.eliminar()
		enemy.eliminar()
		game.addVisual(lose)
	}

	method openChest() {
		game.removeVisual(chest)
		game.removeVisual(key)
		game.addVisual(coin)
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

