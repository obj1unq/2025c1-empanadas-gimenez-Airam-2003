object gimenez {
  var fondo = 300000
  
  method pagarSueldo(empleado) {
    fondo -= empleado.sueldo()
    empleado.cobrarSueldo()
  }
  
  method cambiarSueldo(empleado, cantidad) {
    empleado.sueldo(cantidad)
  }
  
  method fondo() = fondo
}

object galvan {
  var dinero = 0
  var deuda = 0
  var sueldo = 15000
  
  method sueldo() = sueldo
  
  method deuda() = deuda
  
  method dinero() = dinero
  
  method sueldo(cantidad) {
    sueldo = cantidad
  }
  
  method gastar(cantidad) {
    if (dinero < cantidad) {
      deuda += (dinero - cantidad).abs()
      dinero = 0
    } else {
      dinero -= cantidad
    }
  }
  
  method cobrarSueldo() {
    const balanceFinanciero = sueldo - deuda
    
    if (balanceFinanciero < 0) {
      deuda -= sueldo
    } else {
      dinero += balanceFinanciero
      deuda = 0
    }
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