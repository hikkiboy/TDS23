import java.util.Scanner;
public class ParImpar {

	public static void main(String[] args) {
			Scanner leia = new Scanner(System.in);
	
			int numero = 0;
			
			System.out.println("Digite um numero positivo: ");
			numero = leia.nextInt();
			if((numero % 2) == 0) {
				System.out.println("Par");
			}
			else if (numero < 0) {
				System.out.println("negativo bota outro");
			}
			else {
				System.out.println("impar");
			}
			leia.close();
			
	}

}
