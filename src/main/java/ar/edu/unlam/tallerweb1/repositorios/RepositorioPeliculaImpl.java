package ar.edu.unlam.tallerweb1.repositorios;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import ar.edu.unlam.tallerweb1.modelo.Pelicula;

@Repository
@Transactional
public class RepositorioPeliculaImpl implements RepositorioPelicula {
	@Inject
	private SessionFactory sessionFactory;
	
	@Override
	public void guardarPelicula(Pelicula pelicula) {
		sessionFactory.getCurrentSession().save(pelicula);
	}

}
