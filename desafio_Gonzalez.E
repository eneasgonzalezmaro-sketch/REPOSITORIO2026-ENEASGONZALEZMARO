#include <stdio.h>

int numeros[5];
int pos, nuevoValor;
char opcion;

void modificarVector()
{
    printf("Que posicion queres cambiar? ");
    scanf("%d", &pos);

    while(pos < 0 || pos > 4)
    {
        printf("Posicion incorrecta. Ingrese otra: ");
        scanf("%d", &pos);
    }

    printf("Ingrese el nuevo valor: ");
    scanf("%d", &nuevoValor);

    numeros[pos] = nuevoValor;

    printf("El vector fue modificado.\n");
}

int main()
{
    int i;

    for(i = 0; i < 5; i++)
    {
        printf("Ingrese un numero: ");
        scanf("%d", &numeros[i]);
    }

    do
    {
        printf("\nVector actual:\n");

        for(i = 0; i < 5; i++)
        {
            printf("[%d] = %d\n", i, numeros[i]);
        }

        printf("\nDesea modificar algun valor? (s/n): ");
        scanf(" %c", &opcion);

        if(opcion == 's')
        {
            modificarVector();
        }

    } while(opcion != 'n');

    printf("Programa terminado.");

    return 0;
}
