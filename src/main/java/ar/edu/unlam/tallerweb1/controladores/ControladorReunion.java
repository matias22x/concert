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
		servicioReunion.agregarUsuarioAReunionService(reunion, usuLogeado);
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
	  modelo.put("usuariosReunion",servicioReunion.listaUsuariosReunionService(idReunion));
	  modelo.put("idR", idReunion);
	  return new ModelAndView("reunionUsuarios",modelo);	   
	 }
	
	@RequestMapping(path="/reunionUsuarios", method= RequestMethod.POST)
	public ModelAndView cargarUsuarioEnreunion(@RequestParam("idReunion") Long idReunion,@ModelAttribute("sesionUsuario") Usuario us){
		ModelMap model = new ModelMap();
		Reunion reu = servicioReunion.reunionporidService(idReunion);
		Set<Usuario> usuarioAgregado = new HashSet<Usuario>();
		usuarioAgregado.add(us);
		reu.setUsuario(usuarioAgregado);
		servicioReunion.actualizarReunionService(reu);
//		servicioReunion.agregarUsuarioAReunionService(reu, us);
		return new ModelAndView("redirect:/Inicio");
	}
	/* -------  */
	
	
	/*MUESTRO LISTA DE REUNIONES EN DetalleReunion*/
	/*Muestro datos a PerfilUsuario*/
	/*@RequestMapping(path="/detalleReunion", method= RequestMethod.POST)
	public ModelAndView CargarDatosReuniones(@ModelAttribute("reunion") Reunion reunion){
		
		if(reunion.getidReunion() == 0){
			return new ModelAndView("detalleReunion");
		}else{
			
			ModelMap modelo = new ModelMap();
			modelo.put("reunionCreada", reunion);
			return new ModelAndView("detalleReunion",modelo);
		}
	}*/
	
	/*Creo la lista miListaReunion*/
	/*@RequestMapping(path="/detalleReunion", method = RequestMethod.GET)
	public ModelAndView detalleReuniones(Reunion reunionform){ 
		if(reunionform.getidReunion() != 0){
			ReunionesPorUsuario.add(reunionform);
		} 	 
		ModelMap modelo = new ModelMap();
		modelo.put("miListaDeReuniones", ReunionesPorUsuario);
		return new ModelAndView("detalleReunion",modelo);
	 }*/
	
}
