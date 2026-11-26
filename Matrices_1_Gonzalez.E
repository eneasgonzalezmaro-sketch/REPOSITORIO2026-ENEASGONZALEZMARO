#include <stdio.h>

int numeros[3][2];

int main()
{
    int fila, columna;

    printf("Carga de la matriz\n");

    for(fila=0; fila<3; fila++)
    {
        for(columna=0; columna<2; columna++)
        {
            printf("Ingrese valor [%d][%d]: ", fila, columna);
            scanf("%d", &numeros[fila][columna]);
        }
    }

    printf("\nMatriz:\n");

    for(fila=0; fila<3; fila++)
    {
        for(columna=0; columna<2; columna++)
        {
            printf("%d ", numeros[fila][columna]);
        }
        printf("\n");
    }

    return 0;
}
