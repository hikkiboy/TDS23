package lista3;
import java.util.Scanner;
public class exercicio6 {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int x = 0;
		int total = 0;
		int conta = 0;
		System.out.println("Digite um num: ");
		x = input.nextInt();
		
		do {
			conta++;
			System.out.println(conta + "\n");
			total += conta;
		}
		while(conta < x);
		
		input.close();
		
		System.out.println("Total: "+ total);
	}

}
