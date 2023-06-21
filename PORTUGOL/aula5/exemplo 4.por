programa
{
	
	funcao inicio()
	{
		inteiro input
		inteiro contPos = 0
		inteiro contNeg = 0
		inteiro totalPos = 0
		inteiro totalNeg = 0
		faca{
			escreva ("digite um numero: ")
			leia (input)
			se(input > 0){
				contPos += input
				totalPos++
			}
			senao{
				contNeg += input
				totalNeg++
			}
		}enquanto (input != 0)
	escreva ("vc digitou ", totalPos, " numeros positivos, e digitou ", totalNeg, " numeros negativos \n")
	escreva ("O total de positivos foi: ", contPos, " e o de negativo foi: ", contNeg, " e o total de numeros foi : ", totalNeg + totalPos - 1)
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 581; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */