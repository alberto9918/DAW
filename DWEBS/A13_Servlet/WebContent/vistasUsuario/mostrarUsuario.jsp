<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mostrar usuario</title>
</head>
<body>
	<c:set var="usu" value="${requestScope.usuarioBuscado}" />
	<table border=1>
		<tr>
			<td>Id</td>
			<td>Nombre</td>
			<td>Apellidos</td>
			<td>Usuario</td>
			<td>Contraseña</td>
			<td>País</td>
			<td>Tecnología</td>
		</tr>
		<tr>
			<td>${usu.id_usuario}</td>
			<td>${usu.nombre}</td>
			<td>${usu.apellidos}</td>
			<td>${usu.usuario}</td>
			<td>${usu.contrasena}</td>
			<td>${usu.pais}</td>
			<td>${usu.tecnologia}</td>
		</tr>
		<tr>
			<td>${usuarioBuscado.id_usuario}</td>
			<td>${usuarioBuscado.nombre}</td>
			<td>${usuarioBuscado.apellidos}</td>
			<td>${usuarioBuscado.usuario}</td>
			<td>${usuarioBuscado.contrasena}</td>
			<td>${usuarioBuscado.pais}</td>
			<td>${usuarioBuscado.tecnologia}</td>
		</tr>
	</table>

	<a href="tratarUsuarios.html">Inicio</a>
</body>
</html>