import marcas.*

class Persona {
	var property peso
	var property jarrasCompradas = []
	var property leGustaLaMusica = true	
	var property nivelDeAguante = 0
	
	method estaEbria(){
		//Una persona está ebria si la cantidad de alcohol que ingirió multiplicado por su peso supera su aguante.
		return self.alcoholIngerido() * peso > nivelDeAguante
	}
	method alcoholIngerido(){
		return jarrasCompradas.sum({jarras => jarras.contenidoDeAlcohol()})
	}
	method quiereEntrar(unaCarpa){
		return self.leGusta(unaCarpa.marca()) and  (self.leGustaLaMusica() == unaCarpa.bandaDeMusica())
	}
	method leGusta(unaMarca)
}

class Belgas inherits Persona{
	override method leGusta(unaMarca){
		return unaMarca.cantidadDeLupulos() > 4
	}
}

class Checos inherits Persona{
	override method leGusta(unaMarca){
		return unaMarca.graduaciones() > 0.08
	}
}

class Aleman inherits Persona{
	override method leGusta(unaMarca){
		return true
	}
	override method quiereEntrar(unaCarpa)
	{
		return super(unaCarpa) and (unaCarpa.cantidadDePersonas() % 2 == 0)
	}
}

