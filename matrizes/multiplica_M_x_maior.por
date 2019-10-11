programa
{
	funcao inicio()
	{
		inteiro m[2][2], r[2][2], maior, i, j
		// Preenchendo a matriz
		escreva( "Informe os valores para a matriz M (2x2):\n" )
		para( i=0; i<2; i++ ) {
			para( j=0; j<2; j++) {
				escreva( "Valor [",i,",",j,"]:" )
				leia(m[i][j])
			}
		}
		// Encontrar o maior valor
		maior = 0
		para( i=0; i<2; i++ ) {
			para( j=0; j<2; j++) {
				se (i==0 e j==0) {
					maior = m[i][j]
				} senao se ( m[i][j] > maior ) {
					maior = m[i][j]
				}
			}
		}
		escreva( "\nMaior: ", maior )
		// Gerar matriz R com a multiplicação de M pelo maior
		escreva( "\nMatriz Resultante R = M * maior" )
		para( i=0; i<2; i++ ) {
			para( j=0; j<2; j++) {
				r[i][j] = m[i][j]*maior
				escreva( "\nValor [",i,",",j,"]:", r[i][j] )
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 225; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */