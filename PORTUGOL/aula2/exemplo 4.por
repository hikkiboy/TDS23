programa
{
	
	funcao inicio()
	{
		real a
		escreva ("insira um numero: ")
		leia(a)
		real b = 4.0
		escreva ("insira um numero: ")
		leia(b)
		real c = 5.0
		escreva ("insira um numero: ")
		leia(c)
		real d = 6.0
		escreva ("insira um numero: ")
		leia(d)
		real E = 7.0
		escreva ("insira um numero: ")
		leia(E)
		real f = 8.0
		escreva ("insira um numero: ")
		leia(f)

		real x1 = ((c * E) - (b * f))
		real xf = x1 / ((a * E) - (b * d))
		real y = ((a* f) - (c*d))
		real yf = y / ((a * E) - (b * d))

		escreva (xf,"\n", yf)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 545; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */