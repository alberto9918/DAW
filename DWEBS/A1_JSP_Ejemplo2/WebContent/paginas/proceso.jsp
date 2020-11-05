<%@page import="clases.Alumno"%>
<%@page import="clases.ExcepcionCampoVacio"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proceso</title>
    <link rel="stylesheet" type="text/css" href="../estilo.css">
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String nombre = request.getParameter("nombre");
		String apellidos = request.getParameter("apellidos");
		String promedio = request.getParameter("promedio");
		
		try{		
		
			if(nombre.isEmpty() || apellidos.isEmpty() || promedio.isEmpty()){
				throw new ExcepcionCampoVacio();
			}
			Double prom = Double.parseDouble(promedio);
			out.println("<h1>Alumno registrado correctamente</h1>");
			Alumno al = new Alumno(nombre, apellidos, prom);
			
			List<Alumno> lista = (List<Alumno>)session.getAttribute("lista");
			if(lista==null){
				lista = new ArrayList<Alumno>();
			}
			lista.add(al);
			session.setAttribute("lista", lista);
			
		}
		
		catch(ExcepcionCampoVacio e1){
			out.println("<p><font color=red> Faltan datos </font</p>");
		}
		
		catch(NumberFormatException e2){
			out.println("<p><font color=red> Formato erróneo </font</p>");
		}
		
		catch(NullPointerException e1){
			out.println("<p><font color=red> No estás en el sitio adecuado</font</p>");
		}

	%>

    
    

</body>
</html>