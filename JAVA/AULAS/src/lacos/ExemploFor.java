package lacos;
import java.util.Scanner;

public class ExemploFor {
	public static void main (String[]args) {
		
		Scanner input = new Scanner(System.in);
		
		char op = ' ';
		
		do {
			for(int i = 0; i <= 40; i++) {
				System.out.print("-");
			}
			System.out.println();
			System.out.println("Continuar ?: ");
			op = input.next().toUpperCase().charAt(0);
		} while(op != 'N');
		
		
		while(true) {
			System.out.println("qual foi");
			System.out.println("continuar? ");
			op=input.next().toUpperCase().charAt(0);
			if(op =='N'){
				break;
			}
		}
		
	}
}
