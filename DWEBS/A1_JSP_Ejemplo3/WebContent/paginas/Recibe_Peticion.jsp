<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recibir información ejemplo 5</title>
</head>
<body>
	<%
		//Leemos los datos del form
		String ciudad_favorita = request.getParameter("ciudad_favorita");
		//creamos la cookie con la clase Cookie.servlet.http - Cookie(nombre sitio,valor)
		Cookie c = new Cookie("agencia_viajes.ciudadF",ciudad_favorita);
		//establecemos vida de la cookie en segundos
		c.setMaxAge(365*24*60*60);
		//enviar al usuario agregando cookie a respuesta servidor
		response.addCookie(c);
	%>
	<p>Gracias por su</p>
	<p><a href="agencia_viajes.jsp">Ir a la agencia de viajes</a></p>
	
</body>
</html>