package ar.edu.unlam.tallerweb1.modelo;

public class Tragamonedas {
	
	private Tambor t1 = new Tambor();
	private Tambor t2 = new Tambor();
	private Tambor t3 = new Tambor();
	
	
	public void activar(){
		t1.girar();
		t2.girar();
		t3.girar();
	}
	
	public Boolean entregaPremio(){
		return t1.getPosicion() == t2.getPosicion()
		&& t2.getPosicion() == t3.getPosicion();
	}
	
	public Tragamonedas(Tambor t1,Tambor t2,Tambor t3){
		this.t1 = t1;
		this.t2 = t2;
		this.t3 = t3;
	}
	
}
