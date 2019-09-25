programa
{
	funcao inicio()
	{
		real num[10]
		inteiro i, j
		logico achou

		// Leitura dos valores e armazenamento no vetor "num"
		para( i = 0; i <= 9; i++ ) {
			escreva( "Informe o valor ", i+1,": " )
			leia( num[i] )
		}

		// Verificação de quais valores informados são maiores que 50
		achou = falso
		para( i = 0; i < 10; i++ ) {
			se ( num[i] > 50 ) {
				achou = verdadeiro
				escreva( "\nValor maior que 50 em ", i+1, ": ", num[i] )
			}
		}
		se ( achou == falso ) {
			escreva("\nNenhum valor maior que 50!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 293; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */