programa
{
	funcao inicio()
	{
		inteiro x, y, s
		escreva("Soma valores no intervalo entre \"a\" e \"b\"\n")
		escreva("Valor de \"a\": ")
		leia(x)
		escreva("Valor de \"b\": ")
		leia(y)
		s = somaEntreDois(x,y)
		escreva("A soma é: ", s)
	}

	funcao inteiro somaEntreDois(inteiro a, inteiro b){
		inteiro soma, i
		// Se a > b, inverte valores
		se (a > b) {
			inteiro aux = a
			a = b
			b = aux
		}
		// Soma valores entre a e b
		soma = 0
		para( i=a; i<=b; i++) {
			soma = soma + i
		}
		retorne soma
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 169; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */