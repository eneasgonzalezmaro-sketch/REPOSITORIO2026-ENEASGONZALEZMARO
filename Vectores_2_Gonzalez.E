#include <stdio.h>

int main() {
    int numeros[5];
    int suma = 0;
    float promedio;

    printf("Ingrese 5 numeros:\n");

    for (int i = 0; i < 5; i++) {
        printf("Numero %d: ", i + 1);
        scanf("%d", &numeros[i]);

        suma += numeros[i];
    }

    promedio = (float)suma / 5;

    printf("\nSuma total: %d\n", suma);
    printf("Promedio: %.2f\n", promedio);

    return 0;
}
