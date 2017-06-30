package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Evento;
import ar.edu.unlam.tallerweb1.modelo.Reunion;
import ar.edu.unlam.tallerweb1.modelo.Usuario;

public interface ServicioReunion {

	public void crearReunionService(Reunion reunion);
	public List<Reunion> listReunionesService(Long idevento);
	public void agregarUsuarioAReunionService(Reunion reunion,Usuario usuario);
	public Reunion reunionporidService(Long idReunion);
	public void actualizarReunionService(Reunion reunion);
	public List<Reunion> listaDeReunionesEnPerfilService(Usuario usuarioLog);
	public List<Usuario> listaUsuariosReunionService(Long idReunion);
}
