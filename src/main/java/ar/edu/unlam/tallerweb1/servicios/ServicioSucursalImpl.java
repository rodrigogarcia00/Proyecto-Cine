package ar.edu.unlam.tallerweb1.servicios;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ar.edu.unlam.tallerweb1.modelo.Sucursal;
import ar.edu.unlam.tallerweb1.repositorios.RepositorioSucursal;

@Service
@Transactional
public class ServicioSucursalImpl implements ServicioSucursal {

	@Inject
	private  RepositorioSucursal repositorioSucursal;
	
	@Override
	public void guardarSucursal(Sucursal sucursal) {
		repositorioSucursal.guardarSucursal(sucursal);	
	}

	@Override
	public Sucursal consultarSucursalPorId(Long id) {
		return repositorioSucursal.consultarSucursalPorId(id);
	}
}
