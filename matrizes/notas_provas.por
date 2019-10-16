programa
{	
	funcao inicio()
	{
		inteiro num_alunos = 10
		inteiro num_provas = 3
		real notas[10][3]
		inteiro menor_nota[10], cont_menor[3]
		inteiro i, j, j_menor

		para( i=0; i<num_alunos; i++ ){
			para( j=0; j<3; j++ ) {
				escreva( "Nota[",i,",",j,"]:")
				leia(notas[i][j])
			}
		}

		para( i=0; i<num_alunos; i++ ){
			j_menor = 0
			para( j=1; j<3; j++ ) {
				se (notas[i][j] < notas[i][j_menor]) {
					j_menor = j
				}
			}
			menor_nota[i]=j_menor
			/*se (j_menor == 0) {
				cont_menor[0]++
			} senao se (j_menor == 1) {
				cont_menor[1]++
			} senao se (j_menor == 2) {
				cont_menor[2]++
			}*/
			cont_menor[j_menor]++ // equivale as linhas acima
		}

		para( i=0; i<num_alunos; i++ ) {
			escreva("\nMenor nota do aluno ",i,": prova ", menor_nota[i])
		}

		para( i=0; i<num_provas; i++ ) {
			escreva("\nProva ", i, " foi a menor nota ", cont_menor[i], " vezes" )
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 205; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */