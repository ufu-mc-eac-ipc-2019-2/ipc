programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro opcao
		real valor1, valor2, soma, raiz
		escreva("Menu de opções\n")
		escreva("1. Somar dois números\n")
		escreva("2. Calcular a raíz quadrada de um número\n\n")
		escreva("Entre com uma opção:")
		leia(opcao)

		escolha (opcao)
		{
			caso 1:
				escreva("Entre com o primeiro valor:")
				leia(valor1)
				escreva("Entre com o segundo valor:")
				leia(valor2)
				soma = valor1+valor2
				escreva("A soma de ", valor1, " com ", valor2, " é ", soma)
				pare
			caso 2:
				escreva("Entre com o valor:")
				leia(valor1)
				raiz = mat.raiz(valor1, 2.0)
				escreva("A raiz de ", valor1, " é ", raiz)
				pare
			caso contrario:
				escreva("Opção inválida")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 573; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */