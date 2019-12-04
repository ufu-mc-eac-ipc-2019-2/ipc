arquivo_resultados = open("resultados_2.txt")

i = 0
for linha in arquivo_resultados:
    ( nome, pontuacao ) = linha.split()
    if i == 0:
        pontuacao_maior = float(pontuacao)
        nome_maior = nome
    elif float(pontuacao) > pontuacao_maior:
        pontuacao_maior = float(pontuacao)
        nome_maior = nome
    i = i+1

arquivo_resultados.close()

print( "Maior: {} com pontuação {:.2f}".format( nome_maior, pontuacao_maior ) )
