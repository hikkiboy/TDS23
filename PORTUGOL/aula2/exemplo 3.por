programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real nota1 
		escreva("sua nota 1 (peso 2): ")
		leia(nota1)
		real nota2 
		escreva ("segunda nota (peso 3) :" )
		leia(nota2)
		real nota3
		escreva ("3 nota (peso 5): ") 
		leia(nota3)
		real peso1 = 2.0
		real peso2 = 3.0
		real peso3 = 5.0	

		real notaf1 = ((nota1 * peso1) + (nota2 * peso2) + (nota3 * peso3))
		real notaf2 = (notaf1 / (peso1 + peso2 + peso3))

		escreva (notaf2)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 462; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */