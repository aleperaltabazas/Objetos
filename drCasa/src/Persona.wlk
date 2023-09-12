class Persona {
	var temperaturaNormal
	var celulas
	var enfermedades = []
	
	method diaEnfermo() {
		enfermedades.forEach{ enfermedad => self.sufrirSintomas(enfermedad)}
	}
	method sufrirSintomas(unaEnfermedad) {
		self.aumentarTemperatura(unaEnfermedad.fiebre())
		self.afectarCelulas(unaEnfermedad.afectarCelulas())
	}
	method aumentarTemperatura(unosGrados) {
		temperaturaNormal += unosGrados
	}
	method afectarCelulas(unaCantidadCelulas) {
		celulas -= unaCantidadCelulas
	}
	method contraerEnfermedad(unaEnfermedad) {
		enfermedades.add(unaEnfermedad)
	}
	method enfermedades(){
		return enfermedades
	}
	
	method estaEnComa() {
		return temperaturaNormal > 45 || celulas < 1000000
	}
	
	method enfermedadesAgresivas() {
		return enfermedades.filter{ enfermedad => enfermedad.esAgresiva(celulas)}
	}
	
	method enfermedadMasGrave() {
		return enfermedades.sortedBy({enfermedad1, enfermedad2 => enfermedad1.cantidadDeCelulasAmenazadas() > enfermedad2.cantidadDeCelulasAmenazadas()}).first()
	}
}
