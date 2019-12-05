arquivo = open("alunos.dat")

print("{}".format(80*"="))
print("{:5s}|{:20s}|{:35s}|{:7s}|{:7s}".format("Num.", "Nome", "Curso", "N1", "N2" ))
for linha in arquivo:
    (numero, nome, curso, nota_1, nota_2) = linha.split(",")
    if len(nome) > 20:
        nome = nome[0:17] + "..."
    if len(curso) > 35:
        curso = curso[0:32] + "..."
    nota_1 = float(nota_1)
    nota_2 = float(nota_2)
    print( "{:5}|{:20s}|{:35s}|{:7.2f}|{:7.2f}".format(numero, nome, curso, nota_1, nota_2) )

arquivo.close()
