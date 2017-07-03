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
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.modelo.Reunion;
import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.servicios.ServicioEvento;
import ar.edu.unlam.tallerweb1.servicios.ServicioLogin;
import ar.edu.unlam.tallerweb1.servicios.ServicioReunion;

@Controller
@SessionAttributes("sesionUsuario")
public class ControladorUsuario {
	
	@Inject
	private ServicioLogin servicioLogin;
	
	@Inject
	private ServicioReunion servicioreunion;
	
	@Inject
	private ServicioEvento servicioevento;
	
	//Cargo el modelo al Registro
	  @RequestMapping(path = "/RegistroUsuario")
	  public ModelAndView RegistroUsuario() {
	   Usuario usuario = new Usuario();
	   ModelMap modelo = new ModelMap();
	   modelo.put("usuarioRegistro",usuario);  
	   
	   return new ModelAndView ("RegistroUsuario",modelo);
	  }
	
	//Cargo los datos del registro a la vista de usuarios
	@RequestMapping(path = "/RegistroUsuario2", method = RequestMethod.POST)
	public ModelAndView cargarDatosUsuario(@ModelAttribute("usuarioRegistro")Usuario usuarioR) {
	   
	 String email = usuarioR.getEmail();
	 if (servicioLogin.validarMail(email) == null){
	    
	  servicioLogin.registrarUsuario(usuarioR);
	  return new ModelAndView ("RegistroCorrecto");
	 }else{
	  return new ModelAndView ("RegistroIncorrecto");
	 }
	   
	}
	  
	
	@RequestMapping(path = "/RegistroIncorrecto")
	public ModelAndView RegistroIncorrecto() {  
	   
	 return new ModelAndView ("RegistroIncorrecto");
	}

	
	@RequestMapping(path = "/RegistroCorrecto")
	public ModelAndView RegistroCorrecto() {		
		
		return new ModelAndView ("RegistroCorrecto");
	}
	
	//Cargo el modelo al Iniciar sesion
	@RequestMapping(path = "/IniciarSesion")
	public ModelAndView iniciarSesion() {
		return new ModelAndView ("IniciarSesion");
	}
	
	//Cargo los datos del Login y los verifico
	@RequestMapping(path="/IniciarSesion2", method = RequestMethod.POST)
	public ModelAndView verificarLogin(@RequestParam("email")String email,@RequestParam("pass")String pass){

		Usuario usuComp = new Usuario();
		usuComp.setEmail(email);
		usuComp.setPassword(pass);
		
		//.equals compara datos como el == en este caso
		ModelMap model = new ModelMap();

		if (servicioLogin.consultarUsuario(usuComp) != null) {
			//2.-Aca hay que pasar el usuario que se logea a la sesion
			//1.-Usar un metodo que traiga un usuario desde su mail
			
			model.put("sesionUsuario",servicioLogin.traerUsuarioPorEmail(usuComp.getEmail()));		
			
			return new ModelAndView("redirect:/Inicio",model);
		} else {
			model.put("error", "Usuario o clave incorrecta");
		}
		return new ModelAndView("IniciarSesion", model);
		
	}
	
	
	//Mostrar datos del USUARIO en PerfilUsuario
	  @RequestMapping(path="/PerfilUsuario", method = RequestMethod.GET)
	  public ModelAndView PerfilUsuario(@ModelAttribute("sesionUsuario") Usuario usuarioLog){
	   
	   ModelMap modelo = new ModelMap();
	    modelo.put("sesionUsuarioLog", usuarioLog);
	    modelo.put("reunionPorU",servicioreunion.listaDeReunionesEnPerfilService(usuarioLog));
	    return new ModelAndView("PerfilUsuario",modelo); 
	  }
		
		//Cerrar Sesion
		@RequestMapping(path="/cerrarSesion")
		 public ModelAndView cerrarSesion(SessionStatus session) {

		  session.setComplete();
		  
		  return new ModelAndView("redirect:/Inicio");
		 }

		@RequestMapping(path="/ListaUsuarios")
		public ModelAndView ListaAmigos(){ 
			
			ModelMap model = new ModelMap();
			model.put("miListaDeUsuario", servicioLogin.listUsuariosService());
			return new ModelAndView("ListaUsuarios",model);
		}
		
		@RequestMapping(path = "/ListaAmigos")
		public ModelAndView Inicio() {
			Usuario usuario = new Usuario();
			usuario.setEmail("Karen");
			
			Usuario usuario2 = new Usuario();
			usuario2.setEmail("Maty");
			Usuario usuario3 = new Usuario();
			usuario3.setEmail("Nico");
			Usuario usuario4 = new Usuario();
			usuario4.setEmail("MIke");
			List<Usuario> miLista = new ArrayList<Usuario>();	
			 
			 
			miLista.add(usuario);
			miLista.add(usuario2);
			miLista.add(usuario3);
			miLista.add(usuario4);
			
			ModelMap model = new ModelMap();
			model.put("miListaDeAmigos", miLista);
			
			return new ModelAndView ("ListaAmigos",model);
		}
		
		//Lista Usuarios en MostrarPerfilUsuario
		  @RequestMapping(path="/MostrarPerfilUsuario")
		  public ModelAndView ListaAmigosEnPerfilUsuario(@RequestParam("email")String email){ 
		   
		   ModelMap model = new ModelMap();
		   model.put("UsuarioPorEmail", servicioLogin.traerUsuarioPorEmail(email));
		   model.put("reunionPorU",servicioreunion.listaDeReunionesEnPerfilServiceEmail(email));
		   return new ModelAndView("MostrarPerfilUsuario",model);
		   }
}