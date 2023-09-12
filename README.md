# Sistema de Registro y Login en Pascal

Este es un programa simple en Pascal que implementa un sistema de registro y login utilizando una función de hash para verificar las contraseñas. El programa fue desarrollado como parte de una tarea de programación.

## Descripción del Programa

El programa consta de los siguientes componentes:

- `readAndHashLn`: Una función que lee una contraseña desde la entrada estándar y calcula su código de hash utilizando una función hash personalizada.

- `writeFallo`: Un procedimiento que muestra un mensaje de intento de login fallido.

- `login`: Un procedimiento que maneja el proceso de login. El usuario tiene un número limitado de intentos para ingresar la contraseña correcta.

## Uso del Programa

1. Ejecuta el programa.

2. Registra un usuario ingresando una contraseña. El programa calculará y mostrará el código de hash de la contraseña.

3. Intenta iniciar sesión con la contraseña registrada. Tienes un número limitado de intentos.

4. Si la contraseña ingresada coincide con la contraseña registrada, el programa mostrará un mensaje de "Login realizado correctamente". De lo contrario, mostrará un mensaje de "Intento de login fallido".

## Configuración Personalizada

Puedes personalizar la configuración del programa ajustando las siguientes constantes:

- `SEMILLADJB`: La semilla para el cálculo del código de hash.
- `PASODJB`: El paso para el cálculo del código de hash.
- `NDJB`: El valor N para el cálculo del código de hash.

## Requisitos

Para ejecutar este programa, necesitas un compilador de Pascal compatible. Asegúrate de que tu entorno de desarrollo esté configurado correctamente.

## Ejemplo de Ejecución

```pascal
Registro de Usuario
Ingrese su contraseña:
mypassword
Hash: 12345
Login de Usuario
Ingrese su contraseña, tiene hasta 3 intentos.
wrongpassword
Intento de login fallido (1 de 3)
...
Fuera de aquí!
