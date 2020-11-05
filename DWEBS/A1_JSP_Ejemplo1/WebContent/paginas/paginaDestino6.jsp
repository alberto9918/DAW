<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pagina de destino 6</title>
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
</style>
<body>
	<h1>Esta es la página de destino</h1>
    <h2>Aquí se despliegan los datos que se recibieron</h2>
    <p>Tus datos son los siguientes</p>

    <table>
        <tr>
            <td>
                <label for="name">Te llamas:</label>
            </td>

            <td>
                <p>AQUI VA EL NOMBRE</p>
            </td>
        </tr>

        <tr>
            <td>
                <label for="color">Tu color favorito es:</label>
            </td>

            <td>
                <p>AQUI VA EL COLOR</p>
            </td>
        </tr>

        <tr>
            <td>
                <label for="email">Y tu correo es:</label>
            </td>

            <td>
                <p>AQUI VA EL CORREO</p>
            </td>
        </tr>
    </table>

    <p>
        <a href="ejemplo6.jsp">
            <button type="button">Regresar</button>
        </a>
    </p>
    <p><a href="../index.jsp">volver...</a></p>
</body>
</html>