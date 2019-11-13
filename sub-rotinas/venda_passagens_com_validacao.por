programa
{
	inteiro total_poltronas = 24 // Variável global, apenas para facilitar os testes com menos poltronas
	inteiro num_min = 1 // número mínimo para as poltronas
	inteiro num_max = total_poltronas // número máximo para as poltronas
	
	funcao inicio()
	{
		inteiro opcao, janela[24], corredor[24]
		caracter tipo_poltrona
		logico venda_efetivada

		escreva("Fundamentos da Programação de Computadores - Cap.6 - Vetores\n")
		escreva("Problema 23 (Resolução com sub-rotinas)\n\n")
		escreva("Venda de passagens (Versão melhorada)\n")
		
		faca {
			faca {
				escreva("\nInforme a opção:\n")
				escreva("  1: Vender Passagem\n")
				escreva("  2: Mostrar mapa\n")
				escreva("  3: Encerrar\n")
				escreva("Opção: ")
				leia(opcao)
				se ( opcao <= 0 ou opcao > 3 ) {
					escreva("== Opção inválida! ==\n")
				}
			} enquanto ( opcao <= 0 ou opcao > 3 )

			escolha (opcao) {
				caso 1: // Vender passagens
					se (existePoltronaDisponivel(janela, corredor)) {
						venda_efetivada = falso
						faca {
							faca {
								escreva("Qual o tipo de poltrona? Janela (J) / Corredor (C)\n")
								escreva("Opção: ")
								leia( tipo_poltrona )
								se ( tipo_poltrona != 'C' e tipo_poltrona != 'J' ) {
									escreva("== Opção inválida! ==\n")
								}
							} enquanto( tipo_poltrona != 'C' e tipo_poltrona != 'J' )
							
							se (tipo_poltrona == 'J') { // Janela
								venda_efetivada = venderPoltrona( janela, tipo_poltrona )
							} senao { // Assumindo como Corredor
								venda_efetivada = venderPoltrona( corredor, tipo_poltrona )
							}
						} enquanto ( venda_efetivada != verdadeiro )
					} senao {
						escreva("== Ônibus lotado! ==\n")	
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
					escreva("== Programa encerrado! ==")
			}
			
		} enquanto( opcao != 3 )
	}

	funcao vazio mostrarMapa(inteiro poltronas[]) {
		inteiro i
		para( i = 0; i<total_poltronas ; i++) {
			se (poltronas[i] == 0) { // Poltrona livre
				escreva("[",i+1,"] - Livre\n")
			} senao { // Assumindo valor 1 -> ocupado
				escreva("[",i+1,"] - Ocupado\n")
			}
		}
	}

	funcao logico venderPoltrona(inteiro poltronas[], caracter tipo_poltrona) {
		logico venda_efetivada
		inteiro num_poltrona
		
		faca { // Só aceita poltronas dentro dos limites do vetor
			escreva("Informe o número da poltrona (", num_min, "-", num_max, "): ")
			leia(num_poltrona)
			se (num_poltrona < num_min ou num_poltrona > num_max) {
				escreva("Digite um valor entre ", num_min, " e ", num_max, "!\n")
			}
		} enquanto( num_poltrona < num_min ou num_poltrona > num_max )
		
		se (poltronas[num_poltrona-1] == 0) { // Poltrona livre
			poltronas[num_poltrona-1] = 1
			escreva("== Venda efetivada: poltrona[", tipo_poltrona, num_poltrona, "] ==")
			venda_efetivada = verdadeiro
		} senao { // Poltrona ocupada
			escreva("Poltrona ocupada!\n")
			venda_efetivada = falso
		}

		retorne venda_efetivada
	}

	funcao logico existePoltronaDisponivel(inteiro janela[], inteiro corredor[]) {
		inteiro i
		para( i = 0; i <total_poltronas; i++ ) { // Procura nas janelas
			se (janela[i] == 0) { // Poltrona livre
				retorne verdadeiro
			}
		}
		para( i = 0; i <total_poltronas; i++ ) { // Procura no corredor
			se (corredor[i] == 0) { // Poltrona livre
				retorne verdadeiro
			}
		}
		retorne falso // Só chegará neste ponto caso não encontre nenhuma poltrona disponível
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 322; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */