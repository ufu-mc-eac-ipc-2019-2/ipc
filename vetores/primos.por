programa
{
	funcao inicio()
	{
		inteiro primos[9], i, j, cont, resto

		// Leitura dos valores e armazenamento no vetor "primos"
		para( i = 0; i < 9; i++ ) {
			escreva( "Informe o valor ", i+1,": " )
			leia( primos[i] )
		}

		// Verificação de quais valores informados são primos
		para( i = 0; i < 9; i++ ) {
			// A partir de 1, conta por quantos números o valor
			// na posição "i" é divisível
			cont = 0
			para( j = 1; j <= primos[i]; j++ ) {
				resto = primos[i] % j
				se ( resto == 0 ) {
					cont = cont + 1
				}
			}
			// Números primos são divisíveis apenas por um e por si mesmo!
			se ( cont <= 2 ) {
				escreva( "\nValor ", primos[i], " na posição ", i+1, " é primo!" )
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 613; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */