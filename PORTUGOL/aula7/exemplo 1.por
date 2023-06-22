programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro num [5] 
		inteiro contador = 0
		inteiro maiorValor = 0
		para (inteiro j = 0; j < 5; j++){
			num [j] = Util.sorteia(0, 10)
			escreva ("Valor ",j, " : ", num [j], "\n")
			se (num[j] > maiorValor){
				maiorValor = num[j]
			}
			
		}escreva ("Maior valor: ", maiorValor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 333; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */