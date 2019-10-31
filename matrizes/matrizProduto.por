programa
{
	funcao inicio()
	{
		inteiro m[10][20], s[10], r[10][20], i, j

		// Preencher matriz de entrada
		para( i=0; i<10; i++ ){
			para( j=0; j<20; j++ ){
				escreva("M[",i,",",j,"]:")
				leia(m[i][j])
			}
		}

		// Calcular vetor soma de linhas
		para( i=0; i<10; i++ ){
			para( j=0; j<20; j++ ){
				s[i] = s[i] + m[i][j]
			}
		}

		// Calcular matriz resultante
		para( i=0; i<10; i++ ){
			para( j=0; j<20; j++ ){
				r[i][j] = s[i] * m[i][j]
				escreva("\nR[",i,",",j,"]:", r[i][j])
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 421; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */