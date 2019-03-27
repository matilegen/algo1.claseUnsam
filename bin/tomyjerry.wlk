object tom {
	var energia=80
	var posicion=0->0
	method comerRaton(rata){
		energia+=12+rata.peso()
		return energia
		
	}	
	method posicion(){
		return posicion
	}
	
	method velocidad(){
		return 5+(energia/10)	
	}
	method energiaGastada(metros){
		return energia-=0.5*metros
	} 
	method meConvieneComerA(raton,distancia){
		return self.comerRaton(raton)>self.energiaGastada(distancia)
		
	}
	method correrA(raton){
  var metr
  metr=distancia.entre(self.posicion(),raton.posicion())
		posicion=raton.posicion()
		self.energiaGastada(metr)
		return 0
	}
	method puedeAtrapar(raton){
		return(raton.posicion()==self.posicion())and energia>0

}

}
object jerry{
	var posicion=10->5
	var peso=3
  
	method peso(){
		return peso
	}
  
  method peso(gramos){
		peso = gramos
	}
  
	method posicion(){
		return posicion
	}

	method velocidad(){
		return 10 - peso
		
	}
}
object distancia {

	method entre(unaPos,otraPos){
		return (unaPos.x()-otraPos.x()).abs()*2+(unaPos.y()-otraPos.y()).abs().squareRoot()
	
	}
}
