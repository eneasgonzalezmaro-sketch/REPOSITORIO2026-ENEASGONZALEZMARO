#include <stdio.h>

typedef struct
{
    char nombre[30];
    int edad;
    int curso;
} Alumno;

int main()
{
    Alumno lista[3];
    char opcion;
    int i;

    printf("Carga de alumnos\n");

    for(i=0; i<3; i++)
    {
        printf("\nAlumno %d\n", i + 1);

        printf("Nombre: ");
        scanf("%s", lista[i].nombre);

        printf("Edad: ");
        scanf("%d", &lista[i].edad);

        printf("Curso: ");
        scanf("%d", &lista[i].curso);
    }

    printf("\nDatos cargados:\n");

    for(i=0; i<3; i++)
    {
        printf("\n%s - %d anios - Curso %d\n",
               lista[i].nombre,
               lista[i].edad,
               lista[i].curso);
    }

    for(i=0; i<3; i++)
    {
        printf("\nModificar alumno %d? (s/n): ", i + 1);
        scanf(" %c", &opcion);

        if(opcion == 's')
        {
            printf("Nuevo nombre: ");
            scanf("%s", lista[i].nombre);

            printf("Nueva edad: ");
            scanf("%d", &lista[i].edad);

            printf("Nuevo curso: ");
            scanf("%d", &lista[i].curso);
        }
    }

    printf("\nLista final:\n");

    for(i=0; i<3; i++)
    {
        printf("\nAlumno %d\n", i + 1);
        printf("Nombre: %s\n", lista[i].nombre);
        printf("Edad: %d\n", lista[i].edad);
        printf("Curso: %d\n", lista[i].curso);
    }

    return 0;
}
