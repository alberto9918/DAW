<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejemplo 4 - Lista compra inicial</title>
</head>
<body>
	<form name="formulario" action="Ejemplo4_Lista_Compra.jsp" method="POST">
	</form>
	
<h2>Carro de la compra</h2>
	<ul>
		<%
			List<String> listaElementos = (List<String>)session.getAttribute("misElementos");
		
			if(listaElementos==null){
				listaElementos = new ArrayList<String>();
				session.setAttribute("misElementos", listaElementos);
			}
			
			String[] elementos = request.getParameterValues("articulos");
			
			if(elementos != null){
				for (String elem : elementos)
					listaElementos.add(elem);
			}
			for (String elem : listaElementos)
				out.println("<li>" + elem + "</li>");
		%>
	</ul>
</body>
</html>