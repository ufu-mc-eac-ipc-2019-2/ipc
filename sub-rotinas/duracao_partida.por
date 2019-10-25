programa
{
	funcao inicio()
	{
		inteiro hora_i, hora_f, minuto_i, minuto_f, duracao
		escreva("Cálculo da duração de uma partida\n")
		escreva( "Hora inicial:" )
		leia(hora_i)
		escreva( "Minuto inicial:" )
		leia(minuto_i)
		escreva( "Hora final:" )
		leia(hora_f)
		escreva( "Minuto final:" )
		leia(minuto_f)
		duracao = calcularDuracao(hora_i, minuto_i,hora_f,minuto_f)
		escreva("Duração da partida: ", duracao, " minutos")
	}

	funcao inteiro calcularDuracao(inteiro hi, inteiro mi, inteiro hf, inteiro mf) {
		se (hf<hi) {
			hf = hf + 24
		}
		se (mf<mi) {
			mf = mf + 60
			hf = hf - 1
		}
		retorne (hf-hi)*60 + mf - mi
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 407; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */