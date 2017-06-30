package ar.edu.unlam.tallerweb1.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class CBU {
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id_cbu;
	private String valor;
	
	public Long getId() {
		return id_cbu;
	}
	public void setId(Long id_cbu) {
		this.id_cbu = id_cbu;
	}
	public String getValor() {
		return valor;
	}
	public void setValor(String valor) {
		this.valor = valor;
	}
	
}
