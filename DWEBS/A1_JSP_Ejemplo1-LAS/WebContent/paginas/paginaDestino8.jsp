<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="clase.com.negocio.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagina de destino 8</title>
    <link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
<%
	String transporte = request.getParameter("transporte");
	String[] destinos = request.getParameterValues("destino");
	
	try{
		if(transporte.isEmpty() || destinos.length==0)
			throw new ExcepcionCampoVacio();
	}catch(ExcepcionCampoVacio e1){
		out.println("<p><font color=red>Faltan datos</font></p>");
	}catch(NullPointerException e2){
		out.println("<p><font color=red>Faltan datos</font></p>");
	}
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
    <p>Elegiste los siguientes destinos:</p>
    
    	<ul>
		    <%
			    for(int i=0; i<destinos.length; i++){
			    	out.println("<li>"+destinos[i]+"</li>");
			    }
		    %>
    	</ul>

    <p>
        <a href="ejemplo8.jsp">
            <button type="button">Regresar</button>
        </a>
    </p>
    <p><a href="../index.html">volver...</a></p>
</body>
</html>