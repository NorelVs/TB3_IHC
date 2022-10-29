Feature: CAD0011 - Acceder a calificaciones
    Como estudiante
    quiero acceder al registro de mis calificaciones
    para evaluar mi situación académica.

    Scenario:  Estudiante visualiza su situación académica
        Dado que el estudiante se encuentra en la pantalla de la pestaña "Historial de Notas" de la parte lateral derecha
        Cuando el sistema recopile las calificaciones registradas
        Entonces el estudiante visualizará la información solicitada por evaluación.

        Example: Datos de salida
		| Cantida de alumnos que desaprobaron |
		| Examen 1 : 11 |
        | Examen 2 : 09 |