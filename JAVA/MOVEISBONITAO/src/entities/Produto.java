package entities;

abstract class Produto  {
	private String codigo;
	private String nome;
	private double valor;
	private int estoque;
	private double margemLucro;
	
	
	public Produto() {
		super();
	}
	
	
	public Produto(String codigo, String nome, double valor, int estoque, double margemLucro) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.valor = valor;
		this.estoque = estoque;
		this.margemLucro = margemLucro;
	}
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public double getValor() {
		return valor;
	}
	public void setValor(double valor) {
		this.valor = valor;
	}
	public int getEstoque() {
		return estoque;
	}
	public double getMargemLucro() {
		return margemLucro;
	}
	public void setMargemLucro(double margemLucro) {
		this.margemLucro = margemLucro;
	}
	
	public double valorCompra(double quantidade) {
		if(quantidade > 0 ) {
			double finalCompra;
			  finalCompra = (this.valor * quantidade + ((this.valor * quantidade)*this.margemLucro));
			  return finalCompra;
		}
		else {
			System.out.println("invalido");
			return 0;
		}
		
	}
	
	public void incluirEstoque(int somaEstoque) {
		if(somaEstoque > 0) {
			this.estoque = this.estoque + somaEstoque;
		}
		else {
			System.out.println("Invalido");
		}
	}
	
	public void tirarEstoque(double qnt) {
		if(qnt > 0 && qnt < this.estoque) {
			this.estoque = (int) (this.estoque - qnt);
		}
		else {
			System.out.println("invalido");
		}
		
	}


	@Override
	public String toString() {
		return "Produto [codigo=" + codigo + ", nome=" + nome + ", valor=" + valor + ", estoque=" + estoque
				+ ", margemLucro=" + margemLucro + "]";
	}
	
	
	
}
