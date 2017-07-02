package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Evento;

public interface EventoDao {
	
	public void crearEventoDAO(Evento evento);
	public List<Evento> listEventosDAO();
	public List<Evento> listEventosInicioDAO();
	public Evento eventoporid(Long idEvent);
	public List<Evento> busquedaEventosDAO(String data);
	public void actualizarEstadoEventoDAO(Evento evento,String mostrar);
}



