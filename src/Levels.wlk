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
		keyboard.num1().onPressDo{ lvl1.start()}
		keyboard.num2().onPressDo{ lvl2.start()}
		keyboard.num3().onPressDo{ lvl3.start()}
		keyboard.num4().onPressDo{ lvl4.start()}
	}
}

class Levels {

	var property visuals = []
	var property objective = coin
	var property hasKey = false
	var property hasEnemy = false

	method start() {
		if (!game.hasVisual(player)) {
			game.clear()
			game.boardGround("fondo.png")
			visuals.forEach{ visual => game.addVisual(visual)}
			objective.reposition()
			if (hasKey) {
				key.reposition()
			}
			if (hasEnemy) {
				enemy.reposition()
				enemy.start()					
			}
			moves.config()
			collides.config()
		}
	}

}

const lvl1 = new Levels(visuals = [ grafLvl1, coin, player ], objective = coin)

const lvl2 = new Levels(visuals = [ grafLvl2, chest, key, player ], objective = chest, hasKey = true)

const lvl3 = new Levels(visuals = [ grafLvl3, coin, enemy, player ], objective = coin, hasEnemy = true)

const lvl4 = new Levels(visuals = [ grafLvl4, chest, key, enemy, player ], objective = chest, hasKey = true, hasEnemy = true)

object seleccion {

	var property image = "seleccion.png"
	var property position = game.at(0, 0)

}

class GrafLvl {

	var property image
	const property position = game.at(0, 0)

	method colision() {
	}

}

const grafLvl1 = new GrafLvl(image = "lvl1.png")

const grafLvl2 = new GrafLvl(image = "lvl2.png")

const grafLvl3 = new GrafLvl(image = "lvl3.png")

const grafLvl4 = new GrafLvl(image = "lvl4.png")

