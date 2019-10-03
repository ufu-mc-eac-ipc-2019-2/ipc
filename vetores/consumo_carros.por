programa
{
	funcao inicio()
	{
		cadeia carros[5]
		real consumos[5], consumo_1000km
		inteiro i, i_mais_economico
		inteiro n_carros = 5
		
		para( i = 0; i<n_carros ; i++ ) {
			escreva( "Informe o nome do carro ", i, ": " )
			leia( carros[i] )
			escreva( "Informe o consumo do carro ", i, ": " )
			leia( consumos[i] )
		}
		i_mais_economico = 0
		para( i=1; i<n_carros; i++ ) {
			//se (i==0) {
			//	i_mais_economico = 0
			//} senao {
				se (consumos[i] > consumos[i_mais_economico]) {
					i_mais_economico = i
				}
			//}
		}

		escreva(" Carro mais economico: ", carros[i_mais_economico], "\n" )
		escreva(" Consumo: ", consumos[i_mais_economico], " Km/l" )

		escreva( " Consumo para 1000Km:\n" )
		para( i = 0; i<n_carros; i++ ) {
			consumo_1000km = 1000.0/consumos[i]
			escreva( carros[i], ":", consumo_1000km, "\n" ) 
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 137; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */