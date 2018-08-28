object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	//var property sueldo = 15000
	var sueldo = 15000
	var dinero = 0
	//Por polimorfismo necesito que entienda estos mensajes. 
	
	method venderEmpanada() {}
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	
	method sueldo() { return sueldo } //Correccion en el return valor fijo -> var.
	method totalDinero() { return dinero }
	method cobrarSueldo() { dinero += self.sueldo() }
}

object baigorria {
	var sueldo = 0
	var dinero = 0
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada 
	method totalDinero() { return dinero }
	method cobrarSueldo() { dinero += self.sueldo() }
}

object galvan {
	var dinero = 300000
	method totalDinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo() 
		empleado.cobrarSueldo()
	}
}
