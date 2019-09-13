#include <stdio.h>
#include <stdlib.h>

// declaracao do struct do aluno
typedef struct Aluno_ {
	int id;
	float estudo_hrs;
	float nota1, nota2;
} Aluno;

// declaracao do struct do no
typedef struct Node_ {
	Aluno aluno;
	struct Node_ *next; 
} Node;

// aloca e cria um novo no
Node *cria_node(int id, float estudo_hrs, float nota1, float nota2) {
	Node *t = (Node*) malloc(sizeof(Node));

	t->aluno.id = id;
	t->aluno.estudo_hrs = estudo_hrs;
	t->aluno.nota1 = nota1;
	t->aluno.nota2 = nota2;
	t->next = NULL;

	return t;
}

// funcao 1
// insere elemento no final da lista dos registros
// o no atual eh uma referencia do ponteiro do no anterior
// assim pode-se mudar o valor do no anterior
void insere_fim(Node **t, Node *atual) {
	// caso se tenha chegado ao fim dos registros
	// atualiza o ponteiro de proximo no do no anterior para o novo no
	if (*t == NULL) *t = atual;

	// caso contrario continua ate o fim da fila
	else insere_fim(&((*t)->next), atual);
}

// funcao 2
// remove o primeiro elemento com ID igual ao solicitado
// e retorna se algum elemento foi removido
// o no atual eh uma referencia do ponteiro do no anterior
// assim pode-se mudar o valor de proximo do no anterior
int remove_id(Node **t, int id) {
	// caso tenha chegado no final retorna 0
	// indicando que nenhum foi removido
	if (*t == NULL) {
		return 0;
	}

	// caso ID for igual ao de t:
	// 1 : salva o valor do proximo no
	// 2 : desaloca o no atual
	// 3 : atualiza o ponteiro do no anterior com o valor do prox no
	// retorna 1 indicando que 1 elemento foi apagado
	else if ((*t)->aluno.id == id) {
		Node *n = (*t)->next;
		free(*t);
		*t = n;
		return 1;
	}

	// chama para o proximo no
	else{
		return remove_id(&((*t)->next), id);
	}
}

// funcao 3
// passa por todos os registros e imprime as informacoes e se foi aprovado
void imprime(Node *t) {
	// caso ja tenha passado por todos os registros termina
	if (!t) return;

	// caso contrario imprime as informacoes e continua para o proximo
	printf("ID: %d\n"
		   "Horas de estudo: %.2f\n"
		   "Notas: %.2f %.2f\n\n",
		    t->aluno.id, t->aluno.estudo_hrs, t->aluno.nota1, t->aluno.nota2);
	
	// continua para o proximo registro
	imprime(t->next);
}

// funcao 4
// passa por todos os registros e imprime as informacoes e se foi aprovado
void imprime_aprovacao(Node *t) {
	// caso ja tenha passado por todos os registros termina
	if (!t) return;

	// caso contrario imprime as informacoes e continua para o proximo
	printf("ID: %d\n"
		   "Horas de estudo: %.2f\n"
		   "Notas: %.2f %.2f\n",
		    t->aluno.id, t->aluno.estudo_hrs, t->aluno.nota1, t->aluno.nota2);

	// imprime se foi aprovado ou reprovado
	if ((t->aluno.nota1 + t->aluno.nota2) / 2.0f >= 5.0f)
		printf("APROVADO\n\n");
	else
		printf("REPROVADO\n\n");

	// continua para o proximo registro
	imprime_aprovacao(t->next);
}

// aux da funcao 5
// retorna a soma das horas de estudo dos alunos cadastrados
float soma_estudo_hrs(Node *t) {
	if (!t) return 0.0f;
	return t->aluno.estudo_hrs + soma_estudo_hrs(t->next);
}

// aux da funcao 5
// retorna o numero de alunos cadastrados
int num_nodes(Node *t) {
	if (!t) return 0;
	return 1 + num_nodes(t->next);
}

// funcao 5
// imprime a media de horas estudadas
void imprime_media(Node *t) { 
	printf("Media de tempo de estudo dos alunos: %.2f\n\n", 
		   soma_estudo_hrs(t) / (float) num_nodes(t));
}

// funcao 6
void limpa(Node *t) {
	// caso chegue no final finaliza o programa
	if (t == NULL) exit(0);

	// caso contrario:
	// 1 : desaloca o no atual
	// 2 : chama recursivamente a funcao para limpar o proximo
	else {
		Node *n = t->next;
		free(t);
		limpa(n);
	}
}

int main() {
	// inicializa a raiz
	Node *root = NULL;

	// imprime o menu
	printf("Digite o numero para escolher a opcao:\n"
		   "1 : Adiciona novo registro no final\n"
		   "2 : Remove o aluno com ID igual a id\n"
		   "3 : Imprime todos os registros em ordem\n"
		   "4 : Imprime todos os registros e a as aprovacoes em ordem\n"
		   "5 : Imprime a media de horas de estudo\n"
		   "6 : Finaliza o programa\n"
		   "7 : Exibe as opcoes\n\n");

	int op, status;
	while (1) {
		status = scanf("%d", &op);

		// caso fim de arquivo finaliza o programa
		if (status == EOF) op = 6;
		
		// caso seja invalida a opcao
		else if (status == 0) continue;

		switch (op) {
			case 1: {
				printf("\nDigite {id} {horas_de_estudo} {nota1} {nota2} do "
					   "registro a ser adicionado\n\n");

				int id;
				float estudo_hrs, nota1, nota2;

				scanf("%d %f %f %f", &id, &estudo_hrs, &nota1, &nota2);
				Node *t = cria_node(id, estudo_hrs, nota1, nota2);

				insere_fim(&root, t);

				break;
			}
			case 2: {
				printf("\nDigite {id} do registro a ser removido\n\n");
				int id;

				scanf("%d", &id);

				// caso nao haja registros com tal id
				if (remove_id(&root, id) == 0) {
					printf("\nNao a registros com ID igual ao digitado\n\n");
				}

				break;
			}
			case 3: {
				// caso nao haja registro
				printf("\n");
				if (root == NULL)
					printf("\nNao ha nenhum aluno registrado\n\n");
				else
					imprime(root);

				break;
			}
			case 4: {
				// caso nao haja registro
				printf("\n");
				if (root == NULL)
					printf("\nNao ha nenhum aluno registrado\n\n");
				else
					imprime_aprovacao(root);

				break;
			}
			case 5: {
				// caso nao haja registro
				printf("\n");
				if (root == NULL) {
					printf("\nNao ha nenhum aluno registrado\n\n");
				}
				else imprime_media(root);

				break;
			}
			case 6: {
				limpa(root);
				break;
			}
			case 7: {
				printf("\n");
				printf("Digite o numero para escolher a opcao:\n"
					   "1 {id} {horas_de_estudo} {nota1} {nota2} : Adiciona novo registro no final\n"
					   "2 {id} : Remove o aluno com ID igual a id\n"
					   "3 : Imprime todos os registros em ordem\n"
					   "4 : Imprime todos os registros e a as aprovacoes em ordem\n"
					   "5 : Imprime a media de horas de estudo\n"
					   "6 : Finaliza o programa\n"
					   "7 : Exibe as opcoes\n\n");
				break;
			}
			default: {
				printf("\nOpcao invalida\n\n");
				break;
			}
		}
	}

	return 0;
}