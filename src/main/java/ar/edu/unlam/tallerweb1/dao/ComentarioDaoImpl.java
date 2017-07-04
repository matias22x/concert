package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.modelo.Comentario;

@Service("comentarioDao")
public class ComentarioDaoImpl implements ComentarioDao{
	
	@Inject
	private SessionFactory sessionFactory; 
	
	@Transactional(readOnly = false, propagation = Propagation.REQUIRED, rollbackFor = { Exception.class })
	@Override
	public void CrearComentarioDao(Comentario comentario){
		Session session = sessionFactory.getCurrentSession();
		session.save(comentario);
	}
	
	@Transactional(readOnly = true)
	@Override
	public List<Comentario> listaComentariosEnReunionDAO(Long idReunion){
		Session session = sessionFactory.getCurrentSession();
		List<Comentario> listaComentarios = session.createCriteria(Comentario.class)
				.createAlias("reunion", "reunionBuscada")
				.add(Restrictions.eq("reunionBuscada.idReunion", idReunion))
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listaComentarios;
	}
}
