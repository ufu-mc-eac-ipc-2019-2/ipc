#include <stdio.h>
#include <ctype.h>
#include <stdbool.h>

struct Pessoa {
  float salario;
  int idade;
  char sexo;
  int numero_filhos;
};

void main() {
  struct Pessoa p;
  bool fim_coleta = false;
  int participantes = 0;
  int soma_idade_m700 = 0;
  int cont_mulheres = 0;
  float soma_salario = 0;
  int soma_filhos = 0;
  float maior_salario;
  int menor_idade;

  do {
    printf("Informe os dados para o participante %d [0 para finalizar]\n", (participantes+1));

    printf("Idade: ");
    scanf("%d", &p.idade);
    if (p.idade == 0) {
      fim_coleta = true;
      continue;
    }

    char sexo;
    do {
      printf("Sexo [M/F]: ");
      scanf("%s", &sexo);
      sexo = toupper(sexo);
      if (sexo != 'M' && sexo != 'F') {
        printf("\nEntrada inválida!\n");
      }
    } while ( sexo != 'M' && sexo != 'F' );
    p.sexo = sexo;

    printf("Número filhos: ");
    scanf("%d", &p.numero_filhos);
    soma_filhos += p.numero_filhos;

    printf("Salário: ");
    scanf("%f", &p.salario);
    if (p.sexo == 'F' && p.salario < 700) {
      soma_idade_m700 += p.idade;
      cont_mulheres++;
    }
    soma_salario += p.salario;
    if (participantes == 0) { // Primeiro cadastro
      maior_salario = p.salario;
      menor_idade = p.idade;
    } else {
      if (p.salario > maior_salario) {
        maior_salario = p.salario;
      }
      if (p.idade < menor_idade) {
        menor_idade = p.idade;
      }
    }

    participantes++;
  } while (!fim_coleta);

  if (cont_mulheres > 0) {
    printf("Média idade mulheres com salário menor que R$ 700: %.2f\n", (soma_idade_m700/(float)cont_mulheres));
  } else {
    printf("Não há mulheres com salário menor que R$ 700!");
  }
  printf("Média salário: %.2f\n", (soma_salario/(float)participantes));
  printf("Média número de filhos: %.2f\n", (soma_filhos/(float)participantes));
  printf("Maior salário: %.2f\n", maior_salario);
  printf("Menor idade: %d\n", menor_idade);
  printf("Total de participantes: %d\n", participantes);

}
