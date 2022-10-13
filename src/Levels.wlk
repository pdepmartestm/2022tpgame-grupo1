import wollok.game.*
import elements.*
import characters.*
import gameManager.*
import mecanicas.*

object level {

	const ancho = 15
	const alto = 15

	method start() {
		// PROPIEDADES DEL JUEGO
		game.clear()
		game.cellSize(60)
		game.height(alto)
		game.width(ancho)
		game.title("Laberinto")
		game.boardGround("fondo.png")
		game.addVisual(seleccion)
		keyboard.num1().onPressDo{ self.one()}
		keyboard.num2().onPressDo{ self.two()}
		keyboard.num3().onPressDo{ self.three()}
		keyboard.num4().onPressDo{ self.four()}
	}

	method one() {
		if (!game.hasVisual(player)) {
			game.clear()
			game.boardGround("fondo.png")
			game.addVisual(lvl1)
			game.addVisual(player)
			game.addVisual(coin)
			coin.reposicionarObj()
			moves.config()
			collides.config()
		}
	}

	method two() {
		if (!game.hasVisual(player)) {
			game.clear()
			game.boardGround("fondo.png")
			game.addVisual(lvl2)
			game.addVisual(player)
			game.addVisual(chest)
			game.addVisual(key)
			chest.reposicionarObj()
			key.reposicionarLlave()
			moves.config()
			collides.config()
		}
	}

	method three() {
		if (!game.hasVisual(player)) {
			game.clear()
			game.boardGround("fondo.png")
			game.addVisual(lvl3)
			game.addVisual(player)
			game.addVisual(coin)
			coin.reposicionarObj()
			game.addVisual(enemy)
			moves.config()
			collides.config()
		}
	}

	method four() {
		if (!game.hasVisual(player)) {
			game.clear()
			game.boardGround("fondo.png")
			game.addVisual(lvl4)
			game.addVisual(player)
			game.addVisual(chest)
			game.addVisual(key)
			chest.reposicionarObj()
			key.reposicionarLlave()
			game.addVisual(enemy)
			moves.config()
			collides.config()
		}
	}

}

object seleccion {

	var property image = "seleccion.png"
	var property position = game.at(0, 0)

}

object lvl1 {

	var property image = "lvl1.png"
	var property position = game.at(0, 0)
	
	method colision(){}

}
object lvl2 {

	var property image = "lvl2.png"
	var property position = game.at(0, 0)
	
	method colision(){}

}
object lvl3 {

	var property image = "lvl3.png"
	var property position = game.at(0, 0)
	
	method colision(){}

}
object lvl4 {

	var property image = "lvl4.png"
	var property position = game.at(0, 0)
	
	method colision(){}

}



