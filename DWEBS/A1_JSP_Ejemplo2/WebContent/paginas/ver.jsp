<%@page import="clases.Alumno"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Ver</title>
</head>
<body>

	<%
		List<Alumno> lista = (List<Alumno>)session.getAttribute("lista");
		if(lista == null){
			out.println("No existen alumnos registrados");
		}else{
			out.println("<h2>Lista de alumnos registrados</h2>");
			out.println("<ul>");
			for (Alumno elem:lista){
				out.println("<li>Nombre: " + elem.getNombre() + "</li>");
			}
			out.println("</ul>");
		}
	%>
	<p><a href="../index.jsp">Volver a inicio</a></p>

</body>
</html>