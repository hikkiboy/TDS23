import java.util.Scanner;

public class HelloWorld {
	public static void main (String[]args) {
	
	Scanner leia = new Scanner(System.in);	
		
	/*int valor1 = 12;
	int valor2 = 100;
	char letr = 'a';
	String nome = "charlington";
	boolean tes = false;
	double val = 1.0010203;*/
	
	String narme;
	int anoNasceu;
	
	System.out.println("Digite o nome do user: ");
	narme = leia.next();
	System.out.println("Digite o ano de nascimento: ");
	anoNasceu = leia.nextInt();
	
	System.out.println("Você tem mais ou menos"+(2023-anoNasceu));
	
	leia.close();
	
	/*System.out.println(letr);
	System.out.println(nome);
	System.out.println(tes);
	System.out.println(val);
	System.out.println(valor1);
	System.out.println(valor2);
	System.out.printf("%.2f", val, "\n");
	System.out.printf("\nOI %s o seu sal é %.0f", narme, val);*/
	}
}
