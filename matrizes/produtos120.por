programa
{	
	funcao inicio()
	{
		cadeia lojas[8]
		cadeia produtos[4]
		real precos[8][4]
		inteiro i, j

		para( i=0; i<8; i++ ) {
			escreva("Loja ", i, ":")
			leia(lojas[i])
		}

		para( i=0; i<4; i++ ) {
			escreva("Produto ", i, ":" )
			leia(produtos[i])
		}

		para( i=0; i<8; i++ ) {
			para( j=0; j<4; j++ ) {
				escreva("Loja ", lojas[i], " Produto ", produtos[j], " Preço:" )
				leia(precos[i][j])
			}
		}

		para( i=0; i<8; i++ ) {
			para( j=0; j<4; j++ ) {
				se (precos[i][j] <= 120) {
					escreva("\nLoja ", lojas[i], " Produto ", produtos[j] )
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
 * @POSICAO-CURSOR = 582; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */