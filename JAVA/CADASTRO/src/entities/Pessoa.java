package entities;

public class Pessoa {
	
	private String cpf;
	private String nome;
	private int anoNasc;
	private boolean vivo;
	public Pessoa(String cpf, String nome, int anoNasc, boolean vivo) {
		super();
		this.cpf = cpf;
		this.nome = nome;
		this.anoNasc = anoNasc;
		this.vivo = vivo;
	}
	
	public Pessoa() {
		
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getAnoNasc() {
		return anoNasc;
	}
	public void setAnoNasc(int anoNasc) {
		this.anoNasc = anoNasc;
	}
	public boolean isVivo() {
		return vivo;
	}
	public void setVivo(boolean vivo) {
		this.vivo = vivo;
	}
	
	public int retornarIdade(int anoAtual) {
		return(anoAtual - this.anoNasc);
	}
	
}
