class EnfermedadAutoinmune {
	var property cantidadDeCelulasAmenazadas
	var property afecto = 0
	
	method fiebre() {
		return 0
	}
	method afectarCelulas() {
		afecto++
		return cantidadDeCelulasAmenazadas
	}
	
	method esAgresiva(_) {
		return afecto > 30
	}
}
