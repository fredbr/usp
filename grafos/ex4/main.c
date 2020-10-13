#include <stdlib.h>
#include <stdio.h>
#include <limits.h>

// representacao da aresta
typedef struct {
    int u, v;
    int tempo, custo;
} Aresta;

// funcao recursiva para imprimir o caminho de orig para x
// p representa o vertice de onde vem o x
void print_path(int* p, int x, int orig) {
    if (x == orig) {
        printf("%d ", x);
    }
    else {
        print_path(p, p[x], orig);
        printf("%d ", x);
    }
}

int main() {
    int n, m;
    scanf("%d %d", &n, &m);

    // lista de arestas
    Aresta *g = malloc(m * sizeof(Aresta));

    for (int i = 0; i < m; i++) {
        scanf("%d %d %d %d", &g[i].u, &g[i].v, &g[i].tempo, &g[i].custo);
    }

    int orig, dest;
    scanf("%d %d", &orig, &dest);

    // distancias iniciais para o algoritmo de bellman ford
    // representa a menor distancia para um caminoho de orig ate i
    int *dist = malloc(n * sizeof(int));
    for (int i = 0; i < n; i++) {
        // para que dist[i] + dist[j] nao exceda INT_MAX
        dist[i] = INT_MAX/2;
    }
    dist[orig] = 0;

    // custos iniciais para bellman ford
    // representa o melhor custo para um caminho de distancia minima de orig ate i
    int *c = malloc(n * sizeof(int));
    for (int i = 0; i < n; i++) {
        // para que c[i] + c[j] nao exceda INT_MAX
        c[i] = INT_MAX/2;
    }
    c[orig] = 0;

    // vertice anterior a i no caminho minimo de orig ate i
    int *p = malloc(n * sizeof(int));

    // relaxa todas as arestas n-1 vezes
    for (int i = 1; i < n; i++) {
        for (int j = 0; j < m; j++) {
            int u = g[j].u;
            int v = g[j].v;
            int custo = g[j].custo;
            int tempo = g[j].tempo;

            // caso o relaxamento melhore a distancia
            if (dist[v] > dist[u] + tempo) {
                dist[v] = dist[u] + tempo;
                c[v] = c[u] + custo;
                p[v] = u;
            }
            // caso o relaxamente mantenha a distancia mas tenha custo melhor
            else if (dist[v] == dist[u] + tempo && c[u] > c[v] + custo) {
                c[v] = c[u] + custo;
                p[v] = u;
            }
        }
    }

    // imprime o melhor caminho
    print_path(p, dest, orig);
    printf("\n");

    printf("%d %d\n", dist[dest], c[dest]);

    free(dist);
    free(c);
    free(p);
    free(g);

    return 0;
}