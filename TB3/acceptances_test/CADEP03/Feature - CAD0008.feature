Feature: CAD0008 - Analizar calificaciones
    Como profesor 
    quiero analizar los puntajes de todos los alumnos
    para realizar un follow up estadístico en comparación con meses anteriores

    Scenario: Profesor filtra los puntajes académicos
        Dado que el sistema registra de forma automática los datos y calificaciones recopiladas de las evaluaciones 
        Cuando el profesor se encuentre en la subpágina correspondiente a la sección "Notas de mis estudiantes"
        Y el profesor dé click al botón "Filtrar notas"
        Y el profesor seleccione el método de <filtro> en específico
        Entonces el sistema mostrará las "calificaciones" filtradas para proceder con su análisis.

        Example: Datos de entrada
		| Opciones de filtrado | 
        | Nombre y apellidos |

        Example: Datos de salida
		| Calificaciones |
		| Claudia Palpan Lopez - 18  |

    Scenario: Profesor analiza la estadística de los puntajes académicos
        Dado que el sistema muestra todas las "calificaciones" 
        Cuando el profesor seleccione la sección a analizar del combobox  localizado en la parte superior derecha
        Y el profesor dé click al botón de la parte inferior "Mostrar estadísticas"
        Y el sistema analice todas las calificaciones
        Entonces el profesor visualizará de manera dinámica la cantidad de alumnos que desaprobaron una evaluación en específico.

        Example: Datos de salida
		| Cantida de alumnos que desaprobaron |
		| Examen 1 : 11 |
        | Examen 2 : 09 |
        | Examen 3 : 08 |
