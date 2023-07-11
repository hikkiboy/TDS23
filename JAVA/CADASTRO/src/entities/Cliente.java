package entities;

public class Cliente extends Pessoa {
	
	private int idCliente;
	private String tipo;
	public Cliente(String cpf, String nome, int anoNasc, boolean vivo, int idCliente, String tipo) {
		super(cpf, nome, anoNasc, vivo);
		this.idCliente = idCliente;
		this.tipo = tipo;
	}
	public int getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	
	
}
