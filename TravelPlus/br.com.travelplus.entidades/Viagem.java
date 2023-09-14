
public class Viagem {
	protected int id;
	protected String Lugar;
	protected double preco;
	public Viagem(int id, String lugar, double preco) {
		super();
		this.id = id;
		Lugar = lugar;
		this.preco = preco;
	}
	public Viagem(String lugar, double preco) {
		super();
		Lugar = lugar;
		this.preco = preco;
	}
	public Viagem() {
		super();
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLugar() {
		return Lugar;
	}
	public void setLugar(String lugar) {
		Lugar = lugar;
	}
	public double getPreco() {
		return preco;
	}
	public void setPreco(double preco) {
		this.preco = preco;
	}
	
}
