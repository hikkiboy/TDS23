package lista4;

import java.util.Scanner;

import ProdEletro;

public class ProdEletroFunc {

	public static void main(String[] args) {
		
		Scanner input = new Scanner (System.in);
		ProdEletro Micro = new ProdEletro();
		
		System.out.println("digite o tempo: ");
		int Time = input.nextInt();
		
		while (int i = 0; i <= Micro.getTempo();i++) {
			Time -= 1;
			Micro.setTempo(Time);
			System.out.println(Micro.getTempo());
		}

	}

}
