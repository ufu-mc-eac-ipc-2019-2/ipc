programa
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> tp
	funcao inicio()
	{
		cadeia s = "Olá Mundo"
		escreva("Original: ", s, "\n")
		
		inteiro n = tx.numero_caracteres(s)
		escreva("Tamanho: ", n, "\n")
		
		cadeia s_M = tx.caixa_alta(s)
		escreva("Maiúsculas: ", s_M, "\n")
		
		cadeia s_m = tx.caixa_baixa(s)
		escreva("Minúsculas: ", s_m, "\n")
		
		cadeia t = "M"
		inteiro p = tx.posicao_texto(t, s, 0)
		escreva("Posição do \"", t, "\": ", p, "\n")
		
		cadeia s_duplo = s + s
		escreva( s_duplo, "\n" )
		
		cadeia s_i = tp.inteiro_para_cadeia(10,2)
		escreva(s_i, "\n")
		
		caracter c
		p = 5
		c = tx.obter_caracter(s, p)
		escreva("Caracter na posição ", p, ": ", c, "\n")
		
		logico l = tp.cadeia_para_logico("falso")
		se (l == verdadeiro) {
			escreva("Reconheceu verdadeiro! Valor em l: ", l, "\n")
		} senao {
			escreva("Reconheceu falso! Valor em l: ", l, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 594; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */