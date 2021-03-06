package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Usuario;

public interface UsuarioDao {
	
	Usuario consultarUsuario (Usuario usuario);
	Usuario traerUsuarioPorEmail(String email); 
	//Usuario verificarEmail (Usuario usuario);
	public void registrarUsuario (Usuario usuario);
	/*Mostrar usuarios en IndexAdmin (Usuarios) */
	
	public List<Usuario> listUsuariosDAO();
	public Usuario usuarioporid(Long idUsuario);
	//Validar que no se registre dos mails iguales
	public Usuario validarMailDao(String email);
	public List<Usuario> listUsuariosPorReunionDAO(Long idReunion);
}
