programa
{
	
	funcao inicio()
	{
		cadeia nome
		escreva ("nome ?????: ")
		leia(nome)
		inteiro salar
		escreva ("seu salar io: ")
		leia(salar) 

		se((salar <= 2500)){
			escreva("vc eh isento 😎")
		}senao se ((salar > 2500 e salar < 5000)){
			escreva("vc toma-lhe 15% fica com ", salar - (salar * 0.15), " de salario", "foram descontados ", salar * 0.15 )
		} senao{
			escreva("vc toma-lhe 25% fica com ", salar - (salar * 0.25), " de salario", "foram descontados ",(salar * 0.25) )
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 476; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */