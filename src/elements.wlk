import wollok.game.*
import gameManager.*

class Element {

	var property position = game.at(12, 12)
	var property image
	const property keyRange = new Range(start = 3, end = 14)
	const property objRange = new Range(start = 9, end = 14)

	method position() = position

	method delete() {
		game.removeVisual(self)
	}

	method reposition() {
		position = game.at(objRange.anyOne(), objRange.anyOne())
	}

	method colision() {
	}

}

object coin inherits Element(image = "coin.png") {

	override method colision() {
		gameManager.win()
	}

}

const chest = new Element(image = "chest.png")

object key inherits Element(image = "key.png") {

	override method reposition() {
		position = game.at(keyRange.anyOne(), keyRange.anyOne())
	}

	override method colision() {
		gameManager.openChest()
	}

}

