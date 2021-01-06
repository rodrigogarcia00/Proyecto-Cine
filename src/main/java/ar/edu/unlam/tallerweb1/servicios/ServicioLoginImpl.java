package ar.edu.unlam.tallerweb1.servicios;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ar.edu.unlam.tallerweb1.modelo.Entrada;
import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.repositorios.RepositorioUsuario;

@Service
@Transactional

public class ServicioLoginImpl implements ServicioLogin {

	@Inject
	private RepositorioUsuario repositorioLogin;
	
	@Override
	public Boolean registrarUsuario(Usuario usuario) {
		if(repositorioLogin.consultarUsuario(usuario)==null) {
			
			return repositorioLogin.registrarUsuario(usuario);
		}else {
			return false;
		}

	}

	@Override
	public Usuario consultarUsuario(Usuario usuario) {
		// TODO Auto-generated method stub

		return repositorioLogin.consultarUsuario(usuario);

	}
	
	@Override
	public Usuario consultarUsuarioPorNombreYApellido(String nombre, String apellido) {
		// TODO Auto-generated method stub
		return repositorioLogin.consultarUsuarioPorNombreYApellido(nombre, apellido);
	}

	@Override
	public Boolean modificarDatos(Usuario usuario) {
		return repositorioLogin.modificarDatos(usuario);
	}

	@Override
	public Usuario consultarUsuarioPorID(Long id) {
		
		return repositorioLogin.consultarUsuarioPorID(id);
	}

	

}
