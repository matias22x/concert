package ar.edu.unlam.tallerweb1.modelo;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
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
//	@ManyToMany(cascade=CascadeType.ALL)  
//    @JoinTable(name="usuario_reunion", joinColumns=@JoinColumn(name="id_usuario"), inverseJoinColumns=@JoinColumn(name="id_reunion"))
//	private Set<Reunion> reunion;
	
	//Agregando la lista de amigos
	@ManyToMany(cascade=CascadeType.ALL)
	@JoinTable(name="lista_amigos",
	 joinColumns=@JoinColumn(name="usuarioId"),
	 inverseJoinColumns=@JoinColumn(name="amigoId")
	)
//	private List<Usuario> listaUsuarios;
//
//	@ManyToMany(cascade=CascadeType.ALL)
//	@JoinTable(name="lista_amigos",
//	 joinColumns=@JoinColumn(name="amigoId"),
//	 inverseJoinColumns=@JoinColumn(name="usuarioId")
//	)
//	private List<Usuario> listaAmigos2;
//	
//	
//	
//	public List<Usuario> getListaUsuarios() {
//		return listaUsuarios;
//	}
//	public void setListaUsuarios(List<Usuario> listaUsuarios) {
//		this.listaUsuarios = listaUsuarios;
//	}
//	public List<Usuario> getListaAmigos() {
//		return listaAmigos2;
//	}
//	public void setListaAmigos(List<Usuario> listaAmigos) {
//		this.listaAmigos2 = listaAmigos;
//	}
	//	@ManyToOne(cascade= CascadeType.ALL)
//	private Usuario usuario;
//	@OneToMany(mappedBy="usuario")
//	private List<Usuario> listaAmigos;
//	
//	public Usuario getUsuario() {
//		return usuario;
//	}
//	public void setUsuario(Usuario usuario) {
//		this.usuario = usuario;
////	}
//	public List<Usuario> getListaAmigos() {
//		return listaAmigos;
//	}
//	public void setListaAmigos(List<Usuario> listaAmigos) {
//		this.listaAmigos = listaAmigos;
//	}
//	public Set<Reunion> getReunion() {
//		return reunion;
//	}
//	public void setReunion(Set<Reunion> reunion) {
//		this.reunion = reunion;
//	}
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
	
}