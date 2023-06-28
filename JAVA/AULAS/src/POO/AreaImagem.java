package POO;
import java.util.Scanner;

public class AreaImagem {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		
		double area, base, altura = 0.0;
		
		System.out.println("Digite base: ");
		base = input.nextDouble();
		System.out.println("Digite altura: ");
		altura = input.nextDouble();
		
		area = (base * altura) / 2;
		
		System.out.println("A area do triangulo é: "+ area);
	}

}
