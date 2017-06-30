package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.modelo.Reunion;
import ar.edu.unlam.tallerweb1.modelo.Usuario;

public interface ReunionDao {
	
	public void crearReunionDAO(Reunion reunion);
	public List<Reunion> listReunionesDAO(Long idevento);
	public void agregarUsuarioAReunionDAO(Reunion reunion,Usuario usuario);
	public Reunion datosReunionDAO(Long idReunion);
	public void actualizarReunionDao(Reunion reunion);
	public List<Reunion> listaDeReunionesEnPerfilDao(Usuario usuarioLog);
	public List<Usuario> listaUsuariosReunionDao(Long idReunion);
}