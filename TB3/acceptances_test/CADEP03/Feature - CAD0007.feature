Feature: CAD0007 - Visualizar notas aproximadas del estudiante
    Como estudiante
    quiero visualizar una aproximación de las notas que debo obtener en mis próximos exámenes
    para aprobar el curso.

    Scenario:  Estudiante visualiza notas mínimas aproximadas para aprobar
        Dado que el estudiante está en la pantalla de inicio
        Cuando el estudiante dé click a la pestaña "Historial de Notas"
        Y seleccione el curso a examinar
        Entonces la aplicación mostrará las notas mínimas que se deben obtener en el curso para concretar su aprobación.
 
        Example: Datos de salida
		| Recientes |
        | Semana 5 evaluacion: 15 puntos minimos |
        | Semana 6 evaluacion: 14 puntos minimos  |

    Scenario:  Estudiante no visualiza el porcentaje de cada evaluación
        Dado que el estudiante se encuentra en la pantalla de la sección "Historial de Notas"
        Cuando el estudiante seleccione el curso a revisar
        Entonces la aplicación mostrará el mensaje "No hay registro de evaluaciones".
        
        Example: Datos de salida
		| No hay registro de evaluaciones |