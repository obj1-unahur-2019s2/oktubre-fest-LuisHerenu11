import marcas.*
import personas.*

class Carpas {
	var property limiteDePersonas = 0
	var property bandaDeMusica = true
	var property vendeCerveza = true
	var property marca
	var property cantidadDePersonas = 0
	
	method queCervezaVende(){
		return marca
	}
	method dejaIngresar(unaPersona){
		return (cantidadDePersonas < limiteDePersonas and not unaPersona.estaEbria())
	}
}

class CarpaDeCorona inherits Carpas{
	
}

class CarpaDeGuines inherits Carpas{
	
}

class CarpaDeHofbrau inherits Carpas{
	
}

//Saber si una persona quiere entrar a una carpa