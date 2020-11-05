<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pagina de destino 8</title>
</head>
<style>
    td {
        border: #b2b2b2 1px solid;
        border-collapse: separate;
        text-align: center;
    }
    
    table {
        border: black 1px solid;
        border-collapse: separate;
    }
</style>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String transporte = request.getParameter("transporte");
		
		String ciudad = request.getParameter("ciudad");
		String bosque = request.getParameter("bosque");
		String playa = request.getParameter("playa");
	%>
	<h1>Esta es la página de destino</h1>
    <h2>Aquí se despliegan los datos que se recibieron</h2>

    <table>
        <tr>
            <td>
                <label for="transpot">Tu transporte preferido es:</label>
            </td>

            <td>
                <p><%=transporte %></p>
            </td>
        </tr>
    </table>
    <%
    	out.print("<p>Elegiste los siguientes destinos:</p>");
    	if(ciudad != null){
    		out.print("<p> ciudad </p>");
    	}
    	if(bosque != null){
    		out.print("<p> bosque </p>");
    	}
    	if(playa != null){
    		out.print("<p> playa </p>");
    	}
    %>

    <p>
        <a href="ejemplo8.jsp">
            <button type="button">Regresar</button>
        </a>
    </p>
    <p><a href="../index.jsp">volver...</a></p>
</body>
</html>