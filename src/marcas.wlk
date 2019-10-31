class Cervezas {
	var property origen
	var property cantidadDeLupulos
}
class Rubia inherits Cervezas{
	var property graduaciones
	override method cantidadDeLupulos(num){
		cantidadDeLupulos = num
	}	
}

class Negra inherits Cervezas{
//Por otro lado, la graduación de una marca de cerveza negra se calcula como el mínimo entre la graduación 
	method graduaciones(){
		return (graduaciones.graduacionReglamentaria().min(cantidadDeLupulos *2))	
	}
	override method cantidadDeLupulos(num){
		cantidadDeLupulos = num
	}	
}

class Roja inherits Negra{
	override method  graduaciones(){
		return super() * 1.25
	}
	override method cantidadDeLupulos(num){
		cantidadDeLupulos = num
	}	
}

object graduaciones {
	var property graduacionReglamentaria = 15
}


class Jarras{
	var property capacidad = 0
	var property marca 
	
	method contenidoDeAlcohol(){
		return capacidad * (marca.graduaciones()/100)
	}
}	
