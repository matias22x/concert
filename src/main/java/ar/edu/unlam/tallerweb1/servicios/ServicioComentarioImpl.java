package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import ar.edu.unlam.tallerweb1.dao.ComentarioDao;
import ar.edu.unlam.tallerweb1.modelo.Comentario;

@Service
public class ServicioComentarioImpl implements ServicioComentario{
	
	@Inject
	public ComentarioDao comentarioDao;
	
	@Override
	public void CrearComentarioService(Comentario comentario){
		comentarioDao.CrearComentarioDao(comentario);
	}
	
	@Override
	public List<Comentario> listaComentariosEnReunionService(Long idReunion){
		return comentarioDao.listaComentariosEnReunionDAO(idReunion);
	}
}
