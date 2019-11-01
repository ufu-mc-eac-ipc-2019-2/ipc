programa
{
	funcao inicio()
	{
		inteiro n
		real s
		escreva("Cálculo da sequência:\n S = 1 + 1/1! + 1/2! + ... + 1/N!\n")
		faca {
			escreva("\nInforme o valor de N: ")
			leia(n)
			se (n <= 0) {
				escreva("\"N\" deve ser maior que zero!\n")
			}
		} enquanto( n<=0 )
		s = sequencia(n)
		escreva("O valor de S é: ", s)
	}

	funcao real sequencia(inteiro n) {
		inteiro i
		real s
		s = 1.0
		para (i=1; i<=n; i++) {
			s = s + 1.0/fatorial(i)
		}
		retorne s
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
 * @POSICAO-CURSOR = 562; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */