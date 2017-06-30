package ar.edu.unlam.tallerweb1.dao;

import ar.edu.unlam.tallerweb1.modelo.Usuario;

public interface UsuarioDao {
	
	Usuario consultarUsuario (Usuario usuario);
	Usuario traerUsuarioPorEmail(String email); 
	//Usuario verificarEmail (Usuario usuario);
	public void registrarUsuario (Usuario usuario);
}
