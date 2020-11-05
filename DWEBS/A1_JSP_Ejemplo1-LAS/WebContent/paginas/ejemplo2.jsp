<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%! String titulo="Segunda página JSP";
	Integer contador=0;%>
<meta charset="UTF-8">
<title><%=titulo %></title>
</head>
<body>
	<h1><%=titulo %></h1>
	<hr/>
	<p>
		<% contador++;
		out.println("<font color=red><b>Número de veces que se ha visitado esta página desde que se arrancó el servidor: "+contador+"</b></font>");
		int c=1;
		%>
	</p>
	<%--la variable c es local al scriptlet y a la página --%>
	
	<%out.println("<p>La variable c vale: "+c+"</p>");
	c++;
	out.println("<p>La variable c ha cambiado: "+c+"</p>");
	%>
	
	<p>c vale <%=c %></p>
	<p>
		<a href="../index.html">Volver...</a>
	</p>
</body>
</html>