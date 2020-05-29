object farolito {
	method peso() {
		return 0.5
	}
	method carga() {
		return 0
	}
	method esLuminoso() {
		return true
	}
}

/*Se crea una clase Canasto porque varias bicis pueden tener canastos con diferente volúmen*/
class Canasto {
	var property volumen
	
	method peso() {
		return volumen / 10
	}
	method carga() {
		return volumen * 2
	}
	method esLuminoso() {
		return false
	}
}

/*Se crea una clase Morral porque varias vicis pueden tener morrales con distinto largo y 
  puede haber morrales con ojo de gato, o sin ojo de gato*/
class Morral {
	var property largo
	var property tieneOjoDeGato
	
	method peso() {
		return 1.2
	}
	method carga() {
		return largo / 3
	}
	method esLuminoso() {
		return tieneOjoDeGato
	}		
	
}



