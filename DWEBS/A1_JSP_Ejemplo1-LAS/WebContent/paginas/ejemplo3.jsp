<%@ page import="java.time.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%! String titulo="Tercera página JSP";%>
<meta charset="UTF-8">
<title><%=titulo %></title>
</head>
<body bgcolor="grey">
<% 
	LocalDate fecha = LocalDate.now();
	LocalTime reloj = LocalTime.now();
	out.println("La fecha de hoy es: "+fecha+" y la hora es: "+reloj);
	
	if(reloj.getHour() <12)
		out.println("<h1>Buenos días</h1>");
	else if(reloj.getHour() < 18)
		out.println("<h1>Buenas tardes</h1>");
	else
		out.println("<h1>Buenas noches</h1>");
%>

<p>
	<a href="../index.html">Volver...</a>
</p>
</body>
</html>