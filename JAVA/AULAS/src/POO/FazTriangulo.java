package POO;

import java.util.Scanner;

public class FazTriangulo {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		
		Triangulo t1 = new Triangulo();
		Triangulo t2 = new Triangulo();
		
		System.out.print("Digite base: ");
		t1.base = input.nextDouble();
		System.out.print("Digite altura: ");
		t1.altura = input.nextDouble();
		t1.mostrarArea();
		
		System.out.print("Digite base: ");
		t2.base = input.nextDouble();
		System.out.print("Digite altura: ");
		t2.altura = input.nextDouble();
		
		t2.mostrarArea();
	
		
	}

}
