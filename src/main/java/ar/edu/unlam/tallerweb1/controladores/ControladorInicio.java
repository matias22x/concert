package ar.edu.unlam.tallerweb1.controladores;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.servicios.ServicioEvento;

@Controller
public class ControladorInicio {
	
	@Inject
	private ServicioEvento servicioEvento;

	@RequestMapping(path = "/Inicio")
	public ModelAndView Inicio() {
		
		ModelMap model = new ModelMap();
		model.put("miListaDeEvento", servicioEvento.listEventosInicioService());
		return new ModelAndView ("Inicio",model);
	}
	
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public ModelAndView inicio() {
		return new ModelAndView("redirect:/Inicio");
	}
	
	

	@RequestMapping(path = "/DetalleEvento")
	public ModelAndView DetalleEvento() {
	return new ModelAndView ("DetalleEvento");
	}
	
	@RequestMapping(path = "/Proximos")
	public ModelAndView Proximos() {
	return new ModelAndView ("Proximos");
	}
	
	@RequestMapping(path = "/Destacados")
	public ModelAndView Destacados() {
	return new ModelAndView ("Destacados");
	}
}
