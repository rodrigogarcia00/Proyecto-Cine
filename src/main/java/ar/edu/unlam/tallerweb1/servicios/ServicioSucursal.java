package ar.edu.unlam.tallerweb1.servicios;

import ar.edu.unlam.tallerweb1.modelo.Sucursal;

public interface ServicioSucursal {
	void guardarSucursal(Sucursal sucursal);
	Sucursal consultarSucursalPorId(Long id);
}
