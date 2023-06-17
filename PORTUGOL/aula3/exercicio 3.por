programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real num1
		escreva("numero: ")
		leia(num1)
		real num2
		escreva("numero: ")
		leia(num2)
		real num3
		escreva("numero: ")
		leia(num3)
		real num4
		escreva("numero: ")
		leia(num4)

		real num1q = Matematica.potencia(num1, 2.0)
		real num2q = Matematica.potencia(num2, 2.0)
		real num3q = Matematica.potencia(num3, 2.0)
		real num4q = Matematica.potencia(num4, 2.0)

		se(num3q >=1000){
			escreva(num3q)
		}senao{
			escreva(num1q, " ", num2q, " ", num3q, " ", num4q, " ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 172; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */