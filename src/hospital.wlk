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
	method dasConfianza() = self.calidad() >= 100 && self.fama() >= 1000
}

object pepe {
	var calidad = 0
	const pacientes = []
	method calidad() = calidad
	method calidad(nuevaCalidad){
		calidad = nuevaCalidad
	}
	method sana(paciente){
		if(paciente.estasEnfermo()) {
			paciente.curate()
		}
		self.agregaPaciente(paciente)
	}
	method agregaPaciente(paciente){
		self.pacientes().add(paciente)
	}
	method pacientes() = pacientes
}

object marta {
	var calidad = 0
	const pacientes = []
	method calidad() = calidad
	method calidad(nuevaCalidad){
		calidad = nuevaCalidad
	}
	method sana(paciente){
		if(paciente.estasEnfermo()) {
			paciente.curate()
		}
		self.agregaPaciente(paciente)
	}
	method agregaPaciente(paciente){
		self.pacientes().add(paciente)
	}
	method pacientes() = pacientes
}

object marcos {
	var chisme = 10
	var salud = 50
	method chisme() = chisme
	method chisme(nuevoChisme){
		chisme = nuevoChisme
	}
	method salud() = salud
	method salud(nuevaSalud){
		salud = nuevaSalud
	}
	method estasEnfermo() = self.salud() < 100
	method curate(){
		self.salud(100)
	}
}

object raul {
	var chisme = 10
	var salud = 50
	method chisme() = chisme
	method chisme(nuevoChisme){
		chisme = nuevoChisme
	}
	method salud() = salud
	method salud(nuevaSalud){
		salud = nuevaSalud
	}
	method estasEnfermo() = self.salud() < 100
	method curate(){
		self.salud(100)
	}
}





