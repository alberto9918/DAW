
<%@ page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejemplo 1</title>
</head>
<body>
	<p>
		Expresión: convertir a mayúsculas: <%=new String("está nublado").toUpperCase() %>
	</p>
	
	<p>Expresión: La resta 8-2 es: <%=8-2 %></p>
	
	<p>
		Expresión: 10 es mayor que 100: <%= 10>100 %>
	</p>
	
	<p>
		Ejemplo de scriptlet: Fecha <% out.println(LocalDate.now()); %>
	</p>
	
	<p>
		Scriptlet <%for(int i=0; i<10; i++) out.println("<p>el mensaje repetido "+i+" veces</p>"); %>
	</p>
	
	<p>DECLARACIÓN</p>
<!-- El símbolo ! sirve para la declaración de metodos y variables a nivel global -->
<%! private int resultado=10;
	public int sumar(int num1, int num2) {
		return num1+num2;
}%>

<p>El resultado de 2+7 es: <%=sumar(2,7)%></p>

<p>el resultado vale: <%=resultado %></p>

<p><a href="../index.html">Volver</a></p>
</body>
</html>