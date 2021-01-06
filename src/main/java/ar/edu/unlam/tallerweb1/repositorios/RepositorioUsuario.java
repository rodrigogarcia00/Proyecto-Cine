package ar.edu.unlam.tallerweb1.repositorios;

import ar.edu.unlam.tallerweb1.modelo.Usuario;

public interface RepositorioUsuario {

	Boolean registrarUsuario(Usuario usuario);
	
	
	
	Usuario consultarUsuarioPorID(Long id);
	
	
	
	Usuario consultarUsuarioPorNombreYApellido(String nombre, String apellido);


	
	Boolean modificarDatos(Usuario usuario);
 
	

	Usuario consultarUsuario(Usuario usuario);

	
}
