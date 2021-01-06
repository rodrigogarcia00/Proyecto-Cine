package ar.edu.unlam.tallerweb1.repositorios;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import ar.edu.unlam.tallerweb1.modelo.Sucursal;

@Repository
@Transactional
public class RepositorioSucursalImpl implements RepositorioSucursal {

	@Inject
	private SessionFactory sessionFactory;
	
	@Override
	public void guardarSucursal(Sucursal sucursal) {
		sessionFactory.getCurrentSession().save(sucursal);
	}

	@Override
	public Sucursal consultarSucursalPorId(Long id) {
		return sessionFactory.getCurrentSession().get(Sucursal.class, id);
	}

}
