package lista4;

import Cliente;

public class ClienteObj {
	public static void main (String[]args) {
		
		
			Cliente C = new Cliente("Nome",11, "123213", false);
			
			C.getCpf();
			C.getNome();
			C.getDataNasc();
			
			System.out.println(C.getCpf()+" " +C.getNome()+" "+ C.getDataNasc());
		}
}
