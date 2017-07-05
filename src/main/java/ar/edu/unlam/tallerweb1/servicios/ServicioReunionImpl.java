package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import ar.edu.unlam.tallerweb1.dao.ReunionDao;
import ar.edu.unlam.tallerweb1.dao.UsuarioDao;
import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.modelo.Reunion;
import ar.edu.unlam.tallerweb1.modelo.Usuario;

@Service
public class ServicioReunionImpl implements ServicioReunion {
	
	@Inject
	public ReunionDao reunionDao;
	
	@Inject
	public UsuarioDao usuarioDao;
	
	@Override
	public void crearReunionService(Reunion reunion){
		reunionDao.crearReunionDAO(reunion);
	}
	
	@Override
	public List<Reunion> listReunionesService(Long idevento) {
		return reunionDao.listReunionesDAO(idevento);
	}
	
	@Override
	public void agregarUsuarioAReunionService(Reunion reunion,Usuario usuario){
		reunionDao.agregarUsuarioAReunionDAO(reunion, usuario);
	}
	
	@Override
	public Reunion reunionporidService(Long idReunion) {
	  return reunionDao.datosReunionDAO(idReunion);
	}
	
	@Override
	public void actualizarReunionService(Reunion reunion){
		reunionDao.actualizarReunionDao(reunion);
	}
	
	@Override
	public List<Reunion> listaDeReunionesEnPerfilService(Usuario usuarioLog){
		return reunionDao.listaDeReunionesEnPerfilDao(usuarioLog);
	}
	
	@Override
	public List<Reunion> busquedaReuniones(String data){
		return reunionDao.busquedaReunionesDao(data);
	}
	
	//
	/*ListaReuniones IndexAdmin*/
	@Override
	public void crearReunionServicePerfil(Reunion reunion){
		reunionDao.crearReunionDAO(reunion);
	}
	
	@Override
	public List<Reunion> listReunionesServicePerfil() {
		return reunionDao.listReunionesDAOenPerfil(null);
	}
	
	@Override
	public List<Reunion> listReunionesServicePerfil(Reunion reunion) {
		// TODO Auto-generated method stub
		return null;
	}
	
	//Unir usuario a reunion creada ESTA ES LA BUENAAAAAAAA
		@Override
		public void unirUsuarioAReunionService(Reunion reu,Usuario usu){
			Reunion r = reunionDao.datosReunionDAO(reu.getidReunion());
			Usuario u = usuarioDao.usuarioporid(usu.getId());
			u.getReuniones().add(r);
			r.getUsuarios().add(u);
			
			reunionDao.actualizarReunionDao(r);
		}
	
//		@Override
//		public void sacarUsuariodeReunionService(Reunion reu,Usuario usu){
//			Reunion r = reunionDao.datosReunionDAO(reu.getidReunion());
//			Usuario u = usuarioDao.usuarioporid(usu.getId());
//			u.getReuniones().remove(r);
//			r.getUsuarios().remove(u);
//			
//			reunionDao.actualizarReunionDaoUsuario(u);
//		}
		
	/*Muestro lista Reuniones en PerfilUSuario desde Email*/
	 
	 @Override
	 public List<Reunion> listaDeReunionesEnPerfilServiceEmail(String email){
	  return reunionDao.listaDeReunionesEnPerfilDaoEmail(email);
	 }

	 @Override
	 public List<Reunion> usuariosUnidosAReunion(Long idReunion,Long id){
	  return reunionDao.usuariosUnidosAReunionDao(idReunion, id);
	 }
	 
	 @Override
	 public void sacarUsuariodeReunionService(Usuario us,Reunion reu){

	  reunionDao.salirDeReunionDao(reu,us);
	 }
}