import wollok.game.*
import gameManager.*


class Element
{
	var property position = game.at(12, 12)
	var property image
	const property rangoLlave = new Range(start= 3, end=14)
	const property rangoObj = [9,10,11,12,13,14]
	
	method position() = position

	method eliminar() {
		game.removeVisual(self)
	}
	
	method reposicionarObj()
	{
		position = game.at(rangoObj.anyOne(),rangoObj.anyOne())
	}
	
	method reposicionarLlave()
	{
		position = game.at(rangoLlave.anyOne(),rangoLlave.anyOne())
	}
}

object coin inherits Element(image = "coin.png"){

	method colision() {
		gameManager.win()
	}

}

object chest inherits Element(image = "chest.png") {
	method colision() {
	}

}

object key inherits Element(image = "key.png") {

	method colision() {
		gameManager.openChest()
	}

}
