#include <stdio.h>

int andGate[4][3] = {
    {0,0,0},
    {0,1,0},
    {1,0,0},
    {1,1,1}
};

int orGate[4][3] = {
    {0,0,0},
    {0,1,1},
    {1,0,1},
    {1,1,1}
};

int xorGate[4][3] = {
    {0,0,0},
    {0,1,1},
    {1,0,1},
    {1,1,0}
};

int nandGate[4][3] = {
    {0,0,1},
    {0,1,1},
    {1,0,1},
    {1,1,0}
};

void mostrarTabla(int tabla[4][3], char nombre[])
{
    int fila, columna;

    printf("\nCompuerta %s\n", nombre);
    printf("A B S\n");

    for(fila = 0; fila < 4; fila++)
    {
        for(columna = 0; columna < 3; columna++)
        {
            printf("%d ", tabla[fila][columna]);
        }

        printf("\n");
    }
}

int main()
{
    mostrarTabla(andGate, "AND");
    mostrarTabla(orGate, "OR");
    mostrarTabla(xorGate, "XOR");
    mostrarTabla(nandGate, "NAND");

    return 0;
}
