package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.dao.UsuarioDao;
import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.modelo.Usuario;


@Service("servicioLogin")
@Transactional // Hace que si no se ejecuta completamente, deshaga la accion
public class ServicioLoginImpl implements ServicioLogin {

	@Inject
	private UsuarioDao usuarioDao;

	@Override
	public Usuario consultarUsuario (Usuario usuario) {
		return usuarioDao.consultarUsuario(usuario);
	}
	
	@Override
	public Usuario traerUsuarioPorEmail(String email){
		return usuarioDao.traerUsuarioPorEmail(email);
	}
	
	@Override
	public void registrarUsuario (Usuario usuario){
	
		usuarioDao.registrarUsuario(usuario);
		
	}
	
	@Override
	public List<Usuario> listUsuariosService() {
		return usuarioDao.listUsuariosDAO();
	}
	
	@Override
	public Usuario usuarioporidService(Long idUsuario) {
		return usuarioDao.usuarioporid(idUsuario);
	}

}