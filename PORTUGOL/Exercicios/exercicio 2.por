programa
{
	
	funcao inicio()
	{
		//real codigo
		
		real horas
		escreva("horas:")
		leia(horas)
		real porhora = 10.00
		real sal = porhora * horas

		se((horas >= 50)){
			real excesso = horas - 50
			real saltotal = excesso * 20
			real salcombonus = saltotal + sal
			escreva("você ganhou no total: ",salcombonus, " seu salario original era: ",sal)
		}senao{
			escreva("voce ganhou: ",sal)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 126; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */