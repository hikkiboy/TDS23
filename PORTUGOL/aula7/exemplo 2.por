programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro vetor [10]
		real somador = 0.0
		para(inteiro i = 0; i < 10; i++){
			vetor [i] = Util.sorteia(0, 10)
			escreva (vetor[i], " ")
			somador += vetor [i]
			
		} escreva("\n", "A media foi : ", somador / 10)
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 246; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 7, 10, 5}-{somador, 8, 7, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */