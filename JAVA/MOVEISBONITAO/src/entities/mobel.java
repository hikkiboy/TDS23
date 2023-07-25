package entities;

public class mobel extends Produto {
	private String Material;

	
	
	
	public String getCorProduto() {
		return Material;
	}

	public void setCorProduto(String Material) {
		this.Material = Material;
	}
	
	
	
	public mobel() {
		super();
	}

	public mobel(String codigo, String Material,String nome, double valor, int estoque, double margemLucro) {
		super(codigo, nome, valor, estoque, margemLucro);
	}

	@Override
	public String toString() {
		return "Material :" + Material + ", \nCodigo :" + super.getCodigo() + ", \nNome :" + super.getNome()
				+ ", \nValor: " + super.getValor() + ", \nEstoque: " + super.getEstoque() + ", \nMargemLucro: "
				+ super.getMargemLucro(); 
	}
	
	
	
}
