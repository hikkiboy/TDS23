import java.util.Scanner;

public class turista {
	public static void main (String[]args) {
		
		Scanner ler = new Scanner(System.in);
		
		double temp;
		double tempconve;
		String nome;
		String res;
		
		System.out.println("vc eh gringo?: ");
		res = ler.next();
		
		if(res.equals("Sim")) {
			System.out.println("Qual seu nome ?: ");
			nome = ler.next();
			System.out.println("Quanto ta em celsius ?: ");
			temp = ler.nextDouble();
			tempconve = (temp * 9/5) + 32;
			System.out.printf("\nEntão %s a temperatura é %.3f Fahrenheit", nome, tempconve);
		}
		else if (res.equals("Nao")) {
			System.out.println("Qual seu nome ?: ");
			nome = ler.next();
			System.out.println("Quanto ta em fahrenheit ?: ");
			temp = ler.nextDouble();
			tempconve = (temp - 32) * 5/9;
			System.out.printf("\nEntão %s a temperatura é %.3f certon", nome, tempconve);
		}
	}
}
