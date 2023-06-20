programa
{
	
	funcao inicio()
	{
		inteiro num1
		inteiro maior = 0
		inteiro total = 0
		para(inteiro x = 0; x < 5; x++){
			escreva("numero: ")
			leia(num1)
			se (num1 > maior ){
				maior = num1
				total += num1
			}
		}
		escreva(maior," " ,total)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 72; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */