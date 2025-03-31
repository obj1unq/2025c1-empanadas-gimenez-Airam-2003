object gimenez {
    var fondo = 300000

    method pagarSueldo(empleado) {
        empleado.cobrarSueldo()
        fondo -= empleado.sueldo()
    }

    method cambiarSueldo(empleado,cantidad){
        empleado.sueldo(cantidad)
    }

    method fondo(){
        return fondo
    }
}

object galvan {
    var fondo  = 248000
    var sueldo = 15000

    method sueldo(cantidad){
        sueldo = cantidad
    }

    method cobrarSueldo() {
        fondo += sueldo
    }
}

object baigorria {
    var precioEmpanadas   = 15
    var empanadasVendidas = 0
    var fondo             = 0

    method cobrarSueldo(){
        fondo += precioEmpanadas * empanadasVendidas
        empanadasVendidas = 0
    }

    method sueldo(cantidad){
        precioEmpanadas = cantidad
    }
}