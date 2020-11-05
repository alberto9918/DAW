<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagina de destino 6</title>
    <link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
	
	<%
	String nombre = request.getParameter("nombre");
	String color = request.getParameter("color");
	String mail = request.getParameter("mail");
	%>

    <h1>Esta es la página de destino</h1>
    <h2>Aquí se despliegan los datos que se recibieron</h2>
    <p>Tus datos son los siguientes</p>

    <table>
        <tr>
            <td><label for="name">Te llamas:</label></td>

            <td><%=nombre %></td>
        </tr>

        <tr>
            <td><label for="color">Tu color favorito es:</label></td>

            <td><%=color %></td>
        </tr>

        <tr>
            <td><label for="email">Y tu correo es:</label></td>

            <td><%=mail %></td>
        </tr>
    </table>

    <p>
        <a href="ejemplo6.jsp">
            <button type="button">Regresar</button>
        </a>
    </p>
    <p><a href="../index.html">volver</a></p>
</body>
</html>