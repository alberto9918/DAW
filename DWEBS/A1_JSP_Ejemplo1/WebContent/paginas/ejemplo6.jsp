<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejemplo 6</title>
</head>
<style>
    td {
        border: #b2b2b2 1px solid;
        border-collapse: separate;
        text-align: center;
    }
    
    table {
        border: black 1px solid;
        border-collapse: separate;
    }
    
    .redondeado {
        border-radius: 5px;
        width: 90%;
    }
</style>
<body>
	<h1>Ejemplo 6: Uso del objeto request en un formulario</h1>
    <h2>Aquí se piden los datos</h2>
    <p>Hola, por favor introduce la información</p>

    <form name="formulario" enctype="text/plain" action="paginaDestino6.jsp" method="POST">
        <table>
            <tr>
                <td>
                    <label for="name">Nombre:</label>
                </td>

                <td>
                    <input class="redondeado" type="text" id="name" name="nombre">
                </td>
            </tr>

            <tr>
                <td>
                    <label for="color">Color favorito:</label>
                </td>

                <td>
                    <input class="redondeado" type="text" id="color" name="color">
                </td>
            </tr>

            <tr>
                <td>
                    <label for="email">Correo:</label>
                </td>

                <td>
                    <input class="redondeado" type="email" id="email" name="correo">
                </td>
            </tr>
        </table>

        <p>
            <input type="reset" value="Borrar">
            <input type="submit" value="Enviar">
        </p>
    </form>
    <p><a href="../index.jsp">volver...</a></p>
</body>
</html>