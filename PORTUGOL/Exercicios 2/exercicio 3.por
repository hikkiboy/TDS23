programa
{
	
	funcao inicio()
	{
	inteiro x = 1
	real soma = 0.0
	real contador = 0.0
	real media = 0.0
		enquanto ( x > 0 ){
			escreva ("me da um numero: ")
			leia (x)
			se (x > 0){
			soma += x
			contador++
			media = soma / contador
			}
		}escreva (soma, "\n", contador, "\n", media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 303; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */