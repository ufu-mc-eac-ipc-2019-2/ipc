arquivo_resultados = open("resultados_1.txt")

i = 0
for linha in arquivo_resultados:
    if i == 0:
        pontuacao_maior = float(linha)
    elif float(linha) > pontuacao_maior:
        pontuacao_maior = float(linha)
    i = i+1

arquivo_resultados.close()

print( "Maior pontuação {:.2f}".format( pontuacao_maior ) )
