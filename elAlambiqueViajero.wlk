object casaLuke {
    var recuerdo = paris.recuerdo()

    method guardarRecuerdo(nuevoRecuerdo) {
        recuerdo = nuevoRecuerdo
    }

  
}

object luke {
  
    var vehiculo = alambiqueVeloz
    var lugaresVisitados = 0
    var recuerdo = paris.recuerdo()

    method cuantoslugaresVisito() = lugaresVisitados

  method viajarSiPuede(lugar) {
    if(lugar.puedeLlegar(vehiculo)) {
        vehiculo.viajar()
        casaLuke.guardarRecuerdo(lugar.recuerdo())
        recuerdo = lugar.recuerdo()
        lugaresVisitados += 1
    }
  }
  method recuerdoDelUltimoLugar() = recuerdo

  method cambiarVehiculo(nuevoVehiculo) {vehiculo = nuevoVehiculo}

}

object alambiqueVeloz {
    var cantidadCombustible = 20

    method tieneCombustible() =  cantidadCombustible >= 10
    
    method viajar() {cantidadCombustible = cantidadCombustible - 10}

    method esRapido() = true  
}

object paris {

    method recuerdo() = "Llavero Torre Eiffel"

    method puedeLlegar(movil) =  movil.tieneCombustible()


}

object buenosAires {
    var presidente = "Alberto Fernandez"

    method recuerdo() = "Mate"

    method tieneLlerva() {}

    method puedeLlegar(movil) = movil.esRapido()
}

object bagdad {
    var recuerdo = "bidon de petroleo"

    method puedeLlegar(movil) = true
      
    method cambiarRecuerdo(otroRecuerdo) {recuerdo = otroRecuerdo}

    method recuerdo(movil) = recuerdo

}

object lasVegas {
  
    var lugarOmenajeado = paris

    method homenaje(lugar) {lugarOmenajeado = lugar}

    method recuerdo() = lugarOmenajeado.recuerdo()

    method puedeLlegar(movil) = lugarOmenajeado.puedeLlegar(movil)

}   

object superChatarra {
  
}

object rayoMCquen {
  
}

object aguilaBlanca {
  
}








































