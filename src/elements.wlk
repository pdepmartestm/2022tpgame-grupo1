import wollok.game.*
import gameManager.*

object coin {

	var property position = game.at(12, 12)

	method image() = "coin.png"

	method colision() {
		gameManager.win()
	}

}

object chest {

	var property position = game.at(12, 12)

	method image() = "chest.png"

	method colision() {
	}

}

object key {

	var property position = game.at(14, 5)

	method image() = "key.png"

	method colision() {
		gameManager.openChest()
	}

}

