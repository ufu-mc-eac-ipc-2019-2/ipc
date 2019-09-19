programa
{
	funcao inicio()
	{
		real salario_inicial, bonificacao, auxilio_escolar, salario_final
		escreva("Entre com o salário inicial:\n")
		leia(salario_inicial)
		se (salario_inicial <= 500) {
			bonificacao = 0.05*salario_inicial
		} senao se (salario_inicial > 500 e salario_inicial <= 1200){
			bonificacao = 0.12*salario_inicial
		} senao {
			bonificacao = 0.0
		}
		se (salario_inicial <= 600) {
			auxilio_escolar = 150.0
		} senao {
			auxilio_escolar = 100.0
		}
		escreva("A bonificação é: ", bonificacao, "\n")
		escreva("O auxílio escolar é: ", auxilio_escolar, "\n")
		salario_final = salario_inicial + bonificacao + auxilio_escolar
		escreva("O salário final é: ", salario_final, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 651; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */