programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
	
		real x 
		escreva ("fala um numero: ")
		leia(x)
		real y 
		escreva ("fala outro: ")
		leia(y)
		real z
		escreva("fala um ultimo: ")
		leia(z) 

		se (x >= 0 ){
		real R = Matematica.potencia(x + y, 2.0)
		real S = Matematica.potencia(z + y, 2.0)
		real D = R + S / 2.0
		escreva("o resultado é: ", D)
		}senao{
			escreva ("algum numero foi invalido, use so positivos e inteiros")
			}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 233; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */