package ar.edu.unlam.tallerweb1.controladores;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Comentario;
import ar.edu.unlam.tallerweb1.modelo.Reunion;
import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.servicios.ServicioComentario;
import ar.edu.unlam.tallerweb1.servicios.ServicioReunion;

@Controller
@SessionAttributes("sesionUsuario")
public class ControladorComentario {
	
	@Inject
	private ServicioReunion servicioReunion;
	

	@Inject ServicioComentario servicioComentario;
	
	@RequestMapping(path="/CrearComentario", method= RequestMethod.POST)
	public ModelAndView CrearComentario(@ModelAttribute("sesionUsuario") Usuario usuLogeado,
			@ModelAttribute("mComentario") Comentario coment,
			@RequestParam("idReunion") Long idReu){
		Reunion reunionC = servicioReunion.reunionporidService(idReu);
		coment.setReunion(reunionC);
		coment.setUsuario(usuLogeado);
		servicioComentario.CrearComentarioService(coment);
		return new ModelAndView("redirect:/Inicio");
		
	}
}
