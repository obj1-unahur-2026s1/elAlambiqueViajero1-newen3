object luke{
    var cantidadViajes = 0
    var recuerdo = null
    var vehiculo = alambiqueVeloz

    method cantidadViajes() = cantidadViajes 

    method viajar(lugar){
        if (lugar.puedeLlegar(vehiculo)) {
            cantidadViajes = cantidadViajes + 1
            recuerdo = lugar.recuerdoTipico()
            vehiculo.consumirCombustible()
        }
    }
    method recuerdo() = recuerdo
    method vehiculo(nuevo) {vehiculo = nuevo}
}

object alambiqueVeloz {
    const rapido = true
    var combustible = 20
    const consumoPorViaje = 10
    method tieneCombustible() = combustible >= consumoPorViaje
    method consumirCombustible() {
        combustible = combustible - consumoPorViaje
    }
    method rapido() = rapido
}

object paris{
    method recuerdoTipico() = "Llavero Torre Eiffel"
    method puedeLlegar(movil) =  movil.tieneCombustible() 
}

object buenosAires{
    method recuerdoTipico() = "Mate"
    method puedeLlegar(auto) =  auto.rapido() 
}

object bagdad {
    var recuerdo = "bidon de petroleo"
    method recuerdoTipico() = recuerdo
    method recuerdo(nuevo) {recuerdo = nuevo }
    method puedeLlegar(cualquierCosa) = true
}

object lasVegas{
    var homenaje = paris
    method homenaje(lugar) {homenaje = lugar}
    method recuerdoTipico() = homenaje.recuerdoTipico()
    method puedeLlegar(vehiculo) = homenaje.puedeLlegar(vehiculo)
}

object redLine {
    var durabilidad = 100
    var velocidad = 60
    var combustible = 50
    const consumoCombustible = 10
    const consumoDurabilidad = 10
    const aumentoVelocidad = 20


    method modoTurbo() = velocidad > 70 && durabilidad > 20


    method tieneCombustible() {
        return combustible >= consumoCombustible || velocidad > 70 && durabilidad > 20
    }

    method consumirCombustible() {
        if (velocidad > 70 && durabilidad > 20) {
            durabilidad = durabilidad - consumoDurabilidad
            velocidad = velocidad + aumentoVelocidad
        } else {
            combustible = combustible - consumoCombustible
        }
    }

    method rapido() = velocidad > 75
}


object tokio {
    method recuerdoTipico() = "Figura de Godzilla"
    
    method puedeLlegar(transporte) = transporte.rapido() && transporte.tieneCombustible()
}