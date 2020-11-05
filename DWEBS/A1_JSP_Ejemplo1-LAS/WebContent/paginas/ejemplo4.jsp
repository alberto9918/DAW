<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cuarta página JSP</title>
</head>
<%--<%!Integer u = 0;--%>
<body>
	<table border=2>
	<%--También se podría igualar en el bucle num=u, y luego añadirle +1 a la varable u--%>
	<%
		for(int num=0; num<10; num++)
			out.println("<tr><td> Número "+num+"</td></tr>");
	%>
     </table>
     
     <p><a href="../index.html">volver...</a></p>
</body>
</html>