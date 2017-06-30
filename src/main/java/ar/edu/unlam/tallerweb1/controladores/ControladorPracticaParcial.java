package ar.edu.unlam.tallerweb1.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControladorPracticaParcial {
		
	@RequestMapping(path="/Nombre/{nombre}")
	public ModelAndView cargarNombrePorPath(@PathVariable String nombre){
		
		ModelMap model = new ModelMap();
		model.put("getNombre", nombre);
		return new ModelAndView("Nombre",model);
	}
}
