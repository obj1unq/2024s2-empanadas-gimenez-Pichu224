object galvan {
    var sueldo = 15000
    var dinero = 0

    method sueldo() {
        return sueldo
    }
    method sueldo(_sueldo) {
        sueldo = _sueldo
    }

    method cobrar() {
        dinero += (self.sueldo() - self.deuda())
    } 

    method gastar(cuanto) {
        dinero -= cuanto
    }

    method deuda() {
        return 
    }

    method dinero() {
        return  
    }
}

object baigorria {
    var empanadasVendidas = 0
    var totalCobrado = 0

    method totalCobrado() {
        return totalCobrado
    }
    method sueldo() {
        return 15 * empanadasVendidas
    }

    method vender(cantidadDeEmpanadas) {
        empanadasVendidas += cantidadDeEmpanadas
    }

    method cobrar() {
        totalCobrado += self.sueldo()
        empanadasVendidas = 0
    }   
}

object gimenez {
    var fondo = 300000

    method fondo() {
        return fondo
    }
    method pagoDeSueldo(empleado) {
        fondo -= empleado.sueldo()
        empleado.cobrar()
    }

}
