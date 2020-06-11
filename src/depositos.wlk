import accesorios.*
import bicis.*

class Deposito {
	const property bicicletas = []
	
	method agregarBici(unaBici) {
		bicicletas.add(unaBici)
	}
	method quitarBici(unaBici) {
		bicicletas.remove(unaBici)
	}
	method bicisRapidas() {
		return bicicletas.filter({ bici => bici.velocidadCrucero() > 25 })
	}
	method marcasDeBicis() {
		return bicicletas.map({ bici => bici.marca() }).asSet()
	}
	method esNocturno() {
		return bicicletas.all({ bici => bici.tieneLuz() })
	}
	method puedeLlevar(unaCarga) {
		return bicicletas.any({ bici => bici.carga() >= unaCarga })
	}
	/*Método adicional*/
	method laBiciMasRapida() {
		return bicicletas.max({ bici => bici.velocidadCrucero() })
	}
	method marcaDeLaBiciMasRapida() {
		return self.laBiciMasRapida().marca()
	}
	/*Método adicional*/
	method bicisLargas() {
		return bicicletas.filter({ bici => bici.largo() > 170 })
	}
	method cargaTotalDeBicisLargas() {
		return self.bicisLargas().sum({ bici => bici.carga() }) 
	}
	method bicisSinAccesorios() {
		return bicicletas.filter({ bici => not bici.tieneAccesorios() }).size()
	}	
	method bicisCompanierasDe(unaBici) {
		return bicicletas.filter({ bici => bici.esCompanieraDe(unaBici) })
	}


}
