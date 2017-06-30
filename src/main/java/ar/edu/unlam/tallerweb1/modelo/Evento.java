package ar.edu.unlam.tallerweb1.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class Evento {
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	private Long idEvento;
	private String nombreEvento;
	private String fechaEvento;
	private String horaEvento;
	private String direccionEvento;
	private String leyendaEvento;
	private String artistaEvento;
	private String descripcionEvento;
	@Transient
	private String imagenPrincipalEvento;
	private String mostrarEvento;
	
	
	
	public Long getidEvento() {
		return idEvento;
	}
	public void setidEvento(Long idEvento) {
		this.idEvento = idEvento;
	}
	public String getNombreEvento() {
		return nombreEvento;
	}
	public void setNombreEvento(String nombreEvento) {
		this.nombreEvento = nombreEvento;
	}
	public String getFechaEvento() {
		return fechaEvento;
	}
	public void setFechaEvento(String fechaEvento) {
		this.fechaEvento = fechaEvento;
	}
	public String getHoraEvento() {
		return horaEvento;
	}
	public void setHoraEvento(String horaEvento) {
		this.horaEvento = horaEvento;
	}
	public String getDireccionEvento() {
		return direccionEvento;
	}
	public void setDireccionEvento(String direccionEvento) {
		this.direccionEvento = direccionEvento;
	}
	public String getLeyendaEvento() {
		return leyendaEvento;
	}
	public void setLeyendaEvento(String leyendaEvento) {
		this.leyendaEvento = leyendaEvento;
	}
	public String getArtistaEvento() {
		return artistaEvento;
	}
	public void setArtistaEvento(String artistaEvento) {
		this.artistaEvento = artistaEvento;
	}
	public String getDescripcionEvento() {
		return descripcionEvento;
	}
	public void setDescripcionEvento(String descripcionEvento) {
		this.descripcionEvento = descripcionEvento;
	}
	public String getImagenPrincipalEvento() {
		return imagenPrincipalEvento;
	}
	public void setImagenPrincipalEvento(String imagenPrincipalEvento) {
		this.imagenPrincipalEvento = imagenPrincipalEvento;
	}
	
	public String getMostrarEvento() {
		return mostrarEvento;
	}
	public void setMostrarEvento(String mostrarEvento) {
		this.mostrarEvento = mostrarEvento;
	}
	
}
