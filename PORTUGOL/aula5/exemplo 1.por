programa
{
	
	funcao inicio()
	{
		inteiro num 
		inteiro total = 0
		inteiro maiorValor = 0
		inteiro repeticao = 0

		para (inteiro x = 1; x<=6;x++){
			escreva("digita o numero: " )
			leia(num)
			total = total + num
			se (num >= maiorValor){
				se (num > maiorValor){
					repeticao = 1
				}
				senao {
					repeticao++
				}
				maiorValor = num
			}
			}
			escreva (maiorValor, " ", total, " ", repeticao)
		}
		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 432; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {repeticao, 9, 10, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */