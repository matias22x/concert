package ar.edu.unlam.tallerweb1.modelo;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Cliente {

	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY) //Estrategia para generar el ID
	private Long id;
	
	private String nombre;
	
	private String apellido;
	private String dni;
	
	@OneToOne(cascade = CascadeType.ALL) //Para relacion uno a uno
	@JoinColumn(name="id_cbu")
	private CBU cbu;
	
	
	public CBU getCbu() {
		return cbu;
	}
	public void setCbu(CBU cbu) {
		this.cbu = cbu;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
}
