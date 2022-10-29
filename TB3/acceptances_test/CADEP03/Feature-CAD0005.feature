Feature: CAD0005 - Visualizar gráficos de evaluaciones previas
	Como estudiante 
    quiero visualizar gráficos estadísticos de mis evaluaciones anteriores 
    para priorizar los temas de repaso.
	
	Scenario: Estudiante visualiza gráficos estadísticos de sus evaluaciones
		Dado que el estudiante cuenta con un registro de notas de sus evaluaciones realizadas
        Cuando el estudiante dé click a la sección "Análisis estadístico de mis evaluaciones"
        Entonces la aplicación mostrará, por cada asignatura, los <graficos estadisticos> correspondientes a las evaluaciones realizadas.
 
		Example: Datos de salida
		| gráficos|
        |estadisticadenotas.jpg| 

	Scenario: Estudiante revisa las preguntas respondidas de forma errónea
		Dado que el estudiante visualiza los gráficos estadísticos por cursos de las evaluaciones realizadas
        Cuando el estudiante se ubique en el gráfico del examen a revisar 
        Y el estudiante dé click al botón "Preguntas fallidas" de la parte inferior izquierda
        Entonces la aplicación desplegará una subpágina donde se mostrarán las <preguntas del examen> seleccionado con su <resolución>.

		Example: Datos de salida
		| preguntas del examen |   |Resolucion de la pregunta|
        | ¿Cuanto es la raiz de 4?||La raiz de 4 es 2|
