package app;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import entities.mobel;

public class AppMoveis {
	public static List <mobel> list = new ArrayList<>();

	public static void main(String[] args) {
		Screen();

	}
	
	public static void Screen() {
		Scanner input = new Scanner (System.in);
		mobel m1 = new mobel ();
		String cod;
		String nome;
		String material;
		double valor;
		int estoque;
		double lucro;
		System.out.println("Lojas Moveis Bonitão");
		System.out.println(" ");
		System.out.println("1 - Incluir Produtos ");
		System.out.println("2 - Alterar Dados Produtos ");
		System.out.println("3 - Excluir Dados Produtos ");
		System.out.println("4 - Comprar Produtos ");
		System.out.println("5 - Sair ");
		System.out.print("Qual vc quer?????: ");
		int res = input.nextInt();
		if (res == 1) {
			
			System.out.println("Insira os dados do produto conforme abaixo: ");
			System.out.println("Codigo do Movel: ");
			cod = input.next();
			m1.setCodigo(cod);
			System.out.println("Nome do Movel: ");
			nome = input.next();
			m1.setNome(nome);
			System.out.println("Material do Movel: ");
			material = input.next();
			System.out.println("Valor do Movel: ");
			valor = input.nextDouble();
			m1.setValor(valor);
			System.out.println("Estoque do Movel: ");
			estoque = input.nextInt();
			m1.incluirEstoque(estoque);
			System.out.println("Margem de lucro do Movel: ");
			lucro = input.nextInt();
			m1.setMargemLucro(lucro);
			list.add(new mobel(cod, nome, material, valor, estoque, lucro));
			
		}
			
		if (res == 2) {
			System.out.println("nao implementei foi mal :p");
		}
		if (res == 3) {
			System.out.println("nao implementei foi mal :p");
		}
		if (res == 4) {
			double qnt;
			char op = 0;
			for(mobel x : list) {
				System.out.println(x.toString());
			}
			System.out.println("Escreva o codigo do produto desejado: ");
			cod = input.next();	
			for(mobel x :list) {
				if(cod.equals(x.getCodigo())) {
					System.out.println("Quantos vc deseja ?");
					qnt = input.nextDouble();
					System.out.println("O valor final ficou: " + x.valorCompra(qnt));
					System.out.println("Comprar? : ");
					op = input.next().charAt(0);
					if(op == 'S') {
						System.out.println("vlw eh nois");
						x.tirarEstoque(qnt);
					}
					else {
						System.out.println("xau");
					}
				}
			}
		
				
			}
		if (res == 5) {
			
		}
		Screen();
	}

}


