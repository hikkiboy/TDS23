package lista3;

public class exercicio2 {

	public static void main(String[] args) {
		int total = 0;
		int num; 
	for( num = 0; num <= 500; num++) {
		if (num%2 != 0 && num%3 == 0) {
			System.out.println(num + "\n");
			total = total + num;
		}
	}
	System.out.println("Soma: "+ total);
	}

}
