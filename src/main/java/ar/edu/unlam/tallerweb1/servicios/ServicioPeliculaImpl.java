package ar.edu.unlam.tallerweb1.servicios;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ar.edu.unlam.tallerweb1.modelo.Pelicula;
import ar.edu.unlam.tallerweb1.repositorios.RepositorioPelicula;

@Service
@Transactional
public class ServicioPeliculaImpl implements ServicioPelicula {
	@Inject
	private RepositorioPelicula repositorioPelicula;

	@Override
	public void guardarPelicula(Pelicula pelicula) {
		repositorioPelicula.guardarPelicula(pelicula);
	}
	
}
