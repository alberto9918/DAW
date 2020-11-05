<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="clase.com.negocio.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagina de destino 7</title>
    <link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
	<%
	String nombre = request.getParameter("nombre");
	String tInicial = request.getParameter("minI");
	String tFinal = request.getParameter("minF");
	String dist = request.getParameter("distancia");
	
	Double tIni=0.0, tFin=0.0, distan=0.0, tiempo=0.0, vel=0.0;
	try{
		if(nombre.isEmpty() || tInicial.isEmpty() && tFinal.isEmpty() && dist.isEmpty())
			throw new ExcepcionCampoVacio();
		tIni = Double.parseDouble(tInicial);
		tFin=Double.parseDouble(tFinal);
		distan=Double.parseDouble(dist);
		Calculo calcula = new Calculo(tIni, tFin, distan);
		vel = calcula.velocidad();
		tiempo=calcula.tiempoTotal();
	}catch(ExcepcionCampoVacio e1){
		out.println("<p><font color=red>Faltan datos</font></p>");
	}catch(NullPointerException e2){
		out.println("<p><font color=red>Faltan datos</font></p>");
	}catch(NumberFormatException e3){
		out.println("<p><font color=red>Formato erróneo</font></p>");
	}
	%>

    <h1>Resultado</h1>
    <p>Hola <%=nombre %></p>

    <table>
        <tr>
            <td><label for="time">Tu tiempo total fue:</label></td>

            <td><p><%=Double.toString(tiempo) %> minutos</p></td>
        </tr>

        <tr>
            <td><label for="speed">Y tu velocidad:</label></td>

            <td><p><%=Double.toString(vel)%> </p></td>
        </tr>
    </table>

    <p>
        <a href="ejemplo7.html">
            <button type="button">Regresar</button>
        </a>
    </p>
    <p><a href="../index.html">volver...</a></p>
</body>
</html>