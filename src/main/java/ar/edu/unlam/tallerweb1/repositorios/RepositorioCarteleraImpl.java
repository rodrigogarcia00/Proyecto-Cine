package ar.edu.unlam.tallerweb1.repositorios;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import ar.edu.unlam.tallerweb1.modelo.Cartelera;
import ar.edu.unlam.tallerweb1.modelo.Pelicula;
import ar.edu.unlam.tallerweb1.modelo.Sucursal;

@Repository
public class RepositorioCarteleraImpl implements RepositorioCartelera {

	@Inject
	private SessionFactory sessionFactory;
	
	@Override
	public void guardarCartelera(Cartelera cartelera) {
		Session session = sessionFactory.getCurrentSession();
		session.save(cartelera);
	}

	@Override
	public List<Pelicula> consultarPeliculasEnCartelera() {
		return sessionFactory.getCurrentSession().createCriteria(Pelicula.class).list();
	}

	@Override
	public List<Sucursal> consultarListaSucursales() {
		return sessionFactory.getCurrentSession().createCriteria(Sucursal.class).list();
	}

}
