object patagonia {
	method viajar(ave){
		ave.ganarEnergia(30)
	}
	
}
object sierrasCordobesas{
	method viajar(ave){
		ave.ganarEnergia(70)
	}
}
object marDelPlata{
	var temporada="alta"
	method viajar(ave){
		if(self.temporada()=="alta"){
		ave.ganarEnergia(-20)
	}else{
		ave.ganarEnergia(80)
	}
	}
	method temporada(){return temporada}
method temporada(temp){temporada=temp}
}
object noroesteArgentino{
	method viajar(ave){
		ave.ganarEnergia(ave.energia()*0.10)
	
}
}
