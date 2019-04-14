#include <stdio.h>

#define DAY_TO_MIN (24*60)

int main() {
	int hi, mi, hf, mf;
	scanf("%d %d %d %d", &hi, &mi, &hf, &mf);

	int ti = hi*60 + mi;
	int tf = hf*60 + mf;

	int dif = tf-ti;

	if (dif <= 0) dif += DAY_TO_MIN;

	printf("O JOGO DUROU %d HORA(S) E %d MINUTO(S)\n", dif/60, dif%60);

	return 0;
}