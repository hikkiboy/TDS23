package App;

import java.util.Scanner;
import java.util.InputMismatchException;
import java.lang.ArrayIndexOutOfBoundsException;

public class appErros {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		
		int notas[] = new int[3];
		int posicao = 0;
		
		notas[0] = 10;
		notas[1] = 5;
		notas[2] = 3;
		try{
			System.out.println("digite a posição da nota (0 a 2)");
			posicao = input.nextInt();
			System.out.println("nota : " + notas[posicao]);
			System.out.println("Digite a nova: ");
			notas[posicao] = input.nextInt();
			System.out.println("A nova nota: " + notas[posicao]);
		}
		catch(InputMismatchException e) {
			System.out.println("Tio invalido");
		}
		catch(java.lang.ArrayIndexOutOfBoundsException g) {
			System.out.println("index invalido amigao");
		}
		finally {
			System.out.println("revise o codigo");
		}
		
		System.out.println("fim");
	
	}

}
