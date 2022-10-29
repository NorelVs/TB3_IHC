Feature: CAD0010 - Visualizar desempeño del docente
	Como profesor
	quiero acceder a la valoración de mi desempeño
	para conocer los beneficios que puedo recepcionar desde mi posición como docente

	Scenario: Profesor visualiza un formulario con su desempeño respecto a su metodología de evaluación
		Dado que el profesor se encuentra en su profile personal
		Cuando el profesor haga click en el botón "Ver valoración de mis estudiantes"
		Entonces el sistema mostrará todas las <evaluaciones_asignadas_por_estudiantes>

        Example: Datos de salida
        | nombre_estudiante | calificacion |
        | Juan Perez | 5 |
        | Luisa Diaz | 1 |
        | Carmen Mariategui | 3 |

	Scenario: Profesor visualiza los posibles beneficios propios
		Dado que el profesor ingresó al apartado de "Ver valoración de mis estudiantes"
		Y el profesor visualiza los puntos obtenidos por su desempeño
		Cuando el profesor dé click al botón "Canjear puntos" de la parte superior derecha
		Entonces el profesor visualizará <inventario_productos> para proceder al intercambio.

        Example: Datos de salida
		| imagen_producto | valor_cadpoints |
		| img_auriculares | 150 |
		| img_calculadora | 70 |