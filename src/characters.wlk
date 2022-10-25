import wollok.game.*
import gameManager.*
import mecanicas.*

class Character {

	var property position
	var property image
	const property enemyRange = new Range(start = 7, end = 12)

	method position() = position

	method delete() {
		game.removeVisual(self)
	}
	
	method move(newPos, direccion) {
		if ( self.staysOnMap(newPos) && self.canMove(direccion)) {
			self.position(newPos)
		}
	}
	
	method canMove(direccion) = return !direccion.contains(self.position().toString())
	
	method staysOnMap(newPos) = return newPos.x() >= 0 && newPos.x() < 15 && newPos.y() >= 0 && newPos.y() < 15

}

const player = new Character(position = game.at(0, 0), image = "player.png")

class Enemy inherits Character(position = game.at(12,12), image = "enemy.png") {

	var property random = 0

	method colision() {
		gameManager.lose()
		game.removeTickEvent("Movimiento momia")
	}

	method start() {
		game.onTick(150, "Movimiento momia", { self.moveRandom()})
	}

	method moveRandom() {
		const directions = [ arriba, abajo, derecha, izquierda ]
		random = directions.filter({direction => direction.canMove(self)}).anyOne()
		random.move(self)
	
	}
	
	method reposition() {
		position = game.at(enemyRange.anyOne(), enemyRange.anyOne())
	}

}

