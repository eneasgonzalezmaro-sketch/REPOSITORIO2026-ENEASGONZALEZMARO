#include <stdio.h>

int datos[3][2][2];

int main()
{
    int capa, fila, columna;

    printf("Carga de datos\n");

    for(capa = 0; capa < 3; capa++)
    {
        for(fila = 0; fila < 2; fila++)
        {
            for(columna = 0; columna < 2; columna++)
            {
                printf("Dato [%d][%d][%d]: ", capa, fila, columna);
                scanf("%d", &datos[capa][fila][columna]);
            }
        }
    }

    printf("\nContenido de la matriz:\n");

    for(capa = 0; capa < 3; capa++)
    {
        printf("\nCapa %d\n", capa);

        for(fila = 0; fila < 2; fila++)
        {
            for(columna = 0; columna < 2; columna++)
            {
                printf("%d ", datos[capa][fila][columna]);
            }

            printf("\n");
        }
    }

    return 0;
}
