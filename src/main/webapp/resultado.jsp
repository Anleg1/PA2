<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    // 1. Recogemos los datos enviados desde index.jsp
    String clienteInput = request.getParameter("cliente");
    String productoInput = request.getParameter("producto");
    String cantidadStr = request.getParameter("cantidad");
    String precioStr = request.getParameter("precio");

    // Variables limpias
    String clienteLimpio = "";
    String productoLimpio = "";
    String mensajeValidacion = "Cotización procesada correctamente.";
    boolean todoOk = true;

    // 2. Aplicación directa de los métodos de la clase String requeridos
    if (clienteInput != null && !clienteInput.trim().isEmpty()) {
        // trim() elimina espacios y toUpperCase() pasa todo a mayúsculas
        clienteLimpio = clienteInput.trim().toUpperCase();
    } else {
        todoOk = false;
        mensajeValidacion = "Error: El nombre del cliente es obligatorio.";
    }

    if (productoInput != null && !productoInput.trim().isEmpty()) {
        // trim() limpia espacios
        productoLimpio = productoInput.trim();

        // length() valida la longitud del texto
        if (productoLimpio.length() < 3) {
            todoOk = false;
            mensajeValidacion = "Advertencia: La descripción del producto es muy corta (mínimo 3 caracteres).";
        }
    } else {
        todoOk = false;
    }

    // 3. Conversión segura de números (usando Double para evitar conflictos con decimales)
    double cantidad = 0.0;
    double precio = 0.0;
    double total = 0.0;

    int numeroCoti = (int)(Math.random() * 9000) + 1000;

    String mensajeDescuento = "Sin descuento (Precio regular)";

    try {
        if (cantidadStr != null && !cantidadStr.trim().isEmpty()) {
            cantidad = Double.parseDouble(cantidadStr);
        }
        if (precioStr != null && !precioStr.trim().isEmpty()) {
            precio = Double.parseDouble(precioStr);
        }
    // CALCULOS CON MATH
        double subtotalBruto = cantidad * precio;
        subtotalBruto = Math.abs(subtotalBruto); //para evitar que sea negativo y por si el min=1 falla

        double totalFinal = subtotalBruto;

                //  El descuento por unidades solo aplica si compra 12 o más unidades
                if (cantidad >= 12) {
                    double factorDescuento = Math.pow(0.95, cantidad - 11); // Math.pow
                    double subtotalConDescuento = subtotalBruto * factorDescuento;
                    totalFinal = Math.max(subtotalConDescuento, subtotalBruto * 0.80); // Math.max

                    // Actualizamos el mensaje porque SÍ hubo descuento
                    mensajeDescuento = "¡Descuento por unidades aplicado (A partir de 12 unidades)!";
                } else {
                    totalFinal = subtotalBruto;
                }

        total = Math.round(totalFinal * 100.0) / 100.0;

    } catch (NumberFormatException e) {
        todoOk = false;
        mensajeValidacion = "Error: Formato de número inválido en cantidad o precio.";
    }
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resultado de la Cotización</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f1f5f9; padding: 40px; color: #1e293b; }
        .tarjeta { background: white; max-width: 500px; margin: 0 auto; padding: 30px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.05); }
        h2 { color: #17365d; margin-top: 0; }
        p { font-size: 16px; line-height: 1.5; }
        .exito { color: #16a34a; font-weight: bold; }
        .error { color: #dc2626; font-weight: bold; }
        a { display: inline-block; margin-top: 20px; text-decoration: none; background: #2563eb; color: white; padding: 10px 20px; border-radius: 6px; }
        a:hover { background: #1d4ed8; }
        .info-descuento {
                color: #2563eb;
                font-size: 14px;
            }
    </style>
</head>
<body>

<div class="tarjeta">
    <h2>Resultado de la Cotización</h2>

    <% if (todoOk) { %>
        <!-- Mostramos los datos limpios aplicando métodos String -->
        <p><strong>Cliente (toUpperCase + trim):</strong> <%= clienteLimpio %></p>
        <p><strong>Producto (trim):</strong> <%= productoLimpio %></p>
        <p><strong>Cantidad:</strong> <%= cantidad %></p>
        <p><strong>Precio Unitario:</strong> S/ <%= String.format("%.2f", precio) %></p>
        <p><strong>Total a Pagar:</strong> S/ <%= String.format("%.2f", total) %></p>
        <p><strong>Cotizacion N°:</strong> #<%= numeroCoti %></p>

        <p class="info-descuento"><em><%= mensajeDescuento %></em></p>

        <p class="exito"><%= mensajeValidacion %></p>
    <% } else { %>
        <p class="error"><%= mensajeValidacion %></p>
    <% } %>

    <a href="index.jsp">Volver al cotizador</a>
</div>

</body>
</html>
