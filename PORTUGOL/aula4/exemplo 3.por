programa
{
	
	funcao inicio()
	{
		inteiro num = 0
		para(inteiro x = 0; x <= 100; x++ ){
			se((x % 2) != 0 e (x % 7) == 0){
				escreva(x, "\n")
				num = num + x
			}
		}
		escreva("Soma : ", num)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 169; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */