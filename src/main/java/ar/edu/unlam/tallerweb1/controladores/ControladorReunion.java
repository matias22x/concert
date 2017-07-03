package ar.edu.unlam.tallerweb1.controladores;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import antlr.collections.List;
import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.modelo.Reunion;
import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.servicios.ServicioEvento;
import ar.edu.unlam.tallerweb1.servicios.ServicioLogin;
import ar.edu.unlam.tallerweb1.servicios.ServicioReunion;

@Controller
@SessionAttributes("sesionUsuario")
public class ControladorReunion {
	
	@Inject
	private ServicioReunion servicioReunion;
	
	@Inject
	private ServicioEvento servicioEvento;
	
	@Inject
	private ServicioLogin servicioLogin;
	
	/*paso modelo Reunion a CrearReunion ,,,,,,, aca agregar el id de evento y cargarlo a la reunion*/
	@RequestMapping(path = "/CrearReunion")
	public ModelAndView IrCrearReunion(@RequestParam("idEvento") Long idEvent) {
		Reunion reunion = new Reunion();
		
		
		
		ModelMap modelo = new ModelMap();
		modelo.put("idEv", idEvent);
		modelo.put("reunion", reunion);
		return new ModelAndView ("CrearReunion",modelo);
	}
	
	
	@RequestMapping(path="/CrearReunion", method= RequestMethod.POST)
	public ModelAndView CargarDatosReunion(@ModelAttribute("reunion") Reunion reunion,
			@ModelAttribute("sesionUsuario") Usuario usuLogeado,@RequestParam("idEvento") Long idEventR){
		Evento eventR = servicioEvento.eventoporidService(idEventR);
		reunion.setEvento(eventR);
		servicioReunion.crearReunionService(reunion);
		servicioReunion.unirUsuarioAReunionService(reunion, usuLogeado);
		return new ModelAndView("redirect:/Inicio");
		
	}
	
	/*Creo la lista miListaReunion*/
	@RequestMapping(path="/detalleReunion")
	public ModelAndView detalleReunion(@RequestParam("idEvento") Long idEvent){ 
		ModelMap modelo = new ModelMap();
			modelo.put("miListaDeReunion",servicioReunion.listReunionesService(idEvent));
			modelo.put("idEv", idEvent);
			return new ModelAndView("detalleReunion",modelo);
			
		
	 }
	
	@RequestMapping(path="/reunionUsuarios")
	public ModelAndView reunionUsuarios(@RequestParam("idReunion") Long idReunion){ 
	  ModelMap modelo = new ModelMap();
	  modelo.put("datosReunion", servicioReunion.reunionporidService(idReunion));
	  modelo.put("idR", idReunion);
	  return new ModelAndView("reunionUsuarios",modelo);	   
	 }
	
	//Unir usuario a reunion creada
	@RequestMapping(path="/unirUsuarioAReunion")
	public ModelAndView cargarUsuarioEnreunion(@RequestParam("idReunion") Long idReunion,@ModelAttribute("sesionUsuario") Usuario us){
		
		Reunion reu = servicioReunion.reunionporidService(idReunion);
		
		servicioReunion.unirUsuarioAReunionService(reu, us);
		return new ModelAndView("redirect:/Inicio");
	}
	/* -------  */
	

	@RequestMapping(path="/salirUsuarioDeReunion")
	public ModelAndView salirUsuarioDeReunion(@RequestParam("idReunion") Long idReunion,@ModelAttribute("sesionUsuario") Usuario us){
		
		Reunion reu = servicioReunion.reunionporidService(idReunion);
		
		servicioReunion.sacarUsuariodeReunionService(reu, us);
		return new ModelAndView("redirect:/Inicio");
	}
	
	@RequestMapping(path="/ListaReuniones")
	public ModelAndView ListaReuniones(){ 
		
		ModelMap model = new ModelMap();
		model.put("miListaDeReuniones", servicioReunion.listReunionesServicePerfil());
		return new ModelAndView("ListaReuniones",model);
	 }
}
