package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Usuario;

public interface ServicioLogin {

	Usuario consultarUsuario(Usuario usuario);
	Usuario traerUsuarioPorEmail(String email);
	public void registrarUsuario (Usuario usuario);
	
	/*Mostrar Lista de Usuarios*/
	
	public List<Usuario> listUsuariosService();
		
	public Usuario usuarioporidService(Long idUsuario);
	
	//validar registro unico mail
	 public Usuario validarMail(String email);
	 
	//NUEVO
	public List<Usuario> listUsuariosPorReunionService(Long idReunion);
}
