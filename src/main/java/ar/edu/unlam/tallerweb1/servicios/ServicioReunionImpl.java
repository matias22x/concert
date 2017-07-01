package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import ar.edu.unlam.tallerweb1.dao.ReunionDao;
import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.modelo.Reunion;
import ar.edu.unlam.tallerweb1.modelo.Usuario;

@Service
public class ServicioReunionImpl implements ServicioReunion {
	
	@Inject
	public ReunionDao reunionDao;
	
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

}