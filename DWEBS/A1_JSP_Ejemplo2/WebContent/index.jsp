<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de registro</title>
    <link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
	<h1>Formulario de registro</h1>
    <p>Hola, proporciona tus datos:</p>

    <form name="formulario" action="paginas/proceso.jsp" method="POST">
        <table>
            <tr>
                <td><label for="name">Nombre:</label></td>

                <td><input class="datos" type="text" name="nombre"></td>
            </tr>

            <tr>
                <td><label for="apellidos">Apellidos:</label></td>

                <td><input class="datos" type="text" name="apellidos"></td>
            </tr>

            <tr>
                <td><label for="promedio">Promedio</label></td>

                <td><input class="datos" type="number" name="promedio"></td>
            </tr>
        </table>

        <p>
            <input type="reset" value="Borrar">
            <input type="submit" value="Enviar">
        </p>
    </form>
</body>
</html>