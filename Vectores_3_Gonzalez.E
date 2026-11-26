#include <stdio.h>

int main() {
    int numeros[5];
    int indice;

    printf("Carga de datos\n");

    for (int i = 0; i < 5; i++) {
        printf("Ingrese un numero para la posicion %d: ", i);
        scanf("%d", &numeros[i]);
    }

    while (1) {
        printf("\nIngrese una posicion (0-4) o 5 para salir: ");
        scanf("%d", &indice);

        if (indice == 5) {
            printf("Fin del programa.\n");
            break;
        }

        if (indice >= 0 && indice < 5) {
            printf("Valor almacenado: %d\n", numeros[indice]);
        } else {
            printf("Error: posicion invalida.\n");
        }
    }

    return 0;
}
