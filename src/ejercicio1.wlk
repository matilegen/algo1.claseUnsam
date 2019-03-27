
//sueldo de pepe
object pepe {
	var categoria=cadete
	var bonoResultado=nulo
	var faltas=0
	var bonoPresentismo=nulo
	var ventas=0
	method ventas(cant){
		ventas=cant
	}
	method sueldo(){
		return self.neto()+self.bonoPresentismo()+self.bonosResultado()
	}
	method neto() {
		return categoria.sueldoNeto(ventas)
	}
	
	method bonoPresentismo() {
		return bonoPresentismo.sueldoPresente(faltas,self)
		
	}
	method bonosResultado() {
		return bonoResultado.sueldobono(self)
	}
	method categoria(cate){
		categoria=cate
	}
	method bonoResultado(cate){
		bonoResultado=cate
	}
	method falto(cate){
		faltas=cate
	}
	method presentismo(cate){
		bonoPresentismo=cate
	}
}
object gerente{
	var monto=15000
	method modifi(valor){
			monto=valor
		}
	method sueldoNeto(ventas){
		return monto
	}
}
object cadete{
	var monto=20000
	method modifi(valor){
			monto=valor
		}
	method sueldoNeto(ventas){
	return monto
	}
	}
object porcentaje{
	method sueldobono(persona){
		return (persona.neto()*0.1)
	}
}
object montoFijo{
	method sueldobono(persona){
		return 800
	}
}
object nulo{
	method sueldobono(persona){
		return 0
	}
	method sueldoPresente(falto,unapersona){
			return 0
		}
	
}

object normal{
	method sueldoPresente(falto,unapersona){
		if(falto==0){
			return 2000
		}else if(falto==1){
			return 1000
		}else{
		return 0
		}
	}
}
object ajuste{
	method sueldoPresente(falto,unapersona){
		if(falto==0){
			return 100
		}
		return 0
	}
}

object demagogico{
	method sueldoPresente(falta,unapersona){
		if(unapersona.neto()<18000){
			return 500
		}
		return 300
	}
	
	}
	object vendedor{
		var monto=16000
		method modifi(valor){
			monto=valor
		}
		method sueldoNeto(ventas){
			if(ventas>10){
				return monto*self.activarAumentoPorMuchasVentas()
			}else{
		return monto+self.desactivarAumentoPorMuchasVentas()
		
		}
	}
	method activarAumentoPorMuchasVentas(){
		return 1.3
	}
	method desactivarAumentoPorMuchasVentas(){
		return 0
	}
	}
	object medioTiempo{
		var monto=0
		var ventas=0
		method sueldoNeto(venta){
		return monto
	}
		method sueldoPresente(faltas,persona){
			return monto
		}
		method setCategoriaBase(categoria){
			monto=categoria.sueldoNeto(ventas)/2
			categoria.modifi(monto)
			return monto
		}
	}

object sofia {
	var categoria
	var bonoResultado
	var ventas=0
	method ventas(cant){
		ventas=cant
	}
	method sueldo(){
		return self.neto()+self.bonoResultado()
	}
	method neto() {
		return categoria.sueldoNeto(ventas)*1.3
	}

	method bonoResultado() {
		return bonoResultado.sueldobono(self)
	}
	method categoria(cate){
		categoria=cate
	}
	method bonoResultado(cate){
		bonoResultado=cate
	}

}
object roque{
	var bonoResultado=nulo
	var ventas=0
	var neto=28000
	method ventas(cant){
		ventas=cant
	}
	method neto(){
		return neto
	}
	method sueldo(){
		return neto+self.bonosResultado()+9000
	}
	method bonosResultado() {
		return bonoResultado.sueldobono(self)
	}

	method bonoResultado(cate){
		bonoResultado=cate
	}
}
object ernesto{
	var categoria=cadete
	var faltas=0
	var bonoPresentismo=nulo
	var ventas=0
	var ayudante=pepe
	method ayudante(persona){
		ayudante=persona
	}
	method ventas(cant){
		ventas=cant
	}
	method sueldo(){
		return self.neto()+self.bonoPresentismo()
	}
	method neto() {
		return ayudante.neto()
	}
	method categoria(cate){
		categoria=cate
	}
	method falto(cate){
		faltas=cate
	}
	method presentismo(cate){
		bonoPresentismo=cate
	}
	method bonoPresentismo() {
		return bonoPresentismo.sueldoPresente(faltas,self)
		
	}
}