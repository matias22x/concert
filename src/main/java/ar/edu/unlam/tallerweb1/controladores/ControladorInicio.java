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
import ar.edu.unlam.tallerweb1.modelo.Reunion;
import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.servicios.ServicioEvento;
import ar.edu.unlam.tallerweb1.servicios.ServicioLogin;
import ar.edu.unlam.tallerweb1.servicios.ServicioReunion;

@Controller
public class ControladorInicio {
	
	@Inject
	private ServicioLogin servicioLogin;
	
	@Inject
	private ServicioReunion servicioreunion;
	
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
	
	@RequestMapping(path="/busqueda", method = RequestMethod.POST)
	public ModelAndView busqueda(@RequestParam("data")String data){
		ModelMap modelo = new ModelMap();
		
		modelo.put("eventosEncontrados",servicioEvento.busquedaEventos(data));
		modelo.put("reunionesEncontradas",servicioreunion.busquedaReuniones(data));
		return new ModelAndView("ResultadoBusqueda",modelo);
	}
}
