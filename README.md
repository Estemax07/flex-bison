# Ejemplos y Ejercicios Flex y Bison

Trabajo práctico realizado para la asignatura Lenguajes de Programación y Transducción  
Universidad Sergio Arboleda

## Introducción

El objetivo de este trabajo práctico es aprender el uso básico de Flex y Bison como herramientas para la construcción de analizadores léxicos y sintácticos.

Para ello, se resolvieron los ejercicios correspondientes al capítulo 1 del libro Flex & Bison, utilizando como base la calculadora propuesta en dicho capítulo.

El desarrollo y las pruebas se realizaron en macOS (Apple Silicon), utilizando versiones actuales de Flex y Bison instaladas mediante Homebrew.

## Desarrollo del trabajo

El trabajo consistió en la implementación y extensión progresiva de una calculadora construida con Flex y Bison.  
A partir de esta base, se incorporaron nuevas funcionalidades mediante las modificaciones propuestas en los ejercicios del capítulo, respetando la separación entre el análisis léxico y el análisis sintáctico.

Cada ejercicio introdujo una mejora específica, permitiendo ampliar la funcionalidad de manera incremental y controlada.

## Consideraciones sobre macOS

En macOS fue necesario enlazar los programas generados por Flex utilizando la librería `-ll` en lugar de `-lfl`, comúnmente utilizada en Linux.

Además, se declararon explícitamente los prototipos de `yylex()` y `yyerror()` para cumplir con el estándar C99 requerido por el compilador clang.

## Ejercicios desarrollados

### Ejercicio 1 – Líneas vacías
Se modificó la gramática para aceptar líneas vacías, evitando errores de sintaxis cuando la entrada no contiene una expresión válida.

### Ejercicio 2 – Números hexadecimales
Se agregó soporte para números en formato hexadecimal (`0x...`) desde el analizador léxico, convirtiéndolos correctamente a valores enteros.

### Ejercicio 3 – Salida en decimal y hexadecimal
Se modificó la acción semántica del parser para mostrar el resultado tanto en formato decimal como hexadecimal.

### Ejercicio 4
El scanner escrito manualmente no necesariamente reconoce exactamente los mismos tokens que el scanner generado con Flex.
Aunque ambos pueden aceptar los mismos patrones básicos, Flex aplica reglas automáticas como longest match y prioridad por orden de aparición, lo que puede generar diferencias en casos límite, manejo de errores o fin de archivo.

### Ejercicio 5
El scanner escrito manualmente no necesariamente reconoce exactamente los mismos tokens que el scanner generado con Flex.
Aunque ambos pueden aceptar los mismos patrones básicos, Flex aplica reglas automáticas como longest match y prioridad por orden de aparición, lo que puede generar diferencias en casos límite, manejo de errores o fin de archivo.

### Ejercicio 6 – División por cero
Se reescribió el programa de conteo de palabras en lenguaje C puro y se comparó con la versión implementada con Flex utilizando un archivo de gran tamaño.

Pruebas realizadas con un archivo de aproximadamente un millón de líneas, generado artificialmente, ejecutando ambos programas con el comando time.

Resultados obtenidos:

Versión Flex (fb1-1):
Tiempo real ≈ 0.98 s

Versión C (wc_c):
Tiempo real ≈ 1.03 s

A partir de estas pruebas no se observa una diferencia de rendimiento significativa entre ambas implementaciones. En este caso particular, la versión desarrollada con Flex resultó levemente más rápida que la versión escrita en C puro.

En cuanto a la depuración, la versión en C requirió un mayor manejo manual del estado (detección de inicio y fin de palabras), mientras que la versión con Flex permitió expresar la lógica de forma más declarativa, resultando más sencilla de mantener y depurar.

## Organización del código

Cada ejercicio fue separado en una carpeta independiente, manteniendo una versión base de la calculadora y versiones incrementales para cada ejercicio.  
Esta organización facilita la corrección y el seguimiento de los cambios realizados.

## Conclusión

Se resolvieron correctamente todos los ejercicios del capítulo 1, familiarizando la interacción entre el análisis léxico y el análisis sintáctico.

El trabajo permitió afianzar el uso de Flex y Bison como herramientas fundamentales para la construcción de analizadores.

## Repositorio

El trabajo se encuentra versionado y disponible públicamente en GitHub:

https://github.com/Estemax07/flex-bison
