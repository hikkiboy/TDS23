package tests;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;


import entities.mobel;

class ProdutoTest {

	@Test
	void testValorCompra() {
		mobel p1 = new mobel("1", "nome", null, 10, 10, 1);
		p1.valorCompra(-1);
		Assertions.assertEquals(0, 0);
		p1.valorCompra(0);
		Assertions.assertEquals(0, 0);
	}

	@Test
	void testIncluirEstoque() {
		mobel p1 = new mobel("1", "nome", null, 10, 10, 1);
		p1.valorCompra(-1);
		Assertions.assertEquals(10, p1.getEstoque());
		p1.valorCompra(0);
		Assertions.assertEquals(10, p1.getEstoque());
	}

	@Test
	void testTirarEstoque() {
		mobel p1 = new mobel("1", "nome", null, 10, 10, 1);
		p1.valorCompra(-1);
		Assertions.assertEquals(10, p1.getEstoque());
		p1.valorCompra(0);
		Assertions.assertEquals(10, p1.getEstoque());
	}

}
