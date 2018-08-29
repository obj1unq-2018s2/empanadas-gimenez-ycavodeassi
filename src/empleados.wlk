object gimenez {
	//var sueldo = 15000
	//method sueldo(nuevoValor) { sueldo = nuevoValor }
	//method sueldo() { return sueldo }
	var property dinero = 0
	var property deuda = 0
	var property sueldo = 15000  // esta linea le agrega al objeto: un atributo, el método para acceder, y el método para modificar.

	method totalDinero() = dinero
	method venderEmpanada() {} //Por polimorfismo necesito que entienda estos mensajes. 
	method cobrarSueldo() { dinero += self.sueldo() }
	method gasta(elCosto) {
		if (self.totalDinero() < elCosto) {
			deuda -= self.totalDinero()-elCosto
			dinero = 0
		}
		else {
			dinero -= elCosto
		}
	}
	method totalDeuda() = deuda
	method pagarDeuda() { 
		if (self.totalDeuda() <= self.totalDinero()) {
			dinero -= self.totalDeuda()
			deuda = 0
		}
		else {
			deuda -= self.totalDinero()
			dinero = 0
		}
	} 

}

object baigorria {
	var montoPorEmpanada = 15
	var cantidadEmpanadasVendidas = 100
	var property dinero = 0
	var property deuda = 0
	var property sueldo = cantidadEmpanadasVendidas * montoPorEmpanada 
	//* Esto es correcto? o deberia solo declarar la variable sin getter ni setter y el metodo.
																	
	method totalDinero() = dinero
	method venderEmpanada() { //*
		cantidadEmpanadasVendidas += 1 //*
		self.sueldo(cantidadEmpanadasVendidas * montoPorEmpanada) //*
	}
	method cobrarSueldo() { dinero += self.sueldo() }
	method gasta(elCosto) {
		if (self.totalDinero() < elCosto) {
			deuda -= self.totalDinero()-elCosto
			dinero = 0
		}
		else {
			dinero -= elCosto
		}
	}
	method totalDeuda() = deuda
	method pagarDeuda() { 
		if (self.totalDeuda() <= self.totalDinero()) {
			dinero -= self.totalDeuda()
			deuda = 0
		}
		else {
			deuda -= self.totalDinero()
			dinero = 0
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
