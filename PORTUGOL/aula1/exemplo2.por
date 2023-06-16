
programa
{
inclua biblioteca Matematica
	
	funcao inicio()
	{
	
		inteiro num1
		inteiro num2	
		caracter tipo
		
		escreva("num1 ")
		leia (num1)
		escreva("num2 ")
		leia (num2)
		escreva("op: ")
		leia (tipo)
		
		escolha (tipo){
		caso '+' : escreva("!!!", num1+num2)
		pare
		caso '-' :escreva("!!!", num1-num2)
		pare
		caso '/' :escreva("!!!", num1/num2)
		pare
		caso '*' :escreva("!!!", num1*num2)
		pare
		caso 'p' :escreva("!!!",Matematica.potencia(num1, num2))
		pare
		
		caso contrario: escreva("invalido")
		pare
		}
		
	}
		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 488; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */