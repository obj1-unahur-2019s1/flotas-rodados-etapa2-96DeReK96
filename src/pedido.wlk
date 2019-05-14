import rodados.*
import dependencia.*
import pedido.*

class Pedido {
	var property distancia
	var property tiempoMaximo
	var property pasajeros
	var property coloresIncompatibles = #{}
	
	method velocidadRequerida() {
		return distancia / tiempoMaximo
	}
	
	method puedeSatisfacer() {
		return auto.velocidad() >= self.velocidadRequerida() + 10
			and auto.capacidad() >= pasajeros
			and not coloresIncompatibles.contains(auto.color())
	}
}
