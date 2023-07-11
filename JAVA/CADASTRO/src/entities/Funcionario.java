package entities;

public class Funcionario extends Pessoa {

	private String matricula;
	private String funcao;
	private double valorHora;
	private int hora;
	public Funcionario(String cpf, String nome, int anoNasc, boolean vivo, String matricula, String funcao,
			double valorHora, int hora) {
		super(cpf, nome, anoNasc, vivo);
		this.matricula = matricula;
		this.funcao = funcao;
		this.valorHora = valorHora;
		this.hora = hora;
	}
	
	
}
