package ar.edu.unlam.tallerweb1.repositorios;

import ar.edu.unlam.tallerweb1.modelo.Sucursal;

public interface RepositorioSucursal {
	void guardarSucursal(Sucursal sucursal);
	Sucursal consultarSucursalPorId(Long id);
}
