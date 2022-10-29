Feature: CAD0012 - Ver temas de Evaluación
	Como estudiante 
    quiero visualizar los temas de cada evaluación
    para fomentar mi planificación de estudio
	
	Scenario: Estudiante visualiza los temas de cada evaluación
		Dado que el estudiante se encuentra en la subpágina correspondiente a la pestaña "Programación de exámenes"
        Cuando el estudiante dé click a uno de los <examenes> que se encuentran dentro de la programación
        Entonces el estudiante observará de manera práctica los <temas> a examinar.

 
		Example: Datos de salida
		| examenes|  |temas|
        |Examen de Fisica I| |Electromagnetismo|
