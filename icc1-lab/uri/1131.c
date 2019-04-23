#include <stdio.h>

int main() {
    int inter = 0, gremio = 0, emp = 0;

    int a, b, cond;
    do {
        scanf("%d %d", &a, &b);

        if (a > b) inter++;
        else if (a < b) gremio++;
        else emp++;

        printf("Novo grenal (1-sim 2-nao)\n");
        scanf("%d", &cond);
    } while (cond == 1);

    printf("%d grenais\n", inter+gremio+emp);
    printf("Inter:%d\n", inter);
    printf("Gremio:%d\n", gremio);
    printf("Empates:%d\n", emp);

    if (inter > gremio)
        printf("Inter venceu mais\n");
    else if (inter < gremio)
        printf("Gremio venceu mais\n");
    else
        printf("Nao houve vencedor\n");
}