<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejemplo 7</title>
    <link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
    <h1>Esta es la página de inicio</h1>
    <h2>Aquí se piden los datos</h2>
    <p>Hola, por favor introduce la información</p>

    <form name="formulario" action="paginaDestino7.jsp" method="POST">
        <table>
            <tr>
                <td><label for="name">Nombre:</label></td>

                <td><input class="datos" type="text" name="nombre"></td>
            </tr>

            <tr>
                <td><label for="initial_minute">Minuto inicial:</label></td>

                <td><input class="datos" type="number" name="minI"></td>
            </tr>

            <tr>
                <td><label for="final_minute">Minuto final:</label></td>

                <td><input class="datos" type="number" name="minF"></td>
            </tr>

            <tr>
                <td><label for="distance">Distancia recorrida en metros:</label></td>

                <td><input class="datos" type="number" name="distancia"></td>
            </tr>
        </table>

        <p>
            <input type="reset" value="Borrar">
            <input type="submit" value="Enviar">
        </p>
    </form>
    <p><a href="../index.html">volver...</a></p>
</body>
</html>