programa
{
	
	funcao inicio()
	{
		real codigo
		escreva ("codigo: ")
		leia (codigo)
		real horas
		escreva("horas:")
		leia(horas)
		real sal = 10 * horas

		se((horas >= 50)){
			real excesso = horas - 50 
			horas = horas - excesso
			real saltotal = excesso * (20) - excesso * (10)
			
			real salcombonus = saltotal + sal 
			escreva("você ganhou no total: ",salcombonus, " seu salario original era: ",sal - excesso *(10))
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
 * @POSICAO-CURSOR = 235; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */