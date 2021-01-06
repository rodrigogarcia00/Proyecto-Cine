package ar.edu.unlam.tallerweb1.controladores;

import java.util.Calendar;
import java.util.LinkedList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Cartelera;
import ar.edu.unlam.tallerweb1.modelo.Pelicula;
import ar.edu.unlam.tallerweb1.modelo.Sucursal;
import ar.edu.unlam.tallerweb1.servicios.ServicioCartelera;

@Controller
public class ControladorCartelera {

	@Inject private ServicioCartelera servicioCartelera;
	
	@RequestMapping(path="/cartelera", method = RequestMethod.GET)
		public ModelAndView cartelera(){
		
		Cartelera cartelera = new Cartelera();
		ModelMap modelo = new ModelMap();
		cartelera.setHorario("14:00");
		cartelera.setFecha("25/08");
		
		List<Pelicula> peliculas = new LinkedList<Pelicula>();
		peliculas.addAll(servicioCartelera.consultarPeliculasEnCartelera());		
		List<Sucursal> sucursales = new LinkedList<Sucursal>();
		sucursales.addAll(servicioCartelera.consultarListaSucursales());
		cartelera.setSucursales(sucursales);
		cartelera.setPeliculas(peliculas);
		servicioCartelera.guardarCartelera(cartelera);
		modelo.put("cartelera",cartelera);
		modelo.put("horario", cartelera.getHorario());
		return new ModelAndView("cartelera", modelo);	
	}
	
	
	
	
	
}

