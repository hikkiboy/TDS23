programa
{
	
	funcao inicio()
	{
		inteiro ano
		escreva ("qnd vc nasceu? : ")
		leia(ano)
		cadeia nome
		escreva ("e seu nome: ")
		leia(nome)

		se ((2023 - ano) <= 17){
			escreva("bom dia ", nome, " meu jovem ! ", " você tem ", 2023 - ano, " Anos")
		}senao se ((2023 - ano) <= 29){
			escreva("bom dia ", nome, " meu adulto!, você já tem ", 2023 - ano, " Anos")
		}senao{
			escreva("bom dia ", nome, " meu velho! , você já tem ", 2023 - ano, " Anos")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 466; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */