package entities;
import java.util.Scanner;
public class Estudantil extends Conta{
	Scanner read = new Scanner(System.in);
	private double limiteEstudantil = 5000.00;

	public Estudantil(int numero, String cpf, double limiteEstudantil) {
		super(numero, cpf);
		this.limiteEstudantil = limiteEstudantil;
	}
	
	

	public double getLimiteEstudantil() {
		return limiteEstudantil;
	}



	public void setLimiteEstudantil(double limiteEstudantil) {
		this.limiteEstudantil = limiteEstudantil;
	}



	public void usarEstudantil(){
		
		double valorEstudantil;
		System.out.println("insira quanto vamos descontar.");
		valorEstudantil = read.nextDouble();
	
		if(this.limiteEstudantil > valorEstudantil) 
		{

		this.limiteEstudantil = (this.limiteEstudantil - valorEstudantil);
		this.credito(valorEstudantil);
		}
		else
		{
			System.out.println("Limite excedido, tente denovo.");
			usarEstudantil();
		}
	}
}