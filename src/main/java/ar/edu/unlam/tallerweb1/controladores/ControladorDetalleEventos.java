package ar.edu.unlam.tallerweb1.controladores;

import java.util.ArrayList;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import antlr.collections.List;
import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.modelo.Reunion;
import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.servicios.ServicioEvento;

@Controller
public class ControladorDetalleEventos {

	@Inject
	private ServicioEvento servicioEvento;
	
	@RequestMapping(path ="/detalleEventos")
	public ModelAndView irControladorDetalle(@RequestParam("idEvento") Long idEvent){
	
		ModelMap model = new ModelMap();
		model.put("eventoElegido", servicioEvento.eventoporidService(idEvent));
	
		return new ModelAndView("detalleEventos", model);
	}
	
}

