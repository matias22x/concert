package ar.edu.unlam.tallerweb1.dao;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.modelo.Usuario;

@Service("usuarioDao")
public class UsuarioDaoImpl implements UsuarioDao {

	@Inject
    private SessionFactory sessionFactory;

	@Override
	public Usuario consultarUsuario(Usuario usuario) {

		final Session session = sessionFactory.openSession();
		return (Usuario) session.createCriteria(Usuario.class)
				.add(Restrictions.eq("email", usuario.getEmail()))
				.add(Restrictions.eq("password", usuario.getPassword()))
				.uniqueResult();
		//session.get(Usuario, 2);Nombre del Objeto, El id de la clase;
	}
	
	@Override
	public Usuario traerUsuarioPorEmail(String email){
		Session session = sessionFactory.openSession();
		return (Usuario) session.createCriteria(Usuario.class)
				.add(Restrictions.eq("email", email)).    //eq es para que sea igual //
				setMaxResults(1)
				.uniqueResult();
	}
	
	
	
	@Transactional
	@Override
	public void registrarUsuario (Usuario usuario){
		Session session = sessionFactory.getCurrentSession();
		session.save(usuario);		
	}

}
