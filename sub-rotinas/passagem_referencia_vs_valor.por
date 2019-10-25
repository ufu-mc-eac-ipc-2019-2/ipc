programa
{
	real PI = 3.14159265359
	funcao inicio()
	{
		escreva("Passagem por valor x referência")
		inteiro a
		escreva("\nInforme um valor inteiro: ")
		leia(a)
		escreva("\nValor original: ")
		escreva(a)
		someUmInteiroPorValor(a)
		escreva("\nValor após soma um (passagem por valor): ")
		escreva(a)
		someUmInteiroPorReferencia(a)
		escreva("\nValor após soma um (passagem por referência): ")
		escreva(a)
		
		inteiro v[3], i

		escreva("\n\nInforme os valores para o vetor:\n")
		para( i = 0; i<3; i++ ) {
			escreva( "[",i,"]: " )
			leia( v[i] )	
		}
		escreva("\nVetor original")
		escrevaVetor( v )
		someUmPorValor( v )
		escreva("\nVetor após soma um (passagem por valor): ")
		escrevaVetor( v )
		escreva("\nVetor após soma um (passagem por referência): ")
		someUmPorReferencia( v )
		escrevaVetor( v )

		inteiro j 
		real m[2][2], soma
		escreva("\n\nInforme os valores para a matriz:\n")
		para( i=0; i<2; i++ ){
			para( j=0; j<2; j++ ) {
				escreva( "[",i,",",j,"]: " )
				leia(m[i][j])
			}
		}
		soma = someMatriz(m)
		escreva( "\nA soma dos valores na matriz é: ", soma )

		escreva("\n\nMatriz original")
		escrevaMatriz(m)
		// Soma PI a matriz (variável global)
		somePI(m)
		// Imprimir matriz (usar subrotina)
		escreva("\nMatriz após somar o valor de PI")
		escrevaMatriz(m)

		escreva("\n\nIMPORTANTE:")
		escreva("\nA passagem por valor não altera o valor original para tipos primitivos:\n")
		escreva("inteiro, real, logico e caracter\n")
		escreva("\nJá a passagem por referência, usando \"&\", altera os valores originais!\n")
		5escreva("\nNo Portugol, vetores e matrizes são sempre passados por referência!\n")
		escreva("(Mesmo que não seja usado o símbolo \"&\")") 
	}

	// Passagem por valor
	funcao someUmInteiroPorValor(inteiro x) {
		x = x+1
	}
	
	// Passagem por referência
	funcao someUmInteiroPorReferencia(inteiro &x) {
		x = x+1
	}
	
	// Passagem por referência
	funcao escrevaVetor(inteiro &vetor[]) {
		inteiro i
		para( i=0; i<3; i++ ) {
			escreva( "\n[",i,"]: ", vetor[i] )
		}
	}

	// Passagem por valor
	funcao someUmPorValor(inteiro vetor[]) {
		inteiro i
		para( i=0; i<3; i++ ) {
			vetor[i] = vetor[i] + 1
		}
	}

	// Passagem por referência
	funcao someUmPorReferencia(inteiro &vetor[]) {
		inteiro i
		para( i=0; i<3; i++ ) {
			vetor[i] = vetor[i] + 1
		}
	}

	// Passagem por valor
	funcao escrevaMatriz(real m[][]) {
		inteiro i, j
		para( i=0; i<2; i++ ){
			para( j=0; j<2; j++ ) {
				escreva( "\n[",i,",",j,"]: ", m[i][j] )
			}
		}
	}
	
	// Passagem por valor
	funcao real someMatriz(real m[][]) {
		inteiro i, j
		real soma
		soma = 0.0
		para( i=0; i<2; i++ ) {
			para( j=0; j<2; j++ ) {
				soma = soma + m[i][j]
			}
		}
		retorne soma
	}

	funcao somePI(real m[][]) {
		inteiro i, j
		para( i=0; i<2; i++ ) {
			para( j=0; j<2; j++ ) {
				m[i][j] = PI + m[i][j]
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 52; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */