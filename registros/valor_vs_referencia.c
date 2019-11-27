#include <stdio.h>

struct Pessoa {
  int idade;
  int altura;
};

void nao_altera_idade(struct Pessoa p) {
  p.idade = 15;
};

void altera_idade_1(struct Pessoa *p) {
  p->idade = 15;
}

void altera_idade_2(struct Pessoa *p) {
  (*p).idade = 20;
}

void main() {
  struct Pessoa p;
  p.idade = 10;
  printf("Idade 1: %d\n", p.idade);
  nao_altera_idade(p);
  printf("Idade 2: %d\n", p.idade);
  altera_idade_1(&p);
  printf("Idade 3: %d\n", p.idade);
  altera_idade_2(&p);
  printf("Idade 4: %d\n", p.idade);
}
