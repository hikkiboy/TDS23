programa
{ 
  	inteiro estoque [] = {10,10,10,10,10,10,10,10,10,10} 
  	cadeia codigo[] = {"GRP0X-01","GRP0X-02","GRP0X-03","GRP0X-04","GRP0X-05","GRP0X-06","GRP0X-07","GRP0X-08","GRP0X-09","GRP0X-10"} 
     cadeia produto[] = {"BONÉ             ","CALÇA             ","BERMUDA         ","BATA             ","CAMISA             ","SAIA RODADA        ","SAIA STYLE       ","MACACÃO AFRO    ","CAMISETA TEMATICA","CALÇA SOCIAL AFRO"} 
     real valor [] = {100.00,150.00,90.00,140.00,150.00,90.00,90.00,150.00,100.00,95.50}   
     cadeia carrinho[] = {"a","","","","","","","","","","",""} 
         funcao inicio() 
         { 
                 cadeia input 
  
                 escreva ("Loja foda \n") 
                 escreva ("slogan foda \n") 
                 escreva ("quer comprar com nois ?: ") 
                 leia (input) 
  
                 se (input == "S"){ 
                         telaprimaria() 
                 }senao{ 
                         escreva ("xau") 
                 } 
  
  
         } 
         funcao telaprimaria (){ 
                 escreva ("Loja foda \n") 
                 escreva ("slogan foda \n") 
                 cadeia cod 
                 inteiro qntd 
                 cadeia conti = ""
                 inteiro qntdpos 
  
                 para(inteiro j = 0; j < 10; j++){ 
                         escreva(codigo[j], "\t") 
                         escreva(produto[j], "\t" ) 
                         escreva("Valor: ", valor[j], "\t") 
                         escreva("Estoque: ", estoque[j], "\t") 
                         escreva("Carrinho: ",carrinho[j], "\t") 
                         escreva("\n") 
                 } 
  
                 escreva ("Selecione o codigo do produto: ") 
                 leia(cod) 
                 para(inteiro y = 0; y <= 9; y++) 
                 { 
                         se(codigo[y] == cod) 
                         { 
                          escreva("Codigo: ",codigo[y]," Produto: ",produto[y]," Estoque: ",estoque[y], "\n")
                          escreva ("Quantos vc quer ???????????????? : ")
                          leia(qntd)
                          qntdpos = estoque[y] - qntd
                          estoque[y] = qntdpos
                          escreva ("quer comprar mais ou ir de velozes e gulosos???????????? ")
                          leia(conti)	
                         }se (conti == "Comprar" ){
                         	telaprimaria()
                         }
                         senao se(conti == "Carinho" ){
                         	carrinhos(carrinho[y])
                         }
  					
                 } 
  
  
         } 
  		funcao carrinhos (cadeia carrinhoss){
  			escreva(carrinhoss)
  		}
         } 
  
  
 /* $$$ Portugol Studio $$$  
  *  
  * Esta seção do arquivo guarda informações do Portugol Studio. 
  * Você pode apagá-la se estiver utilizando outro editor. 
  *  
  * @POSICAO-CURSOR = 1348;  
  * @PONTOS-DE-PARADA = ; 
  * @SIMBOLOS-INSPECIONADOS = ; 
  * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio; 
  * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao; 
  */

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2679; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {carrinhoss, 66, 29, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */