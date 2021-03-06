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
	/*Método Adicional*/
	method sonDeLaMismaMarca(unaBici) {
		return self.marca() == unaBici.marca()
	}
	/*Método Adicional*/
	method susLargosSonMenoresA10(unaBici){
		return (self.largo() - unaBici.largo()).abs() <= 10
	}
	method esCompanieraDe(unaBici) {
		return self.sonDeLaMismaMarca(unaBici) and self.susLargosSonMenoresA10(unaBici) and self != unaBici
	}
}

