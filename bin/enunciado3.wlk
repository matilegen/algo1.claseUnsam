import enunciado2.*
object roque {
	var pupilo
	method entrenar(){
		pupilo.volar(10)
		pupilo.comer(300)
		pupilo.volar(5)
		pupilo.haceLoQueQuieras()
	}
	method tuPupiloEs(ave){
		pupilo=ave
	}
	method entreno(ave){return ave==pupilo}
}