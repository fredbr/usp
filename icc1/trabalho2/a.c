#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// representacao de uma palvra na bag of words
typedef struct {
	char word[21];
	int cnt;
} Word;

// representacao de um produto
typedef struct {
	char nome[21];
	Word bag[200];
	int good, total;
} Produto;

// encontra o produto entre os produtos ja encontrados
// caso nao haja retorna NULL
Produto* find_product(Produto v[], int n, char* nome) {
	for (int i = 0; i < n; i++) {
		if (strcmp(v[i].nome, nome) == 0) {
			return &v[i];
		}
	}
	return NULL;
}

// encontra uma Word com palavra == nome
// caso nao haja retorna a primeira posicao que nao tem ninguem (cnt == 0) 
Word* find_word(Word v[], char* nome) {
	for (int i = 0; i < 200; i++) {
		if (v[i].cnt == 0 || strcmp(v[i].word, nome) == 0) {
			return &v[i];
		}
	}
	return NULL;
}

// adiciona palavra na bag of words
void add_word(Word bag[], char* word) {
	Word *at = find_word(bag, word);

	// caso nao encontrado cria uma palavra nova
	if (at->cnt == 0) {
		strcpy(at->word, word);
	}

	at->cnt++;
}

// tipos de pergunta
enum Pergunta_t {
	PALAVRA,
	PORCENTAGEM
};

typedef enum Pergunta_t PerguntaType;

// retorna qual o tipo da pergunta atual
PerguntaType op_type(char* query) {
	if (strncmp(query, "palavra", sizeof("palavra")-1) == 0) {
		return PALAVRA;
	}
	return PORCENTAGEM;
}

// remove os espacos no final da string
void strip(char *word) {
	int n = strlen(word);
	while (n > 0 && word[n-1] == ' ') n--;
	word[n] = '\0';
}

// tipos de palavra
enum Word_t {
	GOOD,
	BAD,
	NEG,
	NEUTRAL
};

typedef enum Word_t WordType;

// encontra para cada tipo de palavra qual o seu efeito na frase
WordType parse_word(char *word) {
	static char *good_words[12] = {"bom", "maravilhoso", "otimo", "sensacional",
	                               "excelente", "adorei", "gostei", "amei", 
	                               "eficiente", "boa", "maravilhosa", "otima"};
	static char *bad_words[12] =  {"detestei", "odiei", "ruim", "pessimo", 
	                               "terrivel", "raiva", "odio", "pessima", 
	                               "lento", "lenta", "fragil", "desisti"};
    static char *neg_words[3] =  {"nao", "jamais", "nunca"};

    for (int i = 0; i < 12; i++) {
    	if (strcmp(word, good_words[i]) == 0) return GOOD;
    }

    for (int i = 0; i < 12; i++) {
    	if (strcmp(word, bad_words[i]) == 0) return BAD;
    }

    for (int i = 0; i < 3; i++) {
    	if (strcmp(word, neg_words[i]) == 0) return NEG;
    }

    return NEUTRAL;
}

int main() {
	int n_sentencas, n_perguntas;
	scanf("%d %d", &n_sentencas, &n_perguntas);

	int size_products = 0;
	Produto *products = malloc(sizeof(Produto)*10);

	for (int i = 0; i < n_sentencas; i++) {
		char buf[21];
		scanf(" %[^;] ;", buf);
		strip(buf);

		Produto *atual = find_product(products, size_products, buf);

		// caso o produto ainda nao estaja na lista adicionamos ele
		if (!atual) {
			atual = &products[size_products++];
			memset(atual, 0, sizeof(Produto));
			strcpy(atual->nome, buf);
		}

		int good = 0;

		// passa por todas as palavras da frase

		// iniciamos last_neg com um valor grande o suficiente
		// para que j-last_neg <= 0 seja sempre falso caso last_neg 
		// nao tenha sido alterado ainda

		for (int j = 0, last_neg = -10;; j++) {
			scanf("%s", buf);
			strip(buf);

			if (strcmp(buf, "Ø") == 0) break;

			add_word(atual->bag, buf);

			WordType type = parse_word(buf);

			// analiza o tipo da palavra e acha o efeito dela na frase
			switch (type) {
				case GOOD: {
					if (j-last_neg <= 3)
						good = 0;
					else
						good = 1;
					break;
				}
				case BAD: {
					if (j-last_neg <= 3)
						good = 1;
					else
						good = 0;
					break;
				}
				case NEG: {
					last_neg = j;
					break;
				}
				case NEUTRAL: break;
			}
		}

		atual->total++;

		// 0 caso seja BAD e 1 caso GOOD 
		atual->good += good;
	}

	for (int i = 0; i < n_perguntas; i++) {
		char buf[100];
		scanf(" %[^\n]", buf);

		PerguntaType op = op_type(buf);

		switch (op) {
			case PALAVRA: {
				char produto[21], palavra[21];
				sscanf(buf, "palavra %s em %[^\n\r] ", palavra, produto);

				strip(produto);
				strip(palavra);

				// encontra quantos daquela palavra aparecem na bag do produto
				Produto *atual = find_product(products, size_products, produto);
				int ans = find_word(atual->bag, palavra)->cnt;

				printf("%d\n", ans);
				break;
			}
			case PORCENTAGEM: {
				char produto[21], tipo[21];

				// encontra o produto atual
				sscanf(buf, "quantos %s em %[^\n\r] ", tipo, produto);
				Produto *atual = find_product(products, size_products, produto);

				strip(produto);
				strip(tipo);

				// analiza o que a pergunta atual quer e mostra a resposta
				if (strcmp("positivos", tipo) == 0)
					printf("%.1lf%%\n", 100.0*atual->good/(double)atual->total);
				else
					printf("%.1lf%%\n", 100.0*(atual->total-atual->good)/
						                    (double)atual->total);
			}
		}
	}

	free(products);
}
