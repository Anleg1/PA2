package com.lideratec;


public class Cotizador {

    // Variables (atributos) de la clase
    private String cliente;
    private String producto;
    private int cantidad;
    private double precio;
    private String mensajeValidacion;
    private boolean esValido;

    // Constructor que recibe los datos del formulario
    public Cotizador(String cliente, String producto, String cantidadStr, String precioStr) {
        this.esValido = true;
        this.mensajeValidacion = "Cotización procesada exitosamente.";

        procesarYValidar(cliente, producto, cantidadStr, precioStr);
    }

    // Métodos donde  aplicamos los métodos de la clase String
    private void procesarYValidar(String cli, String prod, String cantStr, String precStr) {
        // 1. Aplicación de métodos String en el nombre del cliente
        if (cli != null && !cli.trim().isEmpty()) {
            // trim() quita espacios innecesarios y toUpperCase() pasa todo a mayúsculas
            this.cliente = cli.trim().toUpperCase();
        } else {
            this.cliente = "DESCONOCIDO";
            this.esValido = false;
            this.mensajeValidacion = "Error: El nombre del cliente es obligatorio. ";
        }

        // 2. Aplicación de métodos String en la descripción del producto
        if (prod != null && !prod.trim().isEmpty()) {
            // trim() limpia espacios
            this.producto = prod.trim();

            // length(): Validamos que la descripción del producto tenga al menos 3 caracteres
            if (this.producto.length() < 3) {
                this.esValido = false;
                this.mensajeValidacion += "Advertencia: La descripción del producto es muy corta (mínimo 3 caracteres). ";
            }
        } else {
            this.producto = "";
            this.esValido = false;
            this.mensajeValidacion += "Error: La descripción del producto es obligatoria. ";
        }

        // Transformación básica de números (sin usar métodos de la clase Math)
        try {
            this.cantidad = (cantStr != null && !cantStr.isEmpty()) ? Integer.parseInt(cantStr) : 0;
            this.precio = (precStr != null && !precStr.isEmpty()) ? Double.parseDouble(precStr) : 0.0;

            if (this.cantidad <= 0 || this.precio <= 0) {
                this.esValido = false;
                this.mensajeValidacion += "Error: La cantidad y el precio deben ser mayores a cero.";
            }
        } catch (NumberFormatException e) {
            this.esValido = false;
            this.mensajeValidacion = "Error: Formato de números inválido.";
            this.cantidad = 0;
            this.precio = 0.0;
        }
    }

    // Métodos Getters para que el JSP pueda leer los resultados
    public String getCliente() {
        return cliente;
    }

    public String getProducto() {
        return producto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public double getPrecio() {
        return precio;
    }

    public String getMensajeValidacion() {
        return mensajeValidacion;
    }

    public boolean isEsValido() {
        return esValido;
    }
}
