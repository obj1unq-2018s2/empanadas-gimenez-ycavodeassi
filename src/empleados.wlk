object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	//var property sueldo = 15000
	var sueldo = 15000
	var dinero
	
	method sueldo() { return sueldo } //Correccion en el return valor fijo -> var.
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	
	method cobrarSueldo() { dinero += self.sueldo() }
	
	method dinero() { return dinero }
}

object baigorria {
	var dinero
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada 
	method sueldo(nuevoValor) { sueldo = nuevoValor}
	
	method cobrarSueldo() { dinero += self.sueldo() }
	
	method dinero() { return dinero }
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo() 
		empleado.cobrarSueldo()
	}
}
