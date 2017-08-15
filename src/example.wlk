object hospital { 
	const pacientes = []
	const doctores = []
	method slogan() = "Haciendo todo para que vuelvas"
	method doctores() = doctores
	method despediATodos(){
		self.doctores().clear()
	}
	method agregaDoctores(unosDoctores){
		self.doctores().addAll(unosDoctores)
	}
	method agregaPacientes(unosPacientes){
		self.pacientes().addAll(unosPacientes)
	}
	method doctores(unosDoctores){
		self.despediATodos()
		self.agregaDoctores(unosDoctores)
	}
	method calidad() = self.doctores().sum({
		doctor => doctor.calidad()
	})
	method fama() = self.chisme() * self.calidad()
	
	method chisme() = self.pacientes().sum({
		paciente => paciente.chisme()
	})
	method pacientes() = pacientes
}

object pepe {
	method calidad() = 8
}

object marta {
	method calidad() = 8
}

object marcos {
	method chisme() = 10
}

object raul {
	method chisme() = 10
	
}

