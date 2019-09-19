programa
{
	real salario, percentual
	inteiro ano
	funcao inicio()
	{
		salario = 1000.0
		ano = 2005
		escreva("Salário em ", ano, ":", salario, "\n" )
		ano = ano + 1 // 2006
		percentual = 0.015 // 1.5/100
		salario = salario*(percentual + 1) // salario + salario*percentual
		escreva("Salário em ", ano, ":", salario, "\n" )
		para (ano = 2007; ano <= 2019; ano++) {
			percentual = 0.015 * 2
			salario = salario*(percentual + 1)
			escreva("Salário em ", ano, ":", salario, "\n" )
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 88; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */