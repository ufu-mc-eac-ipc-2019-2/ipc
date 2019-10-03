programa
{
	funcao inicio()
	{
		cadeia item[10]
		real unitario[10], total, geral, comissao
		inteiro qtd_vendida[10], i, num_items, i_mais_vendido
		num_items = 10
		
		para( i=0; i<num_items; i++ ) {
			escreva( "Nome item ", i, ": ")
			leia(item[i])
			escreva( "Valor unitário ", i, ": " )
			leia(unitario[i])
			escreva( "Quantidade vendida ", i, ": " )
			leia(qtd_vendida[i])
		}

		geral = 0.0
		i_mais_vendido = 0
		para( i=0; i<num_items; i++ ) {
			total = unitario[i]*qtd_vendida[i]
			escreva( "Total ", item[i], ": ", total, "\n" )
			geral = geral + total

			// Mais vendido
			se ( qtd_vendida[i] > qtd_vendida[i_mais_vendido] ) {
				i_mais_vendido = i
			}
		}
		escreva( "Valor geral de vendas : ", geral , "\n")
		comissao = geral * 0.05
		escreva( "Comissão : ", comissao , "\n")
		escreva( "Mais vendido: ", item[i_mais_vendido], " (", qtd_vendida[i_mais_vendido], ")" )
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 165; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */