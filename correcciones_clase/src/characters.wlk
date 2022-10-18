import wollok.game.*
import gameManager.*
import mecanicas.*

class Character {

	var property position
	var property image

	method position() = position

	method eliminar() {
		game.removeVisual(self)
	}

	method move(newPos, bloqDireccion) {
		if (newPos.x() >= 0 && newPos.x() < 15 && newPos.y() >= 0 && newPos.y() < 15 && !bloqDireccion.contains(self.position().toString())) {
			self.position(newPos)
		}
	}

}

const player = new Character(position = game.at(0, 0), image = "player.png")

object enemy inherits Character(position = game.at(new Range(start = 7, end = 12).anyOne(), new Range(start = 7, end = 12).anyOne()), image = "enemy.png") {

	var property random = 0

	method colision() {
		gameManager.lose()
		game.removeTickEvent("Movimiento momia")
	}

	method start() {
		game.onTick(300, "Movimiento momia", { self.moveRandom()})
	}

	method moveRandom() {
		const directions = [ arriba, abajo, derecha, izquierda ]
		random = directions.filter({direction => direction.sePuedeMover(self)}).anyOne()
		random.mover(self)
	
	}

}

