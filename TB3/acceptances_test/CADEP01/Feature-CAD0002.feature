Feature: CAD0002 - Aprender el funcionamiento de la aplicación
Como usuario 
    quiero un tutorial introductorio 
    para conocer todas las funcionalidades que me ofrece

    Scenario: Usuario reproduce tutorial de las funcionalidades de la aplicación
        Dado que el usuario ingresó a la aplicación a través de sus cuenta personal
        Cuando el usuario de click al botón "Acceder al tutorial introductorio" 
        que se encuentra en la parte izquierda inferior
        Y seleccione el <tipo usuario> al que pertenece
        Entonces el sistema reproduce un <tutorial> donde se instruye la ubicaciones de las secciones
        correspondientes al tipo de usuario escogido

        Example: Datos de entrada
        | tipo usuario |
        | estudiante|
        Example: Datos de salida
        | video tutorial|
        | tutorial.mp4|


    