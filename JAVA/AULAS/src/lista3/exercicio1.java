package lista3;
import java.util.Scanner;

public class exercicio1 {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		
		double salario = 0.0;
		double filho = 0.0;
		double maiorSalario = 0.0;
		double pessoaCem = 0.0;
		double totalSal = 0.0;
		double totalFilho = 0.0;
		double mediaSalario = 0.0;
		double mediaFilhos = 0.0;
		
		for (int i = 0; i < 3; i++) {
			System.out.println("Qual o sal??: ");
			salario = input.nextDouble();
			
			System.out.println("quantos filho??: ");
			filho = input.nextDouble();
			
			if(salario > maiorSalario) {
				maiorSalario = salario;
			}
			
			totalSal += salario;
			mediaSalario = totalSal/3;
			
			totalFilho += filho;
			mediaFilhos = totalFilho/3;
			
			if (salario >= 100) {
				pessoaCem++;
			}
			
		}
		System.out.println("Media Salario: "+mediaSalario);
		System.out.println("Media Filhos: "+mediaFilhos);
		System.out.println("Maior Salario: "+ maiorSalario);
		System.out.println("Percentual acima de 100: "+pessoaCem);
		input.close();

	}

}
