<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejemplo 1</title>
</head>
<body>
	<h2>Objetos predefinidos JSP</h2>
	
	<p>
		Petición de datos del navegador: <%= request.getHeader("User-Agent")%>
	</p>
	
	<p>
		Petición del idioma usado por el cliente: <%=request.getLocale() %>
	</p>
	
	<p>
		Id de sesión usado por el cliente:<%= request.getRequestedSessionId()%>
	</p>
	
	<p><a href="../index.jsp">volver...</a></p>
</body>
</html>