package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import ar.edu.unlam.tallerweb1.dao.EventoDao;
import ar.edu.unlam.tallerweb1.modelo.Evento;

@Service
public class ServicioEventoImpl implements ServicioEvento {
	
	@Inject
	public EventoDao eventoDao;
	
	@Override
	public void crearEventoService(Evento evento){
		eventoDao.crearEventoDAO(evento);
	}
	
	@Override
	public List<Evento> listEventosService() {
		return eventoDao.listEventosDAO();
	}
	
	@Override
	public List<Evento> listEventosInicioService() {
		return eventoDao.listEventosInicioDAO();
	}
	
	@Override
	public Evento eventoporidService(Long idEvent) {
		return eventoDao.eventoporid(idEvent);
	}
	
	@Override
	public List<Evento> busquedaEventos(String data) {
		return eventoDao.busquedaEventosDAO(data);
	}
}
