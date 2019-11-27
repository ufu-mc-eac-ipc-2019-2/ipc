#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#define NUM_CONTAS 15
#define TAM_NOME 20

struct Conta {
  int numero;
  char nome[TAM_NOME];
  float saldo;
};

int menu() {
  printf("\n\n== Cadastro de contas ==\n\n");
  printf("1. Cadastrar contas.\n");
  printf("2. Visualizar todas as contas de determinado cliente.\n");
  printf("3. Excluir a conta com menor saldo.\n");
  printf("4. Sair.\n\n");
  printf("Opção: ");
  int opcao;
  scanf("%d", &opcao);
  return opcao;
};

bool existe_conta(int numero, struct Conta contas[NUM_CONTAS], int contas_cadastradas) {
  for( int i = 0; i < contas_cadastradas; i++ ) {
    if (contas[i].numero == numero) {
      return true;
    }
  }
  return false;
}

bool cadastrar_conta(struct Conta contas[NUM_CONTAS], int contas_cadastradas) {
  if (contas_cadastradas >= NUM_CONTAS) {
    printf("Não é possível cadastrar mais contas! Limite atingido: %d\n", NUM_CONTAS);
    return false;
  }
  printf("Informe os dados da conta\n");

  bool numero_valido;
  int numero;
  do {
    printf("Número da conta: ");
    scanf("%d", &numero);
    if (existe_conta(numero, contas, contas_cadastradas)) {
      printf("Conta já existente, informe outro número!\n");
      numero_valido = false;
    } else {
      numero_valido = true;
    }
  } while (!numero_valido);
  contas[contas_cadastradas].numero = numero;

  printf("Nome: ");
  char nome[TAM_NOME];
  scanf("%s", nome);
  strcpy(contas[contas_cadastradas].nome, nome);

  printf("Saldo: ");
  scanf("%f", &(contas[contas_cadastradas].saldo));

  printf("Conta cadastrada com sucesso!\n");
  return true;
};

void mostrar_conta(struct Conta conta) {
  printf("Número: %d\n", conta.numero);
  printf("Nome: %s\n", conta.nome);
  printf("Saldo: %.2f\n", conta.saldo);
};

void ver_contas_cliente(struct Conta contas[NUM_CONTAS], int contas_cadastradas) {
  printf("Informe o nome do cliente: ");
  char nome[TAM_NOME];
  scanf("%s", nome);
  int c = 0;
  for( int i = 0; i < contas_cadastradas; i++ ) {
    if (strcmp(contas[i].nome, nome) == 0) {
      c++;
      printf("===== Conta %d =====\n", c);
      mostrar_conta(contas[i]);
      printf("===================\n");
    }
  }
  if (c==0) {
    printf("Nenhuma conta cadastrada para: %s\n", nome);
  }
};

int menor_saldo(struct Conta contas[NUM_CONTAS], int contas_cadastradas) {
  int menor = 0;
  for( int i = 1; i < contas_cadastradas; i++ ) {
    if (contas[i].saldo < contas[menor].saldo) {
      menor = i;
    }
  }
  return menor;
}

void copiar_contas(struct Conta origem, struct Conta *destino) {
  destino->numero = origem.numero;
  strcpy(destino->nome, origem.nome);
  destino->saldo = origem.saldo;
}

bool excluir_conta_menor_saldo(struct Conta contas[NUM_CONTAS], int contas_cadastradas) {
  if (contas_cadastradas <= 0) {
    printf("Nenhuma conta para excluir!\n");
    return false;
  }
  // Encontrar conta com menor saldo
  int menor = menor_saldo(contas, contas_cadastradas);
  int conta_excluida = contas[menor].numero;
  // Copiar ultima conta cadastrada p/ posição da conta com menor saldo
  copiar_contas(contas[contas_cadastradas-1], &contas[menor]);
  printf("Conta número %d excluída com sucesso!\n", conta_excluida);
  return true;
};

void main() {
  struct Conta contas[NUM_CONTAS];
  int contas_cadastradas = 0;
  int opcao;
  do {
    opcao = menu();
    if (opcao == 1) {
      if (cadastrar_conta(contas, contas_cadastradas)){
        contas_cadastradas++;
      }
    } else if (opcao == 2) {
      ver_contas_cliente(contas, contas_cadastradas);
    } else if (opcao == 3) {
      if (excluir_conta_menor_saldo(contas, contas_cadastradas)) {
        contas_cadastradas--;
      }
    } else if (opcao == 4) {
      // sair
      break;
    } else {
      printf("Opção não reconhecida: %d\n", opcao);
    }
  } while (opcao != 4);

}
