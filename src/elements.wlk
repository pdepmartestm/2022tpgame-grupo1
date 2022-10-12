import wollok.game.*
import gameManager.*


class Element
{
	var property position = game.at(12, 12)
	var property image
	method position() = position

	method eliminar() {
		game.removeVisual(self)
	}
}

object coin inherits Element(position = game.at(12, 12),image = "coin.png"){

	method colision() {
		gameManager.win()
	}

}

object chest inherits Element(position = game.at(12, 12),image = "chest.png") {
	method colision() {
	}

}

object key inherits Element(position = game.at([1,2,3,4].anyOne(), [1,2,3,4].anyOne()),image = "key.png") {

	method colision() {
		gameManager.openChest()
	}

}

