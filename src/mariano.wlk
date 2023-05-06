import golosinas.*

object mariano {
	const property golosinas = []
	
	method comprar(unaGolosina) {golosinas.add(unaGolosina)}
	method desechar(unaGolosina) {golosinas.remove(unaGolosina)}
	method cantidadDeGolosinas() = golosinas.size()
	method tieneLaGolosina(unaGolosina) = golosinas.contains(unaGolosina)
	method probarGolosinas() {golosinas.forEach({g=>g.mordisco()})}
	method hayGolosinaSinTACC() = golosinas.any({g=>g.esLibreDeGluten()})
	method preciosCuidados() = golosinas.all({g=>g.precio()<=10})
	method golosinaDeSabor(unSabor) = golosinas.find({g=>g.gusto()==unSabor})
	method golosinasDeSabor(unSabor) = golosinas.filter{g=>g.gusto()==unSabor}
	method sabores() = golosinas.map({g=>g.gusto()}).asSet()
	method golosinaMasCara() = golosinas.max({g=>g.precio()})
	method precioGolosinaMasCaraConMap() = golosinas.map({g=>g.precio()}).max()
	method pesoGolosinas() = golosinas.sum({g=>g.peso()})
	method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.asSet().difference(golosinas.asSet()).asList()
	method gustosFaltantes(gustosDeseados) = gustosDeseados.asSet().difference(self.sabores()).asList()
}
