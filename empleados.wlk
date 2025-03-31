object gimenez {
  var fondo = 300000
  
  method pagarSueldo(empleado) {
    empleado.cobrarSueldo()
    fondo -= empleado.sueldo()
  }
  
  method cambiarSueldo(empleado, cantidad) {
    empleado.sueldo(cantidad)
  }
  
  method fondo() = fondo
}

object galvan {
  var fondo = 0
  var sueldo = 15000
  
  method sueldo() = sueldo
  
  method sueldo(cantidad) {
    sueldo = cantidad
  }
  
  method cobrarSueldo() {
    fondo += sueldo
  }
}

object baigorria {
  var empanadasVendidas = 0
  var totalCobrado = 0
  
  method cobrarSueldo() {
    totalCobrado += self.sueldo()
    empanadasVendidas = 0
  }
  
  method sueldo() = 15 * empanadasVendidas
  
  method vender(cantidad) {
    empanadasVendidas += cantidad
  }
  
  method totalCobrado() = totalCobrado
}