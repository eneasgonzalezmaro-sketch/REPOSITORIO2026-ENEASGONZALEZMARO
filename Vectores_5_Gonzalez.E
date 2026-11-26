#include <stdio.h>

int vector[10];
int suma = 0;

void sacarPromedio(int total)
{
    int promedio;

    promedio = total / 10;

    printf("Promedio: %d\n", promedio);
}

int main()
{
    int i, j, aux;

    printf("Ingrese 10 numeros\n");

    for(i=0; i<10; i++)
    {
        printf("Valor %d: ", i);
        scanf("%d", &vector[i]);

        suma = suma + vector[i];
    }

    for(i=0; i<9; i++)
    {
        for(j=i+1; j<10; j++)
        {
            if(vector[j] < vector[i])
            {
                aux = vector[i];
                vector[i] = vector[j];
                vector[j] = aux;
            }
        }
    }

    printf("\nVector ordenado:\n");

    for(i=0; i<10; i++)
    {
        printf("%d ", vector[i]);
    }

    printf("\n");

    sacarPromedio(suma);

    return 0;
}
