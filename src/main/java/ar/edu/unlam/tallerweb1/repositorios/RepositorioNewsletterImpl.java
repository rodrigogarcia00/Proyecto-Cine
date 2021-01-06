package ar.edu.unlam.tallerweb1.repositorios;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import ar.edu.unlam.tallerweb1.modelo.Newsletter;

@Repository
@Transactional
public class RepositorioNewsletterImpl implements RepositorioNewsletter {
	@Inject
	private SessionFactory sessionFactory;
	
	@Override
	public Boolean guardarEmail(Newsletter newsletter) {
		try {
			sessionFactory.getCurrentSession().save(newsletter);
			return true;
		}catch (Exception e) {
			return false;
		}
		
	}

	@Override
	public Newsletter consultarNewsletter(Newsletter newsletter) {
		final Session session = sessionFactory.getCurrentSession();
		return (Newsletter) session.createCriteria(Newsletter.class)
				.add(Restrictions.eq("email", newsletter.getEmail()))
				.uniqueResult();
	}

	
	
	

}
