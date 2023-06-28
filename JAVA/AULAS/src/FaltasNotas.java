import java.util.Scanner;


public class FaltasNotas {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);	
		String [] Alunos = {"André de Castro Cruz", "André Henrique Marfin Ferreira", "Daniel P. dos Santos Silva", "Danilo Rezende da Silva", "Gabriel dos Anjos Correia da Silva", "Gabriel Marinho Guimarães", "Giovanna de Oliveira Scaglione", "Guilherme Adonario dos Santos", "Gustavo Henrique Torres e Silva", "Isabelle Cristina Dias Soares", "João Felipe Sena Nascimento", "João Pedro Mota Melára", "João Victor Alves Messias", "João Victor Bueno Ramalho", "João Vitor Rodrigues Martinez", "Jonatas Ferreira da Silva Pereira", "Júlio Henrique Scalete dos Santos", "Marcus Nunes de Campos", "Mateus Nezzi Ribeiro", "Matheus Nunes de Campos", "Moises Alves Bonfin", "Paulo Silas da Silva Santos", "Renato da Graça Silva", "Rodrigo de Andrade Montanholli", "Tiago de Lima Penaforte", "Vinícius Souza Santos", "Vitor Cruz dos Santos"};
		String [] Cod = {"3278", "3277", "3317", "3274", "3269", "3316", "3272", "3319", "3266", "3332", "3330", "3262", "3275", "3280", "3337", "3263", "3281", "3339", "3264", "3340", "3321", "3276", "3318", "3268", "3282", "3343", "3258"};
		double [] Nota1 = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
		double [] Nota2 = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
		int [] Falta = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
		String Codig = "";
		int Pnota = 0;
		int Snota = 0;
		String op = " ";
		
		System.out.println("Codigo\t\tNota1\t\tNota2\t\tFaltas\t\tAlunos");
		
		for (int i = 0; i < Alunos.length; i++) {
			System.out.println(Cod[i]+"\t\t"+Nota1[i]+"\t\t"+Nota2[i]+"\t\t"+Falta[i]+"\t\t"+Alunos[i]+"\n");
		}
		System.out.println("Insira o Cod do aluno: ");
		Codig = input.nextLine();
		for(int y = 0; y < Alunos.length; y++) {
			if(Cod[y].equals(Codig)) {
				System.out.println("Qual a Primeira Nota ?: ");
				Pnota = input.nextInt();
				Nota1[y] = Pnota;
				System.out.println("Qual a Segunda Nota ?: ");
				Nota2[y] = Snota;
				Snota = input.nextInt();
			}
		
		}
		System.out.println("Codigo\t\tNota1\t\tNota2\t\tFaltas\t\tAlunos");
		for (int i = 0; i < Alunos.length; i++) {
			System.out.println(Cod[i]+"\t\t"+Nota1[i]+"\t\t"+Nota2[i]+"\t\t"+Falta[i]+"\t\t"+Alunos[i]+"\n");
		}
		System.out.println("Quer adicionar mais? : ");
		op = input.next();
		if(op.equals("S")) {
			System.out.println("Insira o Cod do aluno: ");
			Codig = input.nextLine();
			for(int y = 0; y < Alunos.length; y++) {
				if(Cod[y].equals(Codig)) {
					System.out.println("Qual a Primeira Nota ?: ");
					Pnota = input.nextInt();
					Nota1[y] = Pnota;
					System.out.println("Qual a Segunda Nota ?: ");
					Nota2[y] = Snota;
					Snota = input.nextInt();
				}
			
			}
		}
		}
		}

