programa
{
	
	funcao inicio()
	{
		inteiro num
		escreva ("idade ")
		leia(num)

		se ( num <= 5 e num <= 7 ){
			escreva ("Infantil A")
		}senao se (num >= 8 e num <= 11) {
			escreva("Infantil B")
		}senao se (num >= 12 e num <=13 ){
			escreva("Juvenil A")
		}senao se (num >= 14 e num <=17){
			escreva ("Juvenil B")
		}senao{
			escreva("Adultos")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 98; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */