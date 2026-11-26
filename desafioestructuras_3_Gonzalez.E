#include <stdio.h>

typedef struct
{
    int edad;
    char nombre[5];
    char grupo[5];
    float estatura;
} Paciente;

Paciente p;

void modificarDato()
{
    int op;

    printf("\nQue dato desea modificar?\n");
    printf("1. Edad\n");
    printf("2. Iniciales\n");
    printf("3. Grupo sanguineo\n");
    printf("4. Estatura\n");
    printf("Opcion: ");
    scanf("%d", &op);

    switch(op)
    {
        case 1:
            printf("Nueva edad: ");
            scanf("%d", &p.edad);
            break;

        case 2:
            printf("Nuevas iniciales: ");
            scanf("%s", p.nombre);
            break;

        case 3:
            printf("Nuevo grupo sanguineo: ");
            scanf("%s", p.grupo);
            break;

        case 4:
            printf("Nueva estatura: ");
            scanf("%f", &p.estatura);
            break;

        default:
            printf("Opcion incorrecta.\n");
    }
}

void mostrarDatos()
{
    printf("\n--- DATOS DEL PACIENTE ---\n");
    printf("Edad: %d\n", p.edad);
    printf("Iniciales: %s\n", p.nombre);
    printf("Grupo: %s\n", p.grupo);
    printf("Estatura: %.2f\n", p.estatura);
}

int main()
{
    char opcion;

    printf("Ingrese edad: ");
    scanf("%d", &p.edad);

    printf("Ingrese iniciales: ");
    scanf("%s", p.nombre);

    printf("Ingrese grupo sanguineo: ");
    scanf("%s", p.grupo);

    printf("Ingrese estatura: ");
    scanf("%f", &p.estatura);

    mostrarDatos();

    while(1)
    {
        printf("\nModificar algun dato? (s/n): ");
        scanf(" %c", &opcion);

        if(opcion == 'n')
        {
            break;
        }

        if(opcion == 's')
        {
            modificarDato();
            mostrarDatos();
        }
    }

    printf("\nPrograma terminado.\n");

    return 0;
}
