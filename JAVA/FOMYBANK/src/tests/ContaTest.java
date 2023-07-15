package tests;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import entities.Empresa;
import entities.Poupanca;

class ContaTest {

	@Test
	void testDebito() {
		Poupanca p1 = new Poupanca(3,"aaaa", 1);
		p1.ativar();
		p1.credito(10);
		p1.debito(1);
		Assertions.assertEquals(9,p1.getSaldo());
		p1.debito(-1);
		Assertions.assertEquals(9,p1.getSaldo());
		
	}

	@Test
	void testCredito() {
		Poupanca p1 = new Poupanca(3,"aaaa", 1);
		p1.ativar();
		p1.credito(10);
		Assertions.assertEquals(10,p1.getSaldo());
		p1.credito(-1);
		Assertions.assertEquals(10,p1.getSaldo());
	}
	@Test
	void testEmpresa() {
		Empresa e1 = new Empresa(3,"aaaa", 1);
		e1.ativar();
		e1.pedirEmprestimo(100);
		Assertions.assertEquals(100,e1.getSaldo());
		e1.pedirEmprestimo(-100);
		Assertions.assertEquals(100,e1.getSaldo());
	}

}
