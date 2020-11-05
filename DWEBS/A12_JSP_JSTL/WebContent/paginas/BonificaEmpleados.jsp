<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*,java.sql.*,clase.com.jsptags.Empleado" %>    
<% 
		
		List<Empleado> datos=new ArrayList<Empleado>();
		
		/**nos conectamos a la BD
		Class.forName("com.mysql.jdbc.Driver");*/
		try{
		Connection  miConexion=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectojsp"+"?useSSL=false"+"&serverTimezone=UTC","usuario","usuario");
		PreparedStatement c_preparada=miConexion.prepareStatement("SELECT nombre,apellido,puesto,salario FROM EMPLEADOS");
			
		ResultSet rs=c_preparada.executeQuery();
		while(rs.next())
			datos.add(new Empleado(rs.getString(1),rs.getString(2),rs.getString(3),rs.getLong(4)));
		
		rs.close();
		miConexion.close();
		
		}catch(Exception e){
			out.println("ocurrió un error");
		}
		
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
	<!-- muestra los empleados en distintas líneas
	<c:forEach var="EmpTemp" items="${losEmpleados}">
			${EmpTemp.nombre}    ${EmpTemp.apellido}  ${EmpTemp.puesto}  ${EmpTemp.salario} <br/>
	</c:forEach> -->
	<!-- Si el salario es menor de 4000 aplica un bono de 1000 , si es mayor o igual no apliques nada -->
	<p>Uso de if</p>
	
	<table border="1">
		<tr class="cabecera"><td>Nombre</td><td>Apellidos</td><td>Puesto</td><td>Salario</td><td>Bono</td></tr>
		
		<c:forEach var="EmpTemp" items="${losEmpleados}">
			<tr>
				<td>${EmpTemp.nombre}  </td> 
				<td> ${EmpTemp.apellido} </td>
				<td> ${EmpTemp.puesto} </td>
				<td> ${EmpTemp.salario} </td>
				<td> 
					<c:if test="${EmpTemp.salario < 4000}">1000</c:if> 
					<c:if test="${EmpTemp.salario >= 4000}">----</c:if>
				</td>
				
			</tr>
		</c:forEach>
	</table>
	
	<br></br>
	
	<p>Uso de choose</p>
	<!-- Si el salario es menor de 4000 aplica un bono de 1000 , si es mayor o igual no apliques nada -->
	<table border="1">
		<tr class="cabecera"><td>Nombre</td><td>Apellidos</td><td>Puesto</td><td>Salario</td><td>Bono</td></tr>
		
		<c:forEach var="EmpTemp" items="${losEmpleados}">
			<tr>
				<td>${EmpTemp.nombre}  </td> 
				<td> ${EmpTemp.apellido} </td>
				<td> ${EmpTemp.puesto} </td>
				<td> ${EmpTemp.salario} </td>
				<td>
					<c:choose>					 
						<c:when test="${EmpTemp.salario < 4000}">1000</c:when> 
						<c:otherwise>----</c:otherwise>
					</c:choose>
				</td>
				
			</tr>
		</c:forEach>
	</table>
	
	<p>Uso de choose con más alternativas</p>
	<table border="1">
	<tr class="cabecera"><td>Nombre</td><td>Apellidos</td><td>Puesto</td><td>Salario</td><td>Bono</td></tr>
	<c:forEach var="EmpTemp" items="${losEmpleados}">
		<tr>
			<td>${EmpTemp.nombre}  </td> 
			<td> ${EmpTemp.apellido} </td>
			<td> ${EmpTemp.puesto} </td>
			<td> ${EmpTemp.salario} </td>
			<td>
				<c:choose>				 
					<c:when test="${EmpTemp.salario < 4000}">1000</c:when> 
					<c:when test="${EmpTemp.salario >= 4000 && EmpTemp.salario <= 4300}">500</c:when> 
					<c:otherwise>----</c:otherwise>
				</c:choose>
			</td>
			
		</tr>
	</c:forEach>
	</table>
</body>
</html>