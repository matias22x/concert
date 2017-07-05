package ar.edu.unlam.tallerweb1.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.inject.Inject;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

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
	
	//Listar Reuniones por Evento
	@Transactional(readOnly = true)
	@Override
	public List<Reunion> listReunionesDAO(Long idevento) {
		Session session = sessionFactory.getCurrentSession();
		List<Reunion> listaReuniones = session.createCriteria(Reunion.class)
				.createAlias("evento", "eventoBuscado")
				.add(Restrictions.eq("eventoBuscado.idEvento", idevento))
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listaReuniones;
		
	}
	
	//Agregar un usuario en la reunion , esto es al crear una reunion
	@Transactional(readOnly = false, propagation = Propagation.REQUIRED, rollbackFor = { Exception.class })
	@Override
	public void agregarUsuarioAReunionDAO(Reunion reunion,Usuario usuario){
		Session session = sessionFactory.getCurrentSession();
		Set<Usuario> usuarioAgregado = new HashSet<Usuario>();
		usuarioAgregado.add(usuario);
		reunion.setUsuarios(usuarioAgregado);
		session.save(reunion);
	}
	
	//Agregar un usuario en una reunion creada
	@Transactional(readOnly = false, propagation = Propagation.REQUIRED, rollbackFor = { Exception.class })
	@Override
	public void unirUsuarioAReunionDAO(Reunion reu,Usuario usu){
		Session session = sessionFactory.getCurrentSession();
		Set<Usuario> usuarioAgregado = reu.getUsuarios();
		usuarioAgregado.add(usu);
		reu.setUsuarios(usuarioAgregado);
		session.save(reu);
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
	
	@Transactional(readOnly = false, propagation = Propagation.REQUIRED, rollbackFor = { Exception.class })
	@Override
	public void actualizarReunionDaoUsuario(Usuario u){
		Session session = sessionFactory.getCurrentSession();
		session.update(u);
	}
	
	/* Mostrar Lista de Reuniones en PerfilUsuario dependiendo del usuario*/
	@Transactional(readOnly = true)
	@Override
	public List<Reunion> listaDeReunionesEnPerfilDao(Usuario usuarioLog) {
		Session session = sessionFactory.getCurrentSession();
		List<Reunion> listaReunionesEnPerfil = session.createCriteria(Reunion.class)
				.createAlias("usuarios", "usuA")
				.add(Restrictions.eq("usuA.id", usuarioLog.getId()))
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listaReunionesEnPerfil;
		
	}
	
	//Obtener una reunion por el id de Evento*
	@Transactional(readOnly = true)
	@Override
	public Reunion reunionporid(Long idevento){
		Session session = sessionFactory.getCurrentSession();
		return session.get(Reunion.class,idevento);
		 
	}
	
	//Reuniones en ListaReuniones (IndexAdmin)
	@Transactional(readOnly = true)
	@Override
	public List<Reunion> listReunionesDAOenPerfil(Long idevento) {
		Session session = sessionFactory.getCurrentSession();
		List<Reunion> reunionesList = session.createCriteria(Reunion.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return reunionesList;
	}
	
	@Transactional(readOnly = true)
	@Override
	public List<Reunion> busquedaReunionesDao(String data) {
		Session session = sessionFactory.getCurrentSession();
		List<Reunion> reunionList = session.createCriteria(Reunion.class)
				.add(Restrictions.like("nombreReunion", "%"+data+"%")).list();
		return reunionList;
	}
	
	/* Mostrar Lista de Reuniones en PerfilUsuario Email*/
	   
	   @Transactional(readOnly = true)
	   @Override
	   public List<Reunion> listaDeReunionesEnPerfilDaoEmail(String email) {
	    Session session = sessionFactory.getCurrentSession();
	    List<Reunion> listaReunionesEnPerfilEmail = session.createCriteria(Reunion.class)
	      .createAlias("usuario", "usuA")
	      .add(Restrictions.eq("usuA.email", email)).list();
	    return listaReunionesEnPerfilEmail;
	    
	   }
	
		@Transactional(readOnly = true)
		@Override
		public List<Usuario> listUsuariosPorReunionDAO(Long idReunion){
			Session session = sessionFactory.getCurrentSession();
			List<Usuario> usuariosList = session.createCriteria(Usuario.class)
					.createAlias("reuniones", "reuA")
					.add(Restrictions.eq("reuA.idReunion", idReunion))
					.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
			return usuariosList;
		}
		

		@Transactional(readOnly = true)
		@Override
		public List<Reunion> usuariosUnidosAReunionDao(Long idReunion, Long id){
			Session session = sessionFactory.getCurrentSession();
			List<Reunion> usuariosList = session.createCriteria(Reunion.class)
					.createAlias("reuniones", "reuA")
					.createAlias("usuarios", "usuario")
					.add(Restrictions.eq("reuA.idReunion", idReunion))
					.add(Restrictions.eq("usuario.idUsuario", id))
					.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
			return usuariosList;
		}

		@Override
	    @Transactional
		public void sacarUsuarioDeReunion(Usuario usuario, Reunion reunion) {
		    reunion.getUsuarios().remove(usuario);
		    actualizarReunionDao(reunion);
		}
}