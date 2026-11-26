#include <stdio.h>
#include <string.h>

int numeros[5];

void modificar()
{
    int posicion;
    int valorNuevo;

    printf("Ingrese la posicion a modificar: ");
    scanf("%d", &posicion);

    while(posicion < 0 || posicion > 4)
    {
        printf("Posicion incorrecta. Ingrese otra: ");
        scanf("%d", &posicion);
    }

    printf("Ingrese el nuevo valor: ");
    scanf("%d", &valorNuevo);

    numeros[posicion] = valorNuevo;

    printf("Dato actualizado correctamente.\n");
}

int main()
{
    char opcion[20];
    int i;

    for(i = 0; i < 5; i++)
    {
        printf("Numero %d: ", i);
        scanf("%d", &numeros[i]);
    }

    printf("\nVector cargado:\n");

    for(i = 0; i < 5; i++)
    {
        printf("%d ", numeros[i]);
    }

    printf("\n");

    while(1)
    {
        printf("\nEscriba CONTINUAR o FINALIZAR: ");
        scanf("%s", opcion);

        if(strcmp(opcion, "FINALIZAR") == 0)
        {
            break;
        }

        if(strcmp(opcion, "CONTINUAR") == 0)
        {
            modificar();

            printf("\nEstado actual del vector:\n");

            for(i = 0; i < 5; i++)
            {
                printf("%d ", numeros[i]);
            }

            printf("\n");
        }
    }

    printf("Programa finalizado.\n");

    return 0;
}
