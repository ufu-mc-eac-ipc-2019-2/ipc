programa
{
	funcao inicio()
	{
		real a, b, c
		escreva("Informe o 1o lado: \n")
		leia(a)
		escreva("Informe o 2o lado: \n")
		leia(b)
		escreva("Informe o 3o lado: \n")
		leia(c)

		se ( ((a+b) > c) e ((a+c) > b) e ((b+c) > a) ) {
			se ( a == b e b == c ) {
				escreva("Triângulo equilátero")
			} senao se ( (a==b) ou (b==c) ou (a==c) ) {
				escreva("Triângulo isósceles")
			} senao {
				escreva("Triângulo escaleno")
			}
		} senao {
			escreva("Não é triângulo válido")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 378; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */