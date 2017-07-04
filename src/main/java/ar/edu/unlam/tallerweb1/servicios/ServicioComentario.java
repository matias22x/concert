package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Comentario;

public interface ServicioComentario {
	public void CrearComentarioService(Comentario comentario);
	public List<Comentario> listaComentariosEnReunionService(Long idReunion);
}
