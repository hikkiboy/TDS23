package lista2;
import java.util.Scanner;

public class exercicio8 {
	public static void main(String[]args) {
		Scanner input = new Scanner(System.in);
			
			int num;
			System.out.println("Digite um número inteiro: ");
			num = input.nextInt();
			
			if(num>=100)
			{
				System.out.println(num);
			}
			
			else
			{
				System.out.println(0);
			}
			
	}

}
