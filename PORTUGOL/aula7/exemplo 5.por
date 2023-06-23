programa
{
	
	funcao inicio()
	{
		cadeia tarefas [31][24] 
		cadeia input = " "
		cadeia tarefa
		inteiro dia
		inteiro hora
		enquanto (input != "N"){
			escreva ("que horas ?: ")
				leia(hora)
				escreva ("que dia?: ")
				leia(dia)
				dia = dia - 1
				escreva ("que tarefa ?: ")
				leia(tarefas[dia][hora])
				escreva ("Continuar ?: ")
				leia(input)
		}
		para (inteiro l = 0; l < 31; l++){
				para(inteiro c = 0; c < 24; c++){
					se(tarefas[l][c] != ""){
						escreva ("Dia : ", (l + 1), " Hora: ", c, " : ", tarefas[l][c], "\n")
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
 * @POSICAO-CURSOR = 507; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {tarefas, 6, 9, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */