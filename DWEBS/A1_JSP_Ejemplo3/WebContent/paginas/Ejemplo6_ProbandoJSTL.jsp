<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>
<%
	List<String> alumnos = new ArrayList<String>();
	alumnos.add("Antonio");
	alumnos.add("Luisa");
	alumnos.add("Carlos");
	alumnos.add("Maria");
	pageContext.setAttribute("misAlumnos", alumnos);
%>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejemplo 6 - JSTL</title>
</head>
<body>
	<%
		out.println("alumnos mostrados sin JSTL(con scriptlet)");
		for(String elem:alumnos){
			out.println("<p>" + elem + "</p>");
		}
		//inconveniente de este codigo: se mezcla codigo java y codigo HTML
	%>
	
	<c:out value="alumnos mostrados con JSTL"></c:out>
	<!-- En var ponemos un nombre creado ahi, y en items indicamos con lenguaje de expresiones
	 $ y entre llaves el nombre de la variable-->
	<c:forEach var="elem" items="${misAlumnos}">
		<p>${elem}</p>
	</c:forEach>
	
	<p><a href="../index.jsp">volver...</a></p>
	<!-- Ventajs de JSTL: no mezcla código -->

</body>
</html>