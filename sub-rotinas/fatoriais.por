programa
{
	funcao inicio() {
		escreva("Calcula fatoriais para um vetor\n")
		
		inteiro i, a[10], b[10]
		escreva("Informe os valores para o vetor A:\n")
		para( i=0; i<10; i++ ) {
			escreva("[", i, "]:")
			leia(a[i])
		}
		
		fatoriais( a, b )

		escreva("\nVetor B com fatoriais:\n")
		para( i=0; i<10; i++ ) {
			escreva("[", i, "]:", b[i], "\n" )
		}
	}

	funcao fatoriais(inteiro a[], inteiro b[]) {
		inteiro i
		para( i=0; i<10; i++ ){
			b[i] = fatorial(a[i])
		}
	}
	
	funcao inteiro fatorial(inteiro n) {
		se (n < 1) {
			retorne 1
		}
		inteiro i, f
		f = 1
		para (i=1; i<=n; i++) {
			f = f*i
		}
		retorne f
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 258; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */