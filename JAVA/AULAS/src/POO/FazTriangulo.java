package POO;

import java.util.Scanner;

public class FazTriangulo {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		
		Triangulo t1 = new Triangulo();
		Triangulo t2 = new Triangulo();
		Retangulo r1 = new Retangulo();
		
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
		
		r1.altura = 8;
		r1.base = 2;
		r1.CalcularArea();
		
		System.out.println("area retangular: "+ r1.CalcularArea());
	
		
	}

}
