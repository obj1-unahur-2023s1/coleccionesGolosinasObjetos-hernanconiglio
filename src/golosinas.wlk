
object bombon {
	var peso = 15
	
	method peso() = peso
	method precio() = 5
	method esLibreDeGluten() = true
	method gusto() = "frutilla"
	method mordisco() {
		peso = (peso * 0.8) - 1
	}
}

object alfajor {
	var peso = 300
	
	method peso() = peso
	method precio() = 12
	method esLibreDeGluten() = false
	method gusto() = "chocolate"
	method mordisco() {
		peso = (peso * 0.8)
	}
}

object caramelo {
	var peso = 5
	
	method peso() = peso
	method precio() = 1
	method esLibreDeGluten() = true
	method gusto() = "frutilla"
	method mordisco() {
		peso = 0.max(peso - 1)
	}
}

object chupetin {
	var peso = 7
	
	method peso() = peso
	method precio() = 2
	method esLibreDeGluten() = true
	method gusto() = "naranja"
	method mordisco() {
		peso = 2.max(peso*0.9)
	}
}

object oblea {
	var peso = 250
	
	method peso() = peso
	method precio() = 5
	method esLibreDeGluten() = false
	method gusto() = "vainilla"
	method mordisco() {
		if(peso>70){peso = peso*0.5}
		else {peso=peso*0.75}
	}
}

object chocolatin {
	var pesoInicial
	var peso
	
	method setPesoInicial(unPeso) {
		pesoInicial = unPeso
		self.setearPrimerPeso()
	}
	
	method peso() = peso
	method setearPrimerPeso() {
		if(peso==null) {peso=pesoInicial}
	}
	method precio() = pesoInicial * 0.5
	method esLibreDeGluten() = false
	method gusto() = "chocolate"
	method mordisco() {
		peso = 0.max(peso-2)
	}
}

object golosinaBaniada {
	var property golosinaBase
	var pesoBanio = 4
	
	method peso() = golosinaBase.peso() + pesoBanio
	method precio() = golosinaBase.precio() + 2
	method esLibreDeGluten() = golosinaBase.esLibreDeGluten()
	method gusto() = golosinaBase.gusto()
	method mordisco() {
		golosinaBase.mordisco()
		pesoBanio = 0.max(pesoBanio-2)
	}
}

object tuttifrutti {
	var property peso = 5
	var property esLibreDeGluten = true
	const gustos = ["frutilla","chocolate","naranja","vainilla"]
	var cantMordiscos = 0
	
	//method gusto() = 
	method precio() = if(esLibreDeGluten) 7 else 10
	method mordisco() {cantMordiscos++}
	method gusto() = gustos.get(cantMordiscos%gustos.size())
}

object otroTuttifrutti {
	var property peso = 5
	var property esLibreDeGluten = true
	var gusto = frutilla
	
	method precio() = if(esLibreDeGluten) 7 else 10
	method mordisco() {gusto=gusto.siguiente()}
	method gusto() = gusto
}

object frutilla {
	method siguiente() = chocolate
}

object chocolate {
	method siguiente() = naranja
}

object naranja {
	method siguiente() = frutilla
}

object vainilla {
	method siguiente() {}
}