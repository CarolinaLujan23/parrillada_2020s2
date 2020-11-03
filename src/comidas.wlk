import cocina.*
import comensales.*

class Comida {
	method peso()
	method valoracion()
	method esAptoVegetariano()	
	method esAbundante() 
	
	method tieneOfestaVegetariana() {  }
	method platoFuerteCarnivoro() { return self.valoracion().max(not self.esAptoVegetariano) }
	method comidasQueLeGusta() { return comidas.all(self.leAgradan()) }
}