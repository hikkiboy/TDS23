package lista4;

import java.util.Scanner;

import entities.aviao;

public class ProgramaAviao {

	public static void main(String[] args) {
		
		Scanner leia = new Scanner(System.in);
		
		 aviao t1 = new aviao("Bimotor", "pequeno");
		 aviao t2 = new aviao();
		 aviao t3 = new aviao();

		 t1.ligar();
		 System.out.println("Velocidade Atual: "+t1.getVelocidade());
		 for(int i = 1; i <= 20; i++) {
			 t1.acelerar();
		 }
		 
		 t1.decolar();
		 
		 System.out.println("Velocidade Atual: "+t1.getVelocidade());
		 
		 for(int i = 1; i <= 60; i++) {
			 t1.acelerar();
		 }
		 
		 t1.cruzeiro();
		 
		 for(int i = 1; i <= 60; i++) {
			 t1.freaiar();
		 }
		 
		 t1.pousar();
		 
		 for(int i = 1; i <= 20; i++) {
			 t1.freaiar();
		 }
		 
		 t1.desligar();
		 
		 
		 
		 
	}

}
