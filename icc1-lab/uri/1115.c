#include <stdio.h>

int main() {
    int x, y;

    while (scanf("%d %d", &x, &y) != EOF) {
        if (x*y == 0) return 0;

        if (x > 0 && y > 0)
            printf("primeiro\n");
        else if (x < 0 && y > 0)
            printf("segundo\n");
        else if (x < 0 && y < 0)
            printf("terceiro\n");
        else
            printf("quarto\n");
    }

    return 0;
}