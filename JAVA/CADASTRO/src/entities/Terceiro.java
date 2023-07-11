package entities;

public class Terceiro extends Funcionario {
	private String nomeEmpresaTerceira;
	private double diferencialSalario;
	public Terceiro(String cpf, String nome, int anoNasc, boolean vivo, String matricula, String funcao,
			double valorHora, int hora, String nomeEmpresaTerceira, double diferencialSalario) {
		super(cpf, nome, anoNasc, vivo, matricula, funcao, valorHora, hora);
		this.nomeEmpresaTerceira = nomeEmpresaTerceira;
		this.diferencialSalario = diferencialSalario;
	}
	public String getNomeEmpresaTerceira() {
		return nomeEmpresaTerceira;
	}
	public void setNomeEmpresaTerceira(String nomeEmpresaTerceira) {
		this.nomeEmpresaTerceira = nomeEmpresaTerceira;
	}
	public double getDiferencialSalario() {
		return diferencialSalario;
	}
	public void setDiferencialSalario(double diferencialSalario) {
		this.diferencialSalario = diferencialSalario;
	}
	
}
