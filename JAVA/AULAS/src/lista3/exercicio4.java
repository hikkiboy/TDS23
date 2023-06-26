package lista3;
import java.util.Scanner;
public class exercicio4 {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int numer = 0;
		
		System.out.println("Escreva nu : ");
		numer = input.nextInt();
		while(numer < 100) {
			numer = numer * 3;
			System.out.println(numer + "\n");
		}

	}

}
