import wollok.game.*
import elements.*
import characters.*
import gameManager.*

class Level {

	method start() {
		game.addVisual(player)
		game.boardGround("fondo.png")
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

