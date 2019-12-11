programa
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> tp

	funcao inicio() {
		cadeia frase
		cadeia frase_nova = ""
		inteiro i, n 
		
		escreva("Digite um frase: ")
		leia(frase)
		
		n = tx.numero_caracteres(frase)

		cadeia s
		caracter c
		para( i=0; i<n; i++ ) {
			c = tx.obter_caracter(frase, i)
			s = tp.caracter_para_cadeia(c)
			
			se (c != ' ') {
				s = tx.caixa_alta(s)					
				frase_nova = frase_nova + s

				enquanto ((i+1)<n) { // ainda existe caracteres
					i++
					c = tx.obter_caracter(frase, i)
					se (c == ' ') {
						s = tp.caracter_para_cadeia(c)
						frase_nova = frase_nova + s
						pare	
					} senao {
						s = tp.caracter_para_cadeia(c)
						frase_nova = frase_nova + s
					}
				}
			} senao {
				frase_nova = frase_nova + s
			}
				
		}
		escreva("Frase nova: ", frase_nova, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 787; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */