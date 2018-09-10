object gimenez {
	//var sueldo = 15000
	//method sueldo(nuevoValor) { sueldo = nuevoValor }
	//method sueldo() { return sueldo }
	var dinero = 0
	var property sueldo = 15000  // esta linea le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	
	method totalDinero() = dinero
	method venderEmpanada() {} //Por polimorfismo necesito que entienda estos mensajes. 
	method cobrarSueldo() { dinero += self.sueldo() }

}

object baigorria {
	const montoPorEmpanada = 15
	var cantidadEmpanadasVendidas = 1000
	var dinero = 0
	var deuda = 0
	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada																
	method totalDinero() = dinero
	method totalDeuda() = deuda
	
	method venderEmpanada() { cantidadEmpanadasVendidas += 1 }
	method cobrarSueldo() {
		if (self.sueldo() > deuda) { 
			dinero += self.sueldo() - deuda
			deuda -= deuda
		} 
		else {
			deuda -= self.sueldo()
		}
	}
	method gasta(elCosto) {
		if (self.totalDinero() > elCosto) {
			dinero -= elCosto
		}
		else {
			deuda += elCosto - dinero
			dinero -= dinero
		}
	}

}

object galvan {
	var dinero = 300000
	method totalDinero() = dinero
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo() 
		empleado.cobrarSueldo()
	}
}
