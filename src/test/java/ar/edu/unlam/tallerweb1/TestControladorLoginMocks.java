package ar.edu.unlam.tallerweb1;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.junit.Before;
import org.junit.Test;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import static org.mockito.Mockito.*;//agregar import 

import ar.edu.unlam.tallerweb1.controladores.*;
import ar.edu.unlam.tallerweb1.dao.UsuarioDao;
import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.servicios.ServicioLogin;

import static org.assertj.core.api.Assertions.assertThat;

public class TestControladorLoginMocks {
 private ControladorUsuario controladorUsuarioMock = new ControladorUsuario();
 private Usuario usuarioMock;
 private HttpServletRequest requestMock;
 private HttpSession sessionMock;
 private ServicioLogin servicioLoginMock;
 private UsuarioDao daoMock;
  
  
 
 @Test
 public void UsuarioQueLogueaCorrectamente() throws Exception {
  
  usuarioMock = mock(Usuario.class);
  requestMock = mock (HttpServletRequest.class);
  sessionMock = mock (HttpSession.class);
  servicioLoginMock = mock(ServicioLogin.class);
  daoMock = mock(UsuarioDao.class);
//  controladorUsuarioMock.setServicioLogin(servicioLoginMock);
  
  
  Usuario u = new Usuario();
  u.setNombre("Matias");
  u.setApellido("Heredia");
  u.setId(999L);
  u.setEmail("brbrbr@live.com.ar");
  u.setPassword("123");
  u.setPassword2("123");
  daoMock.registrarUsuario(u);
//  servicioLoginMock.registrarUsuario(u);  
    
  when(requestMock.getSession()).thenReturn(sessionMock);
  
//  
  
  
  when(servicioLoginMock.traerUsuarioPorEmail("brbrbr@live.com.ar")).thenReturn(usuarioMock);
  //ejecuto
  ModelAndView mav = controladorUsuarioMock.verificarLogin(usuarioMock.getEmail(), usuarioMock.getPassword());
  //compruebo que me lleva a la vista correcta
  assertThat(mav.getViewName()).isEqualTo("Inicio");
 }
 

// @Test
// public void VerificarQueVuelveAlLoginSiElUserEsIncorrecto() throws Exception{
//  personaServiceMock.registrarUsuario(usuario);
//  when(this.personaServiceMock.consultarUsuario(usuario)).thenReturn(null);
//  ModelAndView mav = controladorPersonaMock.irALogin();
//  assertThat(mav.getViewName()).isEqualTo("login");
//  //assertThat(mav.getModel().get("error")).isEqualTo("User invalido");
// }

}