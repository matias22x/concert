package ar.edu.unlam.tallerweb1.modelo;

import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;


@Entity
public class Reunion {
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	private Long idReunion;
	private String nombreReunion;
	private String fechaReunion;
	private String horaReunion;
	private String direccionReunion;
	private String leyendaReunion;
	private String descripcionReunion;
	private String imagenPrincipalReunion;
	private String mostrarReunion;
	
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_evento", nullable = false)
	private Evento evento;
	
	@ManyToMany(cascade=CascadeType.ALL)  
    @JoinTable(name="usuario_reunion", joinColumns=@JoinColumn(name="id_reunion"), inverseJoinColumns=@JoinColumn(name="id_usuario"))
	private Set<Usuario> usuario;
	
	
	public Set<Usuario> getUsuario() {
		return usuario;
	}
	public void setUsuario(Set<Usuario> usuario) {
		this.usuario = usuario;
	}
	public Evento getEvento() {
		return evento;
	}
	public void setEvento(Evento evento) {
		this.evento = evento;
	}
	
	public Long getidReunion() {
		return idReunion;
	}
	public void setidReunion(Long idReunion) {
		this.idReunion = idReunion;
	}
	public String getNombreReunion() {
		return nombreReunion;
	}
	public void setNombreReunion(String nombreReunion) {
		this.nombreReunion = nombreReunion;
	}
	public String getFechaReunion() {
		return fechaReunion;
	}
	public void setFechaReunion(String fechaReunion) {
		this.fechaReunion = fechaReunion;
	}
	public String getHoraReunion() {
		return horaReunion;
	}
	public void setHoraReunion(String horaReunion) {
		this.horaReunion = horaReunion;
	}
	public String getDireccionReunion() {
		return direccionReunion;
	}
	public void setDireccionReunion(String direccionReunion) {
		this.direccionReunion = direccionReunion;
	}
	public String getLeyendaReunion() {
		return leyendaReunion;
	}
	public void setLeyendaReunion(String leyendaReunion) {
		this.leyendaReunion = leyendaReunion;
	}
	
	public String getDescripcionReunion() {
		return descripcionReunion;
	}
	public void setDescripcionReunion(String descripcionReunion) {
		this.descripcionReunion = descripcionReunion;
	}
	public String getImagenPrincipalReunion() {
		return imagenPrincipalReunion;
	}
	public void setImagenPrincipalReunion(String imagenPrincipalReunion) {
		this.imagenPrincipalReunion = imagenPrincipalReunion;
	}
	
	public String getMostrarReunion() {
		return mostrarReunion;
	}
	public void setMostrarReunion(String mostrarReunion) {
		this.mostrarReunion = mostrarReunion;
	}

}

