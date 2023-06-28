import java.util.Locale;
import java.util.Scanner;

public class loca {

	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner ler = new Scanner (System.in);
		System.out.println("valor: ");
		ler.nextInt();
		int valor = 0;
		
		System.out.println( ((valor % 2)==0) ? "Numero par": "Impar");

	}

}
