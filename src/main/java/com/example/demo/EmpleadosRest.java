package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.domain.Empleado;
import com.example.demo.domain.Empresa;
import com.example.demo.service.IEmpleadoService;

@RestController
public class EmpleadosRest {
	
	@Autowired
	IEmpleadoService iEmpleadoService;

	@GetMapping("/obtenerEmpleados")
	public List<Empleado> obtenerEmpleados(){
		return iEmpleadoService.getAll();
	}
	
	@GetMapping("/obtenerEmpleadoById")
	public Empleado obtenerEmpleadoById(@RequestParam("id") int idEmpleado){
		return iEmpleadoService.getByid(idEmpleado);
	}
	
	@PostMapping("/guardarEmpleado")
	public void saveEmpleado(){	
		Empleado emp =  new Empleado();
		Empresa empresa = new Empresa();
		empresa.setNombre("vv");
		emp.setNombre("empleado");
		emp.setEmpresa(empresa);
		 iEmpleadoService.save(emp);
	}
}
