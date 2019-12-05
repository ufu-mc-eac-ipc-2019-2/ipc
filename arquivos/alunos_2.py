def menu_opcoes():
    opcao = ""
    while opcao == "":
        print("Cadastro de alunos")
        print("1. Cadastrar aluno.")
        print("2. Sair.")
        print("Informe a opção: ", end="")
        opcao = int(input())
        if opcao < 1 or opcao > 2:
            opcao = ""
            print( "Opção inválida!" )
    return opcao

def imprime_aluno(numero, nome, curso, nota_1, nota_2):
    if len(nome) > 20:
        nome = nome[0:17] + "..."
    if len(curso) > 35:
        curso = curso[0:32] + "..."
    nota_1 = float(nota_1)
    nota_2 = float(nota_2)
    print( "{:5}|{:20s}|{:35s}|{:7.2f}|{:7.2f}".format(numero, nome, curso, nota_1, nota_2) )

def imprime_todos(nome_arquivo):
    arquivo = open(nome_arquivo)
    print("{}".format(80*"="))
    print("{:5s}|{:20s}|{:35s}|{:7s}|{:7s}".format("Num.", "Nome", "Curso", "N1", "N2" ))
    for linha in arquivo:
        (numero, nome, curso, nota_1, nota_2) = linha.split(",")
        imprime_aluno(numero, nome, curso, nota_1, nota_2)
    arquivo.close()

def numero_ja_cadastrado(nome_arquivo, novo_numero):
    arquivo = open(nome_arquivo)
    for linha in arquivo:
        (numero, _, _, _, _) = linha.split(",")
        if novo_numero == int(numero):
            return True
    arquivo.close()
    return False

def gravar_aluno(nome_arquivo, aluno):
    arquivo = open(nome_arquivo, "a")
    (numero, nome, curso, n1, n2) = aluno
    arquivo.write("{},{},{},{},{}".format(numero, nome, curso, n1, n2))
    arquivo.close()

def cadastrar_aluno(nome_arquivo):
    print("Informe os dados do aluno")
    numero = ""
    while numero == "":
        print("Número: ", end="")
        numero=int(input())
        if (numero_ja_cadastrado(nome_arquivo, numero)):
            print("Número já cadastrado!")
            numero = ""
    print("Nome: ", end="")
    nome = input()
    print("Curso: ", end="")
    curso = input()
    print("Nota 1: ", end="")
    n1 = float(input())
    print("Nota 2: ", end="")
    n2 = float(input())
    gravar_aluno(nome_arquivo, (numero, nome, curso, n1, n2))

while True:
    imprime_todos("alunos.dat")
    opcao = menu_opcoes()
    if opcao == 1:
        cadastrar_aluno("alunos.dat")
    elif opcao == 2:
        print( "Programa finalizado!" )
        break
    else:
        print("Opção inválida!")
