package lista4;

public class ProdEletro {
	
	private int tempo;
	private boolean Pronto;
	
	public ProdEletro() {
		
	}
	
	public ProdEletro(int tempo, boolean pronto) {
		super();
		this.tempo = tempo;
		Pronto = pronto;
	}

	
	
	
	public int getTempo() {
		return tempo;
	}

	public void setTempo(int tempo) {
		this.tempo = tempo;
	}

	public boolean isPronto() {
		return Pronto;
	}

	public void setPronto(boolean pronto) {
		Pronto = pronto;
	}

	public void Tempo() {
		this.tempo -=1;
	}
	
	public void Pronto () {
		System.out.println("BEEEEP BEEEEP");
	}
}
