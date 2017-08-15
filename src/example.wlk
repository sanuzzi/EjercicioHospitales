object hospital { 
	const doctores = []
	method slogan() = "Haciendo todo para que vuelvas"
	method doctores() = doctores
	method despedirATodos(){
		self.doctores().clear()
	}
	method agregarDoctores(unosDoctores){
		self.doctores().addAll(unosDoctores)
	}
	method doctores(unosDoctores){
		self.despedirATodos()
		self.agregarDoctores(unosDoctores)
	}
	method calidad() = self.doctores().sum({
		doctor => doctor.calidad()
	})
}

object pepe {
	method calidad() = 8
}

object marta {
	method calidad() = 8
}


