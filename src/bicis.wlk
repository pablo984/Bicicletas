import accesorios.*

class Bicicleta {
	var property rodado
	var property largo
	var property marca /*String*/
	const accesorios = []
	
	method agregarAccesorio(unAccesorio) {
		accesorios.add(unAccesorio)
	}
	method quitarAccesorio(unAccesorio) {
		accesorios.remove(unAccesorio)
	}
	method accesorios() {
		return accesorios
	}
	method tieneAccesorios() {
		return not accesorios.isEmpty()
	}
	method altura() {
		return rodado * 2.5 + 15
	}
	method velocidadCrucero() {
		if (largo > 120) {
			return rodado + 6
		}
		else { /*largo < a 120*/
			return rodado + 2
		}
	}
	method carga() {
		return accesorios.sum({ acc => acc.carga() })
	}
	method peso() {
		return (rodado / 2) + self.pesoTotalAccesorios()
	}
	method pesoTotalAccesorios() {
		return accesorios.sum({ acc => acc.peso() })
	}
	method tieneLuz() {
		return accesorios.any({ acc => acc.esLuminoso() })
	}
	method accesoriosLivianos() {
		return accesorios.count({ acc => acc.peso() < 1 })
	}
}

