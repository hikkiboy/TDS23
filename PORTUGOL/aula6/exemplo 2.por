programa
{
	
	funcao inicio()
	{
		cadeia alunos [3]
		inteiro notas [] = {0, 0 , 0}
		para(inteiro i = 0; i < 3; i++){
			escreva("digite o nome do aluno: ")
			leia(alunos[i])
			escreva ("digite a nota : ")
			leia (notas[i])
		}
		pula()
		escreva ("alunos\tnota")
		pula()
		para(inteiro j = 0; j < 3; j++){
			escreva(alunos [j], "\t", notas [j])
			pula()
		}
	}

	funcao pula(){
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 317; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {alunos, 6, 9, 6}-{notas, 7, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */