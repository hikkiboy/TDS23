package lista4;

public class Cliente {
	
	private String Nome;
	private int DataNasc;
	private String cpf;
	private boolean vivo;
	
	
	
	public Cliente(String nome, int dataNasc, String cpf, boolean vivo) {
		super();
		Nome = nome;
		DataNasc = dataNasc;
		this.cpf = cpf;
		this.vivo = vivo;
	}
	
	
	
	public String getNome() {
		return Nome;
	}



	public void setNome(String nome) {
		Nome = nome;
	}



	public int getDataNasc() {
		return DataNasc;
	}



	public void setDataNasc(int dataNasc) {
		DataNasc = dataNasc;
	}



	public String getCpf() {
		return cpf;
	}



	public void setCpf(String cpf) {
		this.cpf = cpf;
	}



	public boolean isVivo() {
		return vivo;
	}



	public void setVivo(boolean vivo) {
		this.vivo = vivo;
	}



	public void mostraIdade () {
		int idade = 2023 - this.DataNasc;
		System.out.println("vc tem "+idade+" anos");
	}
	public int retornaIdade(int anoAtual) {
		return (anoAtual - this.DataNasc);
	}
	
}
