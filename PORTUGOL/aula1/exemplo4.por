programa
	{
	funcao inicio()
	{
		cadeia lugar
		inteiro tempC
		escreva("vc é dos EUA? ")
		leia (lugar)
		se (lugar == "sim"){
			escreva("qual a temperatura ")
			leia(tempC)
			escreva("estão mais ou menos", (tempC * 9/5) + 32)
		}senao{
			escreva("vc eh normal")
		}
	}
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 281; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */