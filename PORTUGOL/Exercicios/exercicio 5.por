programa
{
	
	funcao inicio()
	{
	 	real num
		escreva ("numero: ")
		leia(num)

		se ( num >= 0 e num <= 0.3 ){
			escreva ("tudo certo")
		}senao se (num >= 0 e num >= 0.3) {
			escreva("intimar o primeiro")
		}senao se (num >= 0.4 e num < 0.5) {
			escreva("intimar primeiro e segundo")
		}senao se (num >= 0.5 ){
			escreva("todos são intimados")
		}senao{
			escreva ("a")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 384; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */