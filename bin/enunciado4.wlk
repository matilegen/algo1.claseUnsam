import enunciado2.*
import enunciado3.*

object pepon {
	var energia=0
	method comerComida(_comida){
   	energia+=(_comida.energia()/2)
   }
   method comer(gramos){
   	energia+=(gramos/2)
   }
	method volar(kilometros) {
     energia-=1
     if(kilometros>1){
     	energia = energia - (0.5*kilometros)
   }
   }
   
   method haceLoQueQuieras(){
   	if(self.estaDebil()){
   		self.comerComida(alpiste)	
   	}
   	if(self.estaFeliz()){
   		self.volar(1)
   	}
   	
   }
   method estaDebil(){
   	return energia<50
   }
   method estaFeliz(){
   	return energia>500 and energia<1000
   }
   method ganarEnergia(cant){
		energia+=cant
	}
	method energia(){
		return energia
	}
}
object pipa{
	var kms=0
	var gramosIngeridos=0
	method volar(kilometros) {
    kms+=kilometros
   }
   method comer(cantidad) {
   	gramosIngeridos+=cantidad
   }
	method kmsRecorridos(){
		return kms
	}
	method gramosIngeridos(){
		return gramosIngeridos
	}
	method haceLoQueQuieras(){
   	
   }
}
