package ar.edu.unlam.tallerweb1.controladores;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.servicios.ServicioEvento;

@Controller
@SessionAttributes("sesionUsuario")
public class ControladorAdmin {
	
	//List<Evento> miLista = new ArrayList<Evento>();
	@Inject
	private ServicioEvento servicioEvento;
	
	@RequestMapping(path = "/CrearEvento")
	public ModelAndView IrCrearEvento() {
		Evento evento = new Evento();
		ModelMap model = new ModelMap();
		model.put("evento", evento);
		return new ModelAndView ("CrearEvento",model);
	}
	
	@RequestMapping(path="/CrearEvento", method= RequestMethod.POST)
	public ModelAndView CargarDatosEvento(@ModelAttribute("evento") Evento evento){
		
		
			servicioEvento.crearEventoService(evento);
			
			return new ModelAndView("redirect:/IndexAdmin");
		
	}
	
	@RequestMapping(path="/ActualizarEstadoEvento")
	public ModelAndView actualizarMostrarDelEvento(@RequestParam("id") Long idEv,@RequestParam("m") String mostrarE){
		Evento eventM = servicioEvento.eventoporidService(idEv);
		String mostrarCSI = "no";
		String mostrarCNO = "si";
		if(mostrarE.contains("si")){
			servicioEvento.actualizarEstadoEventoService(eventM, mostrarCSI);
			
		}else if(mostrarE.contains("no")){
			servicioEvento.actualizarEstadoEventoService(eventM, mostrarCNO);
		}
		return new ModelAndView("redirect:/IndexAdmin");
	}
	
	@RequestMapping(path="/IndexAdmin")
	public ModelAndView IndexAdmin(){ 

			ModelMap model = new ModelMap();
			model.put("miListaDeEvento", servicioEvento.listEventosService());
			return new ModelAndView("IndexAdmin",model);	

	 }
	
//	@RequestMapping(path="/busqueda/{filtro}")
//	public ModelAndView FiltroVista(@PathVariable String filtro){
//		return new ModelAndView();
//	}

}

