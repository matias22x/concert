package ar.edu.unlam.tallerweb1.controladores;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import ar.edu.unlam.tallerweb1.modelo.Evento;

@Controller
public class ControladorPersona {
	
	 @RequestMapping(path="/MostrarPersona")
	 public ModelAndView mostrarPersona(@RequestParam("nombrePersona") String nombrePersona)
	 {
		 String nombreAMostrar = "Hola soy " + nombrePersona;
		 ModelMap model = new ModelMap();
		 model.put("nombreAMostrar", nombreAMostrar); //el primer parametro es como vamos a llamarlos desde la vista
		 return new ModelAndView("MostrarPersona",model);
	 }
	 
	 
	 @RequestMapping(path="/MostrarTablaPersona")
	 public ModelAndView mostrarTablaPersona(@RequestParam("cantidadAListar") int cantidad){
		 Evento evento = new Evento();
		 evento.setNombreEvento("Concierto Bon Jovi");
		 evento.setDireccionEvento("La casa de maty");
		 evento.setArtistaEvento("Bon Jovi");
		 
		 Evento evento2 = new Evento();
		 
		 evento2.setNombreEvento("Callejeros");
		 evento2.setDireccionEvento("Mikasa");
		 evento2.setArtistaEvento("Mi abuela");
		 
		 List<Evento> miLista = new ArrayList<Evento>();	
		 
		 for(int i=0;i<cantidad;i++){
			 miLista.add(evento);
			 miLista.add(evento2);
		 }
		 
		 ModelMap model = new ModelMap();
		 model.put("miListaDeEvento", miLista);
		 return new ModelAndView("MostrarTablaPersona",model);
	 }
}
