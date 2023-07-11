package entities;

public class Corrente extends Conta {
	
	//Feito pelo joao melara
	
	
	private int contadorTalao = 3;
	
	public Corrente(int numero, String cpf, int contadorTalao) {
		super(numero, cpf);
		this.contadorTalao = contadorTalao;
	}
	public int getContadorTalao() {
		return contadorTalao;
	}
	public void pediTalao(int quantTalao) {
		if(quantTalao <= contadorTalao && quantTalao>0) {
		this.contadorTalao =- quantTalao;
		this.credito(30.00 * quantTalao);
		System.out.println("O valor no seu saldo é " + this.getSaldo() );
		}
		else {
			System.out.println("Digite um valor válido");
		}
	}
}
