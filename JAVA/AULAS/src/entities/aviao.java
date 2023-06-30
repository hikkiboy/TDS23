package entities;

public class aviao {
	private int velocidade;
	private boolean ligado;
	private String porte;
	private String modelo;
	private String cor;
	private int anoFab;
	private boolean decolar;
	
	
	public aviao(){
		
	}
	public aviao(String porte, String modelo) {
		super();
		this.velocidade = velocidade;
		this.ligado = ligado;
		this.porte = porte;
		this.modelo = modelo;
		this.cor = cor;
		this.anoFab = anoFab;
		this.decolar = decolar;
	}
	
	public int getVelocidade() {
		return velocidade;
	}

	public void setVelocidade(int velocidade) {
		this.velocidade = velocidade;
	}
	
	public boolean isLigado() {
		return ligado;
	}

	public void setLigado(boolean ligado) {
		this.ligado = ligado;
	}

	public String getPorte() {
		return porte;
	}

	public void setPorte(String porte) {
		this.porte = porte;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public String getCor() {
		return cor;
	}
	public void setCor(String cor) {
		this.cor = cor;
	}
	public int getAnoFab() {
		return anoFab;
	}
	public void setAnoFab(int anoFab) {
		this.anoFab = anoFab;
	}
	public boolean isDecolar() {
		return decolar;
	}
	public void setDecolar(boolean decolar) {
		this.decolar = decolar;
	}

	public  void ligar() {
		this.ligado = true;
		System.out.println("Avião está ligado");
	}
	public  void desligar() {
		ligado = false;
		System.out.println("Avião desligado");
	}
	public  void acelerar() {
			System.out.println("Acelerando");
			this.velocidade += 10;
			System.out.println("Velocidade Atual: " + velocidade);
		}
	public  void freaiar () {
			System.out.println("Freiando");
			this.velocidade -= 10;
			System.out.println("Velocidade Atual: " + velocidade);
	}
	public  void decolar() {
		System.out.println("Avião decolando...");
	}
	public void cruzeiro() {
		System.out.println("Avião em voo de cruzeiro...");
	}
	public  void pousar () {
		System.out.println("Avião Pousando...");
	}
}
