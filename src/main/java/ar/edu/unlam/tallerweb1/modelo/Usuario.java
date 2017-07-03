package ar.edu.unlam.tallerweb1.modelo;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
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

import org.hibernate.annotations.Cascade;



@Entity 
public class Usuario {
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY) //Estrategia para generar el ID
	private Long id;
	//@Column() para decir a que columna pertenece en la BD si es que tienen otros nombres
	private String email;
	private String password;
	private String nombre;
	private String apellido;
	private String localidad;
	private String password2;
	private String imagen;
	
	@ManyToMany(fetch = FetchType.EAGER, mappedBy = "usuarios")  
	private Set<Reunion> reuniones = new HashSet<Reunion>();
	


	public Set<Reunion> getReuniones() {
		return reuniones;
	}
	public void setReuniones(Set<Reunion> reuniones) {
		this.reuniones = reuniones;
	}
	//La convencion dice que todos los atributos son persistibles a menos que le pongas @Transent
	//ID
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	//@Transient hace que el mapeo omita este trabituo
	//EMAIL
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	//PASSWORD
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	//NOMBRE
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	//APELLIDO
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	//LOCALIDAD
	public String getLocalidad() {
		return localidad;
	}
	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}
	//REPASSWORD
	public String getPassword2() {
		return password2;
	}
	public void setPassword2(String password2) {
		this.password2 = password2;
	}
	//FALTA PROVINCIA
	public String getImagen() {
		return imagen;
	}
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	
}