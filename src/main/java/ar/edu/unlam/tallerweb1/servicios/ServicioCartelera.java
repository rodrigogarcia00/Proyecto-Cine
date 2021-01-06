package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Cartelera;
import ar.edu.unlam.tallerweb1.modelo.Pelicula;
import ar.edu.unlam.tallerweb1.modelo.Sucursal;

public interface ServicioCartelera {

	void guardarCartelera(Cartelera cartelera);
	List<Pelicula> consultarPeliculasEnCartelera();
	List<Sucursal> consultarListaSucursales();
}
