programa
{
	
	funcao inicio()
	{
		real salario_carlos
		escreva( "Informe o salário de Carlos: " )
		leia( salario_carlos )
		real salario_joao = salario_carlos/3.0
		escreva( "Salário inicial de Carlos: ", salario_carlos )
		escreva( "\nSalário inicial de João: ", salario_joao )
		inteiro meses = 0
		enquanto ( salario_carlos > salario_joao ) {
			salario_carlos = salario_carlos * ( 1 + 0.02 )
			salario_joao = salario_joao * ( 1 + 0.05 )
			meses = meses + 1
		}
		escreva( "\nSalário final de Carlos: ", salario_carlos )
		escreva( "\nSalário final de João: ", salario_joao )
		escreva( "\nMeses para o salário de João superar o de Carlos: ", meses )
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 469; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */