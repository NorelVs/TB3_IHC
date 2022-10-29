Feature: CAD0004 - Realizar cambio de pregunta en evaluación
	Como estudiante 
    quiero optar por cambiar una pregunta de la evaluación durante su desarrollo 
    para asegurar la aprobación de este.
	
	Scenario: Estudiante busca cambiar una pregunta de la evaluación.
		Dado que el estudiante se encuentra realizando la evaluación 
        Y no sabe la respuesta de una pregunta
        Cuando el estudiante dé click a la opción "Cambiar pregunta" del lado izquierdo de la pregunta
        Entonces la aplicación mostrará tres <preguntas> alternativas para seleccionar una de ellas e intercambiarla con la pregunta actual. 

		Example: Datos de salida

		| preguntas|
        |¿Cuál es la fórmula general de resolución de ecuaciones?| 

	Scenario: Estudiante inserta recordatorios 
		Dado que el estudiante se encuentra en la subpágina de la pestaña "Programacion de Examenes"
        Cuando el estudiante dé click al botón "Añadir recordatorios" localizado en la parte inferior de la página
        Entonces el sistema muestra el <cuadro de texto> correspondiente al ingreso de recordatorios.

		Example: Datos de salida
		| cuadro de texto |
        | añadir recordatorios|
