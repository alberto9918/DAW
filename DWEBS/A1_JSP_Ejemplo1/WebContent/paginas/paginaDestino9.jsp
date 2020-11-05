<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pagina de destino 9</title>
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
	
		String nombre = request.getParameter("nombre");
		String apellidos = request.getParameter("apellidos");
		String correo = request.getParameter("correo");
		
		String genero = request.getParameter("genero");
		
		String java = request.getParameter("java");
		String c = request.getParameter("c");
		String basic = request.getParameter("basic");
		String html = request.getParameter("html");
		
		String[] idiomas = request.getParameterValues("idiomas");
		
		String comentario = request.getParameter("comentario");
	%>
	<h1>Solicitud Recibida</h1>
    <h2>Tus datos son:</h2>

    <table>
        <tr>
            <td>
                <label for="name">Te llamas:</label>
            </td>

            <td>
                <p><%=nombre %></p>
            </td>
        </tr>

        <tr>
            <td>
                <label for="surname">Apellidos:</label>
            </td>

            <td>
                <p><%=apellidos %></p>
            </td>
        </tr>
        
        <tr>
            <td>
                <label for="email">Tu correo es:</label>
            </td>

            <td>
                <p><%=correo %></p>
            </td>
        </tr>

        <tr>
            <td>
                <label for="gender">Eres:</label>
            </td>

            <td>
                <p><%=genero %></p>
            </td>
        </tr>
    </table>

    <%
    	out.print("<p>Elegiste los siguientes destinos:</p>");
    	if(java != null){
    		out.print("<p> Java </p>");
    	}
    	if(c != null){
    		out.print("<p> C </p>");
    	}
    	if(basic != null){
    		out.print("<p> Basic </p>");
    	}
    	if(html != null){
    		out.print("<p> HTML </p>");
    	}
    %>
    <p>Los idiomas que comprendes son:</p>
    <%=idiomas %>

    <p>
        <a href="ejemplo9.jsp">
            <button type="button">Regresar</button>
        </a>
    </p>
    <p><a href="../index.jsp">volver...</a></p>
</body>
</html>