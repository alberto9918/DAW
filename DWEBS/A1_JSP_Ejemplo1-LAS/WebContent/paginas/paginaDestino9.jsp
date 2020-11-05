<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="clase.com.negocio.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagina de destino 9</title>
    <link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
	<%
	String nombre = request.getParameter("nombre");
	String apellidos = request.getParameter("apellidos"); 
	String correo = request.getParameter("correo");
	String genero = request.getParameter("genero");
	String[] lenguajes = request.getParameterValues("lenguajes");
	String[] idiomas = request.getParameterValues("idiomas");
	String comentario = request.getParameter("comentario");
	
	try{
		if(nombre.isEmpty() || apellidos.isEmpty())
			throw new ExcepcionCampoVacio();
	}catch(ExcepcionCampoVacio e1){
		out.println("<p><font color=red>Faltan datos</font></p>");
	}catch(NullPointerException e2){
		out.println("<p><font color=red>Faltan datos</font></p>");
	}
	
	%>
    <h1>Solicitud Recibida</h1>
    <h2>Tus datos son:</h2>

    <table>
        <tr>
            <td><label for="name">Te llamas:</label></td>

            <td><p><%=nombre %></p></td>
        </tr>

        <tr>
            <td><label for="surname">Apellidos:</label></td>

            <td><p><%=apellidos %></p></td>
        </tr>
        
        <tr>
            <td><label for="email">Tu correo es:</label></td>

            <td><p><%=correo %></p></td>
        </tr>

        <tr>
            <td><label for="gender">Eres:</label></td>

            <td><p><%=genero %></p></td>
        </tr>
    </table>

    <p>Manejas los siguientes lenguajes de programación:</p>
    <p>
    	<%
    		for(int i=0; i<lenguajes.length; i++){
    			out.print(lenguajes[i]+", ");
    		}
    	%>
    </p>
    
    <p>Los idiomas que comprendes son:</p>
    <p>
    	<%
    		for(int i=0; i<idiomas.length; i++){
    			out.print(idiomas[i]+", ");
    		}
    	%>
    </p>
    
    <p><%=comentario %></p>

    <p>
        <a href="ejemplo9.jsp">
            <button type="button">Regresar</button>
        </a>
    </p>
    <p><a href="../index.html">volver...</a></p>
</body>
</html>