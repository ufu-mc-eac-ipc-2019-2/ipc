programa
{
	funcao inicio()
	{
		inteiro tempo_segundos

		escreva("Informe o tempo em segundos: ")
		leia(tempo_segundos)

		converte(tempo_segundos)
	}

	funcao converte(inteiro ts) {
		inteiro horas, minutos, segundos

		horas = ts/3600
		minutos = (ts%3600)/60
		segundos = (ts%3600)%60

		escreva("Convertido: ", horas, "h ", minutos, "m ", segundos, "s")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 154; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */