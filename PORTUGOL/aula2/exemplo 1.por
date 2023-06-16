programa
{
	
	funcao inicio()
	{
		inteiro tempo
		escreva("tempo: ")
		leia(tempo)
		inteiro horas = tempo/3600
		inteiro minutos = (tempo % 3600) / 60
		inteiro segundos = (tempo % 60)
		escreva ("horas: ", horas," minutos: ", minutos, " segundos: ",segundos)
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 270; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {minutos, 10, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */