package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.modelo.Evento;

@Service
public class EventoDaoImpl implements EventoDao{
	
	@Inject
	private SessionFactory sessionFactory; 
	
	@Transactional(readOnly = false, propagation = Propagation.REQUIRED, rollbackFor = { Exception.class })
	@Override
	public void crearEventoDAO(Evento evento){
	    Session session = sessionFactory.getCurrentSession();
		session.save(evento);		
	}
	
	@Transactional(readOnly = true)
	@Override
	public List<Evento> listEventosDAO() {
		Session session = sessionFactory.getCurrentSession();
		List<Evento> eventosList = session.createCriteria(Evento.class).list();
		return eventosList;
	}
	
	@Transactional(readOnly = true)
	@Override
	public List<Evento> listEventosInicioDAO() {
		Session session = sessionFactory.getCurrentSession();
		List<Evento> eventosList = session.createCriteria(Evento.class)
				.add(Restrictions.eq("mostrarEvento", "si")).list();
		return eventosList;
	}
	
	//Obtener Evento por id
	@Transactional(readOnly = true)
	@Override
	public Evento eventoporid(Long idEvent){
		Session session = sessionFactory.getCurrentSession();
		return session.get(Evento.class,idEvent);
		 
	}
	
}
