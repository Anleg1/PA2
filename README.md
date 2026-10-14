# PA2 - Programación Orientada a Objetos: Cotizador Web


## Descripción del Trabajo


Aplicación web desarrollada con JSP (JavaServer Pages) y Apache Tomcat que implementa una mini aplicación de cotización. El sistema recibe datos por formulario web (index.jsp), realiza validaciones estrictas y transformaciones de texto utilizando los métodos de la clase String, efectúa cálculos matemáticos avanzados aplicando métodos de la clase Math, y muestra los resultados detallados en una vista de salida (resultado.jsp).

## Integrantes del Equipo

Franco Andrés Diaz Carreal – Vista JSP y diseño del formulario de entrada.

Miguel Angel Caycho Roque – Lógica matemática y aplicación de métodos de la clase Math.

Jesús Alejandro Marcano Méndez – Validaciones y manipulación de texto usando métodos de la clase String.

Jorge Jerson Benito Mayhua – Pruebas, control de calidad e integración de los módulos y redacción del archivo README

David Jared Damazo Valdeos – Instrucciones de ejecución del proyecto y evidencias del funcionamiento de la aplicación.

## Características Técnicas Implementadas

Flujo Web: Recepción de parámetros mediante el método POST desde index.jsp hacia resultado.jsp.

Manipulación de Textos (String): Uso de .trim(), .toUpperCase() y .length() para limpiar espacios, estandarizar nombres de clientes y validar la longitud mínima de las descripciones de los productos.

Lógica Matemática (Math): Uso de Math.abs() para asegurar valores positivos, Math.pow() para calcular factores de descuento escalables a partir de 12 unidades, Math.max() para aplicar topes de descuento y Math.round() con formato decimal para redondear los totales finales.

Manejo de Excepciones: Bloque try-catch para capturar errores de formato numérico (NumberFormatException) en caso de ingresos incorrectos.

## Instrucciones de ejecución

### Requisitos
- Java JDK 21
- Apache Tomcat 11 (también funciona con Tomcat 9)
- IntelliJ IDEA

### Validación previa
Verificar que Java (JDK) esté instalado ejecutando en la ventana de comandos:
`java -version`

### Implementación de Apache Tomcat
1. Descargar el archivo zip de Apache Tomcat desde la página oficial: https://tomcat.apache.org
2. Descomprimir el zip (por ejemplo en `C:\`).
3. Para iniciar el servidor, ir a la carpeta `bin` y ejecutar `startup.bat`. Para detenerlo, ejecutar `shutdown.bat`.
4. Abrir el navegador e ir a http://localhost:8080 para comprobar que Tomcat está funcionando.

### Ejecución del proyecto
1. Descargar el proyecto desde GitHub (**Code → Download ZIP**) o clonarlo desde IntelliJ (**Clone Repository**) y abrir la carpeta `PA2`.
2. Generar el archivo `.war`: en IntelliJ, panel **Maven → Lifecycle → package**. Se crea `PA2.war` en la carpeta `target`.
3. Copiar `PA2.war` en la carpeta `webapps` de Tomcat.
4. Con Tomcat iniciado, abrir en el navegador: http://localhost:8080/PA2/

### Datos de prueba
- Cantidad 3 y precio 25.50: total S/ 76.50, sin descuento.
- Cantidad 12 y precio 10: total S/ 114.00, con descuento por unidades.
- Cantidad 20 y precio 10: total S/ 160.00, se aplica el descuento máximo.
- Producto "Mo": muestra el aviso de descripción muy corta.

### Notas
- Si la ventana de Tomcat se cierra apenas se abre, configurar la variable de entorno `JAVA_HOME` con la ruta del JDK.
- Si sale error 404, verificar que `PA2.war` esté en `webapps` y que la dirección termine en `/PA2/`.

## Evidencias del funcionamiento
Las capturas de la aplicación funcionando están en la carpeta [evidencias](evidencias):
1. [Formulario de entrada](evidencias/01-formulario.png)
2. [Resultado sin descuento](evidencias/02-resultado-normal.png)
3. [Resultado con descuento por unidades](evidencias/03-resultado-descuento.png)
4. [Validación de texto](evidencias/04-error-validacion.png)eg

## Enlace del Video de Exposición: 
