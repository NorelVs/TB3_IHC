Feature: CAD0003 - Revisar rol de exámenes y organizar tiempo
	Como estudiante
	quiero revisar mi rol de exámenes 
	para mejorar la organización de mi tiempo.
	
	Scenario: Estudiante revisa su rol de exámenes
		Dado que el estudiante ha ingresado a la aplicación
        Cuando el estudiante dé click a la pestaña "Programacion de Examenes" del menú de navegación de la parte lateral derecha
        Entonces el sistema muestra la "subpagina de la pestana"
        con la <lista de examenes> y las <fechas> a evaluar durante el ciclo.

		Example: Datos de salida

		| lista de exámenes| |fecha del examen|
        |exámen de matematica| |20 de mayo de 2022|

	Scenario: Estudiante inserta recordatorios 
		Dado que el estudiante se encuentra en la subpágina de la pestaña "Programacion de Examenes"
        Cuando el estudiante dé click al botón "Añadir recordatorios" localizado en la parte inferior de la página
        Entonces el sistema muestra el <cuadro de texto> correspondiente al ingreso de recordatorios.

		Example: Datos de salida
		| cuadro de texto |
        | añadir recordatorios|


