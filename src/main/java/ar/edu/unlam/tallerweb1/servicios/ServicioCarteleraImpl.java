package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ar.edu.unlam.tallerweb1.modelo.Cartelera;
import ar.edu.unlam.tallerweb1.modelo.Pelicula;
import ar.edu.unlam.tallerweb1.modelo.Sucursal;
import ar.edu.unlam.tallerweb1.repositorios.RepositorioCartelera;

@Service
@Transactional
public class ServicioCarteleraImpl implements ServicioCartelera {

	@Inject
	private RepositorioCartelera repositorioCartelera;
	
	@Override
	public void guardarCartelera(Cartelera cartelera) {
		repositorioCartelera.guardarCartelera(cartelera);

	}

	@Override
	public List<Pelicula> consultarPeliculasEnCartelera() {
		return repositorioCartelera.consultarPeliculasEnCartelera();
	}

	@Override
	public List<Sucursal> consultarListaSucursales() {
		return repositorioCartelera.consultarListaSucursales();
	}

}
