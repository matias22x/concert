package ar.edu.unlam.tallerweb1.modelo;

import java.util.Random;

public class Tambor {
	private Integer posicion;
	
	public void girar(){
	Random r = new Random();
	posicion = r.nextInt(7) + 1;
	}

	public Integer getPosicion() {
		return posicion;
	}
	
	
}
