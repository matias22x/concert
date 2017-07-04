package ar.edu.unlam.tallerweb1.modelo;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
public class Comentario {
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	private Long idComentario;
	private String descripcionComentario;
	
	@ManyToOne
	@Cascade(value = CascadeType.MERGE)
	@JoinColumn(name = "id_reunion", nullable = false)
	private Reunion reunion;
	
	@ManyToOne
	@Cascade(value = CascadeType.MERGE)
	@JoinColumn(name = "id_usuario", nullable = false)
	private Usuario usuario;

	public Long getIdComentario() {
		return idComentario;
	}

	public void setIdComentario(Long idComentario) {
		this.idComentario = idComentario;
	}

	public String getDescripcionComentario() {
		return descripcionComentario;
	}

	public void setDescripcionComentario(String descripcionComentario) {
		this.descripcionComentario = descripcionComentario;
	}

	public Reunion getReunion() {
		return reunion;
	}

	public void setReunion(Reunion reunion) {
		this.reunion = reunion;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	
}
