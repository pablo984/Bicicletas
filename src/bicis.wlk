import accesorios.*

class Bicicleta {
	var property rodado
	var property largo
	var property marca /*String*/
	const property accesorios = []
	
	method agregarAccesorio(unAccesorio) {
		accesorios.add(unAccesorio)
	}
	method quitarAccesorio(unAccesorio) {
		accesorios.remove(unAccesorio)
	}
	/*Método adicional*/
	method tieneAccesorios() {
		return not accesorios.isEmpty()
	}
	method altura() {
		return rodado * 2.5 + 15
	}
	method velocidadCrucero() {
		return if (largo > 120) {rodado + 6} else {rodado + 2}
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
	/*Método Adicional. Si bien el método funciona para comparar dos bicis, o para colocarlo dentro del 
	  bloque de "bicisCompanierasDe(unaBici) y comparar unaBici con todas y c/u de las bicis de una
	  colección, lamentablemente NO pude lograr el objetivo de que "una bici no es compañera de si misma.*/
	method esCompanieraDe(unaBici) {
		return ((self.largo() - unaBici.largo()).abs() <= 10 and self.marca() == unaBici.marca()) 
	}
}

