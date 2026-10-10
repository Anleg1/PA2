
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cotizador Web - PA2</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f1f5f9;
            color: #1e293b;
        }

        header {
            background: #17365d;
            color: white;
            padding: 25px 20px;
            text-align: center;
        }

        header h1 {
            margin: 0 0 8px;
        }

        header p {
            margin: 0;
            color: #dbeafe;
        }

        .contenedor {
            width: 90%;
            max-width: 650px;
            margin: 35px auto;
            padding: 28px;
            background: white;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
        }

        h2 {
            margin-top: 0;
            color: #17365d;
        }

        .campo {
            margin-bottom: 18px;
        }

        label {
            display: block;
            margin-bottom: 7px;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 12px;
            border: 1px solid #cbd5e1;
            border-radius: 6px;
            font-size: 15px;
        }

        input:focus {
            outline: 2px solid #93c5fd;
            border-color: #2563eb;
        }

        button {
            width: 100%;
            padding: 13px;
            border: none;
            border-radius: 6px;
            background: #2563eb;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        button:hover {
            background: #1d4ed8;
        }

        footer {
            text-align: center;
            color: #64748b;
            font-size: 13px;
            padding: 10px 20px 25px;
        }
    </style>
</head>

<body>

<header>
    <h1>Cotizador Web</h1>
    <p>Sistema de cotización y validación de datos</p>
</header>

<main class="contenedor">
    <h2>Datos de la cotización</h2>

    <form action="procesar" method="post">

        <div class="campo">
            <label for="cliente">Nombre del cliente</label>
            <input type="text" id="cliente" name="cliente"
                   placeholder="Ingrese el nombre completo"
                   maxlength="100" required>
        </div>

        <div class="campo">
            <label for="producto">Descripción del producto</label>
            <input type="text" id="producto" name="producto"
                   placeholder="Ingrese el producto o servicio"
                   maxlength="150" required>
        </div>

        <div class="campo">
            <label for="cantidad">Cantidad</label>
            <input type="number" id="cantidad" name="cantidad"
                   min="1" step="1" placeholder="Ej. 3" required>
        </div>

        <div class="campo">
            <label for="precio">Precio unitario (S/)</label>
            <input type="number" id="precio" name="precio"
                   min="0.01" step="0.01"
                   placeholder="Ej. 25.50" required>
        </div>

        <button type="submit">Generar cotización</button>

    </form>
</main>

<footer>
    PA2 - Programación Orientada a Objetos
</footer>

</body>
</html>
