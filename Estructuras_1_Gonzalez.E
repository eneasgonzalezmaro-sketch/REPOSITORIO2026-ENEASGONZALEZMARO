#include <stdio.h>

typedef struct
{
    char nombre[30];
    int edad;
    int curso;
} Alumno;

Alumno datos;

void cargarAlumno()
{
    printf("Nombre: ");
    scanf("%s", datos.nombre);

    printf("Edad: ");
    scanf("%d", &datos.edad);

    printf("Curso: ");
    scanf("%d", &datos.curso);
}

void mostrarAlumno()
{
    printf("\nDatos ingresados:\n");
    printf("Nombre: %s\n", datos.nombre);
    printf("Edad: %d\n", datos.edad);
    printf("Curso: %d\n", datos.curso);
}

int main()
{
    char opcion;

    cargarAlumno();
    mostrarAlumno();

    do
    {
        printf("\nDesea volver a cargar los datos? (s/n): ");
        scanf(" %c", &opcion);

        if(opcion == 's')
        {
            cargarAlumno();
            mostrarAlumno();
        }

    } while(opcion != 'n');

    printf("Fin del programa.\n");

    return 0;
}
