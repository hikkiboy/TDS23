package App;

import java.util.Scanner;
import entities.Pessoa;
import entities.Produto;

public class cadastroEproduto {
	static Scanner input = new Scanner(System.in);
	Produto Pro = new Produto();
	public  void main(String[] args) {

		cadastraUser();
	}
public void cadastraUser() {
		
	String op = " ";
	
	Pessoa P1 = new Pessoa();
	System.out.print("CPF : ");
	P1.cpf = input.next();
	System.out.print("NOME : ");
	P1.Nome = input.next();
	System.out.print("DATA DE NASC : ");
	P1.DataNasc = input.nextInt();
	
	System.out.printf("Bem vindo %s,  o que quer fazer ?\n", P1.Nome);
	op = input.next();
	if(op.equals("R")) {
		CadastraPro();
	}
	else if (op.equals("C")) {
		
	}
	
	
}
public void CadastraPro() {
	Produto Pro = new Produto();
	System.out.print("Codigo : ");
	Pro.codigo = input.next();
	System.out.print("Descriçao: ");
	Pro.descricao = input.next();
	System.out.print("Estoque : ");
	Pro.estoque = input.nextInt();
	Comprar(Pro.codigo, Pro.descricao, Pro.estoque);

}

public void Comprar(String Cod, String Des, int est) {
	System.out.println(Cod);
}
}