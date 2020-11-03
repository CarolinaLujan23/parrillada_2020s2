import comidas.*

class Comensal {
	var property comidas = []
	var property peso = 0
	
	method leAgrada(unaComida)
	method satisfecho() { return comidas.sum({ c => c.peso()}) > self.peso() * 0.1  }
	method comer(unaComida) { comidas.add(unaComida) }
	
	
}

class Vegetarianos inherits Comensal {
	override method leAgrada(unaComida) { comidas.all({ c => unaComida.aptoVegetariano() && unaComida.valoracion() > 85 })  }
	override method satisfecho() { return comidas.all({ c => not c.esAbundante() }) }
}

class HambrePopular inherits Comensal { 
	override method leAgrada(unaComida) { comidas.all({ unaComida.esAbunadante() }) }	
}

class DePalaDarFino inherits Comensal {
	override method leAgrada(unaComida) { return comidas.all( unaComida.peso().between(150,300) && unaComida.valoracion() > 100) }
	override method satisfecho() { return comidas.count({ c => c.even() }) } 
	
}