package lista3;
import java.util.Scanner;

public class exercicio3 {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		
		int numero = 0;
		double total = 0.0;
		double quant = 0.0;
		double media = 0.0;
		
		while(numero >= 0) {
			System.out.println("Insira um nu: ");
			numero = input.nextInt();
			if (numero > 0) {
				total += numero;
				media = (total/quant);
				quant++;
			}
		}
		System.out.println("total : " + total);
		System.out.println("quantidade : " + quant);
		System.out.println("media : " + media);
		input.close();
	}

}
