package ar.edu.unlam.tallerweb1.repositorios;

import ar.edu.unlam.tallerweb1.modelo.Newsletter;

public interface RepositorioNewsletter {

	Boolean guardarEmail(Newsletter newsletter);
	Newsletter consultarNewsletter(Newsletter newsletter);
}
