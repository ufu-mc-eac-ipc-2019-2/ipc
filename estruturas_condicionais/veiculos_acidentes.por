programa
{
	funcao inicio()
	{
		// Variáveis para dados de entrada
		inteiro codigo, veiculos, acidentes, i, numero_cidades
		numero_cidades = 3
		// Máximo de acidentes
		inteiro maximo_acidentes, codigo_maximo_acidentes
		maximo_acidentes = -1
		codigo_maximo_acidentes = -1
		// Mínimo de acidentes
		inteiro minimo_acidentes, codigo_minimo_acidentes
		minimo_acidentes = 0
		codigo_minimo_acidentes = -1
		// Média de veículos
		inteiro soma_veiculos = 0
		real media_veiculos
		// Média de acidentes
		real soma_acidentes = 0.0
		real media_acidentes
		inteiro contador_cidades = 0
		// Entrada e processamento de dados
		para (i = 1; i <= numero_cidades; i++) {
			escreva("Informe os dados da cidade ", i, ":")
			escreva("\nCódigo: ")
			leia(codigo)
			escreva("Número de Veículos de Passeio: ")
			leia(veiculos)
			escreva("Número de Acidentes: ")
			leia(acidentes)
			// Atualiza máximo de acidentes
			se (acidentes > maximo_acidentes) {
				maximo_acidentes = acidentes
				codigo_maximo_acidentes = codigo
			}
			se (codigo_minimo_acidentes == -1) { // primeira passada
				minimo_acidentes = acidentes
				codigo_minimo_acidentes = codigo
			}
			// Atualiza mínimo de acidentes
			senao se (acidentes < minimo_acidentes) { 
				minimo_acidentes = acidentes
				codigo_minimo_acidentes = codigo
			}
			// Soma de veículos (para média)
			soma_veiculos = soma_veiculos + veiculos
			// Soma de acidentes em cidades com menos de 2000 veículos (para média)
			se (veiculos <= 2000) {
				soma_acidentes = soma_acidentes + acidentes
				contador_cidades = contador_cidades + 1
			}
		}
		// Mostrar máximo e mínimo de acidentes encontrados
		escreva("\nCidade ", codigo_maximo_acidentes, " tem mais acidentes: ", maximo_acidentes )
		escreva("\nCidade ", codigo_minimo_acidentes, " tem menos acidentes: ", minimo_acidentes )
		// Calcula média de veículos
		media_veiculos = soma_veiculos/(1.0*numero_cidades)
		// Calcula média de acidentes 
		escreva("\nO número médio de veículos nas ", numero_cidades," cidades é: ", media_veiculos )
		se (contador_cidades > 0) {
			media_acidentes = soma_acidentes/contador_cidades
			escreva("\nMédia de acidentes em cidades com menos de 2000 veículos: ", media_acidentes )
		} senao {
			escreva("\nNenhuma cidade com menos de 2000 veículos");
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1958; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */