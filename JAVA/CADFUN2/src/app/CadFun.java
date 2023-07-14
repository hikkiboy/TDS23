package app;

import java.util.ArrayList;
import java.util.List;

import entities.Funcionario;
import entities.Terceiro;

public class CadFun {

	public static void main(String[] args) {
		
		List <Funcionario> cadastro = new ArrayList<>();
		
		cadastro.add(new Funcionario("11111", "carlos", 10, 10));
		cadastro.add(new Terceiro("12", "epasmin", 10, 11, "XT00", 10));
		
		for(Funcionario x : cadastro) {
			System.out.println(x.getNome() + " salario: " + x.retornarSalario());
		}

}	
}
