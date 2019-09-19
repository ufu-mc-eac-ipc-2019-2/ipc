programa
{
	inteiro n, i, j
	real s, fat
	funcao inicio()
	{
		escreva("Informe o valor de n: ")
		leia(n)
		s = 1.0
		para(i = 1; i <= n; i++) {
			// Cálculo do fatorial de i
			fat = 1.0
			para (j = 1; j <= i; j++) {
				fat = j*fat
			}			
			// Fim do cálculo do fatorial
			s = s+1/fat
		}
		escreva("O valor de s é: ", s)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 306; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */