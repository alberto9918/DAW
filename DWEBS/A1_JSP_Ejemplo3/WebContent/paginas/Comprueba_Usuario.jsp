<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comprobar usuario ejemplo 3</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String u = request.getParameter("usuario");
		String c = request.getParameter("password");
		
		out.print(u + " " + c);
		try{
			Connection miConexion = DriverManager.getConnection
					("jdbc:mysql://localhost:3306/proyectojsp"+"?useSSL=false"+
						"&serverTimezone=UTC","usuario","usuario");
			PreparedStatement c_preparada = miConexion.prepareStatement
					("SELECT * FROM USUARIOS WHERE USUARIO=? AND CONTRASENA=?"
							//,ResultSet.TYPE_SCROLL_INSENSITIVE,
							//ResultSet.CONCUR_UPDATABLE
							//Estos dos atributos de arriba se ponen si quieres usar abajo en el if,
							// el r.absolute(x)
							);
			
			c_preparada.setString(1,u);
			c_preparada.setString(2,c);
			
			ResultSet r = c_preparada.executeQuery();
			
			if(r.next()) out.println("Usuario autorizado");
			else out.println("_No existe usuario con esos datos");
			
		}catch(Exception e){
			out.println("ocurrió un error. " + e.getMessage());
		}
	%>

	
</body>
</html>