import comidas.*
import comensales.*

class Plato {
	var property peso = 0
	var property valoracion = 0
	
	method aptoVegetariano() { return true }
	method esAbundante() { return 250 }
	method valoracion() { return valoracion }
	
}

class Provoleta inherits Plato {
	
	method tieneEspecias() { return true }
	override method aptoVegetariano() { return not self.tieneEspecias() }
	method esEspecial() { return self.esAbundante() or self.tieneEspecias() }
	override method valoracion() { if (self.tieneEspecias()) {
			return 120  
		} else {
			return 80 } 
        }
}

class HamburguesaDeCarne inherits Plato {
	override method peso() { return 250 }
	override method aptoVegetariano() { return false }
	override method valoracion() { return 60 + valoracion.panIndustrial() }
	
}

class HamburguesaVegetariana inherits HamburguesaDeCarne {
	override method aptoVegetariano() { return true }
	method lentejas() { return "lentejas" }
	method garbanzo() { return "garbanzo" }
	override valoracion() { return 2 * self.lentejas().size() or self.garbanzo(). size() } //?
	
}

class Cortes { 
	var property calidad
	var property peso
	var property cortes
	
	method cantidadDeCortes() { return cortes }
}

class Parrillada inherits Cortes {
	override method peso() { return self.peso() + self.calidad() }
	method esAptoVegetariano() { return false }
	method valoracion() { return 15 * self.cantidadDeCortes().max() + self.cantidadDeCortes().min() } 
}

object panIndustrial { 
	var property valoracion = 0
}

object panCasero {
	var property valoracion = 20
}

object panMasaMadre {
	var property valoracion = 45
}