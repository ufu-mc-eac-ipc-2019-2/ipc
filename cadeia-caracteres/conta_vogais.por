programa
{
	inclua biblioteca Texto --> tx
	funcao inicio()
	{
		cadeia frase
		inteiro i, n 
		
		escreva("Digite um frase: ")
		leia(frase)
		
		n = tx.numero_caracteres(frase)

		caracter c
		inteiro c_M = 0, c_m = 0
		para( i=0; i<n; i++ ) {
			c = tx.obter_caracter(frase, i)
			escreva("[",i,"]:", c,"\n")
			se (c == 'A' ou c == 'E' ou c == 'I' ou c == 'O' ou c == 'U') {
				c_M++
			}
			se (c == 'a' ou c == 'e' ou c == 'i' ou c == 'o' ou c == 'u') {
				c_m++
			}
		}
		escreva("Número de vogais maiúsculas: ", c_M, "\n")
		escreva("Número de vogais minúsculas: ", c_m, "\n")
		escreva("Total de vogais: ", c_M + c_m, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 179; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */