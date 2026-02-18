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

### Ejercicio 4 – Paréntesis
Se incorporó el uso de paréntesis para permitir el agrupamiento de expresiones y controlar correctamente la precedencia de los operadores.

### Ejercicio 5 – Operador potencia
Se agregó el operador de potencia (`^`), implementado como asociativo a derecha, permitiendo evaluar expresiones con múltiples exponentes.

### Ejercicio 6 – División por cero
Se implementó la detección de divisiones por cero, mostrando un mensaje de error sin finalizar la ejecución del programa.

## Organización del código

Cada ejercicio fue separado en una carpeta independiente, manteniendo una versión base de la calculadora y versiones incrementales para cada ejercicio.  
Esta organización facilita la corrección y el seguimiento de los cambios realizados.

## Conclusión

Se resolvieron correctamente todos los ejercicios del capítulo 1, familiarizando la interacción entre el análisis léxico y el análisis sintáctico.

El trabajo permitió afianzar el uso de Flex y Bison como herramientas fundamentales para la construcción de analizadores.

## Repositorio

El trabajo se encuentra versionado y disponible públicamente en GitHub:

https://github.com/Estemax07/flex-bison
