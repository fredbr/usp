#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <unistd.h>

#define MAX_VALS 10

// para ter o tempo entre as sequencias e 
// limpar a linha deve-se ter esse define
// #define NRUNCODES

void clean_line() {
#ifdef NRUNCODES
	printf("\r                                        "
		     "                                        \r");
#else
	printf("\n");
#endif
}

void generate_sequence(int vals[], int num_vals) {
	for (int i = 0; i < num_vals; i++) {
		vals[i] = rand()%10;
	}
}

void print_sequence(int vals[], int num_vals, int timeout) {
	for (int i = 0; i < num_vals; i++) {
		printf("%d", vals[i]);

		if (i+1 != num_vals)
			printf(" ");
	}
	fflush(stdout);

#ifdef NRUNCODES
	sleep(timeout);
#endif

	clean_line();
}

int main() {
	int vals[MAX_VALS];
	int seed;
	char level;

	scanf("%d %c", &seed, &level);

	srand(seed);

	int num_seq, num_vals, timeout;

	switch (level) {
		case 'F': {
			num_seq = 3;
			num_vals = 5;
			timeout = 5;
			break;
		}
		case 'I': {
			num_seq = 4;
			num_vals = 7;
			timeout = 7;
			break;
		}
		case 'A': {
			num_seq = 5;
			num_vals = 9;
			timeout = 10;
			break;
		}
	}

	int num_tries = 3;
	int points = 0;

	for (int seq = 1; seq <= num_seq && num_tries > 0; seq++) {

		generate_sequence(vals, num_vals);

		int points_try = num_vals*10;

		while (num_tries > 0) {

			printf("Sequencia #%d:\n", seq);
			print_sequence(vals, num_vals, timeout);

			int ok = true;
			for (int i = 0; i < num_vals; i++) {
				int x;
				scanf("%d", &x);
				
				if (x != vals[i]) {
					ok = false;
					if (points_try > 0)
						points_try -= 10;
				}
			}

			if (ok)
				printf("Correto!\n");
			else {
				printf("Incorreto!\n");
				num_tries--;
			}

			printf("Tentativas disponiveis: %d\n", num_tries);
			printf("Pontuacao: %d\n", points+points_try);

			if (ok) break;
		}

		points += points_try;
	}

	if (num_tries == 0)
		printf("Nao ha mais tentativas disponiveis... Tente novamente!");
	else
		printf("Otima memoria! Parabens!!!");

	return 0;
}