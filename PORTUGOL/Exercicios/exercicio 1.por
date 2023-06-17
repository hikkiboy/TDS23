programa
{
	
	funcao inicio()
	{
		real peso
		escreva ("peso: ")
		leia(peso)
		real limite = 50.00
		se ((peso > limite)){
			real excesso = peso - limite
			real multa = excesso * 4
			escreva ("vai pagar ", multa, " de multa")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 239; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {excesso, 11, 8, 7}-{multa, 12, 8, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */