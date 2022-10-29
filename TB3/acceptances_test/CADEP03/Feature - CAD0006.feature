Feature: CAD0006 - Visualizar y analizar resultados de las evaluaciones
    Como profesor
    quiero un análisis estadístico de los resultados de las evaluaciones
    para reforzar los temas que evidencian mayor porcentaje de error.
    
    Scenario: Profesor busca temas de evaluaciones a reforzar
        Dado que el profesor se encuentra en la pantalla de inicio
        Cuando el profesor dé click a la sección "Análisis estadístico de evaluaciones" 
        Y el profesor seleccione el curso a examinar
        Entonces la aplicación mostrará el análisis de cada evaluación correlacionado a los temas empleados.
 
        Example: Datos de salida
        | Analisis de evaluacion por curso: Fisica|
        | Tema A: 70%|
        | Tema B: 15%|
        | Tema C: 15%|

    Scenario: Profesor visualiza el análisis estadístico
        Dado que el profesor se encuentra en la pantalla de inicio
        Cuando el profesor dé click a la sección "Análisis estadístico de evaluaciones" 
        Y el profesor seleccione la evaluación a examinar
        Y el profesor presione la pregunta del examen
        Entonces la aplicación mostrará una tabla estadística con información relacionada a la cantidad 
                 de estudiantes que respondieron adecuadamente, erróneamente o alternaron por dejar incompleta el espacio de respuesta.

        Example: Datos de salida
        | Analisis de evaluacion por curso: Fisica|
        | Evaluacion A|
        | Preguntas correctas: 65|
        | Preguntas incorrectas: 20|
        | Preguntas en blanco: 15%|
