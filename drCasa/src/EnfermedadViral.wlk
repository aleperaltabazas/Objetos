class EnfermedadViral {
	var property cantidadDeCelulasAmenazadas
	var property afecto
	
	method reproducirse() {
		cantidadDeCelulasAmenazadas *= 2
	}
	method fiebre() {
		return cantidadDeCelulasAmenazadas * 0.001
	}
	method afectarCelulas() {
		self.reproducirse()
		return cantidadDeCelulasAmenazadas
	}
	
	method esAgresiva(unasCelulas) {
		return cantidadDeCelulasAmenazadas > unasCelulas * 0.1
	}
}
