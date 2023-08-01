package entities;

public class mobelPremium extends mobel {
	private double adicionalPremium;

	
	
	
	public mobelPremium() {
		super();
	}

	public mobelPremium(String codigo, String nome, double valor, int estoque, double margemLucro) {
		super(codigo, nome, nome, valor, estoque, margemLucro);
	}

	public double getAdicionalPremium() {
		return adicionalPremium;
	}

	public void setAdicionalPremium(double adicionalPremium) {
		this.adicionalPremium = adicionalPremium;
	}
	
	@Override
	public double valorCompra(double quantidade) {
		  double finalCompra;
		  finalCompra =(this.getValor() * quantidade + ((this.getValor() * quantidade)*this.getMargemLucro()) + this.adicionalPremium);
		  return finalCompra;
	}
}
