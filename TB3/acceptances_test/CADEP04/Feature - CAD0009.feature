Feature: CAD0009 - Visualizar comentarios constructivos
	Como estudiante
	quiero leer los comentarios de otros usuarios sobre la metodología de evaluación de cada profesor
	para conocer la calidad empleada en su elaboración.
	
	Scenario: Estudiante visualiza un apartado de comentarios constructivos
		Dado que el sistema muestra una sección de comentarios constructivos
		Cuando el estudiante entre al "profile_docente"
		Y el estudiante dé click al botón de la parte inferior "Ver comentarios"
		Y el estudiante seleccione entre las <opciones de filtrado> "relevantes", "recientes" o "ver_todos"
		Entonces el sistema mostrará <comentarios_filtrados>

		Example: Datos de entrada
		| opciones de filtrado | 
		| recientes |

		Example: Datos de salida
		| comentarios_filtrados |
		| No inicia las evaluaciones a tiempo |
		| Se ausenta durante la ejecucion de la evaluacion |

	Scenario: Estudiante escribe comentarios constructivos
		Dado que el estudiante ingresa a la sección "calificacion_docentes"
		Cuando el estudiante seleccione el <nombre_docente>
		Y el estudiante presione la opción "Ver comentarios" de la parte inferior de la descripción del docente
		Y el estudiante dé click al cuadro de texto "Escribe tu comentario"
		Y el estudiante redacte <comentario_constructivo>
		Entonces el sistema almacenará los datos que el estudiante ingresó y mostrará <comentarios_actualizados>
	
		Example: Datos de entrada
		| nombre_docente | comentario_constructivo |
		| Carlos Vilca | Las evaluaciones son coherentes con los temas vistos en clase | 
		Example: Datos de salida
		| comentarios_actualizados |
		| Las evaluaciones son coherentes con los temas vistos en clase |
		| Coloca demasiadas preguntas para el tiempo  |
		| Diseña correctamente el contenido de sus evaluaciones |