programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro matriz [2][3]
		para(inteiro l = 0; l < 2; l++){
			para(inteiro c = 0; c < 3; c++){
				matriz [l][c] = Util.sorteia(1, 60)
				se( l == 0 e c == 2 ){
					escreva (matriz[l][c], "\t", "\n")
				}senao{
					escreva (matriz [l][c], "\t")
				}
			}
		}
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 329; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */