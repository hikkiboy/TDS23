programa
{
	
	funcao inicio()
	{
		cadeia times [4] = {"SPFC", "SFC", "SCCP", "SEP"}
		inteiro pontos [4] = {0,0,0,0}
		caracter input 
		para (inteiro j = 0; j < 3; j++){
		para(inteiro i = 0; i < 4; i++ ){
		escreva("o que aconteceu ? : ", times [i], " ")
			leia (input)
			se(input == 'G'){
				pontos [i] = pontos [i] + 3 
			}senao se (input == 'P'){
				pontos [i] = pontos [i] 
			}senao se (input == 'E'){
				pontos [i] = pontos [i] + 1
			}senao{
				escreva ("Invalido, ponto anulado. \n")
			}
		} 
		} escreva ("SPFC : ", pontos[0], " SFC: ", pontos[1]," SCCP : ", pontos[2], " SEP: ", pontos[3])
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 615; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {times, 6, 9, 5}-{pontos, 7, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */