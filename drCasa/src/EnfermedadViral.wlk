class EnfermedadViral {
	var property cantidadDeCelulasAmenazadas
	var property afecto
	
	method reproducirse() {
		cantidadDeCelulasAmenazadas *= 2
	}
	method afectarA(unaPersona) {
                
        }
	method esAgresiva(unasCelulas) {
		return cantidadDeCelulasAmenazadas > unasCelulas * 0.1
	}
}
