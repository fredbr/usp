#include <stdio.h>

#define MAXN 201

void paint(int v[MAXN][MAXN], int n, int dist, int val) {
	int i;
	for (i = dist; i < n-dist; i++) {
		v[i][dist] = val;
		v[i][n-dist-1] = val;
		v[dist][i] = val;
		v[n-dist-1][i] = val;
	}
}

void print(int v[MAXN][MAXN], int n) {
	int i, j;
	for (i = 0; i < n; i++) {
		for (j = 0; j < n; j++) {
			printf("%3d", v[i][j]);

			if (j+1 != n) printf(" ");
		}
		printf("\n");
	}
	printf("\n");
}

int v[MAXN][MAXN];

int main() {
	while (1) {
		int n;
		scanf("%d", &n);

		if (n == 0) break;

		int i;
		for (i = 0; i < (n+1)/2; i++)
			paint(v, n, i, i+1);
		print(v, n);
	}

	return 0;
}