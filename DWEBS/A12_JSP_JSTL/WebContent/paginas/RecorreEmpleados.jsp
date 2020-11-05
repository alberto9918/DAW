<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*,java.sql.*,clase.com.jsptags.Empleado" %>    
<% 
		//PARTE 1ª: EXTRAER LOS DATOS DE LA TABLA EMPLEADO
		
		//vb alcance de página
		List<Empleado> datos=new ArrayList<Empleado>();
		
		//nos conectamos a la BD
		//Class.forName("com.mysql.jdbc.Driver");
		try{
			Connection  miConexion=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectojsp"+"?useSSL=false"+"&serverTimezone=UTC","usuario","usuario");
		 	PreparedStatement c_preparada=miConexion.prepareStatement("SELECT nombre,apellido,puesto,salario FROM EMPLEADOS");
			
			ResultSet rs=c_preparada.executeQuery();
			//mueve el cursor una fila. Inicialmente se mueve a la primera fila
			while(rs.next()){
				//rs.getString(1)   Recupera el valor de la columna designada en el
		        // fila actual del objeto ResultSet como una cadena
					datos.add(new Empleado(rs.getString(1),rs.getString(2),rs.getString(3),rs.getLong(4)));
			}
			rs.close();
			miConexion.close();
				
		}catch(Exception e){
			out.println("ocurrió un error");
		}
		
		//atributo en el contexto de página
		pageContext.setAttribute("losEmpleados", datos);
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Recorre empleados</title>
<style>
	.cabecera{
		font-weight:bold;
	}
</style>
</head>
<body>
	<h2>EJEMPLO  c:forEach en JSTL (se recorre un atributo de contexto de página) </h2>
	<!-- muestra los empleados en distintas líneas-->
	<h4>listado de empleados en líneas</h4>
	<c:forEach var="EmpTemp" items="${losEmpleados}">
			${EmpTemp.nombre}    ${EmpTemp.apellido}  ${EmpTemp.puesto}  ${EmpTemp.salario} <br/>
	</c:forEach>
	
	
	<!-- ***************************************************************************************************-->
	<p>IMPORTANTE:   c:forEach en JSTL ( Vb de página declarada en el scriplet) Funciona como atributo de contexto, como vb de scriplet no.</p>
	<c:forEach var="EmpTemp" items="${datos}">
			${EmpTemp.nombre}    ${EmpTemp.apellido}  ${EmpTemp.puesto}  ${EmpTemp.salario} <br/>
	</c:forEach>
	<br/>
	<br/>
	
	<!-- ***************************************************************************************************-->
	<h2>EJEMPLO   c:forEach en JSTL formato de tabla </h2>
	<h4>listado de empleados en tabla</h4>
	<table border="1">
		<tr class="cabecera"><td>Nombre</td><td>Apellidos</td><td>Puesto</td><td>Salario</td></tr>
		
		<c:forEach var="EmpTemp" items="${losEmpleados}">
			<tr>
				<td>${EmpTemp.nombre}</td>
				<td> ${EmpTemp.apellido}</td>
				<td> ${EmpTemp.puesto}</td>
				<td> ${EmpTemp.salario}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>