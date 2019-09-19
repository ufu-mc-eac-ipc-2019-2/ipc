programa
{
	inteiro n, i, j, valor
	real fat
	funcao inicio()
	{
		escreva("Informe a quantidade de números a ser lida: \n")
		leia(n)

		para (i=1; i<=n; i++) {
			escreva(i, ") Informe o valor: " )
			leia(valor)
			fat = 1.0
			para (j=1; j<=valor; j++){
				fat = j*fat
			}
			escreva("O fatorial de ", valor, " é: ", fat, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 337; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */