<%@page import="calculo.ExcepcionCampoVacio"%>
<%@page import="calculo.Calculo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pagina de destino 7</title>
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
	String tiempo_inicial = request.getParameter("minuto_inicial");
	String tiempo_final = request.getParameter("minuto_final");
	String distancia = request.getParameter("distancia");
	
	Double tIn=0.0, tFin=0.0, dist=0.0, tiempo=0.0, vel=0.0;
	try{
		if(nombre.isEmpty() || tiempo_inicial.isEmpty() && tiempo_final.isEmpty() && distancia.isEmpty())
			throw new ExcepcionCampoVacio();
		
		tIn = Double.parseDouble(tiempo_inicial);
		tFin = Double.parseDouble(tiempo_final);
		dist = Double.parseDouble(distancia);
		
		Calculo calcular = new Calculo(tIn, tFin, dist);
		vel = calcular.velocidad();
		tiempo = calcular.tiempoTotal();
	}catch(ExcepcionCampoVacio e1){
		out.println("<p><font color=red>Faltan datos</font></p>");
	}catch(NullPointerException e2){
		out.println("<p><font color=red>No estás en el sitio adecuado</font></p>");
	}catch(NumberFormatException e3){
		out.println("<p><font color=red>Formato erróneo</font></p>");
	}
	%>
	<h1>Resultado</h1>
    <p>Hola <%=nombre%></p>

    <table>
        <tr>
            <td>
                <label for="time">Tu tiempo total fue:</label>
            </td>

            <td>
                <p><%=Double.toString(tiempo) %> minutos</p>
            </td>
        </tr>

        <tr>
            <td>
                <label for="speed">Y tu velocidad:</label>
            </td>

            <td>
                <p><%=Double.toString(vel)%> </p>
            </td>
        </tr>
    </table>

    <p>
        <a href="ejemplo7.jsp">
            <button type="button">Regresar</button>
        </a>
    </p>
    <p><a href="../index.jsp">volver...</a></p>
</body>
</html>