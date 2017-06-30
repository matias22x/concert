package ar.edu.unlam.tallerweb1.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.modelo.Reunion;
import ar.edu.unlam.tallerweb1.modelo.Usuario;

@Service("reunionDao")
public class ReunionDaoImpl implements ReunionDao{
	
	@Inject
	private SessionFactory sessionFactory; 
	
	@Transactional(readOnly = false, propagation = Propagation.REQUIRED, rollbackFor = { Exception.class })
	@Override
	public void crearReunionDAO(Reunion reunion){
	    //Session session = sessionFactory.openSession();
	    Session session = sessionFactory.getCurrentSession();
		session.save(reunion);		
	}
	
	@Transactional(readOnly = true)
	@Override
	public List<Reunion> listReunionesDAO(Long idevento) {
		Session session = sessionFactory.getCurrentSession();
		List<Reunion> listaReuniones = session.createCriteria(Reunion.class)
				.createAlias("evento", "eventoBuscado")
				.add(Restrictions.eq("eventoBuscado.idEvento", idevento)).list();
		return listaReuniones;
		
	}
	
	@Transactional(readOnly = false, propagation = Propagation.REQUIRED, rollbackFor = { Exception.class })
	@Override
	public void agregarUsuarioAReunionDAO(Reunion reunion,Usuario usuario){
		Session session = sessionFactory.getCurrentSession();
		Set<Usuario> usuarioAgregado = new HashSet<Usuario>();
		usuarioAgregado.add(usuario);
		reunion.setUsuario(usuarioAgregado);
		session.save(reunion);
	}
	
	@Transactional(readOnly = true)
	@Override
	public Reunion datosReunionDAO(Long idReunion){
	  Session session = sessionFactory.getCurrentSession();
	  return session.get(Reunion.class,idReunion);
	   
	}
	
	@Transactional(readOnly = false, propagation = Propagation.REQUIRED, rollbackFor = { Exception.class })
	@Override
	public void actualizarReunionDao(Reunion reunion){
		Session session = sessionFactory.getCurrentSession();
		session.update(reunion);
	}
	
	/* Mostrar Lista de Reuniones en PerfilUsuario*/
	@Transactional(readOnly = true)
	@Override
	public List<Reunion> listaDeReunionesEnPerfilDao(Usuario usuarioLog) {
		Session session = sessionFactory.getCurrentSession();
		List<Reunion> listaReunionesEnPerfil = session.createCriteria(Reunion.class)
				.createAlias("usuario", "usuA")
				.add(Restrictions.eq("usuA.getId()", usuarioLog.getId())).list();
		return listaReunionesEnPerfil;
	}
	
	@Transactional(readOnly = true)
	@Override
	public List<Usuario> listaUsuariosReunionDao(Long idReunion) {
		Session session = sessionFactory.getCurrentSession();
		List<Usuario> listaUsuarios = session.createCriteria(Reunion.class)
				.createAlias("usuario.getUsuario()","u")
				.add(Restrictions.eq("u.getId()", idReunion)).list();
		return listaUsuarios;
		
	}
	
}