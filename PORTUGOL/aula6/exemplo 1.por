programa
{
	
	funcao inicio()
	{
		cadeia nome, nome2
		inteiro nota1, nota2
		escreva ("nome : ") leia (nome)
		escreva ("nota:  ") leia (nota1)
		escreva ("nome : ") leia (nome2)
		escreva ("nota:  ") leia (nota2)

		se(nota1 <= 5){
			escreva (nome," ",nota1, " vc esta de rec")
		}senao{
		 escreva (nome," ",nota1, " vc  n esta de rec")
		}se (nota2 <= 5){
			escreva (nome2, "vc esta de rec")
		}senao{
			escreva (nome2," ",nota2, " vc  n esta de rec")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 464; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */