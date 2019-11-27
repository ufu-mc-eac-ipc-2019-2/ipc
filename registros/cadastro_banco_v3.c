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

struct Banco {
  struct Conta contas[NUM_CONTAS];
  int contas_cadastradas;
};

int menu() {
  printf("\n\n== Cadastro de contas ==\n\n");
  printf("1. Cadastrar contas.\n");
  printf("2. Visualizar todas as contas de determinado cliente.\n");
  printf("3. Excluir a conta com menor saldo.\n");
  printf("4. Excluir a conta com maior saldo.\n");
  printf("5. Sair.\n\n");
  printf("Opção: ");
  int opcao;
  scanf("%d", &opcao);
  return opcao;
};

bool existe_conta(int numero, struct Banco banco) {
  for( int i = 0; i < banco.contas_cadastradas; i++ ) {
    if (banco.contas[i].numero == numero) {
      return true;
    }
  }
  return false;
}

bool cadastrar_conta(struct Banco *banco) {
  if (banco->contas_cadastradas >= NUM_CONTAS) {
    printf("Não é possível cadastrar mais contas! Limite atingido: %d\n", NUM_CONTAS);
    return false;
  }

  printf("Informe os dados da conta\n");
  bool numero_valido;
  int numero;
  do {
    printf("Número da conta: ");
    scanf("%d", &numero);
    if (existe_conta(numero, *banco)) {
      printf("Conta já existente, informe outro número!\n");
      numero_valido = false;
    } else {
      numero_valido = true;
    }
  } while (!numero_valido);
  banco->contas[banco->contas_cadastradas].numero = numero;

  printf("Nome: ");
  char nome[TAM_NOME];
  scanf("%s", nome);
  strcpy(banco->contas[banco->contas_cadastradas].nome, nome);

  printf("Saldo: ");
  scanf("%f", &banco->contas[banco->contas_cadastradas].saldo);

  banco->contas_cadastradas = (banco->contas_cadastradas)+1;

  printf("Conta número %d cadastrada com sucesso!\n", numero);
  return true;
};

void mostrar_conta(struct Conta conta) {
  printf("Número: %d\n", conta.numero);
  printf("Nome: %s\n", conta.nome);
  printf("Saldo: %.2f\n", conta.saldo);
};

void ver_contas_cliente(struct Banco banco) {
  printf("Informe o nome do cliente: ");
  char nome[TAM_NOME];
  scanf("%s", nome);
  int c = 0;
  for( int i = 0; i < banco.contas_cadastradas; i++ ) {
    if (strcmp(banco.contas[i].nome, nome) == 0) {
      c++;
      printf("===== Conta %d =====\n", c);
      mostrar_conta(banco.contas[i]);
      printf("===================\n");
    }
  }
  if (c==0) {
    printf("Nenhuma conta cadastrada para: %s\n", nome);
  }
};

int menor_saldo(struct Banco banco) {
  int menor = 0;
  for( int i = 1; i < banco.contas_cadastradas; i++ ) {
    if (banco.contas[i].saldo < banco.contas[menor].saldo) {
      menor = i;
    }
  }
  return menor;
}

int maior_saldo(struct Banco banco) {
  int maior = 0;
  for( int i = 1; i < banco.contas_cadastradas; i++ ) {
    if (banco.contas[i].saldo > banco.contas[maior].saldo) {
      maior = i;
    }
  }
  return maior;
}

void copiar_contas(struct Conta origem, struct Conta *destino) {
  destino->numero = origem.numero;
  strcpy(destino->nome, origem.nome);
  destino->saldo = origem.saldo;
}

bool excluir_conta_menor_saldo(struct Banco *banco) {
  if (banco->contas_cadastradas <= 0) {
    printf("Nenhuma conta para excluir!\n");
    return false;
  }
  // Encontrar conta com menor saldo
  int menor = menor_saldo(*banco);
  int conta_excluida = banco->contas[menor].numero;
  // Copiar ultima conta cadastrada p/ posição da conta com menor saldo
  copiar_contas(banco->contas[banco->contas_cadastradas-1], &banco->contas[menor]);
  printf("Conta número %d excluída com sucesso!\n", conta_excluida);
  banco->contas_cadastradas = (banco->contas_cadastradas)-1;
  return true;
};

bool excluir_conta_maior_saldo(struct Banco *banco) {
  if (banco->contas_cadastradas <= 0) {
    printf("Nenhuma conta para excluir!\n");
    return false;
  }
  // Encontrar conta com menor saldo
  int maior = maior_saldo(*banco);
  int conta_excluida = banco->contas[maior].numero;
  // Copiar ultima conta cadastrada p/ posição da conta com menor saldo
  copiar_contas(banco->contas[banco->contas_cadastradas-1], &banco->contas[maior]);
  printf("Conta número %d excluída com sucesso!\n", conta_excluida);
  banco->contas_cadastradas = (banco->contas_cadastradas)-1;
  return true;
};

void main() {
  struct Banco banco;
  banco.contas_cadastradas = 0;
  int opcao;
  do {
    opcao = menu();
    if (opcao == 1) {
      if (!cadastrar_conta(&banco)) {
        printf(">> Falha no cadastro! <<");
      }
    } else if (opcao == 2) {
      ver_contas_cliente(banco);
    } else if (opcao == 3) {
      if (!excluir_conta_menor_saldo(&banco)) {
        printf(">> Falha na exclusão! <<");
      }
    } else if (opcao == 4) {
      if (!excluir_conta_maior_saldo(&banco)) {
        printf(">> Falha na exclusão! <<");
      }
    } else if (opcao == 5) {
      // sair
      continue;
    } else {
      printf("Opção não reconhecida: %d\n", opcao);
    }
  } while (opcao != 4);

}
