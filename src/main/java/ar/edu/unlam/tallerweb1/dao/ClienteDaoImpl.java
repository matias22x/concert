package ar.edu.unlam.tallerweb1.dao;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;

import ar.edu.unlam.tallerweb1.modelo.Cliente;

@Service("clienteDao")
public class ClienteDaoImpl implements ClienteDao{
	
	@Inject
	private SessionFactory sessionFactory; 
	
	@Override
	public void guardar(Cliente c){
	   
	    Session session = sessionFactory.getCurrentSession();
		session.save(c);		
	}

}
