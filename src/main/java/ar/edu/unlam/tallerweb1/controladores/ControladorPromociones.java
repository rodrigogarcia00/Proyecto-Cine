package ar.edu.unlam.tallerweb1.controladores;

import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Newsletter;
import ar.edu.unlam.tallerweb1.servicios.ServicioNewsletter;

@Controller
public class ControladorPromociones {
	@Inject
	ServicioNewsletter servicioNewsletter;
	
	@RequestMapping("/promociones")
	public ModelAndView promociones(){
		Newsletter newsletter = new Newsletter();
		ModelMap modelo = new ModelMap();
		modelo.put("titulo","Promociones");
		modelo.put("newsletter", newsletter);
		return new ModelAndView("promociones",modelo);
	}
	
	@RequestMapping("/promocionUno")
	public ModelAndView promocionUno(){
		ModelMap modelo = new ModelMap();
		modelo.put("titulo", "Promocion 1");
		return new ModelAndView("promocionUno",modelo);
	}
	
	@RequestMapping("/promocionDos")
	public ModelAndView promocionDos() {
		ModelMap modelo = new ModelMap();
		modelo.put("titulo", "Promocion 2");
		return new ModelAndView("promocionDos",modelo);
	}
	
	@RequestMapping("/promocionTres")
	public ModelAndView promocionTres(){
		ModelMap modelo = new ModelMap();
		modelo.put("titulo", "Promocion 3");
		return new ModelAndView("promocionTres",modelo );
	}
	
	@RequestMapping("/promocionCuatro")
	public ModelAndView promocionCuatro(){
		ModelMap modelo = new ModelMap();
		modelo.put("titulo", "Promocion 4");
		return new ModelAndView("promocionCuatro",modelo);
	}
	
	@RequestMapping("/promocionCinco")
	public ModelAndView promocionCinco(){
		ModelMap modelo = new ModelMap();
		modelo.put("titulo", "Promocion 5");
		return new ModelAndView("promocionCinco",modelo );
	}
	
	@RequestMapping("/promocionSeis")
	public ModelAndView promocionSeis(){
		ModelMap modelo = new ModelMap();
		modelo.put("titulo", "Promocion 6");
		return new ModelAndView("promocionSeis",modelo );
	}
	
	@RequestMapping(path="/confirmacionNewsletter",method = RequestMethod.POST)
	public ModelAndView confirmacionNewsletter(
			@ModelAttribute("newsletter") Newsletter newsletter, HttpServletRequest request
			){
		Boolean newsletterBuscado = servicioNewsletter.guardarEmail(newsletter);
		ModelMap modelo = new ModelMap();
		modelo.put("titulo","Confirmacion");
		if(newsletterBuscado){
			return new ModelAndView("redirect:/promociones");
		}else {
			modelo.put("error","Ya se encuentra registrado en nuestro newsletter");
		}
		return new ModelAndView("promociones",modelo);
	}
	
	@RequestMapping("/promoTarjetaVisa")
	public ModelAndView promoTarjetaVisa() {
		ModelMap modelo = new ModelMap();
		modelo.put("titulo","Promo Tarjeta Visa");
		return new ModelAndView("promoTarjetaVisa",modelo);
	}
}
