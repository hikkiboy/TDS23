package app;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;

public class AppLoja {

	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);
		
		Scanner input = new Scanner(System.in);
		List <String> cadastro = new ArrayList<>();
		
		cadastro.add("FILIPE");
		cadastro.add("MARIA");
		
		System.out.println("classic");
		for(String epa : cadastro) {
			System.out.println(epa);
		}
		
		cadastro.add(0, "carminha");
		
		System.out.println("CARMINHA ADICIONADA");
		for(String epa : cadastro) {
			System.out.println(epa);
		}
		
		System.out.println("carminha removida ufa");
		
		cadastro.remove(0);
		
		for(String epa : cadastro) {
			System.out.println(epa);
		}
		
		
		
	}

}
