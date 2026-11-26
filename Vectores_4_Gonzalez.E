#include <stdio.h>

int vectorA[5];
int vectorB[5];

int main()
{
    int x;

    printf("Cargar primer vector\n");
    for(x=0; x<5; x++)
    {
        printf("Dato %d: ", x);
        scanf("%d", &vectorA[x]);
    }

    printf("Cargar segundo vector\n");
    for(x=0; x<5; x++)
    {
        printf("Dato %d: ", x);
        scanf("%d", &vectorB[x]);
    }

    printf("\nResultados:\n");

    for(x=0; x<5; x++)
    {
        if(vectorA[x] == vectorB[x])
        {
            printf("Posicion %d: iguales (%d)\n", x, vectorA[x]);
        }
        else
        {
            if(vectorA[x] > vectorB[x])
            {
                printf("Posicion %d: mayor %d del primer vector\n", x, vectorA[x]);
            }
            else
            {
                printf("Posicion %d: mayor %d del segundo vector\n", x, vectorB[x]);
            }
        }
    }

    return 0;
}
