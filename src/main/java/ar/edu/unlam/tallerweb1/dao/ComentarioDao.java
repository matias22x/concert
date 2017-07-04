package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Comentario;

public interface ComentarioDao {
	public void CrearComentarioDao(Comentario comentario);
	public List<Comentario> listaComentariosEnReunionDAO(Long idReunion);
}
