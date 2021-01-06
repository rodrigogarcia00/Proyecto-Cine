package ar.edu.unlam.tallerweb1.repositorios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Cartelera;
import ar.edu.unlam.tallerweb1.modelo.Pelicula;
import ar.edu.unlam.tallerweb1.modelo.Sucursal;

public interface RepositorioCartelera {

	void guardarCartelera(Cartelera cartelera);
	List<Pelicula> consultarPeliculasEnCartelera();
	List<Sucursal> consultarListaSucursales();
	
	
}
