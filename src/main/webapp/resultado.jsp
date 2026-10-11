<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="modelo.Cotizador" %>
<%
    // 1. Recogemos los datos enviados desde index.jsp
    String cliInput = request.getParameter("cliente");
    String prodInput = request.getParameter("producto");
    String cantInput = request.getParameter("cantidad");
    String precInput = request.getParameter("precio");

    // 2. Creamos el objeto de nuestra clase;
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
        .error { color: #dc2626; font-weight: bold; }
        .exito { color: #16a34a; font-weight: bold; }
        a { display: inline-block; margin-top: 20px; text-decoration: none; background: #2563eb; color: white; padding: 10px 20px; border-radius: 6px; }
        a:hover { background: #1d4ed8; }
    </style>
</head>
<body>

<div class="tarjeta">
    <h2>Resultado de la Cotización</h2>

    <% if (miCotizacion.isEsValido()) { %>
        <!-- Mostramos los datos limpios gracias a los métodos de la clase String -->
        <p><strong>Cliente (Procesado con String):</strong> <%= miCotizacion.getCliente() %></p>
        <p><strong>Producto (Limpio):</strong> <%= miCotizacion.getProducto() %></p>
        <p><strong>Cantidad:</strong> <%= miCotizacion.getCantidad() %></p>
        <p><strong>Precio Unitario:</strong> S/ <%= miCotizacion.getPrecio() %></p>
        <p><strong>Total a Pagar:</strong> S/ <%= miCotizacion.calcularTotal() %></p>

        <p class="exito"><%= miCotizacion.getMensajeValidacion() %></p>
    <% } else { %>
        <p class="error"><%= miCotizacion.getMensajeValidacion() %></p>
    <% } %>

    <a href="index.jsp">Volver al cotizador</a>
</div>

</body>
</html>