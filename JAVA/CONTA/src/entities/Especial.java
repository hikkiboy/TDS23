package entities;

public class Especial extends Conta{
	//feito pelo Mateus Nezzi, número 19 :3
	
	public Especial(int numero, String cpf) {
		super(numero, cpf);

	}


	
	@Override
	public void debito(double saldoF2){
		if(this.getSaldo() - saldoF2 < 0 && (this.limite + this.getSaldo()) - saldoF2 >= 0) {
			this.limite = (this.getSaldo() + this.limite) - saldoF2;
			super.debito(getSaldo());
			System.out.println("1");
		}
		else if(this.getSaldo() - saldoF2 >= 0){
			super.debito(saldoF2);
			System.out.println("2");

		}
		else {
			System.out.println("Erro, excedendo o limite!");
		}
	}

	public double getLimite() {
		return limite;
	}
	
	

}