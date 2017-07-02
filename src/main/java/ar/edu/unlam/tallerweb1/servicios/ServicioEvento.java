package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Evento;

public interface ServicioEvento {
	public void crearEventoService(Evento evento);
	public List<Evento> listEventosService();
	public List<Evento> listEventosInicioService();
	public Evento eventoporidService(Long idEvent);
	public List<Evento> busquedaEventos(String data);
}
