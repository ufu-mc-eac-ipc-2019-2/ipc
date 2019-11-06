programa
{
	inteiro total_poltronas = 2 // Variável global, apenas para facilitar os testes com menos poltronas
	
	funcao inicio()
	{
		inteiro opcao, janela[24], corredor[24], tipo_poltrona, poltrona
		logico venda_efetivada

		escreva("Fundamentos da Programação de Computadores - Cap.6 - Vetores\n")
		escreva("Problema 23 (Resolução com sub-rotinas)\n\n")
		escreva("Venda de passagens (Versão feita em sala)\n")
		
		faca {
			escreva("\nInforme a opção:\n")
			escreva("  1: Vender Passagem\n")
			escreva("  2: Mostrar mapa\n")
			escreva("  3: Encerrar\n")
			escreva("Opção: ")
			leia(opcao)

			escolha (opcao) {
				caso 1: // Vender passagens
					se (existePoltronaDisponivel(janela, corredor)) {
						venda_efetivada = falso
						faca {
							escreva("Qual o tipo de poltrona? Janela (0) / Corredor (1)\n")
							escreva("Opção: ")
							leia( tipo_poltrona )
							se (tipo_poltrona == 0) { // Janela
								venda_efetivada = venderPoltrona( janela )
							} senao { // Corredor
								venda_efetivada = venderPoltrona( corredor )
							}
						} enquanto ( venda_efetivada != verdadeiro )
					} senao {
						escreva("Ônibus lotado!\n")	
					}
					pare
				
				caso 2: // Mostrar o mapa
					// Ver ocupação de Janelas
					escreva("Janelas\n")
					mostrarMapa(janela)
					escreva("Corredor\n")
					mostrarMapa(corredor)
					pare
					
				caso 3: // Encerrar
				caso contrario:
					escreva("Programa encerrado!")
			}
			
		} enquanto( opcao != 3 )
	}

	funcao vazio mostrarMapa( inteiro poltronas[] ) {
		inteiro i
		para( i = 0; i<total_poltronas; i++) {
			se (poltronas[i] == 0) { // Poltrona livre
				escreva("[",i,"] - livre\n")
			} senao { // Assumindo valor 1 -> ocupado
				escreva("[",i,"] - ocupado\n")
			}
		}
	}

	funcao logico venderPoltrona(inteiro poltronas[]) {
		logico venda_efetivada
		inteiro num_poltrona
		
		escreva("Informe o número da poltrona: ")
		leia(num_poltrona)
		
		se (poltronas[num_poltrona] == 0) { // Poltrona livre
			poltronas[num_poltrona] = 1
			escreva("Venda efetivada: poltrona[", num_poltrona, "]")
			venda_efetivada = verdadeiro
		} senao { // Poltrona ocupada
			escreva("Poltrona ocupada!\n")
			venda_efetivada = falso
		}

		retorne venda_efetivada
	}

	funcao logico existePoltronaDisponivel(inteiro janela[], inteiro corredor[]) {
		inteiro i
		logico poltrona_disponivel = falso
		para( i = 0; i <total_poltronas; i++ ) { // Procura nas janelas
			se (janela[i] == 0) { // Poltrona livre
				poltrona_disponivel = verdadeiro
			}
		}
		para( i = 0; i <total_poltronas; i++ ) { // Procura no corredor
			se (corredor[i] == 0) { // Poltrona livre
				poltrona_disponivel = verdadeiro
			}
		}
		retorne poltrona_disponivel
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1898; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */