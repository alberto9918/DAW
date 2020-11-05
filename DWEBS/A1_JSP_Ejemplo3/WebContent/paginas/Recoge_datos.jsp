
<%@ page import="excepciones.*" import="java.util.*" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.DriverManager"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recoger datos Ejemplo 2</title>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
		try{
			String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			String usuario = request.getParameter("usuario");
			String password = request.getParameter("password");
			String pais = request.getParameter("pais");
			String tecnologias = request.getParameter("tecnologias");
			
			if(nombre.isEmpty() || apellido.isEmpty() || usuario.isEmpty() ||
					password.isEmpty() || pais.isEmpty() || tecnologias.isEmpty())
				throw new ExcepcionCampoVacio();
			
			out.println(" antes de conectarse");
			java.sql.Connection miConexion = java.sql.DriverManager
					.getConnection("jdbc:mysql://localhost:3306/proyectojsp"
									+"?useSSL=false"+"&serverTimezone=UTC","usuario","usuario");
			
			out.println("<p>Se conectó con éxito</p>");
			PreparedStatement c_preparada=miConexion.prepareStatement
					("INSERT INTO USUARIOS (nombre,apellido,usuario,contrasena,pais,tecnologia)"
																		+"VALUES (?,?,?,?,?,?)");
			
			c_preparada.setString(1,nombre);
			c_preparada.setString(2,apellido);
			c_preparada.setString(3,usuario);
			c_preparada.setString(4,password);
			c_preparada.setString(5,pais);
			c_preparada.setString(6,tecnologias);
			c_preparada.executeUpdate();
			out.println("<p>se ha registrado con éxito</p");
			
			
			
		}catch(ExcepcionCampoVacio e1){
			out.println("<p><font color=red>Faltan datos</font></p>");
		}catch(NullPointerException e2){
			out.println("<p><font color=red>No estás en el sitio adecuado</font></p>");
		}catch(SQLException e3){
			out.println("<p><font color=red>Ocurrió un error en la base de datos</font></p>");
		}
		catch(Exception e){
			out.println(e.getMessage()+"Ocurrió un error en la base de datos");
		}
	%>
	
</body>
</html>