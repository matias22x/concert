package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Evento;

public interface EventoDao {
	
	public void crearEventoDAO(Evento evento);
	public List<Evento> listEventosDAO();
	public List<Evento> listEventosInicioDAO();
	public Evento eventoporid(Long idEvent);
}



