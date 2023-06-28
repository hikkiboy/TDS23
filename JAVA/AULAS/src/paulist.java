import java.util.Scanner;
import java.util.Locale;
public class paulist {

	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);
		Scanner input = new Scanner(System.in);
		
		String[] times = new String[4];
		
		int pontos [] = {0,0,0,0};
		
		for (int i = 0; i < times.length; i++) {
			System.out.print("Digite o nome do time: ");
			times[i] = input.nextLine();
		}
		for(int j = 0; j <=3; j++) {
			
			System.out.println("RODADA:" + j + "\n");
			for (int i = 0; i < 4 ; i++) {
				System.out.print(times[i] + "\n");
				System.out.print("Digite o resultado");
				
				
			}
		}
	

	}

}
