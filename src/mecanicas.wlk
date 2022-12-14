import wollok.game.*
import characters.*

object moves {

	method config() {
		keyboard.left().onPressDo{ izquierda.move(player)}
		keyboard.right().onPressDo{ derecha.move(player)}
		keyboard.up().onPressDo{ arriba.move(player)}
		keyboard.down().onPressDo{ abajo.move(player)}
		keyboard.a().onPressDo{ izquierda.move(player)}
		keyboard.d().onPressDo{ derecha.move(player)}
		keyboard.w().onPressDo{ arriba.move(player)}
		keyboard.s().onPressDo{ abajo.move(player)}
	}

}

object collides {

	method config() {
		game.whenCollideDo(player, { elemento => elemento.colision()})
	}

}

class Movimientos {

	const property celdasBloqueadas

	method canMove(character) = return !celdasBloqueadas.contains(character.position())

	method move(character) {
	}

}

object arriba inherits Movimientos(celdasBloqueadas = [ "0@2", "0@6", "0@11", "1@2", "1@3", "1@6", "1@9", "1@12", "1@13", "2@1", "2@2", "2@3", "2@5", "2@7", "2@12", "2@13", "3@1", "3@2", "3@5", "3@6", "3@7", "3@8", "3@11", "3@12", "3@13", "4@0", "4@1", "4@5", "4@6", "4@7", "4@8", "4@9", "4@11", "4@13", "5@0", "5@2", "5@3", "5@10", "5@11", "5@12", "6@1", "6@2", "6@4", "6@5", "6@6", "6@8", "6@9", "6@10", "6@12", "7@0", "7@1", "7@5", "7@10", "7@12", "8@0", "8@1", "8@2", "8@6", "8@7", "8@11", "8@12", "8@13", "9@0", "9@3", "9@6", "9@7", "9@8", "9@9", "9@12", "9@13", "10@1", "10@3", "10@4", "10@7", "10@8", "10@11", "11@1", "11@2", "11@3", "11@4", "11@5", "11@8", "11@9", "11@13", "12@0", "12@4", "12@9", "12@10", "12@12", "12@13", "13@1", "13@3", "13@7", "13@8", "13@10", "13@12", "13@13", "14@4", "14@7" ]) {

	override method move(character) {
		character.move(character.position().up(1), celdasBloqueadas)
	}

}

object abajo inherits Movimientos(celdasBloqueadas = [ "0@3", "0@7", "0@12", "1@3", "1@4", "1@7", "1@10", "1@13", "1@14", "2@2", "2@3", "2@4", "2@6", "2@8", "2@13", "2@14", "3@2", "3@3", "3@6", "3@7", "3@8", "3@9", "3@12", "3@13", "3@14", "4@1", "4@2", "4@6", "4@7", "4@8", "4@9", "4@10", "4@12", "4@14", "5@1", "5@3", "5@4", "5@11", "5@12", "5@13", "6@2", "6@3", "6@5", "6@6", "6@7", "6@9", "6@10", "6@11", "6@13", "7@1", "7@2", "7@6", "7@11", "7@13", "8@1", "8@2", "8@3", "8@7", "8@8", "8@12", "8@13", "8@14", "9@1", "9@4", "9@7", "9@8", "9@9", "9@10", "9@13", "9@14", "10@2", "10@4", "10@5", "10@8", "10@9", "10@12", "11@2", "11@3", "11@4", "11@5", "11@6", "11@9", "11@10", "11@14", "12@1", "12@5", "12@10", "12@11", "12@13", "12@14", "13@2", "13@4", "13@8", "13@9", "13@11", "13@13", "13@14", "14@5", "14@8" ]) {

	override method move(character) {
		character.move(character.position().down(1), celdasBloqueadas)
	}

}

object derecha inherits Movimientos(celdasBloqueadas = [ "0@0", "2@0", "5@0", "10@0", "13@0", "0@1", "1@1", "2@1", "5@1", "6@1", "10@1", "12@1", "9@2", "12@2", "13@2", "3@3", "4@3", "6@3", "7@3", "10@3", "13@3", "0@4", "1@4", "2@4", "3@4", "4@4", "7@4", "8@4", "11@4", "13@4", "0@5", "1@5", "4@5", "5@5", "9@5", "12@5", "13@5", "0@6", "7@6", "9@6", "10@6", "11@6", "12@6", "13@6", "0@7", "4@7", "5@7", "6@7", "10@7", "12@7", "0@8", "1@8", "5@8", "7@8", "8@8", "9@8", "11@8", "1@9", "2@9", "4@9", "6@9", "7@9", "9@9", "13@9", "0@10", "3@10", "4@10", "5@10", "7@10", "9@10", "10@10", "12@10", "13@10", "0@11", "1@11", "2@11", "5@11", "7@11", "8@11", "12@11", "13@11", "1@12", "6@12", "9@12", "10@12", "11@12", "12@12", "0@13", "6@13", "10@13", "1@14", "5@14", "7@14", "12@14" ]) {

	override method move(character) {
		character.move(character.position().right(1), celdasBloqueadas)
	}

}

object izquierda inherits Movimientos(celdasBloqueadas = [ "1@0", "3@0", "6@0", "11@0", "14@0", "1@1", "2@1", "3@1", "6@1", "7@1", "11@1", "13@1", "10@2", "13@2", "14@2", "4@3", "5@3", "7@3", "8@3", "11@3", "14@3", "1@4", "2@4", "3@4", "4@4", "5@4", "8@4", "9@4", "12@4", "1344", "1@5", "2@5", "5@5", "6@5", "10@5", "13@5", "14@5", "1@6", "8@6", "10@6", "11@6", "12@6", "13@6", "14@6", "1@7", "5@7", "6@7", "7@7", "11@7", "13@7", "1@8", "2@8", "6@8", "8@8", "9@8", "10@8", "12@8", "2@9", "3@9", "5@9", "7@9", "8@9", "10@9", "14@9", "1@10", "4@10", "5@10", "6@10", "8@10", "10@10", "11@10", "13@10", "14@10", "1@11", "2@11", "3@11", "6@11", "8@11", "9@11", "13@11", "14@11", "2@12", "7@12", "10@12", "11@12", "12@12", "13@12", "1@13", "7@13", "11@13", "2@14", "6@14", "8@14", "13@14" ]) {

	override method move(character) {
		character.move(character.position().left(1), celdasBloqueadas)
	}

}

