programa
{
	
	funcao inicio()
	{
	real filhos
	real salario
	real somadorSal = 0.0
	real maiorSal = 0.0
	real somadorFil = 0.0
	real mediasal = 0.0
	real mediafil = 0.0
	real contadorsal = 0.0
			para (inteiro x = 0; x < 3; x++){
				escreva("salario: ")
				leia (salario)
				escreva("filhos: ")
				leia(filhos)
				somadorSal += salario
				somadorFil += filhos
				mediasal = somadorSal / 3
				mediafil = somadorFil / 3
				se(salario > maiorSal){
					maiorSal = salario
				}
				se(salario >= 100.00){
					contadorsal++
				} 
				
			}escreva( mediasal,"\n", mediafil,"\n", maiorSal,"\n", (100 * contadorsal) / 3 )
	} 
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 635; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {maiorSal, 9, 6, 8}-{contadorsal, 13, 6, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */