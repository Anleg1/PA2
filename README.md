PA2 - Programación Orientada a Objetos: Cotizador Web


Descripción del Trabajo


Aplicación web desarrollada con JSP (JavaServer Pages) y Apache Tomcat que implementa una mini aplicación de cotización. El sistema recibe datos por formulario web (index.jsp), realiza validaciones estrictas y transformaciones de texto utilizando los métodos de la clase String, efectúa cálculos matemáticos avanzados aplicando métodos de la clase Math, y muestra los resultados detallados en una vista de salida (resultado.jsp).

Integrantes del Equipo

Franco Andrés Diaz Carreal – Vista JSP y diseño del formulario de entrada.

Miguel Angel Caycho Roque – Lógica matemática y aplicación de métodos de la clase Math.

Jesús Alejandro MarcanoMéndez – Validaciones y manipulación de texto usando métodos de la clase String.

Jorge Jerson Benito Mayhua – Pruebas, control de calidad e integración de los módulos y redacción del archivo README

Características Técnicas Implementadas
Flujo Web: Recepción de parámetros mediante el método POST desde index.jsp hacia resultado.jsp.

Manipulación de Textos (String): Uso de .trim(), .toUpperCase() y .length() para limpiar espacios, estandarizar nombres de clientes y validar la longitud mínima de las descripciones de los productos.

Lógica Matemática (Math): Uso de Math.abs() para asegurar valores positivos, Math.pow() para calcular factores de descuento escalables a partir de 12 unidades, Math.max() para aplicar topes de descuento y Math.round() con formato decimal para redondear los totales finales.

Manejo de Excepciones: Bloque try-catch para capturar errores de formato numérico (NumberFormatException) en caso de ingresos incorrectos.

Enlace del Video de Exposición: 
