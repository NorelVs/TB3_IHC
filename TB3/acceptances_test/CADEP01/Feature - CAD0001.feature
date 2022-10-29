Feature: CAD0001 - Registrar usuario en la aplicación
    Como usuario 
    quiero crear una cuenta
    para administrar mi información.

    Scenario: Usuario se registra en la aplicación
        Dado que el usuario no posee una <cuenta>
        Cuando el usuario presione el botón "Crear cuenta"
        Y el usuario complete los datos del <formulario> referentes al <nombre_universidad>, <codigo_usuario>, <contrasenha>, <nombre_usuario> y <tipo_usuario>
        Y el usuario dé click al botón "Guardar registro"
        Entonces el sistema de la aplicación creará una <cuenta> para el usuario.

        Example: Datos de entrada
        | nombre_universidad | codigo_usuario | contrasenha | nombre_usuario | tipo_usuario|
        | UPC | 00000010 | Hg%faw# | Carlos Perez | Estudiante |

    Scenario: Usuario personaliza profile 
        Dado el usuario ingresó a la aplicación con su <cuenta>
        Cuando el usuario acceda a su profile 
        Y el usuario se ubique en la subpágina "Edición del perfil" 
        Y el usuario rellene los campos <foto_perfil>, <descripcion_personal>, <ubicacion>
        Entonces el sistema hará las actualizaciones de la información respectiva.

        Example: Datos de entrada
        | foto_perfil | ubicacion| | descripcion_personal |   
        | image_perfilestudiante.jpg | | Lima, Comas | | Soy un estudiante de la carrera de Ingenieria de Sistemas de Informacion, me gusta aprender mas cada dia y conocer gente que sea mas competetitiva en el ambito academico y social |
        Example: Datos de salida
        | Perfil del estudiante: Carlos Perez|
        | image_perfilestudiante.jpg | 
        | Lima, Comas |
        | Soy un estudiante de la carrera de Ingenieria de Sistemas de Informacion, me gusta aprender mas cada dia y conocer gente que sea mas competetitiva en el ambito academico y social |
