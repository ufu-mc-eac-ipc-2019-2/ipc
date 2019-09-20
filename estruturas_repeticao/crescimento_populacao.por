programa
{
	
	funcao inicio()
	{
		real populacao_A
		// Entrada e validação da população menor
		faca {
			escreva( "Informe a população menor (A): " )
			leia(populacao_A) // = 80000.0
		} enquanto ( populacao_A <= 0 )
		
		real populacao_B //= 200000.0
		// Entrada e validação da população maior
		faca {
			escreva( "Informe a população maior (B): " )
			leia(populacao_B) 
		} enquanto( populacao_B <= 0 ou populacao_B <= populacao_A )
		
		//escreva( "População A: ", populacao_A )
		//escreva( "\nPopulação B: ", populacao_B )
		
		inteiro anos = 0
		
		real taxa_A //= 0.03
		// Entrada e validação da taxa de crescimento de A
		faca {
			escreva( "Informe a taxa de crescimento para a população A: " )
			leia( taxa_A )
		} enquanto ( taxa_A <= 0 )
		
		real taxa_B //= 0.015
		// Entrada e validação da taxa de crescimento de B
		// A população maior (B) deve crescer menos do que a menor (A)
		faca {
			escreva( "Informe a taxa de crescimento para a população B: " )
			leia( taxa_B )
		} enquanto ( taxa_B <= 0 ou taxa_B > taxa_A )

		// Atualizar as populações, ano a ano
		enquanto ( populacao_A < populacao_B ) {
			populacao_A = populacao_A * ( 1 + taxa_A )
			populacao_B = populacao_B * ( 1 + taxa_B )
			anos = anos + 1
		}

		// Mostra a situação quando A supera B
		escreva( "\nPopulação A: ", populacao_A )
		escreva( "\nPopulação B: ", populacao_B )
		escreva( "\nA população A será maior que B em ", anos, " anos." )
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 903; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */