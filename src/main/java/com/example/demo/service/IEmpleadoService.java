package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import com.example.demo.domain.Empleado;

public interface IEmpleadoService {
	public void save(Empleado empleado);
	public Empleado getByid(int idEmpleado);
	public void update(Empleado empleado);
	public List<Empleado> getAll();
}
