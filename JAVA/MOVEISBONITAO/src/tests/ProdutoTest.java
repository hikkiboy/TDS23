package tests;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import entities.SeuProduto;

class ProdutoTest {

	@Test
	void testValorCompra() {
		SeuProduto p1 = new SeuProduto("1", "nome", 10, 10, 1);
		p1.valorCompra(-1);
		Assertions.assertEquals(0, 0);
		p1.valorCompra(0);
		Assertions.assertEquals(0, 0);
	}

	@Test
	void testIncluirEstoque() {
		SeuProduto p1 = new SeuProduto("1", "nome", 10, 10, 1);
		p1.valorCompra(-1);
		Assertions.assertEquals(10, p1.getEstoque());
		p1.valorCompra(0);
		Assertions.assertEquals(10, p1.getEstoque());
	}

	@Test
	void testTirarEstoque() {
		SeuProduto p1 = new SeuProduto("1", "nome", 10, 10, 1);
		p1.valorCompra(-1);
		Assertions.assertEquals(10, p1.getEstoque());
		p1.valorCompra(0);
		Assertions.assertEquals(10, p1.getEstoque());
	}

}
