object pepita {
   var energia = 0
   method haceLoQueQuieras(){
   	if(self.estaDebil()){
   		self.comercomida(alpiste)	
   	}
   	if(self.estaFeliz()){
   		self.volar(8)
   	}
   	
   }
   method comercomida(_comida){
   	energia+=_comida.energia()
   }
	method energia(){
		return energia
	}
   method volar(kilometros) {
     energia = energia - (10+kilometros)
   }
   method salirAComer(){
   	energia-=(energia/5)
	energia+=alpiste.energia()   
	energia-=(energia/5)
   }
   method comer(cantidad) {
   	 energia = energia + 4 * cantidad
   }
   method estaDebil(){
   	return energia<50
   }
   method estaFeliz(){
   	return energia>500 and energia<1000
   }
   method cuantoQuiereVolar(){
   	var kilm=0
   	if((energia%20)==0){
   		kilm+=15
   	}
   	if (energia>300 and energia<400){
   		kilm+=10
   	}
   	
   	energia/=5
   	energia-=kilm
   }
   method saliracomer(){
   	energia/=5
   	energia+=4
   	energia/=5
   	
   }
}
object alpiste{
	var energia=4
	method energia(){return energia}
	method mostrarjoul(){return energia}
}
object mondongo{
	var mondongo=100
	method mostrarjoul(){return mondongo}
}
object alcaucil{
	var alcaucil=20
	method mostrarjoul(){return alcaucil}
}
object sorgo{
	var sorgo=9
	method mostrarjoul(){return sorgo}
}
object mijo{
	var mijo=20
	method mijos(){return mijo}
	method mojarse(){mijo=15}
	method secarse(){mijo=20}
}
object canelones{
	var canelones=20
	var salsa="no"
	var queso="no"
	method canelones(){
		return canelones
	}
	method salsa(variable){
		if (variable=="si" and salsa=="no"){
			canelones+=5			
			salsa="si"
		}else if(variable=="no" and salsa=="si"){
			canelones-=5
			salsa="no"
		}
	}
	method queso(variable){
		if (variable=="si" and queso=="no"){
			canelones+=7			
			salsa="si"
		}else if(variable=="no" and queso=="si"){
			canelones-=7			
			salsa="no"
		}
	}
}