<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejemplo 7</title>
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
	<h1>Esta es la página de inicio</h1>
    <h2>Aquí se piden los datos</h2>
    <p>Hola, por favor introduce la información</p>

    <form name="formulario" action="paginaDestino7.jsp" method="POST">
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
                    <label for="initial_minute">Minuto inicial:</label>
                </td>

                <td>
                    <input class="redondeado" type="number" id="initial_minute" name="minuto_inicial">
                </td>
            </tr>

            <tr>
                <td>
                    <label for="final_minute">Minuto final:</label>
                </td>

                <td>
                    <input class="redondeado" type="number" id="final_minute" name="minuto_final">
                </td>
            </tr>

            <tr>
                <td>
                    <label for="distance">Distancia recorrida en metros:</label>
                </td>

                <td>
                    <input class="redondeado" type="number" id="distance" name="distancia">
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