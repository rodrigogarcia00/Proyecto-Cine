package ar.edu.unlam.tallerweb1.controladores;



import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Entrada;
import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.servicios.ServicioLogin;

@Controller
public class ControladorPaginas {

	@Inject
	private ServicioLogin servLogin;
	
	

	@RequestMapping ("/inicio")
	public ModelAndView home() {
		ModelMap modelo = new ModelMap();
		modelo.put("titulo","Inicio");
		return new ModelAndView("index",modelo);
	}

	@RequestMapping("/login")
	public ModelAndView login() {
		Usuario usuario=new Usuario();
		ModelMap modelo = new ModelMap();
		
		modelo.put("titulo","Login");
		modelo.put("usuario",usuario);
		
		return new ModelAndView("login",modelo);

	}
	
	/* Verificamos que el usuario agregado este registrado en la base de datos*/
	@RequestMapping(path ="/validacionLogin", method = RequestMethod.POST)
	
	public ModelAndView validarLogin(@ModelAttribute("usuario") Usuario usuario, HttpServletRequest request) {
		ModelMap modelo = new ModelMap();
		
		// invoca el metodo consultarUsuario del servicio y hace un redirect a la URL /home, esto es, en lugar de enviar a una vista
		// hace una llamada a otro action a través de la URL correspondiente a ésta
		Usuario usuarioBuscado=servLogin.consultarUsuario(usuario);
		if (usuarioBuscado != null) {
			request.getSession().setAttribute("rol", usuarioBuscado.getRol());
			return new ModelAndView("redirect:/miCuenta");
		} else {
			// si el usuario no existe agrega un mensaje de error en el modelo.
			modelo.put("error", "Usuario o clave incorrecta");
		}
		return new ModelAndView("login", modelo);
	}

	
	
	@RequestMapping("/registro")
	public ModelAndView registro() {
	Usuario usuario=new Usuario();	
	ModelMap modelo = new ModelMap();
	
	modelo.put("titulo","Registro");
	modelo.put("usuario", usuario);
	
		return new ModelAndView("registro",modelo);
	}
	
	/*Verificamos que el usuario no se encuentre registrado en la bd, para poder almacenarlo*/
	@RequestMapping(path ="/guardarUsuario", method = RequestMethod.POST)

	public ModelAndView registrarUsuario(@ModelAttribute("usuario") Usuario usuario, HttpServletRequest request) {
	/*Devolvemos true si se registro correctamente*/
		Boolean usuarioRegistrado=servLogin.registrarUsuario(usuario);
		ModelMap modelo=new ModelMap();
		
		
		if (usuarioRegistrado) {
			
			
			return new ModelAndView("redirect:/login");
		} else {
			// si el usuario no existe agrega un mensaje de error en el modelo.
			
			modelo.put("error", "El email no esta disponible");
		
		}
		
	
	return new ModelAndView("registro", modelo);
	}
	
	

	@RequestMapping ("/recuperaTuCuenta")
	public ModelAndView recuperarCuenta() {
		ModelMap modelo = new ModelMap();
		modelo.put("titulo","Recuperar Cuenta");
		return new ModelAndView("contrase�aOlvidada",modelo);
	}
	
	
	@RequestMapping("/miCuenta")
	public ModelAndView miCuenta() {
		
		ModelMap modelo = new ModelMap();
		modelo.put("titulo", "Mi Cuenta");
		return new ModelAndView ("micuenta",modelo);
	}
	
	
	@RequestMapping("/misCompras")
	public ModelAndView misCompras() {
		
		ModelMap modelo = new ModelMap();
		modelo.put("titulo", "Mis Compras");
		return new ModelAndView ("miscompras",modelo);
	}
	
	
	@RequestMapping("/modificarDatos")
	public ModelAndView modificarDatos() {
		ModelMap modelo = new ModelMap();
		modelo.put("titulo", "Modificar Datos");
		return new ModelAndView ("modificardatos",modelo);
	}
	
	@RequestMapping(path="/validarModificarDatos",method=RequestMethod.POST)
	public ModelAndView confirmarModificarDatos(
			@ModelAttribute("usuario") Usuario usuario,
			HttpServletRequest request
			){

		servLogin.modificarDatos(usuario);

		Boolean usuarioModificado=servLogin.modificarDatos(usuario);
		ModelMap modelo = new ModelMap();
		if(usuarioModificado) {
			return new ModelAndView ("redirect:/miCuenta");
		}else {
			modelo.put("error", "No se pudo modificar los datos");
		}

		return new ModelAndView ("");
		
	}
	
	
	@RequestMapping("/recomendaciones")
		public ModelAndView recomendaciones() {
			ModelMap modelo = new ModelMap();
			modelo.put("titulo", "Recomendaciones");
			return new ModelAndView("recomendaciones", modelo);
		}
	
	@RequestMapping("/compra")
	public ModelAndView compra() {
		ModelMap modelo = new ModelMap();
		modelo.put("titulo", "Compra");
		return new ModelAndView("compra", modelo);
	}
	
	
	@RequestMapping("/completarCompra")
	public ModelAndView completarCompra() {
		ModelMap modelo = new ModelMap();
		
		return new ModelAndView("completarcompra",modelo);
	}
}
