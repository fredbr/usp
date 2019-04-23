#include <stdio.h>

int main() {
    int codigo, qt;
    scanf("%d %d", &codigo, &qt);

    double result;
    switch(codigo) {
        case 1:
            result = 4.0;
            break;
        case 2:
            result = 4.5;
            break;
        case 3:
            result = 5.0;
            break;
        case 4:
            result = 2.0;
            break;
        case 5:
            result = 1.5;
            break;
    }

    printf("Total: R$ %.2lf\n", result*(double)qt);
}