package app;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;

import entities.Funcionario;
import entities.Terceiro;

public class CadFun {

	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);
		
		Scanner input = new  Scanner(System.in);
		
		List <Funcionario> cadastro = new ArrayList<>();
		
		//funcionario
		String nome;
		double valorHora;
		int horasTrabalhadas;
		String matricula;
		//teceiro
		String codEmpresa;
		double adicionalTerceiro;	
		int qtde = 0;
		char tipo;
		
		System.out.println("CADASTRO DE FUNCIONARIO: ");
		System.out.println();
		
		System.out.println("quantos vc quer cadastrar ?: ");
		qtde = input.nextInt();
		
		for(int i = 1; i <=qtde; i++) {
			input.nextLine();
			System.out.println("Matricula: ");
			matricula = input.next();
			System.out.println("Nome: ");
			nome = input.next();
			System.out.println("Valor por hora: ");
			valorHora = input.nextDouble();
			System.out.println("Horas trabalhadas: ");
			horasTrabalhadas = input.nextInt();
			System.out.println("Qual o tipo de fucionalro ? (F - para funcionario, T - para teceiro) : ");
			tipo = input.next().toUpperCase().charAt(0);
			
			if(tipo == 'T') {
				System.out.println("Codigo da empresa: ");
				codEmpresa = input.next();
				System.out.println("Valor adicional: ");
				adicionalTerceiro = input.nextDouble();
				cadastro.add(new Terceiro(matricula, nome, valorHora, horasTrabalhadas, codEmpresa, adicionalTerceiro));
				
			}
			else if (tipo == 'F') {
				cadastro.add(new Funcionario(matricula, nome, valorHora, horasTrabalhadas));
			}
			else {
				System.out.println("Invalido");
			}
		}
		
		/*
		cadastro.add(new Funcionario("11111", "carlos", 10, 10));
		cadastro.add(new Terceiro("12", "epasmin", 10, 11, "XT00", 10));
		*/
		
		System.out.println("Folha de pagamento: ");
		for(Funcionario x : cadastro) {
			System.out.println(x);
		}

}	
}
